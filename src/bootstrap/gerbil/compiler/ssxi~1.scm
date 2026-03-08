(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g267543_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267550_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267552_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267554_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267556_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267558_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267570_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267572_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267574_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267576_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267578_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx261001%_)
        (let* ((_%g261005261023%_
                (lambda (_%g261006261019%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261006261019%_))))
               (_%g261004261078%_
                (lambda (_%g261006261027%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261006261027%_))
                      (let ((_%e261009261030%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261006261027%_))))
                        (let ((_%hd261010261034%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261009261030%_)))
                              (_%tl261011261037%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261009261030%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261011261037%_))
                              (let ((_%e261012261040%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261011261037%_))))
                                (let ((_%hd261013261044%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261012261040%_)))
                                      (_%tl261014261047%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261012261040%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261014261047%_))
                                      (let ((_%e261015261050%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261014261047%_))))
                                        (let ((_%hd261016261054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261015261050%_)))
                                              (_%tl261017261057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261015261050%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261017261057%_))
                                              ((lambda (_%g261007261060%_
                                                        _%g261008261062%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g261008261062%_))
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
                               (cons _%g261008261062%_ '()))
                         (cons _%g261007261060%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g261005261023%_
                                                      _%g261006261027%_)))
                                               _%hd261016261054%_
                                               _%hd261013261044%_)
                                              (_%g261005261023%_
                                               _%g261006261027%_))))
                                      (_%g261005261023%_ _%g261006261027%_))))
                              (_%g261005261023%_ _%g261006261027%_))))
                      (_%g261005261023%_ _%g261006261027%_)))))
          (_%g261004261078%_ _%$stx261001%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx261082%_)
        (let* ((_%g261086261104%_
                (lambda (_%g261087261100%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261087261100%_))))
               (_%g261085261159%_
                (lambda (_%g261087261108%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261087261108%_))
                      (let ((_%e261090261111%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261087261108%_))))
                        (let ((_%hd261091261115%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261090261111%_)))
                              (_%tl261092261118%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261090261111%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261092261118%_))
                              (let ((_%e261093261121%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261092261118%_))))
                                (let ((_%hd261094261125%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261093261121%_)))
                                      (_%tl261095261128%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261093261121%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261095261128%_))
                                      (let ((_%e261096261131%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261095261128%_))))
                                        (let ((_%hd261097261135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261096261131%_)))
                                              (_%tl261098261138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261096261131%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261098261138%_))
                                              ((lambda (_%g261088261141%_
                                                        _%g261089261143%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g261089261143%_))
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
                               (cons _%g261089261143%_ '()))
                         (cons _%g261088261141%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g261086261104%_
                                                      _%g261087261108%_)))
                                               _%hd261097261135%_
                                               _%hd261094261125%_)
                                              (_%g261086261104%_
                                               _%g261087261108%_))))
                                      (_%g261086261104%_ _%g261087261108%_))))
                              (_%g261086261104%_ _%g261087261108%_))))
                      (_%g261086261104%_ _%g261087261108%_)))))
          (_%g261085261159%_ _%$stx261082%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx261163%_)
        (let* ((_%g261167261196%_
                (lambda (_%g261168261192%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261168261192%_))))
               (_%g261166261292%_
                (lambda (_%g261168261200%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261168261200%_))
                      (let ((_%e261171261203%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261168261200%_))))
                        (let ((_%hd261172261207%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261171261203%_)))
                              (_%tl261173261210%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261171261203%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl261173261210%_))
                              (let ((_g267521_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl261173261210%_
                                        '0))))
                                (begin
                                  (let ((_g267522_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g267521_)
                                               (##values-length _g267521_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g267522_ 2)))
                                        (error "Context expects 2 values"
                                               _g267522_)))
                                  (let ((_%target261174261213%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267521_ 0)))
                                        (_%tl261176261216%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267521_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261176261216%_))
                                        (letrec ((_%loop261177261219%_
                                                  (lambda (_%hd261175261223%_
                                                           _%type261181261226%_
                                                           _%symbol261182261227%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd261175261223%_))
                                                        (let ((_%e261178261229%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd261175261223%_))))
                  (let ((_%lp-hd261179261233%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261178261229%_)))
                        (_%lp-tl261180261236%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261178261229%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd261179261233%_))
                        (let ((_%e261185261239%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd261179261233%_))))
                          (let ((_%hd261186261243%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261185261239%_)))
                                (_%tl261187261246%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261185261239%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl261187261246%_))
                                (let ((_%e261188261249%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl261187261246%_))))
                                  (let ((_%hd261189261253%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261188261249%_)))
                                        (_%tl261190261256%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261188261249%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261190261256%_))
                                        (_%loop261177261219%_
                                         _%lp-tl261180261236%_
                                         (cons _%hd261189261253%_
                                               _%type261181261226%_)
                                         (cons _%hd261186261243%_
                                               _%symbol261182261227%_))
                                        (_%g261167261196%_
                                         _%g261168261200%_))))
                                (_%g261167261196%_ _%g261168261200%_))))
                        (_%g261167261196%_ _%g261168261200%_))))
                (let ((_%type261183261259%_ (reverse _%type261181261226%_))
                      (_%symbol261184261261%_
                       (reverse _%symbol261182261227%_)))
                  ((lambda (_%g261169261263%_ _%g261170261265%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g261169261263%_
                                _%g261170261265%_))
                             (let ((__tmp267523
                                    (lambda (_%g261280261284%_
                                             _%g261281261287%_
                                             _%g261282261289%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g261281261287%_
                                                        (cons _%g261280261284%_
                                                              '())))
                                            _%g261282261289%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp267523
                                '()
                                _%g261169261263%_
                                _%g261170261265%_)))))
                   _%type261183261259%_
                   _%symbol261184261261%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop261177261219%_
                                           _%target261174261213%_
                                           '()
                                           '()))
                                        (_%g261167261196%_
                                         _%g261168261200%_)))))
                              (_%g261167261196%_ _%g261168261200%_))))
                      (_%g261167261196%_ _%g261168261200%_)))))
          (_%g261166261292%_ _%$stx261163%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx261297%_)
        (let* ((_%__stx266832266833%_ _%$stx261297%_)
               (_%g261302261344%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266832266833%_)))))
          (let ((_%__kont266835266836%_
                 (lambda (_%g261304261472%_
                          _%g261305261474%_
                          _%g261306261475%_
                          _%g261307261476%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g261307261476%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g261306261475%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g261305261474%_ '()))
                                           (cons _%g261304261472%_ '())))))))
                (_%__kont266837266838%_
                 (lambda (_%g261323261391%_
                          _%g261324261393%_
                          _%g261325261394%_
                          _%g261326261395%_)
                   (cons _%g261326261395%_
                         (cons _%g261325261394%_
                               (cons _%g261324261393%_
                                     (cons _%g261323261391%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match266871266872%_
                   (lambda (_%e261308261422%_
                            _%hd261309261426%_
                            _%tl261310261429%_
                            _%e261311261432%_
                            _%hd261312261436%_
                            _%tl261313261439%_
                            _%e261314261442%_
                            _%hd261315261446%_
                            _%tl261316261449%_
                            _%e261317261452%_
                            _%hd261318261456%_
                            _%tl261319261459%_
                            _%e261320261462%_
                            _%hd261321261466%_
                            _%tl261322261469%_)
                     (let ((_%g261304261472%_ _%hd261321261466%_)
                           (_%g261305261474%_ _%hd261318261456%_)
                           (_%g261306261475%_ _%hd261315261446%_)
                           (_%g261307261476%_ _%hd261312261436%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g261307261476%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g261306261475%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g261305261474%_)))
                           (_%__kont266835266836%_
                            _%g261304261472%_
                            _%g261305261474%_
                            _%g261306261475%_
                            _%g261307261476%_)
                           (let ()
                             (declare (not safe))
                             (_%g261302261344%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx266832266833%_))
                  (let ((_%e261308261422%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx266832266833%_))))
                    (let ((_%tl261310261429%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e261308261422%_)))
                          (_%hd261309261426%_
                           (let ()
                             (declare (not safe))
                             (##car _%e261308261422%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl261310261429%_))
                          (let ((_%e261311261432%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl261310261429%_))))
                            (let ((_%tl261313261439%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e261311261432%_)))
                                  (_%hd261312261436%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e261311261432%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl261313261439%_))
                                  (let ((_%e261314261442%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl261313261439%_))))
                                    (let ((_%tl261316261449%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e261314261442%_)))
                                          (_%hd261315261446%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e261314261442%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl261316261449%_))
                                          (let ((_%e261317261452%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl261316261449%_))))
                                            (let ((_%tl261319261459%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e261317261452%_)))
                                                  (_%hd261318261456%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e261317261452%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl261319261459%_))
                                                  (let ((_%e261320261462%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl261319261459%_))))
                                                    (let ((_%tl261322261469%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e261320261462%_)))
                                                          (_%hd261321261466%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e261320261462%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl261322261469%_))
                                                          (_%__match266871266872%_
                                                           _%e261308261422%_
                                                           _%hd261309261426%_
                                                           _%tl261310261429%_
                                                           _%e261311261432%_
                                                           _%hd261312261436%_
                                                           _%tl261313261439%_
                                                           _%e261314261442%_
                                                           _%hd261315261446%_
                                                           _%tl261316261449%_
                                                           _%e261317261452%_
                                                           _%hd261318261456%_
                                                           _%tl261319261459%_
                                                           _%e261320261462%_
                                                           _%hd261321261466%_
                                                           _%tl261322261469%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g261302261344%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl261319261459%_))
                                                      (_%__kont266837266838%_
                                                       _%hd261318261456%_
                                                       _%hd261315261446%_
                                                       _%hd261312261436%_
                                                       _%hd261309261426%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g261302261344%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g261302261344%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g261302261344%_)))))
                          (let () (declare (not safe)) (_%g261302261344%_)))))
                  (let () (declare (not safe)) (_%g261302261344%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx261501%_)
        (let* ((_%g261505261540%_
                (lambda (_%g261506261536%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261506261536%_))))
               (_%g261504261653%_
                (lambda (_%g261506261544%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261506261544%_))
                      (let ((_%e261510261547%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261506261544%_))))
                        (let ((_%hd261511261551%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261510261547%_)))
                              (_%tl261512261554%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261510261547%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl261512261554%_))
                              (let ((_g267524_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl261512261554%_
                                        '0))))
                                (begin
                                  (let ((_g267525_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g267524_)
                                               (##values-length _g267524_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g267525_ 2)))
                                        (error "Context expects 2 values"
                                               _g267525_)))
                                  (let ((_%target261513261557%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267524_ 0)))
                                        (_%tl261515261560%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267524_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261515261560%_))
                                        (letrec ((_%loop261516261563%_
                                                  (lambda (_%hd261514261567%_
                                                           _%symbol261520261570%_
                                                           _%method261521261571%_
                                                           _%type-t261522261572%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd261514261567%_))
                                                        (let ((_%e261517261574%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd261514261567%_))))
                  (let ((_%lp-hd261518261578%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261517261574%_)))
                        (_%lp-tl261519261581%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261517261574%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd261518261578%_))
                        (let ((_%e261526261584%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd261518261578%_))))
                          (let ((_%hd261527261588%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261526261584%_)))
                                (_%tl261528261591%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261526261584%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl261528261591%_))
                                (let ((_%e261529261594%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl261528261591%_))))
                                  (let ((_%hd261530261598%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261529261594%_)))
                                        (_%tl261531261601%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261529261594%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl261531261601%_))
                                        (let ((_%e261532261604%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl261531261601%_))))
                                          (let ((_%hd261533261608%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e261532261604%_)))
                                                (_%tl261534261611%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e261532261604%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl261534261611%_))
                                                (_%loop261516261563%_
                                                 _%lp-tl261519261581%_
                                                 (cons _%hd261533261608%_
                                                       _%symbol261520261570%_)
                                                 (cons _%hd261530261598%_
                                                       _%method261521261571%_)
                                                 (cons _%hd261527261588%_
                                                       _%type-t261522261572%_))
                                                (_%g261505261540%_
                                                 _%g261506261544%_))))
                                        (_%g261505261540%_
                                         _%g261506261544%_))))
                                (_%g261505261540%_ _%g261506261544%_))))
                        (_%g261505261540%_ _%g261506261544%_))))
                (let ((_%symbol261523261614%_ (reverse _%symbol261520261570%_))
                      (_%method261524261616%_ (reverse _%method261521261571%_))
                      (_%type-t261525261617%_
                       (reverse _%type-t261522261572%_)))
                  ((lambda (_%g261507261619%_
                            _%g261508261621%_
                            _%g261509261622%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g261507261619%_
                                _%g261508261621%_
                                _%g261509261622%_))
                             (let ((__tmp267526
                                    (lambda (_%g261638261643%_
                                             _%g261639261646%_
                                             _%g261640261648%_
                                             _%g261641261650%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g261640261648%_
                                                        (cons _%g261639261646%_
                                                              (cons _%g261638261643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g261641261650%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp267526
                                '()
                                _%g261507261619%_
                                _%g261508261621%_
                                _%g261509261622%_)))))
                   _%symbol261523261614%_
                   _%method261524261616%_
                   _%type-t261525261617%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop261516261563%_
                                           _%target261513261557%_
                                           '()
                                           '()
                                           '()))
                                        (_%g261505261540%_
                                         _%g261506261544%_)))))
                              (_%g261505261540%_ _%g261506261544%_))))
                      (_%g261505261540%_ _%g261506261544%_)))))
          (_%g261504261653%_ _%$stx261501%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx261658%_)
        (let* ((_%g261662261695%_
                (lambda (_%g261663261691%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261663261691%_))))
               (_%g261661261805%_
                (lambda (_%g261663261699%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261663261699%_))
                      (let ((_%e261667261702%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261663261699%_))))
                        (let ((_%hd261668261706%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261667261702%_)))
                              (_%tl261669261709%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261667261702%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261669261709%_))
                              (let ((_%e261670261712%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261669261709%_))))
                                (let ((_%hd261671261716%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261670261712%_)))
                                      (_%tl261672261719%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261670261712%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl261672261719%_))
                                      (let ((_g267527_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl261672261719%_
                                                '0))))
                                        (begin
                                          (let ((_g267528_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g267527_)
                                                       (##values-length
                                                        _g267527_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g267528_ 2)))
                                                (error "Context expects 2 values"
                                                       _g267528_)))
                                          (let ((_%target261673261722%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g267527_ 0)))
                                                (_%tl261675261725%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g267527_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl261675261725%_))
                                                (letrec ((_%loop261676261728%_
                                                          (lambda (_%hd261674261732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol261680261735%_
                           _%method261681261736%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd261674261732%_))
                        (let ((_%e261677261738%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd261674261732%_))))
                          (let ((_%lp-hd261678261742%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261677261738%_)))
                                (_%lp-tl261679261745%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261677261738%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd261678261742%_))
                                (let ((_%e261684261748%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd261678261742%_))))
                                  (let ((_%hd261685261752%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261684261748%_)))
                                        (_%tl261686261755%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261684261748%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl261686261755%_))
                                        (let ((_%e261687261758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl261686261755%_))))
                                          (let ((_%hd261688261762%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e261687261758%_)))
                                                (_%tl261689261765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e261687261758%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl261689261765%_))
                                                (_%loop261676261728%_
                                                 _%lp-tl261679261745%_
                                                 (cons _%hd261688261762%_
                                                       _%symbol261680261735%_)
                                                 (cons _%hd261685261752%_
                                                       _%method261681261736%_))
                                                (_%g261662261695%_
                                                 _%g261663261699%_))))
                                        (_%g261662261695%_
                                         _%g261663261699%_))))
                                (_%g261662261695%_ _%g261663261699%_))))
                        (let ((_%symbol261682261768%_
                               (reverse _%symbol261680261735%_))
                              (_%method261683261770%_
                               (reverse _%method261681261736%_)))
                          ((lambda (_%g261664261772%_
                                    _%g261665261774%_
                                    _%g261666261775%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g261664261772%_
                                        _%g261665261774%_))
                                     (let ((__tmp267529
                                            (lambda (_%g261793261797%_
                                                     _%g261794261800%_
                                                     _%g261795261802%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g261666261775%_
                                                                (cons _%g261794261800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g261793261797%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g261795261802%_))))
                                       (declare (not safe))
                                       (foldr__1
                                        __tmp267529
                                        '()
                                        _%g261664261772%_
                                        _%g261665261774%_)))))
                           _%symbol261682261768%_
                           _%method261683261770%_
                           _%hd261671261716%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop261676261728%_
                                                   _%target261673261722%_
                                                   '()
                                                   '()))
                                                (_%g261662261695%_
                                                 _%g261663261699%_)))))
                                      (_%g261662261695%_ _%g261663261699%_))))
                              (_%g261662261695%_ _%g261663261699%_))))
                      (_%g261662261695%_ _%g261663261699%_)))))
          (_%g261661261805%_ _%$stx261658%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx261810%_)
        (let* ((_%g261814261828%_
                (lambda (_%g261815261824%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261815261824%_))))
               (_%g261813261869%_
                (lambda (_%g261815261832%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261815261832%_))
                      (let ((_%e261817261835%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261815261832%_))))
                        (let ((_%hd261818261839%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261817261835%_)))
                              (_%tl261819261842%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261817261835%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261819261842%_))
                              (let ((_%e261820261845%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261819261842%_))))
                                (let ((_%hd261821261849%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261820261845%_)))
                                      (_%tl261822261852%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261820261845%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261822261852%_))
                                      ((lambda (_%g261816261855%_)
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
                                                           (cons _%g261816261855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd261821261849%_)
                                      (_%g261814261828%_ _%g261815261832%_))))
                              (_%g261814261828%_ _%g261815261832%_))))
                      (_%g261814261828%_ _%g261815261832%_)))))
          (_%g261813261869%_ _%$stx261810%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx261873%_)
        (let* ((_%g261877261931%_
                (lambda (_%g261878261927%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261878261927%_))))
               (_%g261876262112%_
                (lambda (_%g261878261935%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261878261935%_))
                      (let ((_%e261890261938%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261878261935%_))))
                        (let ((_%hd261891261942%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261890261938%_)))
                              (_%tl261892261945%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261890261938%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261892261945%_))
                              (let ((_%e261893261948%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261892261945%_))))
                                (let ((_%hd261894261952%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261893261948%_)))
                                      (_%tl261895261955%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261893261948%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261895261955%_))
                                      (let ((_%e261896261958%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261895261955%_))))
                                        (let ((_%hd261897261962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261896261958%_)))
                                              (_%tl261898261965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261896261958%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261898261965%_))
                                              (let ((_%e261899261968%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261898261965%_))))
                                                (let ((_%hd261900261972%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261899261968%_)))
                                                      (_%tl261901261975%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261899261968%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl261901261975%_))
                                                      (let ((_%e261902261978%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl261901261975%_))))
                (let ((_%hd261903261982%_
                       (let () (declare (not safe)) (##car _%e261902261978%_)))
                      (_%tl261904261985%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e261902261978%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl261904261985%_))
                      (let ((_%e261905261988%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl261904261985%_))))
                        (let ((_%hd261906261992%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261905261988%_)))
                              (_%tl261907261995%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261905261988%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261907261995%_))
                              (let ((_%e261908261998%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261907261995%_))))
                                (let ((_%hd261909262002%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261908261998%_)))
                                      (_%tl261910262005%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261908261998%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261910262005%_))
                                      (let ((_%e261911262008%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261910262005%_))))
                                        (let ((_%hd261912262012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261911262008%_)))
                                              (_%tl261913262015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261911262008%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261913262015%_))
                                              (let ((_%e261914262018%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261913262015%_))))
                                                (let ((_%hd261915262022%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261914262018%_)))
                                                      (_%tl261916262025%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261914262018%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl261916262025%_))
                                                      (let ((_%e261917262028%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl261916262025%_))))
                (let ((_%hd261918262032%_
                       (let () (declare (not safe)) (##car _%e261917262028%_)))
                      (_%tl261919262035%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e261917262028%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl261919262035%_))
                      (let ((_%e261920262038%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl261919262035%_))))
                        (let ((_%hd261921262042%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261920262038%_)))
                              (_%tl261922262045%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261920262038%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261922262045%_))
                              (let ((_%e261923262048%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261922262045%_))))
                                (let ((_%hd261924262052%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261923262048%_)))
                                      (_%tl261925262055%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261923262048%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261925262055%_))
                                      ((lambda (_%g261879262058%_
                                                _%g261880262060%_
                                                _%g261881262061%_
                                                _%g261882262062%_
                                                _%g261883262063%_
                                                _%g261884262064%_
                                                _%g261885262065%_
                                                _%g261886262066%_
                                                _%g261887262067%_
                                                _%g261888262068%_
                                                _%g261889262069%_)
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
                                                           (cons _%g261889262069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g261888262068%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g261887262067%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g261886262066%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g261885262065%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g261884262064%_ '()))
                                           (cons _%g261883262063%_
                                                 (cons _%g261882262062%_
                                                       (cons _%g261881262061%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g261880262060%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g261879262058%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd261924262052%_
                                       _%hd261921262042%_
                                       _%hd261918262032%_
                                       _%hd261915262022%_
                                       _%hd261912262012%_
                                       _%hd261909262002%_
                                       _%hd261906261992%_
                                       _%hd261903261982%_
                                       _%hd261900261972%_
                                       _%hd261897261962%_
                                       _%hd261894261952%_)
                                      (_%g261877261931%_ _%g261878261935%_))))
                              (_%g261877261931%_ _%g261878261935%_))))
                      (_%g261877261931%_ _%g261878261935%_))))
              (_%g261877261931%_ _%g261878261935%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261877261931%_
                                               _%g261878261935%_))))
                                      (_%g261877261931%_ _%g261878261935%_))))
                              (_%g261877261931%_ _%g261878261935%_))))
                      (_%g261877261931%_ _%g261878261935%_))))
              (_%g261877261931%_ _%g261878261935%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261877261931%_
                                               _%g261878261935%_))))
                                      (_%g261877261931%_ _%g261878261935%_))))
                              (_%g261877261931%_ _%g261878261935%_))))
                      (_%g261877261931%_ _%g261878261935%_)))))
          (_%g261876262112%_ _%$stx261873%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx262116%_)
        (let* ((_%g262120262134%_
                (lambda (_%g262121262130%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262121262130%_))))
               (_%g262119262175%_
                (lambda (_%g262121262138%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262121262138%_))
                      (let ((_%e262123262141%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262121262138%_))))
                        (let ((_%hd262124262145%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262123262141%_)))
                              (_%tl262125262148%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262123262141%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262125262148%_))
                              (let ((_%e262126262151%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262125262148%_))))
                                (let ((_%hd262127262155%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262126262151%_)))
                                      (_%tl262128262158%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262126262151%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl262128262158%_))
                                      ((lambda (_%g262122262161%_)
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
                                                           (cons _%g262122262161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd262127262155%_)
                                      (_%g262120262134%_ _%g262121262138%_))))
                              (_%g262120262134%_ _%g262121262138%_))))
                      (_%g262120262134%_ _%g262121262138%_)))))
          (_%g262119262175%_ _%$stx262116%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx262179%_)
        (let* ((_%g262183262197%_
                (lambda (_%g262184262193%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262184262193%_))))
               (_%g262182262238%_
                (lambda (_%g262184262201%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262184262201%_))
                      (let ((_%e262186262204%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262184262201%_))))
                        (let ((_%hd262187262208%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262186262204%_)))
                              (_%tl262188262211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262186262204%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262188262211%_))
                              (let ((_%e262189262214%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262188262211%_))))
                                (let ((_%hd262190262218%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262189262214%_)))
                                      (_%tl262191262221%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262189262214%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl262191262221%_))
                                      ((lambda (_%g262185262224%_)
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
                                                           (cons _%g262185262224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd262190262218%_)
                                      (_%g262183262197%_ _%g262184262201%_))))
                              (_%g262183262197%_ _%g262184262201%_))))
                      (_%g262183262197%_ _%g262184262201%_)))))
          (_%g262182262238%_ _%$stx262179%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx262242%_)
        (let* ((_%g262246262268%_
                (lambda (_%g262247262264%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262247262264%_))))
               (_%g262245262337%_
                (lambda (_%g262247262272%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262247262272%_))
                      (let ((_%e262251262275%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262247262272%_))))
                        (let ((_%hd262252262279%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262251262275%_)))
                              (_%tl262253262282%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262251262275%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262253262282%_))
                              (let ((_%e262254262285%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262253262282%_))))
                                (let ((_%hd262255262289%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262254262285%_)))
                                      (_%tl262256262292%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262254262285%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262256262292%_))
                                      (let ((_%e262257262295%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262256262292%_))))
                                        (let ((_%hd262258262299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262257262295%_)))
                                              (_%tl262259262302%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262257262295%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl262259262302%_))
                                              (let ((_%e262260262305%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl262259262302%_))))
                                                (let ((_%hd262261262309%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e262260262305%_)))
                                                      (_%tl262262262312%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e262260262305%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl262262262312%_))
                                                      ((lambda (_%g262248262315%_
                                                                _%g262249262317%_
                                                                _%g262250262318%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g262250262318%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g262249262317%_ '()))
                                   (cons _%g262248262315%_ '())))))
               _%hd262261262309%_
               _%hd262258262299%_
               _%hd262255262289%_)
              (_%g262246262268%_ _%g262247262272%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g262246262268%_
                                               _%g262247262272%_))))
                                      (_%g262246262268%_ _%g262247262272%_))))
                              (_%g262246262268%_ _%g262247262272%_))))
                      (_%g262246262268%_ _%g262247262272%_)))))
          (_%g262245262337%_ _%$stx262242%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx262341%_)
        (let* ((_%g262345262367%_
                (lambda (_%g262346262363%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262346262363%_))))
               (_%g262344262436%_
                (lambda (_%g262346262371%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262346262371%_))
                      (let ((_%e262350262374%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262346262371%_))))
                        (let ((_%hd262351262378%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262350262374%_)))
                              (_%tl262352262381%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262350262374%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262352262381%_))
                              (let ((_%e262353262384%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262352262381%_))))
                                (let ((_%hd262354262388%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262353262384%_)))
                                      (_%tl262355262391%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262353262384%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262355262391%_))
                                      (let ((_%e262356262394%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262355262391%_))))
                                        (let ((_%hd262357262398%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262356262394%_)))
                                              (_%tl262358262401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262356262394%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl262358262401%_))
                                              (let ((_%e262359262404%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl262358262401%_))))
                                                (let ((_%hd262360262408%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e262359262404%_)))
                                                      (_%tl262361262411%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e262359262404%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl262361262411%_))
                                                      ((lambda (_%g262347262414%_
                                                                _%g262348262416%_
                                                                _%g262349262417%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g262349262417%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g262348262416%_ '()))
                                   (cons _%g262347262414%_ '())))))
               _%hd262360262408%_
               _%hd262357262398%_
               _%hd262354262388%_)
              (_%g262345262367%_ _%g262346262371%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g262345262367%_
                                               _%g262346262371%_))))
                                      (_%g262345262367%_ _%g262346262371%_))))
                              (_%g262345262367%_ _%g262346262371%_))))
                      (_%g262345262367%_ _%g262346262371%_)))))
          (_%g262344262436%_ _%$stx262341%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx262440%_)
        (let* ((_%g262444262458%_
                (lambda (_%g262445262454%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262445262454%_))))
               (_%g262443262499%_
                (lambda (_%g262445262462%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262445262462%_))
                      (let ((_%e262447262465%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262445262462%_))))
                        (let ((_%hd262448262469%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262447262465%_)))
                              (_%tl262449262472%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262447262465%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262449262472%_))
                              (let ((_%e262450262475%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262449262472%_))))
                                (let ((_%hd262451262479%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262450262475%_)))
                                      (_%tl262452262482%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262450262475%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl262452262482%_))
                                      ((lambda (_%g262446262485%_)
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
                                                           (cons _%g262446262485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd262451262479%_)
                                      (_%g262444262458%_ _%g262445262462%_))))
                              (_%g262444262458%_ _%g262445262462%_))))
                      (_%g262444262458%_ _%g262445262462%_)))))
          (_%g262443262499%_ _%$stx262440%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx262503%_)
        (let* ((_%g262507262525%_
                (lambda (_%g262508262521%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262508262521%_))))
               (_%g262506262580%_
                (lambda (_%g262508262529%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262508262529%_))
                      (let ((_%e262511262532%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262508262529%_))))
                        (let ((_%hd262512262536%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262511262532%_)))
                              (_%tl262513262539%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262511262532%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262513262539%_))
                              (let ((_%e262514262542%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262513262539%_))))
                                (let ((_%hd262515262546%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262514262542%_)))
                                      (_%tl262516262549%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262514262542%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262516262549%_))
                                      (let ((_%e262517262552%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262516262549%_))))
                                        (let ((_%hd262518262556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262517262552%_)))
                                              (_%tl262519262559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262517262552%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262519262559%_))
                                              ((lambda (_%g262509262562%_
                                                        _%g262510262564%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g262510262564%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g262509262562%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd262518262556%_
                                               _%hd262515262546%_)
                                              (_%g262507262525%_
                                               _%g262508262529%_))))
                                      (_%g262507262525%_ _%g262508262529%_))))
                              (_%g262507262525%_ _%g262508262529%_))))
                      (_%g262507262525%_ _%g262508262529%_)))))
          (_%g262506262580%_ _%$stx262503%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx262584%_)
        (let* ((_%__stx266900266901%_ _%$stx262584%_)
               (_%g262591262652%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266900266901%_)))))
          (let ((_%__kont266903266904%_
                 (lambda (_%g262593262890%_ _%g262594262892%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g262594262892%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g262593262890%_ '()))
                                     '())))))
                (_%__kont266905266906%_
                 (lambda (_%g262604262829%_
                          _%g262605262831%_
                          _%g262606262832%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g262606262832%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g262605262831%_ '()))
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
                                 (cons _%g262604262829%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont266907266908%_
                 (lambda (_%g262623262753%_ _%g262624262755%_)
                   (cons _%g262624262755%_
                         (cons _%g262623262753%_ (cons '#f '())))))
                (_%__kont266909266910%_
                 (lambda (_%g262631262703%_
                          _%g262632262705%_
                          _%g262633262706%_)
                   (cons _%g262633262706%_
                         (cons _%g262632262705%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g262631262703%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx266900266901%_))
                (let ((_%e262595262860%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx266900266901%_))))
                  (let ((_%tl262597262867%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262595262860%_)))
                        (_%hd262596262864%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262595262860%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl262597262867%_))
                        (let ((_%e262598262870%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl262597262867%_))))
                          (let ((_%tl262600262877%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262598262870%_)))
                                (_%hd262599262874%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262598262870%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl262600262877%_))
                                (let ((_%e262601262880%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl262600262877%_))))
                                  (let ((_%tl262603262887%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e262601262880%_)))
                                        (_%hd262602262884%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e262601262880%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262603262887%_))
                                        (_%__kont266903266904%_
                                         _%hd262602262884%_
                                         _%hd262599262874%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl262603262887%_))
                                            (let ((_%e262616262805%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl262603262887%_))))
                                              (let ((_%tl262618262812%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e262616262805%_)))
                                                    (_%hd262617262809%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e262616262805%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd262617262809%_))
                                                    (let ((_%e262619262815%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd262617262809%_))))
                                                      (if (equal? _%e262619262815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl262618262812%_))
                      (let ((_%e262620262819%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl262618262812%_))))
                        (let ((_%tl262622262826%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262620262819%_)))
                              (_%hd262621262823%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262620262819%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl262622262826%_))
                              (_%__kont266905266906%_
                               _%hd262621262823%_
                               _%hd262602262884%_
                               _%hd262599262874%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd262602262884%_))
                                  (let ((_%e262643262689%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd262602262884%_))))
                                    (declare (not safe))
                                    (_%g262591262652%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g262591262652%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd262602262884%_))
                          (let ((_%e262643262689%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd262602262884%_))))
                            (if (equal? _%e262643262689%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl262618262812%_))
                                    (_%__kont266909266910%_
                                     _%hd262617262809%_
                                     _%hd262599262874%_
                                     _%hd262596262864%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g262591262652%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g262591262652%_))))
                          (let () (declare (not safe)) (_%g262591262652%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd262602262884%_))
                      (let ((_%e262643262689%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd262602262884%_))))
                        (if (equal? _%e262643262689%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl262618262812%_))
                                (_%__kont266909266910%_
                                 _%hd262617262809%_
                                 _%hd262599262874%_
                                 _%hd262596262864%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g262591262652%_)))
                            (let () (declare (not safe)) (_%g262591262652%_))))
                      (let () (declare (not safe)) (_%g262591262652%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd262602262884%_))
                                                        (let ((_%e262643262689%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd262602262884%_))))
                  (if (equal? _%e262643262689%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl262618262812%_))
                          (_%__kont266909266910%_
                           _%hd262617262809%_
                           _%hd262599262874%_
                           _%hd262596262864%_)
                          (let () (declare (not safe)) (_%g262591262652%_)))
                      (let () (declare (not safe)) (_%g262591262652%_))))
                (let () (declare (not safe)) (_%g262591262652%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd262602262884%_))
                                                (let ((_%e262643262689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd262602262884%_))))
                                                  (declare (not safe))
                                                  (_%g262591262652%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g262591262652%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl262600262877%_))
                                    (_%__kont266907266908%_
                                     _%hd262599262874%_
                                     _%hd262596262864%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g262591262652%_))))))
                        (let () (declare (not safe)) (_%g262591262652%_)))))
                (let () (declare (not safe)) (_%g262591262652%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx262911%_)
        (let* ((_%g262915262944%_
                (lambda (_%g262916262940%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262916262940%_))))
               (_%g262914263049%_
                (lambda (_%g262916262948%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262916262948%_))
                      (let ((_%e262918262951%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262916262948%_))))
                        (let ((_%hd262919262955%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262918262951%_)))
                              (_%tl262920262958%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262918262951%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl262920262958%_))
                              (let ((_g267530_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl262920262958%_
                                        '0))))
                                (begin
                                  (let ((_g267531_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g267530_)
                                               (##values-length _g267530_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g267531_ 2)))
                                        (error "Context expects 2 values"
                                               _g267531_)))
                                  (let ((_%target262921262961%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267530_ 0)))
                                        (_%tl262923262964%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267530_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262923262964%_))
                                        (letrec ((_%loop262924262967%_
                                                  (lambda (_%hd262922262971%_
                                                           _%clause262928262974%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd262922262971%_))
                                                        (let ((_%e262925262976%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd262922262971%_))))
                  (let ((_%lp-hd262926262980%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262925262976%_)))
                        (_%lp-tl262927262983%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262925262976%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd262926262980%_))
                        (let ((_g267532_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd262926262980%_
                                  '0))))
                          (begin
                            (let ((_g267533_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g267532_)
                                         (##values-length _g267532_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g267533_ 2)))
                                  (error "Context expects 2 values"
                                         _g267533_)))
                            (let ((_%target262930262986%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g267532_ 0)))
                                  (_%tl262932262989%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g267532_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl262932262989%_))
                                  (letrec ((_%loop262933262992%_
                                            (lambda (_%hd262931262996%_
                                                     _%clause262937262999%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd262931262996%_))
                                                  (let ((_%e262934263001%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd262931262996%_))))
                                                    (let ((_%lp-hd262935263005%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e262934263001%_)))
                                                          (_%lp-tl262936263008%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e262934263001%_))))
                                                      (_%loop262933262992%_
                                                       _%lp-tl262936263008%_
                                                       (cons _%lp-hd262935263005%_
                                                             _%clause262937262999%_))))
                                                  (let ((_%clause262938263011%_
                                                         (reverse _%clause262937262999%_)))
                                                    (_%loop262924262967%_
                                                     _%lp-tl262927262983%_
                                                     (cons _%clause262938263011%_
                                                           _%clause262928262974%_)))))))
                                    (_%loop262933262992%_
                                     _%target262930262986%_
                                     '()))
                                  (_%g262915262944%_ _%g262916262948%_)))))
                        (_%g262915262944%_ _%g262916262948%_))))
                (let ((_%clause262929263014%_
                       (reverse _%clause262928262974%_)))
                  ((lambda (_%g262917263017%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp267534
                                              (lambda (_%g263032263037%_
                                                       _%g263033263040%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp267535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g263034263043%_ _%g263035263046%_)
                             (cons _%g263034263043%_ _%g263035263046%_))))
                      (declare (not safe))
                      (foldr__0 __tmp267535 '() _%g263032263037%_)))
              _%g263033263040%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp267534
                                          '()
                                          _%g262917263017%_)))
                                 '())))
                   _%clause262929263014%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop262924262967%_
                                           _%target262921262961%_
                                           '()))
                                        (_%g262915262944%_
                                         _%g262916262948%_)))))
                              (_%g262915262944%_ _%g262916262948%_))))
                      (_%g262915262944%_ _%g262916262948%_)))))
          (_%g262914263049%_ _%$stx262911%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx263055%_)
        (let* ((_%g263059263077%_
                (lambda (_%g263060263073%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263060263073%_))))
               (_%g263058263132%_
                (lambda (_%g263060263081%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263060263081%_))
                      (let ((_%e263063263084%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263060263081%_))))
                        (let ((_%hd263064263088%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263063263084%_)))
                              (_%tl263065263091%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263063263084%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263065263091%_))
                              (let ((_%e263066263094%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263065263091%_))))
                                (let ((_%hd263067263098%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263066263094%_)))
                                      (_%tl263068263101%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263066263094%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl263068263101%_))
                                      (let ((_%e263069263104%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl263068263101%_))))
                                        (let ((_%hd263070263108%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263069263104%_)))
                                              (_%tl263071263111%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263069263104%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263071263111%_))
                                              ((lambda (_%g263061263114%_
                                                        _%g263062263116%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g263062263116%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g263061263114%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd263070263108%_
                                               _%hd263067263098%_)
                                              (_%g263059263077%_
                                               _%g263060263081%_))))
                                      (_%g263059263077%_ _%g263060263081%_))))
                              (_%g263059263077%_ _%g263060263081%_))))
                      (_%g263059263077%_ _%g263060263081%_)))))
          (_%g263058263132%_ _%$stx263055%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx263136%_)
        (let* ((_%g263140263158%_
                (lambda (_%g263141263154%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263141263154%_))))
               (_%g263139263213%_
                (lambda (_%g263141263162%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263141263162%_))
                      (let ((_%e263144263165%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263141263162%_))))
                        (let ((_%hd263145263169%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263144263165%_)))
                              (_%tl263146263172%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263144263165%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263146263172%_))
                              (let ((_%e263147263175%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263146263172%_))))
                                (let ((_%hd263148263179%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263147263175%_)))
                                      (_%tl263149263182%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263147263175%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl263149263182%_))
                                      (let ((_%e263150263185%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl263149263182%_))))
                                        (let ((_%hd263151263189%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263150263185%_)))
                                              (_%tl263152263192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263150263185%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263152263192%_))
                                              ((lambda (_%g263142263195%_
                                                        _%g263143263197%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g263143263197%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g263142263195%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd263151263189%_
                                               _%hd263148263179%_)
                                              (_%g263140263158%_
                                               _%g263141263162%_))))
                                      (_%g263140263158%_ _%g263141263162%_))))
                              (_%g263140263158%_ _%g263141263162%_))))
                      (_%g263140263158%_ _%g263141263162%_)))))
          (_%g263139263213%_ _%$stx263136%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx263217%_)
        (let* ((_%g263221263250%_
                (lambda (_%g263222263246%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263222263246%_))))
               (_%g263220263346%_
                (lambda (_%g263222263254%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263222263254%_))
                      (let ((_%e263225263257%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263222263254%_))))
                        (let ((_%hd263226263261%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263225263257%_)))
                              (_%tl263227263264%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263225263257%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl263227263264%_))
                              (let ((_g267536_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl263227263264%_
                                        '0))))
                                (begin
                                  (let ((_g267537_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g267536_)
                                               (##values-length _g267536_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g267537_ 2)))
                                        (error "Context expects 2 values"
                                               _g267537_)))
                                  (let ((_%target263228263267%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267536_ 0)))
                                        (_%tl263230263270%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267536_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263230263270%_))
                                        (letrec ((_%loop263231263273%_
                                                  (lambda (_%hd263229263277%_
                                                           _%rule263235263280%_
                                                           _%proc263236263281%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd263229263277%_))
                                                        (let ((_%e263232263283%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd263229263277%_))))
                  (let ((_%lp-hd263233263287%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263232263283%_)))
                        (_%lp-tl263234263290%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263232263283%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd263233263287%_))
                        (let ((_%e263239263293%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd263233263287%_))))
                          (let ((_%hd263240263297%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263239263293%_)))
                                (_%tl263241263300%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263239263293%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl263241263300%_))
                                (let ((_%e263242263303%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl263241263300%_))))
                                  (let ((_%hd263243263307%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263242263303%_)))
                                        (_%tl263244263310%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263242263303%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263244263310%_))
                                        (_%loop263231263273%_
                                         _%lp-tl263234263290%_
                                         (cons _%hd263243263307%_
                                               _%rule263235263280%_)
                                         (cons _%hd263240263297%_
                                               _%proc263236263281%_))
                                        (_%g263221263250%_
                                         _%g263222263254%_))))
                                (_%g263221263250%_ _%g263222263254%_))))
                        (_%g263221263250%_ _%g263222263254%_))))
                (let ((_%rule263237263313%_ (reverse _%rule263235263280%_))
                      (_%proc263238263315%_ (reverse _%proc263236263281%_)))
                  ((lambda (_%g263223263317%_ _%g263224263319%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g263223263317%_
                                _%g263224263319%_))
                             (let ((__tmp267538
                                    (lambda (_%g263334263338%_
                                             _%g263335263341%_
                                             _%g263336263343%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g263335263341%_
                                                        (cons _%g263334263338%_
                                                              '())))
                                            _%g263336263343%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp267538
                                '()
                                _%g263223263317%_
                                _%g263224263319%_)))))
                   _%rule263237263313%_
                   _%proc263238263315%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop263231263273%_
                                           _%target263228263267%_
                                           '()
                                           '()))
                                        (_%g263221263250%_
                                         _%g263222263254%_)))))
                              (_%g263221263250%_ _%g263222263254%_))))
                      (_%g263221263250%_ _%g263222263254%_)))))
          (_%g263220263346%_ _%$stx263217%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx263351%_)
        (let* ((_%g263355263373%_
                (lambda (_%g263356263369%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263356263369%_))))
               (_%g263354263428%_
                (lambda (_%g263356263377%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263356263377%_))
                      (let ((_%e263359263380%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263356263377%_))))
                        (let ((_%hd263360263384%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263359263380%_)))
                              (_%tl263361263387%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263359263380%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263361263387%_))
                              (let ((_%e263362263390%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263361263387%_))))
                                (let ((_%hd263363263394%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263362263390%_)))
                                      (_%tl263364263397%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263362263390%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl263364263397%_))
                                      (let ((_%e263365263400%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl263364263397%_))))
                                        (let ((_%hd263366263404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263365263400%_)))
                                              (_%tl263367263407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263365263400%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263367263407%_))
                                              ((lambda (_%g263357263410%_
                                                        _%g263358263412%_)
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
                                                   (cons _%g263358263412%_
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
                 (cons _%g263357263410%_ '())))
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
                                   (cons _%g263358263412%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd263366263404%_
                                               _%hd263363263394%_)
                                              (_%g263355263373%_
                                               _%g263356263377%_))))
                                      (_%g263355263373%_ _%g263356263377%_))))
                              (_%g263355263373%_ _%g263356263377%_))))
                      (_%g263355263373%_ _%g263356263377%_)))))
          (_%g263354263428%_ _%$stx263351%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx263432%_)
        (let* ((_%__stx267018267019%_ _%$stx263432%_)
               (_%g263437263462%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx267018267019%_)))))
          (let ((_%__kont267021267022%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont267023267024%_
                 (lambda (_%g263442263509%_
                          _%g263443263511%_
                          _%g263444263512%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g263444263512%_
                                           (cons _%g263443263511%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g263442263509%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx267018267019%_))
                (let ((_%e263439263538%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx267018267019%_))))
                  (let ((_%tl263441263545%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263439263538%_)))
                        (_%hd263440263542%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263439263538%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl263441263545%_))
                        (_%__kont267021267022%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl263441263545%_))
                            (let ((_%e263448263479%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl263441263545%_))))
                              (let ((_%tl263450263486%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e263448263479%_)))
                                    (_%hd263449263483%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e263448263479%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd263449263483%_))
                                    (let ((_%e263451263489%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd263449263483%_))))
                                      (let ((_%tl263453263496%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e263451263489%_)))
                                            (_%hd263452263493%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e263451263489%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl263453263496%_))
                                            (let ((_%e263454263499%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl263453263496%_))))
                                              (let ((_%tl263456263506%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e263454263499%_)))
                                                    (_%hd263455263503%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e263454263499%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl263456263506%_))
                                                    (_%__kont267023267024%_
                                                     _%tl263450263486%_
                                                     _%hd263455263503%_
                                                     _%hd263452263493%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g263437263462%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g263437263462%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g263437263462%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g263437263462%_))))))
                (let () (declare (not safe)) (_%g263437263462%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx263556%_)
        (let* ((_%__stx267062267063%_ _%$stx263556%_)
               (_%g263561263592%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx267062267063%_)))))
          (let ((_%__kont267065267066%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont267067267068%_
                 (lambda (_%g263566263657%_
                          _%g263567263659%_
                          _%g263568263660%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g263568263660%_
                                           (let ((__tmp267539
                                                  (lambda (_%g263680263683%_
                                                           _%g263681263686%_)
                                                    (cons _%g263680263683%_
                                                          _%g263681263686%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp267539
                                              '()
                                              _%g263567263659%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g263566263657%_)
                                     '()))))))
            (let ((_%__match267105267106%_
                   (lambda (_%e263569263599%_
                            _%hd263570263603%_
                            _%tl263571263606%_
                            _%e263572263609%_
                            _%hd263573263613%_
                            _%tl263574263616%_
                            _%e263575263619%_
                            _%hd263576263623%_
                            _%tl263577263626%_
                            _%__splice267069267070%_
                            _%target263578263629%_
                            _%tl263580263632%_)
                     (letrec ((_%loop263581263635%_
                               (lambda (_%hd263579263639%_ _%sig263585263642%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd263579263639%_))
                                     (let ((_%e263582263644%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd263579263639%_))))
                                       (let ((_%lp-tl263584263651%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e263582263644%_)))
                                             (_%lp-hd263583263648%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e263582263644%_))))
                                         (_%loop263581263635%_
                                          _%lp-tl263584263651%_
                                          (cons _%lp-hd263583263648%_
                                                _%sig263585263642%_))))
                                     (let ((_%sig263586263654%_
                                            (reverse _%sig263585263642%_)))
                                       (_%__kont267067267068%_
                                        _%tl263574263616%_
                                        _%sig263586263654%_
                                        _%hd263576263623%_))))))
                       (_%loop263581263635%_ _%target263578263629%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx267062267063%_))
                  (let ((_%e263563263696%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx267062267063%_))))
                    (let ((_%tl263565263703%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263563263696%_)))
                          (_%hd263564263700%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263563263696%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl263565263703%_))
                          (_%__kont267065267066%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263565263703%_))
                              (let ((_%e263572263609%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263565263703%_))))
                                (let ((_%tl263574263616%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263572263609%_)))
                                      (_%hd263573263613%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263572263609%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd263573263613%_))
                                      (let ((_%e263575263619%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd263573263613%_))))
                                        (let ((_%tl263577263626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263575263619%_)))
                                              (_%hd263576263623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263575263619%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl263577263626%_))
                                              (let ((_%__splice267069267070%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl263577263626%_
                                                        '0))))
                                                (let ((_%tl263580263632%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice267069267070%_
                                                          '1)))
                                                      (_%target263578263629%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice267069267070%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl263580263632%_))
                                                      (_%__match267105267106%_
                                                       _%e263563263696%_
                                                       _%hd263564263700%_
                                                       _%tl263565263703%_
                                                       _%e263572263609%_
                                                       _%hd263573263613%_
                                                       _%tl263574263616%_
                                                       _%e263575263619%_
                                                       _%hd263576263623%_
                                                       _%tl263577263626%_
                                                       _%__splice267069267070%_
                                                       _%target263578263629%_
                                                       _%tl263580263632%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g263561263592%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g263561263592%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g263561263592%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g263561263592%_))))))
                  (let () (declare (not safe)) (_%g263561263592%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx263715%_)
        (let* ((_%__stx267108267109%_ _%$stx263715%_)
               (_%g263720263767%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx267108267109%_)))))
          (let ((_%__kont267111267112%_
                 (lambda (_%g263722263925%_ _%g263723263927%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g263723263927%_
                               (let ((__tmp267540
                                      (lambda (_%g263947263950%_
                                               _%g263948263953%_)
                                        (cons _%g263947263950%_
                                              _%g263948263953%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp267540
                                  '()
                                  _%g263722263925%_))))))
                (_%__kont267115267116%_
                 (lambda (_%g263745263822%_ _%g263746263824%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g263746263824%_
                               (let ((__tmp267541
                                      (lambda (_%g263841263844%_
                                               _%g263842263847%_)
                                        (cons _%g263841263844%_
                                              _%g263842263847%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp267541
                                  '()
                                  _%g263745263822%_)))))))
            (let* ((_%__match267175267176%_
                    (lambda (_%e263747263774%_
                             _%hd263748263778%_
                             _%tl263749263781%_
                             _%e263750263784%_
                             _%hd263751263788%_
                             _%tl263752263791%_
                             _%__splice267117267118%_
                             _%target263753263794%_
                             _%tl263755263797%_)
                      (letrec ((_%loop263756263800%_
                                (lambda (_%hd263754263804%_
                                         _%sig263760263807%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd263754263804%_))
                                      (let ((_%e263757263809%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd263754263804%_))))
                                        (let ((_%lp-tl263759263816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263757263809%_)))
                                              (_%lp-hd263758263813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263757263809%_))))
                                          (_%loop263756263800%_
                                           _%lp-tl263759263816%_
                                           (cons _%lp-hd263758263813%_
                                                 _%sig263760263807%_))))
                                      (let ((_%sig263761263819%_
                                             (reverse _%sig263760263807%_)))
                                        (_%__kont267115267116%_
                                         _%sig263761263819%_
                                         _%hd263751263788%_))))))
                        (_%loop263756263800%_ _%target263753263794%_ '()))))
                   (_%__match267167267168%_
                    (lambda (_%e263747263774%_
                             _%hd263748263778%_
                             _%tl263749263781%_
                             _%e263750263784%_
                             _%hd263751263788%_
                             _%tl263752263791%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl263752263791%_))
                          (let ((_%__splice267117267118%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl263752263791%_
                                    '0))))
                            (let ((_%tl263755263797%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice267117267118%_
                                      '1)))
                                  (_%target263753263794%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice267117267118%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl263755263797%_))
                                  (_%__match267175267176%_
                                   _%e263747263774%_
                                   _%hd263748263778%_
                                   _%tl263749263781%_
                                   _%e263750263784%_
                                   _%hd263751263788%_
                                   _%tl263752263791%_
                                   _%__splice267117267118%_
                                   _%target263753263794%_
                                   _%tl263755263797%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g263720263767%_)))))
                          (let () (declare (not safe)) (_%g263720263767%_)))))
                   (_%__match267155267156%_
                    (lambda (_%e263724263857%_
                             _%hd263725263861%_
                             _%tl263726263864%_
                             _%e263727263867%_
                             _%hd263728263871%_
                             _%tl263729263874%_
                             _%e263730263877%_
                             _%hd263731263881%_
                             _%tl263732263884%_
                             _%e263733263887%_
                             _%hd263734263891%_
                             _%tl263735263894%_
                             _%__splice267113267114%_
                             _%target263736263897%_
                             _%tl263738263900%_)
                      (letrec ((_%loop263739263903%_
                                (lambda (_%hd263737263907%_
                                         _%sig263743263910%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd263737263907%_))
                                      (let ((_%e263740263912%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd263737263907%_))))
                                        (let ((_%lp-tl263742263919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263740263912%_)))
                                              (_%lp-hd263741263916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263740263912%_))))
                                          (_%loop263739263903%_
                                           _%lp-tl263742263919%_
                                           (cons _%lp-hd263741263916%_
                                                 _%sig263743263910%_))))
                                      (let ((_%sig263744263922%_
                                             (reverse _%sig263743263910%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl263732263884%_))
                                            (_%__kont267111267112%_
                                             _%sig263744263922%_
                                             _%hd263728263871%_)
                                            (_%__match267167267168%_
                                             _%e263724263857%_
                                             _%hd263725263861%_
                                             _%tl263726263864%_
                                             _%e263727263867%_
                                             _%hd263728263871%_
                                             _%tl263729263874%_)))))))
                        (_%loop263739263903%_ _%target263736263897%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx267108267109%_))
                  (let ((_%e263724263857%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx267108267109%_))))
                    (let ((_%tl263726263864%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263724263857%_)))
                          (_%hd263725263861%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263724263857%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl263726263864%_))
                          (let ((_%e263727263867%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl263726263864%_))))
                            (let ((_%tl263729263874%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e263727263867%_)))
                                  (_%hd263728263871%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e263727263867%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl263729263874%_))
                                  (let ((_%e263730263877%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl263729263874%_))))
                                    (let ((_%tl263732263884%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e263730263877%_)))
                                          (_%hd263731263881%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e263730263877%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd263731263881%_))
                                          (let ((_%e263733263887%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd263731263881%_))))
                                            (let ((_%tl263735263894%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e263733263887%_)))
                                                  (_%hd263734263891%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e263733263887%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd263734263891%_))
                                                  (if (let ((__tmp267542
                                                             |gxc[1]#_g267543_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp267542
                                                         _%hd263734263891%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl263735263894%_))
                                                          (let ((_%__splice267113267114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl263735263894%_
                            '0))))
                    (let ((_%tl263738263900%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice267113267114%_ '1)))
                          (_%target263736263897%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice267113267114%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl263738263900%_))
                          (_%__match267155267156%_
                           _%e263724263857%_
                           _%hd263725263861%_
                           _%tl263726263864%_
                           _%e263727263867%_
                           _%hd263728263871%_
                           _%tl263729263874%_
                           _%e263730263877%_
                           _%hd263731263881%_
                           _%tl263732263884%_
                           _%e263733263887%_
                           _%hd263734263891%_
                           _%tl263735263894%_
                           _%__splice267113267114%_
                           _%target263736263897%_
                           _%tl263738263900%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl263729263874%_))
                              (let ((_%__splice267117267118%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl263729263874%_
                                        '0))))
                                (let ((_%tl263755263797%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice267117267118%_
                                          '1)))
                                      (_%target263753263794%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice267117267118%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl263755263797%_))
                                      (_%__match267175267176%_
                                       _%e263724263857%_
                                       _%hd263725263861%_
                                       _%tl263726263864%_
                                       _%e263727263867%_
                                       _%hd263728263871%_
                                       _%tl263729263874%_
                                       _%__splice267117267118%_
                                       _%target263753263794%_
                                       _%tl263755263797%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g263720263767%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g263720263767%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl263729263874%_))
                      (let ((_%__splice267117267118%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl263729263874%_
                                '0))))
                        (let ((_%tl263755263797%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267117267118%_ '1)))
                              (_%target263753263794%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267117267118%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl263755263797%_))
                              (_%__match267175267176%_
                               _%e263724263857%_
                               _%hd263725263861%_
                               _%tl263726263864%_
                               _%e263727263867%_
                               _%hd263728263871%_
                               _%tl263729263874%_
                               _%__splice267117267118%_
                               _%target263753263794%_
                               _%tl263755263797%_)
                              (let ()
                                (declare (not safe))
                                (_%g263720263767%_)))))
                      (let () (declare (not safe)) (_%g263720263767%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl263729263874%_))
                  (let ((_%__splice267117267118%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl263729263874%_
                            '0))))
                    (let ((_%tl263755263797%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice267117267118%_ '1)))
                          (_%target263753263794%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice267117267118%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl263755263797%_))
                          (_%__match267175267176%_
                           _%e263724263857%_
                           _%hd263725263861%_
                           _%tl263726263864%_
                           _%e263727263867%_
                           _%hd263728263871%_
                           _%tl263729263874%_
                           _%__splice267117267118%_
                           _%target263753263794%_
                           _%tl263755263797%_)
                          (let () (declare (not safe)) (_%g263720263767%_)))))
                  (let () (declare (not safe)) (_%g263720263767%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl263729263874%_))
                                                      (let ((_%__splice267117267118%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl263729263874%_
                        '0))))
                (let ((_%tl263755263797%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice267117267118%_ '1)))
                      (_%target263753263794%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice267117267118%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl263755263797%_))
                      (_%__match267175267176%_
                       _%e263724263857%_
                       _%hd263725263861%_
                       _%tl263726263864%_
                       _%e263727263867%_
                       _%hd263728263871%_
                       _%tl263729263874%_
                       _%__splice267117267118%_
                       _%target263753263794%_
                       _%tl263755263797%_)
                      (let () (declare (not safe)) (_%g263720263767%_)))))
              (let () (declare (not safe)) (_%g263720263767%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl263729263874%_))
                                              (let ((_%__splice267117267118%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl263729263874%_
                                                        '0))))
                                                (let ((_%tl263755263797%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice267117267118%_
                                                          '1)))
                                                      (_%target263753263794%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice267117267118%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl263755263797%_))
                                                      (_%__match267175267176%_
                                                       _%e263724263857%_
                                                       _%hd263725263861%_
                                                       _%tl263726263864%_
                                                       _%e263727263867%_
                                                       _%hd263728263871%_
                                                       _%tl263729263874%_
                                                       _%__splice267117267118%_
                                                       _%target263753263794%_
                                                       _%tl263755263797%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g263720263767%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g263720263767%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl263729263874%_))
                                      (let ((_%__splice267117267118%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl263729263874%_
                                                '0))))
                                        (let ((_%tl263755263797%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice267117267118%_
                                                  '1)))
                                              (_%target263753263794%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice267117267118%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263755263797%_))
                                              (_%__match267175267176%_
                                               _%e263724263857%_
                                               _%hd263725263861%_
                                               _%tl263726263864%_
                                               _%e263727263867%_
                                               _%hd263728263871%_
                                               _%tl263729263874%_
                                               _%__splice267117267118%_
                                               _%target263753263794%_
                                               _%tl263755263797%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g263720263767%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g263720263767%_))))))
                          (let () (declare (not safe)) (_%g263720263767%_)))))
                  (let () (declare (not safe)) (_%g263720263767%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx265110%_ _%id265112%_)
        (let ((_%proc265116%_
               (let ((__tmp267544
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id265112%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp267544))))
          (if (procedure? _%proc265116%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx265110%_
                 _%id265112%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx265101%_ _%id265103%_)
        (let ((_%klass265107%_
               (let ((__tmp267545
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id265103%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp267545))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass265107%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx265101%_
                 _%id265103%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx264351%_ _%proc264353%_ _%sig264354%_)
        (letrec ((_%signature-arity264356%_
                  (lambda (_%args265033%_)
                    (let _%loop265036%_ ((_%rest265039%_ _%args265033%_)
                                         (_%count265041%_ '0))
                      (let* ((_%rest265042265053%_ _%rest265039%_)
                             (_%E265046265059%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest265042265053%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K265049265090%_
                               (lambda (_%rest265087%_)
                                 (_%loop265036%_
                                  _%rest265087%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count265041%_ '1)))))
                              (_%K265048265079%_ (lambda () _%count265041%_))
                              (_%K265047265067%_
                               (lambda () (cons _%count265041%_ '()))))
                          (let ((_%try-match265044265083%_
                                 (lambda ()
                                   (if (null? _%rest265042265053%_)
                                       (_%K265048265079%_)
                                       (_%K265047265067%_)))))
                            (if (pair? _%rest265042265053%_)
                                (let* ((_%tl265051265094%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest265042265053%_)))
                                       (_%rest265098%_ _%tl265051265094%_))
                                  (_%K265049265090%_ _%rest265098%_))
                                (_%try-match265044265083%_))))))))
                 (_%make-signature264358%_
                  (lambda (_%args264915%_
                           _%return264917%_
                           _%effect264918%_
                           _%unchecked264919%_)
                    (let ((__tmp267546
                           (lambda (_%g264920264922%_)
                             (|gxc[1]#verify-class!|
                              _%ctx264351%_
                              _%g264920264922%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp267546 _%args264915%_))
                    (|gxc[1]#verify-class!| _%ctx264351%_ _%return264917%_)
                    (if _%unchecked264919%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx264351%_
                         _%unchecked264919%_)
                        '#!void)
                    (let ((_%arity264926%_
                           (_%signature-arity264356%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args264915%_)))))
                      (if _%effect264918%_
                          (let ((_%effect264929%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect264918%_))))
                            (if (and (list? _%effect264929%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect264929%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx264351%_
                                   _%proc264353%_
                                   _%effect264929%_))))
                          '#!void)
                      (cons _%arity264926%_
                            (cons (let* ((_%g264932264955%_
                                          (lambda (_%g264933264951%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g264933264951%_))))
                                         (_%g264931265029%_
                                          (lambda (_%g264933264959%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g264933264959%_))
                                                (let ((_%e264938264962%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g264933264959%_))))
                                                  (let ((_%hd264939264966%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e264938264962%_)))
                                                        (_%tl264940264969%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e264938264962%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl264940264969%_))
                                                        (let ((_%e264941264972%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl264940264969%_))))
                  (let ((_%hd264942264976%_
                         (let ()
                           (declare (not safe))
                           (##car _%e264941264972%_)))
                        (_%tl264943264979%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e264941264972%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl264943264979%_))
                        (let ((_%e264944264982%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl264943264979%_))))
                          (let ((_%hd264945264986%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264944264982%_)))
                                (_%tl264946264989%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264944264982%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl264946264989%_))
                                (let ((_%e264947264992%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl264946264989%_))))
                                  (let ((_%hd264948264996%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e264947264992%_)))
                                        (_%tl264949264999%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e264947264992%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl264949264999%_))
                                        ((lambda (_%g264934265002%_
                                                  _%g264935265004%_
                                                  _%g264936265005%_
                                                  _%g264937265006%_)
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
                           (cons _%g264937265006%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g264936265005%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g264935265004%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g264934265002%_ '()))
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
                                         _%hd264948264996%_
                                         _%hd264945264986%_
                                         _%hd264942264976%_
                                         _%hd264939264966%_)
                                        (_%g264932264955%_
                                         _%g264933264959%_))))
                                (_%g264932264955%_ _%g264933264959%_))))
                        (_%g264932264955%_ _%g264933264959%_))))
                (_%g264932264955%_ _%g264933264959%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g264932264955%_
                                                 _%g264933264959%_)))))
                                    (_%g264931265029%_
                                     (list _%args264915%_
                                           _%return264917%_
                                           _%effect264918%_
                                           _%unchecked264919%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx264351%_ _%proc264353%_)
          (let* ((_%__stx267186267187%_ _%sig264354%_)
                 (_%g264365264468%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx267186267187%_)))))
            (let ((_%__kont267189267190%_
                   (lambda (_%g264367264896%_ _%g264368264898%_)
                     (_%make-signature264358%_
                      _%g264368264898%_
                      _%g264367264896%_
                      '#f
                      '#f)))
                  (_%__kont267191267192%_
                   (lambda (_%g264375264847%_
                            _%g264376264849%_
                            _%g264377264850%_)
                     (_%make-signature264358%_
                      _%g264377264850%_
                      _%g264376264849%_
                      _%g264375264847%_
                      '#f)))
                  (_%__kont267193267194%_
                   (lambda (_%g264391264771%_
                            _%g264392264773%_
                            _%g264393264774%_)
                     (_%make-signature264358%_
                      _%g264393264774%_
                      _%g264392264773%_
                      _%g264391264771%_
                      (let ((__tmp267547
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc264353%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp267547)))))
                  (_%__kont267195267196%_
                   (lambda (_%g264411264677%_
                            _%g264412264679%_
                            _%g264413264680%_
                            _%g264414264681%_)
                     (_%make-signature264358%_
                      _%g264414264681%_
                      _%g264413264680%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g264411264677%_)))))
                  (_%__kont267197267198%_
                   (lambda (_%g264435264584%_ _%g264436264586%_)
                     (_%make-signature264358%_
                      _%g264436264586%_
                      _%g264435264584%_
                      '#f
                      (let ((__tmp267548
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc264353%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp267548)))))
                  (_%__kont267199267200%_
                   (lambda (_%g264447264519%_
                            _%g264448264521%_
                            _%g264449264522%_)
                     (_%make-signature264358%_
                      _%g264449264522%_
                      _%g264448264521%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g264447264519%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx267186267187%_))
                  (let ((_%e264369264876%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx267186267187%_))))
                    (let ((_%tl264371264883%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e264369264876%_)))
                          (_%hd264370264880%_
                           (let ()
                             (declare (not safe))
                             (##car _%e264369264876%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl264371264883%_))
                          (let ((_%e264372264886%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl264371264883%_))))
                            (let ((_%tl264374264893%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e264372264886%_)))
                                  (_%hd264373264890%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e264372264886%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl264374264893%_))
                                  (_%__kont267189267190%_
                                   _%hd264373264890%_
                                   _%hd264370264880%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl264374264893%_))
                                      (let ((_%e264384264823%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl264374264893%_))))
                                        (let ((_%tl264386264830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264384264823%_)))
                                              (_%hd264385264827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264384264823%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd264385264827%_))
                                              (let ((_%e264387264833%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd264385264827%_))))
                                                (if (equal? _%e264387264833%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl264386264830%_))
                                                        (let ((_%e264388264837%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl264386264830%_))))
                  (let ((_%tl264390264844%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e264388264837%_)))
                        (_%hd264389264841%_
                         (let ()
                           (declare (not safe))
                           (##car _%e264388264837%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl264390264844%_))
                        (_%__kont267191267192%_
                         _%hd264389264841%_
                         _%hd264373264890%_
                         _%hd264370264880%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl264390264844%_))
                            (let ((_%e264407264757%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl264390264844%_))))
                              (let ((_%tl264409264764%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e264407264757%_)))
                                    (_%hd264408264761%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e264407264757%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd264408264761%_))
                                    (let ((_%e264410264767%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd264408264761%_))))
                                      (if (equal? _%e264410264767%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl264409264764%_))
                                              (_%__kont267193267194%_
                                               _%hd264389264841%_
                                               _%hd264373264890%_
                                               _%hd264370264880%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl264409264764%_))
                                                  (let ((_%e264432264667%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl264409264764%_))))
                                                    (let ((_%tl264434264674%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e264432264667%_)))
                                                          (_%hd264433264671%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e264432264667%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl264434264674%_))
                                                          (_%__kont267195267196%_
                                                           _%hd264433264671%_
                                                           _%hd264389264841%_
                                                           _%hd264373264890%_
                                                           _%hd264370264880%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g264365264468%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g264365264468%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g264365264468%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g264365264468%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g264365264468%_))))))
                (let () (declare (not safe)) (_%g264365264468%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e264387264833%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl264386264830%_))
                                                            (_%__kont267197267198%_
                                                             _%hd264373264890%_
                                                             _%hd264370264880%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl264386264830%_))
                        (let ((_%e264460264509%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl264386264830%_))))
                          (let ((_%tl264462264516%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264460264509%_)))
                                (_%hd264461264513%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264460264509%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl264462264516%_))
                                (_%__kont267199267200%_
                                 _%hd264461264513%_
                                 _%hd264373264890%_
                                 _%hd264370264880%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g264365264468%_)))))
                        (let () (declare (not safe)) (_%g264365264468%_))))
                (let () (declare (not safe)) (_%g264365264468%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g264365264468%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g264365264468%_))))))
                          (let () (declare (not safe)) (_%g264365264468%_)))))
                  (let () (declare (not safe)) (_%g264365264468%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig263962%_)
        (let* ((_%g263965264045%_
                (lambda (_%g263966264041%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263966264041%_))))
               (_%g263964264347%_
                (lambda (_%g263966264049%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263966264049%_))
                      (let ((_%e263972264052%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263966264049%_))))
                        (let ((_%hd263973264056%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263972264052%_)))
                              (_%tl263974264059%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263972264052%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263974264059%_))
                              (let ((_%e263975264062%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263974264059%_))))
                                (let ((_%hd263976264066%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263975264062%_)))
                                      (_%tl263977264069%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263975264062%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd263976264066%_))
                                      (let ((_%e263978264072%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd263976264066%_))))
                                        (if (equal? _%e263978264072%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl263977264069%_))
                                                (let ((_%e263979264076%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl263977264069%_))))
                                                  (let ((_%hd263980264080%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e263979264076%_)))
                                                        (_%tl263981264083%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e263979264076%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd263980264080%_))
                                                        (let ((_%e263982264086%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd263980264080%_))))
                  (let ((_%hd263983264090%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263982264086%_)))
                        (_%tl263984264093%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263982264086%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd263983264090%_))
                        (if (let ((__tmp267549 |gxc[1]#_g267550_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp267549
                               _%hd263983264090%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl263984264093%_))
                                (let ((_%e263985264096%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl263984264093%_))))
                                  (let ((_%hd263986264100%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263985264096%_)))
                                        (_%tl263987264103%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263985264096%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263987264103%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl263981264083%_))
                                            (let ((_%e263988264106%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl263981264083%_))))
                                              (let ((_%hd263989264110%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e263988264106%_)))
                                                    (_%tl263990264113%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e263988264106%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd263989264110%_))
                                                    (let ((_%e263991264116%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd263989264110%_))))
                                                      (if (equal? _%e263991264116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl263990264113%_))
                      (let ((_%e263992264120%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl263990264113%_))))
                        (let ((_%hd263993264124%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263992264120%_)))
                              (_%tl263994264127%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263992264120%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd263993264124%_))
                              (let ((_%e263995264130%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd263993264124%_))))
                                (let ((_%hd263996264134%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263995264130%_)))
                                      (_%tl263997264137%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263995264130%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd263996264134%_))
                                      (if (let ((__tmp267551
                                                 |gxc[1]#_g267552_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp267551
                                             _%hd263996264134%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl263997264137%_))
                                              (let ((_%e263998264140%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl263997264137%_))))
                                                (let ((_%hd263999264144%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e263998264140%_)))
                                                      (_%tl264000264147%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e263998264140%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl264000264147%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl263994264127%_))
                                                          (let ((_%e264001264150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl263994264127%_))))
                    (let ((_%hd264002264154%_
                           (let ()
                             (declare (not safe))
                             (##car _%e264001264150%_)))
                          (_%tl264003264157%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e264001264150%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd264002264154%_))
                          (let ((_%e264004264160%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd264002264154%_))))
                            (if (equal? _%e264004264160%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl264003264157%_))
                                    (let ((_%e264005264164%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl264003264157%_))))
                                      (let ((_%hd264006264168%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e264005264164%_)))
                                            (_%tl264007264171%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e264005264164%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd264006264168%_))
                                            (let ((_%e264008264174%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd264006264168%_))))
                                              (let ((_%hd264009264178%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e264008264174%_)))
                                                    (_%tl264010264181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e264008264174%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd264009264178%_))
                                                    (if (let ((__tmp267553
                                                               |gxc[1]#_g267554_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp267553
                                                           _%hd264009264178%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl264010264181%_))
                                                            (let ((_%e264011264184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl264010264181%_))))
                      (let ((_%hd264012264188%_
                             (let ()
                               (declare (not safe))
                               (##car _%e264011264184%_)))
                            (_%tl264013264191%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e264011264184%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl264013264191%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl264007264171%_))
                                (let ((_%e264014264194%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl264007264171%_))))
                                  (let ((_%hd264015264198%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e264014264194%_)))
                                        (_%tl264016264201%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e264014264194%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd264015264198%_))
                                        (let ((_%e264017264204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd264015264198%_))))
                                          (if (equal? _%e264017264204%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl264016264201%_))
                                                  (let ((_%e264018264208%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl264016264201%_))))
                                                    (let ((_%hd264019264212%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e264018264208%_)))
                                                          (_%tl264020264215%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e264018264208%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd264019264212%_))
                                                          (let ((_%e264021264218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd264019264212%_))))
                    (let ((_%hd264022264222%_
                           (let ()
                             (declare (not safe))
                             (##car _%e264021264218%_)))
                          (_%tl264023264225%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e264021264218%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd264022264222%_))
                          (if (let ((__tmp267555 |gxc[1]#_g267556_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp267555
                                 _%hd264022264222%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl264023264225%_))
                                  (let ((_%e264024264228%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl264023264225%_))))
                                    (let ((_%hd264025264232%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e264024264228%_)))
                                          (_%tl264026264235%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e264024264228%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl264026264235%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl264020264215%_))
                                              (let ((_%e264027264238%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl264020264215%_))))
                                                (let ((_%hd264028264242%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e264027264238%_)))
                                                      (_%tl264029264245%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e264027264238%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd264028264242%_))
                                                      (let ((_%e264030264248%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd264028264242%_))))
                (if (equal? _%e264030264248%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl264029264245%_))
                        (let ((_%e264031264252%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl264029264245%_))))
                          (let ((_%hd264032264256%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264031264252%_)))
                                (_%tl264033264259%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264031264252%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd264032264256%_))
                                (let ((_%e264034264262%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd264032264256%_))))
                                  (let ((_%hd264035264266%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e264034264262%_)))
                                        (_%tl264036264269%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e264034264262%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd264035264266%_))
                                        (if (let ((__tmp267557
                                                   |gxc[1]#_g267558_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp267557
                                               _%hd264035264266%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl264036264269%_))
                                                (let ((_%e264037264272%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl264036264269%_))))
                                                  (let ((_%hd264038264276%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e264037264272%_)))
                                                        (_%tl264039264279%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e264037264272%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl264039264279%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl264033264259%_))
                                                            ((lambda (_%g263967264282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g263968264284%_
                              _%g263969264285%_
                              _%g263970264286%_
                              _%g263971264287%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g263968264284%_))
                           (cons _%g263968264284%_
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
                       (cons _%g263970264286%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g263967264282%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd264038264276%_
                     _%hd264025264232%_
                     _%hd264012264188%_
                     _%hd263999264144%_
                     _%hd263986264100%_)
                    (_%g263965264045%_ _%g263966264049%_))
                (_%g263965264045%_ _%g263966264049%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g263965264045%_
                                                 _%g263966264049%_))
                                            (_%g263965264045%_
                                             _%g263966264049%_))
                                        (_%g263965264045%_
                                         _%g263966264049%_))))
                                (_%g263965264045%_ _%g263966264049%_))))
                        (_%g263965264045%_ _%g263966264049%_))
                    (_%g263965264045%_ _%g263966264049%_)))
              (_%g263965264045%_ _%g263966264049%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g263965264045%_
                                               _%g263966264049%_))
                                          (_%g263965264045%_
                                           _%g263966264049%_))))
                                  (_%g263965264045%_ _%g263966264049%_))
                              (_%g263965264045%_ _%g263966264049%_))
                          (_%g263965264045%_ _%g263966264049%_))))
                  (_%g263965264045%_ _%g263966264049%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g263965264045%_
                                                   _%g263966264049%_))
                                              (_%g263965264045%_
                                               _%g263966264049%_)))
                                        (_%g263965264045%_
                                         _%g263966264049%_))))
                                (_%g263965264045%_ _%g263966264049%_))
                            (_%g263965264045%_ _%g263966264049%_))))
                    (_%g263965264045%_ _%g263966264049%_))
                (_%g263965264045%_ _%g263966264049%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g263965264045%_
                                                     _%g263966264049%_))))
                                            (_%g263965264045%_
                                             _%g263966264049%_))))
                                    (_%g263965264045%_ _%g263966264049%_))
                                (_%g263965264045%_ _%g263966264049%_)))
                          (_%g263965264045%_ _%g263966264049%_))))
                  (_%g263965264045%_ _%g263966264049%_))
              (_%g263965264045%_ _%g263966264049%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g263965264045%_
                                               _%g263966264049%_))
                                          (_%g263965264045%_
                                           _%g263966264049%_))
                                      (_%g263965264045%_ _%g263966264049%_))))
                              (_%g263965264045%_ _%g263966264049%_))))
                      (_%g263965264045%_ _%g263966264049%_))
                  (_%g263965264045%_ _%g263966264049%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g263965264045%_
                                                     _%g263966264049%_))))
                                            (_%g263965264045%_
                                             _%g263966264049%_))
                                        (_%g263965264045%_
                                         _%g263966264049%_))))
                                (_%g263965264045%_ _%g263966264049%_))
                            (_%g263965264045%_ _%g263966264049%_))
                        (_%g263965264045%_ _%g263966264049%_))))
                (_%g263965264045%_ _%g263966264049%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g263965264045%_
                                                 _%g263966264049%_))
                                            (_%g263965264045%_
                                             _%g263966264049%_)))
                                      (_%g263965264045%_ _%g263966264049%_))))
                              (_%g263965264045%_ _%g263966264049%_))))
                      (_%g263965264045%_ _%g263966264049%_)))))
          (_%g263964264347%_ _%sig263962%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx265119%_)
        (let* ((_%g265122265140%_
                (lambda (_%g265123265136%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265123265136%_))))
               (_%g265121265195%_
                (lambda (_%g265123265144%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265123265144%_))
                      (let ((_%e265126265147%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265123265144%_))))
                        (let ((_%hd265127265151%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265126265147%_)))
                              (_%tl265128265154%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265126265147%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl265128265154%_))
                              (let ((_%e265129265157%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl265128265154%_))))
                                (let ((_%hd265130265161%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265129265157%_)))
                                      (_%tl265131265164%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265129265157%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl265131265164%_))
                                      (let ((_%e265132265167%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl265131265164%_))))
                                        (let ((_%hd265133265171%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e265132265167%_)))
                                              (_%tl265134265174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e265132265167%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl265134265174%_))
                                              ((lambda (_%g265124265177%_
                                                        _%g265125265179%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g265125265179%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g265124265177%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx265119%_
                                                        _%g265125265179%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx265119%_
                                                        _%g265124265177%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g265125265179%_
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
                                                   (cons _%g265124265177%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g265122265140%_
                                                      _%g265123265144%_)))
                                               _%hd265133265171%_
                                               _%hd265130265161%_)
                                              (_%g265122265140%_
                                               _%g265123265144%_))))
                                      (_%g265122265140%_ _%g265123265144%_))))
                              (_%g265122265140%_ _%g265123265144%_))))
                      (_%g265122265140%_ _%g265123265144%_)))))
          (_%g265121265195%_ _%stx265119%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx265199%_)
        (let* ((_%g265202265226%_
                (lambda (_%g265203265222%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265203265222%_))))
               (_%g265201265507%_
                (lambda (_%g265203265230%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265203265230%_))
                      (let ((_%e265206265233%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265203265230%_))))
                        (let ((_%hd265207265237%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265206265233%_)))
                              (_%tl265208265240%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265206265233%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl265208265240%_))
                              (let ((_%e265209265243%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl265208265240%_))))
                                (let ((_%hd265210265247%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265209265243%_)))
                                      (_%tl265211265250%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265209265243%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl265211265250%_))
                                      (let ((_g267559_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl265211265250%_
                                                '0))))
                                        (begin
                                          (let ((_g267560_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g267559_)
                                                       (##values-length
                                                        _g267559_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g267560_ 2)))
                                                (error "Context expects 2 values"
                                                       _g267560_)))
                                          (let ((_%target265212265253%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g267559_ 0)))
                                                (_%tl265214265256%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g267559_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl265214265256%_))
                                                (letrec ((_%loop265215265259%_
                                                          (lambda (_%hd265213265263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature265219265266%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd265213265263%_))
                        (let ((_%e265216265268%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd265213265263%_))))
                          (let ((_%lp-hd265217265272%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e265216265268%_)))
                                (_%lp-tl265218265275%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e265216265268%_))))
                            (_%loop265215265259%_
                             _%lp-tl265218265275%_
                             (cons _%lp-hd265217265272%_
                                   _%signature265219265266%_))))
                        (let ((_%signature265220265278%_
                               (reverse _%signature265219265266%_)))
                          ((lambda (_%g265204265281%_ _%g265205265283%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g265205265283%_))
                                 (let* ((_%g265301265316%_
                                         (lambda (_%g265302265312%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g265302265312%_))))
                                        (_%g265300265495%_
                                         (lambda (_%g265302265320%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g265302265320%_))
                                               (let ((_%e265305265323%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g265302265320%_))))
                                                 (let ((_%hd265306265327%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e265305265323%_)))
                                                       (_%tl265307265330%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e265305265323%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl265307265330%_))
                                                       (let ((_%e265308265333%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl265307265330%_))))
                 (let ((_%hd265309265337%_
                        (let ()
                          (declare (not safe))
                          (##car _%e265308265333%_)))
                       (_%tl265310265340%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e265308265333%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl265310265340%_))
                       ((lambda (_%g265303265343%_ _%g265304265345%_)
                          (let* ((_%g265361265369%_
                                  (lambda (_%g265362265365%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g265362265365%_))))
                                 (_%g265360265491%_
                                  (lambda (_%g265362265373%_)
                                    ((lambda (_%g265363265376%_)
                                       (let* ((_%unchecked265389%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g265303265343%_))
                                              (_%g265392265400%_
                                               (lambda (_%g265393265396%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g265393265396%_))))
                                              (_%g265391265423%_
                                               (lambda (_%g265393265404%_)
                                                 ((lambda (_%g265394265407%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g265363265376%_
                                                                (cons _%g265394265407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g265393265404%_))))
                                         (_%g265391265423%_
                                          (if _%unchecked265389%_
                                              (let* ((_%g265427265442%_
                                                      (lambda (_%g265428265438%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g265428265438%_))))
                                                     (_%g265426265487%_
                                                      (lambda (_%g265428265446%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g265428265446%_))
                                                            (let ((_%e265431265449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g265428265446%_))))
                      (let ((_%hd265432265453%_
                             (let ()
                               (declare (not safe))
                               (##car _%e265431265449%_)))
                            (_%tl265433265456%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e265431265449%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl265433265456%_))
                            (let ((_%e265434265459%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl265433265456%_))))
                              (let ((_%hd265435265463%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e265434265459%_)))
                                    (_%tl265436265466%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e265434265459%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl265436265466%_))
                                    ((lambda (_%g265429265469%_
                                              _%g265430265471%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g265430265471%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g265304265345%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g265429265469%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd265435265463%_
                                     _%hd265432265453%_)
                                    (_%g265427265442%_ _%g265428265446%_))))
                            (_%g265427265442%_ _%g265428265446%_))))
                    (_%g265427265442%_ _%g265428265446%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g265426265487%_
                                                 _%unchecked265389%_))
                                              '(begin)))))
                                     _%g265362265373%_))))
                            (_%g265360265491%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g265205265283%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g265304265345%_ '()))
                   (cons '#f (cons 'signature: (cons _%g265303265343%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd265309265337%_
                        _%hd265306265327%_)
                       (_%g265301265316%_ _%g265302265320%_))))
               (_%g265301265316%_ _%g265302265320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265301265316%_
                                                _%g265302265320%_)))))
                                   (_%g265300265495%_
                                    (|gxc[1]#parse-signature|
                                     _%stx265199%_
                                     _%g265205265283%_
                                     (let ((__tmp267561
                                            (lambda (_%g265498265501%_
                                                     _%g265499265504%_)
                                              (cons _%g265498265501%_
                                                    _%g265499265504%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp267561
                                        '()
                                        _%g265204265281%_)))))
                                 (_%g265202265226%_ _%g265203265230%_)))
                           _%signature265220265278%_
                           _%hd265210265247%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop265215265259%_
                                                   _%target265212265253%_
                                                   '()))
                                                (_%g265202265226%_
                                                 _%g265203265230%_)))))
                                      (_%g265202265226%_ _%g265203265230%_))))
                              (_%g265202265226%_ _%g265203265230%_))))
                      (_%g265202265226%_ _%g265203265230%_)))))
          (_%g265201265507%_ _%stx265199%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx265512%_)
        (let* ((_%g265515265539%_
                (lambda (_%g265516265535%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265516265535%_))))
               (_%g265514266414%_
                (lambda (_%g265516265543%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265516265543%_))
                      (let ((_%e265519265546%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265516265543%_))))
                        (let ((_%hd265520265550%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265519265546%_)))
                              (_%tl265521265553%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265519265546%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl265521265553%_))
                              (let ((_%e265522265556%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl265521265553%_))))
                                (let ((_%hd265523265560%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265522265556%_)))
                                      (_%tl265524265563%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265522265556%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl265524265563%_))
                                      (let ((_g267562_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl265524265563%_
                                                '0))))
                                        (begin
                                          (let ((_g267563_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g267562_)
                                                       (##values-length
                                                        _g267562_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g267563_ 2)))
                                                (error "Context expects 2 values"
                                                       _g267563_)))
                                          (let ((_%target265525265566%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g267562_ 0)))
                                                (_%tl265527265569%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g267562_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl265527265569%_))
                                                (letrec ((_%loop265528265572%_
                                                          (lambda (_%hd265526265576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature265532265579%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd265526265576%_))
                        (let ((_%e265529265581%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd265526265576%_))))
                          (let ((_%lp-hd265530265585%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e265529265581%_)))
                                (_%lp-tl265531265588%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e265529265581%_))))
                            (_%loop265528265572%_
                             _%lp-tl265531265588%_
                             (cons _%lp-hd265530265585%_
                                   _%case-signature265532265579%_))))
                        (let ((_%case-signature265533265591%_
                               (reverse _%case-signature265532265579%_)))
                          ((lambda (_%g265517265594%_ _%g265518265596%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g265518265596%_))
                                 (let* ((_%signatures265627%_
                                         (map (lambda (_%g265613265615%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx265512%_
                                                 _%g265518265596%_
                                                 _%g265613265615%_))
                                              (let ((__tmp267564
                                                     (lambda (_%g265618265621%_
                                                              _%g265619265624%_)
                                                       (cons _%g265618265621%_
                                                             _%g265619265624%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp267564
                                                 '()
                                                 _%g265517265594%_))))
                                        (_%g265630265656%_
                                         (lambda (_%g265631265652%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g265631265652%_))))
                                        (_%g265629266410%_
                                         (lambda (_%g265631265660%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g265631265660%_))
                                               (let ((_g267565_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g265631265660%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g267566_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g267565_)
                        (##values-length _g267565_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g267566_ 2)))
                 (error "Context expects 2 values" _g267566_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target265634265663%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g267565_
                                                             0)))
                                                         (_%tl265636265666%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g267565_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl265636265666%_))
                                                         (letrec ((_%loop265637265669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd265635265673%_
                                    _%sig265641265676%_
                                    _%arity265642265677%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd265635265673%_))
                                 (let ((_%e265638265679%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd265635265673%_))))
                                   (let ((_%lp-hd265639265683%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e265638265679%_)))
                                         (_%lp-tl265640265686%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e265638265679%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd265639265683%_))
                                         (let ((_%e265645265689%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd265639265683%_))))
                                           (let ((_%hd265646265693%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e265645265689%_)))
                                                 (_%tl265647265696%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e265645265689%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl265647265696%_))
                                                 (let ((_%e265648265699%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl265647265696%_))))
                                                   (let ((_%hd265649265703%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e265648265699%_)))
                                                         (_%tl265650265706%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e265648265699%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl265650265706%_))
                                                         (_%loop265637265669%_
                                                          _%lp-tl265640265686%_
                                                          (cons _%hd265649265703%_
                                                                _%sig265641265676%_)
                                                          (cons _%hd265646265693%_
                                                                _%arity265642265677%_))
                                                         (_%g265630265656%_
                                                          _%g265631265660%_))))
                                                 (_%g265630265656%_
                                                  _%g265631265660%_))))
                                         (_%g265630265656%_
                                          _%g265631265660%_))))
                                 (let ((_%sig265643265709%_
                                        (reverse _%sig265641265676%_))
                                       (_%arity265644265711%_
                                        (reverse _%arity265642265677%_)))
                                   ((lambda (_%g265632265713%_
                                             _%g265633265715%_)
                                      (let* ((_%g265732265740%_
                                              (lambda (_%g265733265736%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g265733265736%_))))
                                             (_%g265731266395%_
                                              (lambda (_%g265733265744%_)
                                                ((lambda (_%g265734265747%_)
                                                   (let* ((_%g265760265768%_
                                                           (lambda (_%g265761265764%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g265761265764%_))))
                  (_%g265759265790%_
                   (lambda (_%g265761265772%_)
                     ((lambda (_%g265762265775%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g265734265747%_
                                    (cons _%g265762265775%_ '()))))
                      _%g265761265772%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g265759265790%_
                                                      (let ((_g267567_
                                                             (let _%loop265794%_ ((_%rest265797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures265627%_)
                                          (_%unchecked-proc265799%_ '#f)
                                          (_%unchecked-clauses265800%_ '()))
                       (let* ((_%rest265801265809%_ _%rest265797%_)
                              (_%else265803265821%_
                               (lambda ()
                                 (values _%unchecked-proc265799%_
                                         (reverse!
                                          _%unchecked-clauses265800%_))))
                              (_%K265805266262%_
                               (lambda (_%rest265825%_ _%hd265827%_)
                                 (let* ((_%g265829265916%_
                                         (lambda (_%g265830265912%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g265830265912%_))))
                                        (_%g265828266258%_
                                         (lambda (_%g265830265920%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g265830265920%_))
                                               (let ((_%e265837265923%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g265830265920%_))))
                                                 (let ((_%hd265838265927%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e265837265923%_)))
                                                       (_%tl265839265930%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e265837265923%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl265839265930%_))
                                                       (let ((_%e265840265933%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl265839265930%_))))
                 (let ((_%hd265841265937%_
                        (let ()
                          (declare (not safe))
                          (##car _%e265840265933%_)))
                       (_%tl265842265940%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e265840265933%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd265841265937%_))
                       (let ((_%e265843265943%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd265841265937%_))))
                         (let ((_%hd265844265947%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e265843265943%_)))
                               (_%tl265845265950%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e265843265943%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl265845265950%_))
                               (let ((_%e265846265953%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl265845265950%_))))
                                 (let ((_%hd265847265957%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e265846265953%_)))
                                       (_%tl265848265960%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e265846265953%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd265847265957%_))
                                       (let ((_%e265849265963%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd265847265957%_))))
                                         (if (equal? _%e265849265963%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl265848265960%_))
                                                 (let ((_%e265850265967%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl265848265960%_))))
                                                   (let ((_%hd265851265971%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e265850265967%_)))
                                                         (_%tl265852265974%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e265850265967%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd265851265971%_))
                                                         (let ((_%e265853265977%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd265851265971%_))))
                   (let ((_%hd265854265981%_
                          (let ()
                            (declare (not safe))
                            (##car _%e265853265977%_)))
                         (_%tl265855265984%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e265853265977%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd265854265981%_))
                         (if (let ((__tmp267569 |gxc[1]#_g267570_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp267569
                                _%hd265854265981%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl265855265984%_))
                                 (let ((_%e265856265987%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl265855265984%_))))
                                   (let ((_%hd265857265991%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e265856265987%_)))
                                         (_%tl265858265994%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e265856265987%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl265858265994%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl265852265974%_))
                                             (let ((_%e265859265997%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl265852265974%_))))
                                               (let ((_%hd265860266001%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e265859265997%_)))
                                                     (_%tl265861266004%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e265859265997%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd265860266001%_))
                                                     (let ((_%e265862266007%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd265860266001%_))))
                                                       (if (equal? _%e265862266007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl265861266004%_))
                       (let ((_%e265863266011%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl265861266004%_))))
                         (let ((_%hd265864266015%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e265863266011%_)))
                               (_%tl265865266018%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e265863266011%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd265864266015%_))
                               (let ((_%e265866266021%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd265864266015%_))))
                                 (let ((_%hd265867266025%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e265866266021%_)))
                                       (_%tl265868266028%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e265866266021%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd265867266025%_))
                                       (if (let ((__tmp267571
                                                  |gxc[1]#_g267572_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp267571
                                              _%hd265867266025%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl265868266028%_))
                                               (let ((_%e265869266031%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl265868266028%_))))
                                                 (let ((_%hd265870266035%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e265869266031%_)))
                                                       (_%tl265871266038%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e265869266031%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl265871266038%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl265865266018%_))
                                                           (let ((_%e265872266041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl265865266018%_))))
                     (let ((_%hd265873266045%_
                            (let ()
                              (declare (not safe))
                              (##car _%e265872266041%_)))
                           (_%tl265874266048%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e265872266041%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd265873266045%_))
                           (let ((_%e265875266051%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd265873266045%_))))
                             (if (equal? _%e265875266051%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl265874266048%_))
                                     (let ((_%e265876266055%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl265874266048%_))))
                                       (let ((_%hd265877266059%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e265876266055%_)))
                                             (_%tl265878266062%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e265876266055%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd265877266059%_))
                                             (let ((_%e265879266065%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd265877266059%_))))
                                               (let ((_%hd265880266069%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e265879266065%_)))
                                                     (_%tl265881266072%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e265879266065%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd265880266069%_))
                                                     (if (let ((__tmp267573
                                                                |gxc[1]#_g267574_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp267573
                                                            _%hd265880266069%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl265881266072%_))
                     (let ((_%e265882266075%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl265881266072%_))))
                       (let ((_%hd265883266079%_
                              (let ()
                                (declare (not safe))
                                (##car _%e265882266075%_)))
                             (_%tl265884266082%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e265882266075%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl265884266082%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl265878266062%_))
                                 (let ((_%e265885266085%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl265878266062%_))))
                                   (let ((_%hd265886266089%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e265885266085%_)))
                                         (_%tl265887266092%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e265885266085%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd265886266089%_))
                                         (let ((_%e265888266095%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd265886266089%_))))
                                           (if (equal? _%e265888266095%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl265887266092%_))
                                                   (let ((_%e265889266099%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl265887266092%_))))
                                                     (let ((_%hd265890266103%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e265889266099%_)))
                                                           (_%tl265891266106%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e265889266099%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd265890266103%_))
                                                           (let ((_%e265892266109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd265890266103%_))))
                     (let ((_%hd265893266113%_
                            (let ()
                              (declare (not safe))
                              (##car _%e265892266109%_)))
                           (_%tl265894266116%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e265892266109%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd265893266113%_))
                           (if (let ((__tmp267575 |gxc[1]#_g267576_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp267575
                                  _%hd265893266113%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl265894266116%_))
                                   (let ((_%e265895266119%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl265894266116%_))))
                                     (let ((_%hd265896266123%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e265895266119%_)))
                                           (_%tl265897266126%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e265895266119%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl265897266126%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl265891266106%_))
                                               (let ((_%e265898266129%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl265891266106%_))))
                                                 (let ((_%hd265899266133%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e265898266129%_)))
                                                       (_%tl265900266136%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e265898266129%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd265899266133%_))
                                                       (let ((_%e265901266139%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd265899266133%_))))
                 (if (equal? _%e265901266139%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl265900266136%_))
                         (let ((_%e265902266143%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl265900266136%_))))
                           (let ((_%hd265903266147%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e265902266143%_)))
                                 (_%tl265904266150%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e265902266143%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd265903266147%_))
                                 (let ((_%e265905266153%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd265903266147%_))))
                                   (let ((_%hd265906266157%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e265905266153%_)))
                                         (_%tl265907266160%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e265905266153%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd265906266157%_))
                                         (if (let ((__tmp267577
                                                    |gxc[1]#_g267578_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp267577
                                                _%hd265906266157%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl265907266160%_))
                                                 (let ((_%e265908266163%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl265907266160%_))))
                                                   (let ((_%hd265909266167%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e265908266163%_)))
                                                         (_%tl265910266170%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e265908266163%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl265910266170%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl265904266150%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl265842265940%_))
                         ((lambda (_%g265831266173%_
                                   _%g265832266175%_
                                   _%g265833266176%_
                                   _%g265834266177%_
                                   _%g265835266178%_
                                   _%g265836266179%_)
                            (let ((_%clause266250%_
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
                                                     (cons _%g265836266179%_
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
                                                 (cons _%g265834266177%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g265831266173%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked266252%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g265832266175%_))))
                              (_%loop265794%_
                               _%rest265825%_
                               (let ((_%$e266254%_ _%unchecked266252%_))
                                 (if _%$e266254%_
                                     _%$e266254%_
                                     _%unchecked-proc265799%_))
                               (cons _%clause266250%_
                                     _%unchecked-clauses265800%_))))
                          _%hd265909266167%_
                          _%hd265896266123%_
                          _%hd265883266079%_
                          _%hd265870266035%_
                          _%hd265857265991%_
                          _%hd265838265927%_)
                         (_%g265829265916%_ _%g265830265920%_))
                     (_%g265829265916%_ _%g265830265920%_))
                 (_%g265829265916%_ _%g265830265920%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g265829265916%_
                                                  _%g265830265920%_))
                                             (_%g265829265916%_
                                              _%g265830265920%_))
                                         (_%g265829265916%_
                                          _%g265830265920%_))))
                                 (_%g265829265916%_ _%g265830265920%_))))
                         (_%g265829265916%_ _%g265830265920%_))
                     (_%g265829265916%_ _%g265830265920%_)))
               (_%g265829265916%_ _%g265830265920%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265829265916%_
                                                _%g265830265920%_))
                                           (_%g265829265916%_
                                            _%g265830265920%_))))
                                   (_%g265829265916%_ _%g265830265920%_))
                               (_%g265829265916%_ _%g265830265920%_))
                           (_%g265829265916%_ _%g265830265920%_))))
                   (_%g265829265916%_ _%g265830265920%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g265829265916%_
                                                    _%g265830265920%_))
                                               (_%g265829265916%_
                                                _%g265830265920%_)))
                                         (_%g265829265916%_
                                          _%g265830265920%_))))
                                 (_%g265829265916%_ _%g265830265920%_))
                             (_%g265829265916%_ _%g265830265920%_))))
                     (_%g265829265916%_ _%g265830265920%_))
                 (_%g265829265916%_ _%g265830265920%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g265829265916%_
                                                      _%g265830265920%_))))
                                             (_%g265829265916%_
                                              _%g265830265920%_))))
                                     (_%g265829265916%_ _%g265830265920%_))
                                 (_%g265829265916%_ _%g265830265920%_)))
                           (_%g265829265916%_ _%g265830265920%_))))
                   (_%g265829265916%_ _%g265830265920%_))
               (_%g265829265916%_ _%g265830265920%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265829265916%_
                                                _%g265830265920%_))
                                           (_%g265829265916%_
                                            _%g265830265920%_))
                                       (_%g265829265916%_ _%g265830265920%_))))
                               (_%g265829265916%_ _%g265830265920%_))))
                       (_%g265829265916%_ _%g265830265920%_))
                   (_%g265829265916%_ _%g265830265920%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g265829265916%_
                                                      _%g265830265920%_))))
                                             (_%g265829265916%_
                                              _%g265830265920%_))
                                         (_%g265829265916%_
                                          _%g265830265920%_))))
                                 (_%g265829265916%_ _%g265830265920%_))
                             (_%g265829265916%_ _%g265830265920%_))
                         (_%g265829265916%_ _%g265830265920%_))))
                 (_%g265829265916%_ _%g265830265920%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g265829265916%_
                                                  _%g265830265920%_))
                                             (_%g265829265916%_
                                              _%g265830265920%_)))
                                       (_%g265829265916%_ _%g265830265920%_))))
                               (_%g265829265916%_ _%g265830265920%_))))
                       (_%g265829265916%_ _%g265830265920%_))))
               (_%g265829265916%_ _%g265830265920%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265829265916%_
                                                _%g265830265920%_)))))
                                   (_%g265828266258%_ _%hd265827%_)))))
                         (if (pair? _%rest265801265809%_)
                             (let ((_%hd265806266266%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest265801265809%_)))
                                   (_%tl265807266269%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest265801265809%_))))
                               (let* ((_%hd266272%_ _%hd265806266266%_)
                                      (_%rest266275%_ _%tl265807266269%_))
                                 (_%K265805266262%_
                                  _%rest266275%_
                                  _%hd266272%_)))
                             (_%else265803265821%_))))))
                (begin
                  (let ((_g267568_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g267567_)
                               (##values-length _g267567_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g267568_ 2)))
                        (error "Context expects 2 values" _g267568_)))
                  (let ((_%unchecked-proc266278%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g267567_ 0)))
                        (_%unchecked-clauses266280%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g267567_ 1))))
                    (if _%unchecked-proc266278%_
                        (let* ((_%g266282266306%_
                                (lambda (_%g266283266302%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g266283266302%_))))
                               (_%g266281266391%_
                                (lambda (_%g266283266310%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g266283266310%_))
                                      (let ((_%e266286266313%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g266283266310%_))))
                                        (let ((_%hd266287266317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e266286266313%_)))
                                              (_%tl266288266320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e266286266313%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl266288266320%_))
                                              (let ((_%e266289266323%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl266288266320%_))))
                                                (let ((_%hd266290266327%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e266289266323%_)))
                                                      (_%tl266291266330%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e266289266323%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd266290266327%_))
                                                      (let ((_g267579_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd266290266327%_ '0))))
                (begin
                  (let ((_g267580_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g267579_)
                               (##values-length _g267579_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g267580_ 2)))
                        (error "Context expects 2 values" _g267580_)))
                  (let ((_%target266292266333%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g267579_ 0)))
                        (_%tl266294266336%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g267579_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl266294266336%_))
                        (letrec ((_%loop266295266339%_
                                  (lambda (_%hd266293266343%_
                                           _%clause266299266346%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd266293266343%_))
                                        (let ((_%e266296266348%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd266293266343%_))))
                                          (let ((_%lp-hd266297266352%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e266296266348%_)))
                                                (_%lp-tl266298266355%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e266296266348%_))))
                                            (_%loop266295266339%_
                                             _%lp-tl266298266355%_
                                             (cons _%lp-hd266297266352%_
                                                   _%clause266299266346%_))))
                                        (let ((_%clause266300266358%_
                                               (reverse _%clause266299266346%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl266291266330%_))
                                              ((lambda (_%g266284266361%_
                                                        _%g266285266363%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g266285266363%_
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
                                             (let ((__tmp267581
                                                    (lambda (_%g266382266385%_
                                                             _%g266383266388%_)
                                                      (cons _%g266382266385%_
                                                            _%g266383266388%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp267581
                                                '()
                                                _%g266284266361%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause266300266358%_
                                               _%hd266287266317%_)
                                              (_%g266282266306%_
                                               _%g266283266310%_)))))))
                          (_%loop266295266339%_ _%target266292266333%_ '()))
                        (_%g266282266306%_ _%g266283266310%_)))))
              (_%g266282266306%_ _%g266283266310%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g266282266306%_
                                               _%g266283266310%_))))
                                      (_%g266282266306%_ _%g266283266310%_)))))
                          (_%g266281266391%_
                           (list _%unchecked-proc266278%_
                                 _%unchecked-clauses266280%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g265733265744%_))))
                                        (_%g265731266395%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g265518265596%_
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
                                          _%g265632265713%_
                                          _%g265633265715%_))
                                       (let ((__tmp267582
                                              (lambda (_%g266398266402%_
                                                       _%g266399266405%_
                                                       _%g266400266407%_)
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
                                (cons _%g266399266405%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g266398266402%_ '())))))
              _%g266400266407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__1
                                          __tmp267582
                                          '()
                                          _%g265632265713%_
                                          _%g265633265715%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig265643265709%_
                                    _%arity265644265711%_))))))
                   (_%loop265637265669%_ _%target265634265663%_ '() '()))
                 (_%g265630265656%_ _%g265631265660%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265630265656%_
                                                _%g265631265660%_)))))
                                   (_%g265629266410%_ _%signatures265627%_))
                                 (_%g265515265539%_ _%g265516265543%_)))
                           _%case-signature265533265591%_
                           _%hd265523265560%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop265528265572%_
                                                   _%target265525265566%_
                                                   '()))
                                                (_%g265515265539%_
                                                 _%g265516265543%_)))))
                                      (_%g265515265539%_ _%g265516265543%_))))
                              (_%g265515265539%_ _%g265516265543%_))))
                      (_%g265515265539%_ _%g265516265543%_)))))
          (_%g265514266414%_ _%stx265512%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx266422%_)
        (let* ((_%__stx267402267403%_ _%$stx266422%_)
               (_%g266428266488%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx267402267403%_)))))
          (let ((_%__kont267405267406%_
                 (lambda (_%g266430266710%_ _%g266431266712%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g266431266712%_ '()))
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
                                                       (cons _%g266431266712%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g266430266710%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont267407267408%_
                 (lambda (_%g266445266635%_
                          _%g266446266637%_
                          _%g266447266638%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g266447266638%_ '()))
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
                                                       (cons _%g266447266638%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g266446266637%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g266445266635%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont267409267410%_
                 (lambda (_%g266464266549%_
                          _%g266465266551%_
                          _%g266466266552%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g266466266552%_ '()))
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
                                                       (cons _%g266466266552%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g266465266551%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g266464266549%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx267402267403%_))
                (let ((_%e266432266666%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx267402267403%_))))
                  (let ((_%tl266434266673%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e266432266666%_)))
                        (_%hd266433266670%_
                         (let ()
                           (declare (not safe))
                           (##car _%e266432266666%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl266434266673%_))
                        (let ((_%e266435266676%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl266434266673%_))))
                          (let ((_%tl266437266683%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e266435266676%_)))
                                (_%hd266436266680%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e266435266676%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd266436266680%_))
                                (let ((_%e266438266686%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd266436266680%_))))
                                  (if (equal? _%e266438266686%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl266437266683%_))
                                          (let ((_%e266439266690%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl266437266683%_))))
                                            (let ((_%tl266441266697%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e266439266690%_)))
                                                  (_%hd266440266694%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e266439266690%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl266441266697%_))
                                                  (let ((_%e266442266700%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl266441266697%_))))
                                                    (let ((_%tl266444266707%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e266442266700%_)))
                                                          (_%hd266443266704%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e266442266700%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl266444266707%_))
                                                          (_%__kont267405267406%_
                                                           _%hd266443266704%_
                                                           _%hd266440266694%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g266428266488%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g266428266488%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g266428266488%_)))
                                      (if (equal? _%e266438266686%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl266437266683%_))
                                              (let ((_%e266455266605%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl266437266683%_))))
                                                (let ((_%tl266457266612%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e266455266605%_)))
                                                      (_%hd266456266609%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e266455266605%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl266457266612%_))
                                                      (let ((_%e266458266615%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl266457266612%_))))
                (let ((_%tl266460266622%_
                       (let () (declare (not safe)) (##cdr _%e266458266615%_)))
                      (_%hd266459266619%_
                       (let ()
                         (declare (not safe))
                         (##car _%e266458266615%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl266460266622%_))
                      (let ((_%e266461266625%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl266460266622%_))))
                        (let ((_%tl266463266632%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e266461266625%_)))
                              (_%hd266462266629%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e266461266625%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl266463266632%_))
                              (_%__kont267407267408%_
                               _%hd266462266629%_
                               _%hd266459266619%_
                               _%hd266456266609%_)
                              (let ()
                                (declare (not safe))
                                (_%g266428266488%_)))))
                      (let () (declare (not safe)) (_%g266428266488%_)))))
              (let () (declare (not safe)) (_%g266428266488%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g266428266488%_)))
                                          (if (equal? _%e266438266686%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl266437266683%_))
                                                  (let ((_%e266474266519%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl266437266683%_))))
                                                    (let ((_%tl266476266526%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e266474266519%_)))
                                                          (_%hd266475266523%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e266474266519%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl266476266526%_))
                                                          (let ((_%e266477266529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl266476266526%_))))
                    (let ((_%tl266479266536%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e266477266529%_)))
                          (_%hd266478266533%_
                           (let ()
                             (declare (not safe))
                             (##car _%e266477266529%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl266479266536%_))
                          (let ((_%e266480266539%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl266479266536%_))))
                            (let ((_%tl266482266546%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e266480266539%_)))
                                  (_%hd266481266543%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e266480266539%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl266482266546%_))
                                  (_%__kont267409267410%_
                                   _%hd266481266543%_
                                   _%hd266478266533%_
                                   _%hd266475266523%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g266428266488%_)))))
                          (let () (declare (not safe)) (_%g266428266488%_)))))
                  (let () (declare (not safe)) (_%g266428266488%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g266428266488%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g266428266488%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g266428266488%_)))))
                        (let () (declare (not safe)) (_%g266428266488%_)))))
                (let () (declare (not safe)) (_%g266428266488%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx266734%_)
        (let* ((_%g266738266758%_
                (lambda (_%g266739266754%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g266739266754%_))))
               (_%g266737266827%_
                (lambda (_%g266739266762%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g266739266762%_))
                      (let ((_%e266741266765%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g266739266762%_))))
                        (let ((_%hd266742266769%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e266741266765%_)))
                              (_%tl266743266772%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e266741266765%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl266743266772%_))
                              (let ((_g267583_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl266743266772%_
                                        '0))))
                                (begin
                                  (let ((_g267584_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g267583_)
                                               (##values-length _g267583_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g267584_ 2)))
                                        (error "Context expects 2 values"
                                               _g267584_)))
                                  (let ((_%target266744266775%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267583_ 0)))
                                        (_%tl266746266778%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267583_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl266746266778%_))
                                        (letrec ((_%loop266747266781%_
                                                  (lambda (_%hd266745266785%_
                                                           _%decl266751266788%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd266745266785%_))
                                                        (let ((_%e266748266790%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd266745266785%_))))
                  (let ((_%lp-hd266749266794%_
                         (let ()
                           (declare (not safe))
                           (##car _%e266748266790%_)))
                        (_%lp-tl266750266797%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e266748266790%_))))
                    (_%loop266747266781%_
                     _%lp-tl266750266797%_
                     (cons _%lp-hd266749266794%_ _%decl266751266788%_))))
                (let ((_%decl266752266800%_ (reverse _%decl266751266788%_)))
                  ((lambda (_%g266740266803%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp267585
                                  (lambda (_%g266818266821%_ _%g266819266824%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g266818266821%_)
                                          _%g266819266824%_))))
                             (declare (not safe))
                             (foldr__0 __tmp267585 '() _%g266740266803%_))))
                   _%decl266752266800%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop266747266781%_
                                           _%target266744266775%_
                                           '()))
                                        (_%g266738266758%_
                                         _%g266739266762%_)))))
                              (_%g266738266758%_ _%g266739266762%_))))
                      (_%g266738266758%_ _%g266739266762%_)))))
          (_%g266737266827%_ _%$stx266734%_))))))
