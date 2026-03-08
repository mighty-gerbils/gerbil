(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g267553_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267560_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267562_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267564_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267566_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267568_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267580_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267582_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267584_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267586_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267588_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx261011%_)
        (let* ((_%g261015261033%_
                (lambda (_%g261016261029%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261016261029%_))))
               (_%g261014261088%_
                (lambda (_%g261016261037%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261016261037%_))
                      (let ((_%e261019261040%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261016261037%_))))
                        (let ((_%hd261020261044%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261019261040%_)))
                              (_%tl261021261047%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261019261040%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261021261047%_))
                              (let ((_%e261022261050%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261021261047%_))))
                                (let ((_%hd261023261054%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261022261050%_)))
                                      (_%tl261024261057%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261022261050%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261024261057%_))
                                      (let ((_%e261025261060%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261024261057%_))))
                                        (let ((_%hd261026261064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261025261060%_)))
                                              (_%tl261027261067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261025261060%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261027261067%_))
                                              ((lambda (_%g261017261070%_
                                                        _%g261018261072%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g261018261072%_))
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
                               (cons _%g261018261072%_ '()))
                         (cons _%g261017261070%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g261015261033%_
                                                      _%g261016261037%_)))
                                               _%hd261026261064%_
                                               _%hd261023261054%_)
                                              (_%g261015261033%_
                                               _%g261016261037%_))))
                                      (_%g261015261033%_ _%g261016261037%_))))
                              (_%g261015261033%_ _%g261016261037%_))))
                      (_%g261015261033%_ _%g261016261037%_)))))
          (_%g261014261088%_ _%$stx261011%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx261092%_)
        (let* ((_%g261096261114%_
                (lambda (_%g261097261110%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261097261110%_))))
               (_%g261095261169%_
                (lambda (_%g261097261118%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261097261118%_))
                      (let ((_%e261100261121%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261097261118%_))))
                        (let ((_%hd261101261125%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261100261121%_)))
                              (_%tl261102261128%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261100261121%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261102261128%_))
                              (let ((_%e261103261131%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261102261128%_))))
                                (let ((_%hd261104261135%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261103261131%_)))
                                      (_%tl261105261138%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261103261131%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261105261138%_))
                                      (let ((_%e261106261141%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261105261138%_))))
                                        (let ((_%hd261107261145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261106261141%_)))
                                              (_%tl261108261148%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261106261141%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261108261148%_))
                                              ((lambda (_%g261098261151%_
                                                        _%g261099261153%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g261099261153%_))
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
                               (cons _%g261099261153%_ '()))
                         (cons _%g261098261151%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g261096261114%_
                                                      _%g261097261118%_)))
                                               _%hd261107261145%_
                                               _%hd261104261135%_)
                                              (_%g261096261114%_
                                               _%g261097261118%_))))
                                      (_%g261096261114%_ _%g261097261118%_))))
                              (_%g261096261114%_ _%g261097261118%_))))
                      (_%g261096261114%_ _%g261097261118%_)))))
          (_%g261095261169%_ _%$stx261092%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx261173%_)
        (let* ((_%g261177261206%_
                (lambda (_%g261178261202%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261178261202%_))))
               (_%g261176261302%_
                (lambda (_%g261178261210%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261178261210%_))
                      (let ((_%e261181261213%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261178261210%_))))
                        (let ((_%hd261182261217%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261181261213%_)))
                              (_%tl261183261220%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261181261213%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl261183261220%_))
                              (let ((_g267531_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl261183261220%_
                                        '0))))
                                (begin
                                  (let ((_g267532_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g267531_)
                                               (##values-length _g267531_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g267532_ 2)))
                                        (error "Context expects 2 values"
                                               _g267532_)))
                                  (let ((_%target261184261223%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267531_ 0)))
                                        (_%tl261186261226%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267531_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261186261226%_))
                                        (letrec ((_%loop261187261229%_
                                                  (lambda (_%hd261185261233%_
                                                           _%type261191261236%_
                                                           _%symbol261192261237%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd261185261233%_))
                                                        (let ((_%e261188261239%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd261185261233%_))))
                  (let ((_%lp-hd261189261243%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261188261239%_)))
                        (_%lp-tl261190261246%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261188261239%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd261189261243%_))
                        (let ((_%e261195261249%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd261189261243%_))))
                          (let ((_%hd261196261253%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261195261249%_)))
                                (_%tl261197261256%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261195261249%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl261197261256%_))
                                (let ((_%e261198261259%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl261197261256%_))))
                                  (let ((_%hd261199261263%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261198261259%_)))
                                        (_%tl261200261266%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261198261259%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261200261266%_))
                                        (_%loop261187261229%_
                                         _%lp-tl261190261246%_
                                         (cons _%hd261199261263%_
                                               _%type261191261236%_)
                                         (cons _%hd261196261253%_
                                               _%symbol261192261237%_))
                                        (_%g261177261206%_
                                         _%g261178261210%_))))
                                (_%g261177261206%_ _%g261178261210%_))))
                        (_%g261177261206%_ _%g261178261210%_))))
                (let ((_%type261193261269%_ (reverse _%type261191261236%_))
                      (_%symbol261194261271%_
                       (reverse _%symbol261192261237%_)))
                  ((lambda (_%g261179261273%_ _%g261180261275%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g261179261273%_
                                _%g261180261275%_))
                             (let ((__tmp267533
                                    (lambda (_%g261290261294%_
                                             _%g261291261297%_
                                             _%g261292261299%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g261291261297%_
                                                        (cons _%g261290261294%_
                                                              '())))
                                            _%g261292261299%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp267533
                                '()
                                _%g261179261273%_
                                _%g261180261275%_)))))
                   _%type261193261269%_
                   _%symbol261194261271%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop261187261229%_
                                           _%target261184261223%_
                                           '()
                                           '()))
                                        (_%g261177261206%_
                                         _%g261178261210%_)))))
                              (_%g261177261206%_ _%g261178261210%_))))
                      (_%g261177261206%_ _%g261178261210%_)))))
          (_%g261176261302%_ _%$stx261173%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx261307%_)
        (let* ((_%__stx266842266843%_ _%$stx261307%_)
               (_%g261312261354%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266842266843%_)))))
          (let ((_%__kont266845266846%_
                 (lambda (_%g261314261482%_
                          _%g261315261484%_
                          _%g261316261485%_
                          _%g261317261486%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g261317261486%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g261316261485%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g261315261484%_ '()))
                                           (cons _%g261314261482%_ '())))))))
                (_%__kont266847266848%_
                 (lambda (_%g261333261401%_
                          _%g261334261403%_
                          _%g261335261404%_
                          _%g261336261405%_)
                   (cons _%g261336261405%_
                         (cons _%g261335261404%_
                               (cons _%g261334261403%_
                                     (cons _%g261333261401%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match266881266882%_
                   (lambda (_%e261318261432%_
                            _%hd261319261436%_
                            _%tl261320261439%_
                            _%e261321261442%_
                            _%hd261322261446%_
                            _%tl261323261449%_
                            _%e261324261452%_
                            _%hd261325261456%_
                            _%tl261326261459%_
                            _%e261327261462%_
                            _%hd261328261466%_
                            _%tl261329261469%_
                            _%e261330261472%_
                            _%hd261331261476%_
                            _%tl261332261479%_)
                     (let ((_%g261314261482%_ _%hd261331261476%_)
                           (_%g261315261484%_ _%hd261328261466%_)
                           (_%g261316261485%_ _%hd261325261456%_)
                           (_%g261317261486%_ _%hd261322261446%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g261317261486%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g261316261485%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g261315261484%_)))
                           (_%__kont266845266846%_
                            _%g261314261482%_
                            _%g261315261484%_
                            _%g261316261485%_
                            _%g261317261486%_)
                           (let ()
                             (declare (not safe))
                             (_%g261312261354%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx266842266843%_))
                  (let ((_%e261318261432%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx266842266843%_))))
                    (let ((_%tl261320261439%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e261318261432%_)))
                          (_%hd261319261436%_
                           (let ()
                             (declare (not safe))
                             (##car _%e261318261432%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl261320261439%_))
                          (let ((_%e261321261442%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl261320261439%_))))
                            (let ((_%tl261323261449%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e261321261442%_)))
                                  (_%hd261322261446%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e261321261442%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl261323261449%_))
                                  (let ((_%e261324261452%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl261323261449%_))))
                                    (let ((_%tl261326261459%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e261324261452%_)))
                                          (_%hd261325261456%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e261324261452%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl261326261459%_))
                                          (let ((_%e261327261462%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl261326261459%_))))
                                            (let ((_%tl261329261469%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e261327261462%_)))
                                                  (_%hd261328261466%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e261327261462%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl261329261469%_))
                                                  (let ((_%e261330261472%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl261329261469%_))))
                                                    (let ((_%tl261332261479%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e261330261472%_)))
                                                          (_%hd261331261476%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e261330261472%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl261332261479%_))
                                                          (_%__match266881266882%_
                                                           _%e261318261432%_
                                                           _%hd261319261436%_
                                                           _%tl261320261439%_
                                                           _%e261321261442%_
                                                           _%hd261322261446%_
                                                           _%tl261323261449%_
                                                           _%e261324261452%_
                                                           _%hd261325261456%_
                                                           _%tl261326261459%_
                                                           _%e261327261462%_
                                                           _%hd261328261466%_
                                                           _%tl261329261469%_
                                                           _%e261330261472%_
                                                           _%hd261331261476%_
                                                           _%tl261332261479%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g261312261354%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl261329261469%_))
                                                      (_%__kont266847266848%_
                                                       _%hd261328261466%_
                                                       _%hd261325261456%_
                                                       _%hd261322261446%_
                                                       _%hd261319261436%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g261312261354%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g261312261354%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g261312261354%_)))))
                          (let () (declare (not safe)) (_%g261312261354%_)))))
                  (let () (declare (not safe)) (_%g261312261354%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx261511%_)
        (let* ((_%g261515261550%_
                (lambda (_%g261516261546%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261516261546%_))))
               (_%g261514261663%_
                (lambda (_%g261516261554%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261516261554%_))
                      (let ((_%e261520261557%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261516261554%_))))
                        (let ((_%hd261521261561%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261520261557%_)))
                              (_%tl261522261564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261520261557%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl261522261564%_))
                              (let ((_g267534_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl261522261564%_
                                        '0))))
                                (begin
                                  (let ((_g267535_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g267534_)
                                               (##values-length _g267534_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g267535_ 2)))
                                        (error "Context expects 2 values"
                                               _g267535_)))
                                  (let ((_%target261523261567%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267534_ 0)))
                                        (_%tl261525261570%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267534_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261525261570%_))
                                        (letrec ((_%loop261526261573%_
                                                  (lambda (_%hd261524261577%_
                                                           _%symbol261530261580%_
                                                           _%method261531261581%_
                                                           _%type-t261532261582%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd261524261577%_))
                                                        (let ((_%e261527261584%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd261524261577%_))))
                  (let ((_%lp-hd261528261588%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261527261584%_)))
                        (_%lp-tl261529261591%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261527261584%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd261528261588%_))
                        (let ((_%e261536261594%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd261528261588%_))))
                          (let ((_%hd261537261598%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261536261594%_)))
                                (_%tl261538261601%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261536261594%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl261538261601%_))
                                (let ((_%e261539261604%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl261538261601%_))))
                                  (let ((_%hd261540261608%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261539261604%_)))
                                        (_%tl261541261611%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261539261604%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl261541261611%_))
                                        (let ((_%e261542261614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl261541261611%_))))
                                          (let ((_%hd261543261618%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e261542261614%_)))
                                                (_%tl261544261621%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e261542261614%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl261544261621%_))
                                                (_%loop261526261573%_
                                                 _%lp-tl261529261591%_
                                                 (cons _%hd261543261618%_
                                                       _%symbol261530261580%_)
                                                 (cons _%hd261540261608%_
                                                       _%method261531261581%_)
                                                 (cons _%hd261537261598%_
                                                       _%type-t261532261582%_))
                                                (_%g261515261550%_
                                                 _%g261516261554%_))))
                                        (_%g261515261550%_
                                         _%g261516261554%_))))
                                (_%g261515261550%_ _%g261516261554%_))))
                        (_%g261515261550%_ _%g261516261554%_))))
                (let ((_%symbol261533261624%_ (reverse _%symbol261530261580%_))
                      (_%method261534261626%_ (reverse _%method261531261581%_))
                      (_%type-t261535261627%_
                       (reverse _%type-t261532261582%_)))
                  ((lambda (_%g261517261629%_
                            _%g261518261631%_
                            _%g261519261632%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g261517261629%_
                                _%g261518261631%_
                                _%g261519261632%_))
                             (let ((__tmp267536
                                    (lambda (_%g261648261653%_
                                             _%g261649261656%_
                                             _%g261650261658%_
                                             _%g261651261660%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g261650261658%_
                                                        (cons _%g261649261656%_
                                                              (cons _%g261648261653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g261651261660%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp267536
                                '()
                                _%g261517261629%_
                                _%g261518261631%_
                                _%g261519261632%_)))))
                   _%symbol261533261624%_
                   _%method261534261626%_
                   _%type-t261535261627%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop261526261573%_
                                           _%target261523261567%_
                                           '()
                                           '()
                                           '()))
                                        (_%g261515261550%_
                                         _%g261516261554%_)))))
                              (_%g261515261550%_ _%g261516261554%_))))
                      (_%g261515261550%_ _%g261516261554%_)))))
          (_%g261514261663%_ _%$stx261511%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx261668%_)
        (let* ((_%g261672261705%_
                (lambda (_%g261673261701%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261673261701%_))))
               (_%g261671261815%_
                (lambda (_%g261673261709%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261673261709%_))
                      (let ((_%e261677261712%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261673261709%_))))
                        (let ((_%hd261678261716%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261677261712%_)))
                              (_%tl261679261719%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261677261712%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261679261719%_))
                              (let ((_%e261680261722%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261679261719%_))))
                                (let ((_%hd261681261726%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261680261722%_)))
                                      (_%tl261682261729%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261680261722%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl261682261729%_))
                                      (let ((_g267537_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl261682261729%_
                                                '0))))
                                        (begin
                                          (let ((_g267538_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g267537_)
                                                       (##values-length
                                                        _g267537_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g267538_ 2)))
                                                (error "Context expects 2 values"
                                                       _g267538_)))
                                          (let ((_%target261683261732%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g267537_ 0)))
                                                (_%tl261685261735%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g267537_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl261685261735%_))
                                                (letrec ((_%loop261686261738%_
                                                          (lambda (_%hd261684261742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol261690261745%_
                           _%method261691261746%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd261684261742%_))
                        (let ((_%e261687261748%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd261684261742%_))))
                          (let ((_%lp-hd261688261752%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261687261748%_)))
                                (_%lp-tl261689261755%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261687261748%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd261688261752%_))
                                (let ((_%e261694261758%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd261688261752%_))))
                                  (let ((_%hd261695261762%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261694261758%_)))
                                        (_%tl261696261765%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261694261758%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl261696261765%_))
                                        (let ((_%e261697261768%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl261696261765%_))))
                                          (let ((_%hd261698261772%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e261697261768%_)))
                                                (_%tl261699261775%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e261697261768%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl261699261775%_))
                                                (_%loop261686261738%_
                                                 _%lp-tl261689261755%_
                                                 (cons _%hd261698261772%_
                                                       _%symbol261690261745%_)
                                                 (cons _%hd261695261762%_
                                                       _%method261691261746%_))
                                                (_%g261672261705%_
                                                 _%g261673261709%_))))
                                        (_%g261672261705%_
                                         _%g261673261709%_))))
                                (_%g261672261705%_ _%g261673261709%_))))
                        (let ((_%symbol261692261778%_
                               (reverse _%symbol261690261745%_))
                              (_%method261693261780%_
                               (reverse _%method261691261746%_)))
                          ((lambda (_%g261674261782%_
                                    _%g261675261784%_
                                    _%g261676261785%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g261674261782%_
                                        _%g261675261784%_))
                                     (let ((__tmp267539
                                            (lambda (_%g261803261807%_
                                                     _%g261804261810%_
                                                     _%g261805261812%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g261676261785%_
                                                                (cons _%g261804261810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g261803261807%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g261805261812%_))))
                                       (declare (not safe))
                                       (foldr__1
                                        __tmp267539
                                        '()
                                        _%g261674261782%_
                                        _%g261675261784%_)))))
                           _%symbol261692261778%_
                           _%method261693261780%_
                           _%hd261681261726%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop261686261738%_
                                                   _%target261683261732%_
                                                   '()
                                                   '()))
                                                (_%g261672261705%_
                                                 _%g261673261709%_)))))
                                      (_%g261672261705%_ _%g261673261709%_))))
                              (_%g261672261705%_ _%g261673261709%_))))
                      (_%g261672261705%_ _%g261673261709%_)))))
          (_%g261671261815%_ _%$stx261668%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx261820%_)
        (let* ((_%g261824261838%_
                (lambda (_%g261825261834%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261825261834%_))))
               (_%g261823261879%_
                (lambda (_%g261825261842%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261825261842%_))
                      (let ((_%e261827261845%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261825261842%_))))
                        (let ((_%hd261828261849%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261827261845%_)))
                              (_%tl261829261852%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261827261845%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261829261852%_))
                              (let ((_%e261830261855%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261829261852%_))))
                                (let ((_%hd261831261859%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261830261855%_)))
                                      (_%tl261832261862%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261830261855%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261832261862%_))
                                      ((lambda (_%g261826261865%_)
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
                                                           (cons _%g261826261865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd261831261859%_)
                                      (_%g261824261838%_ _%g261825261842%_))))
                              (_%g261824261838%_ _%g261825261842%_))))
                      (_%g261824261838%_ _%g261825261842%_)))))
          (_%g261823261879%_ _%$stx261820%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx261883%_)
        (let* ((_%g261887261941%_
                (lambda (_%g261888261937%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261888261937%_))))
               (_%g261886262122%_
                (lambda (_%g261888261945%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261888261945%_))
                      (let ((_%e261900261948%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261888261945%_))))
                        (let ((_%hd261901261952%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261900261948%_)))
                              (_%tl261902261955%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261900261948%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261902261955%_))
                              (let ((_%e261903261958%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261902261955%_))))
                                (let ((_%hd261904261962%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261903261958%_)))
                                      (_%tl261905261965%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261903261958%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261905261965%_))
                                      (let ((_%e261906261968%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261905261965%_))))
                                        (let ((_%hd261907261972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261906261968%_)))
                                              (_%tl261908261975%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261906261968%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261908261975%_))
                                              (let ((_%e261909261978%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261908261975%_))))
                                                (let ((_%hd261910261982%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261909261978%_)))
                                                      (_%tl261911261985%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261909261978%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl261911261985%_))
                                                      (let ((_%e261912261988%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl261911261985%_))))
                (let ((_%hd261913261992%_
                       (let () (declare (not safe)) (##car _%e261912261988%_)))
                      (_%tl261914261995%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e261912261988%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl261914261995%_))
                      (let ((_%e261915261998%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl261914261995%_))))
                        (let ((_%hd261916262002%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261915261998%_)))
                              (_%tl261917262005%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261915261998%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261917262005%_))
                              (let ((_%e261918262008%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261917262005%_))))
                                (let ((_%hd261919262012%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261918262008%_)))
                                      (_%tl261920262015%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261918262008%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261920262015%_))
                                      (let ((_%e261921262018%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261920262015%_))))
                                        (let ((_%hd261922262022%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261921262018%_)))
                                              (_%tl261923262025%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261921262018%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261923262025%_))
                                              (let ((_%e261924262028%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261923262025%_))))
                                                (let ((_%hd261925262032%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261924262028%_)))
                                                      (_%tl261926262035%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261924262028%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl261926262035%_))
                                                      (let ((_%e261927262038%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl261926262035%_))))
                (let ((_%hd261928262042%_
                       (let () (declare (not safe)) (##car _%e261927262038%_)))
                      (_%tl261929262045%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e261927262038%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl261929262045%_))
                      (let ((_%e261930262048%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl261929262045%_))))
                        (let ((_%hd261931262052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261930262048%_)))
                              (_%tl261932262055%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261930262048%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261932262055%_))
                              (let ((_%e261933262058%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261932262055%_))))
                                (let ((_%hd261934262062%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261933262058%_)))
                                      (_%tl261935262065%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261933262058%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261935262065%_))
                                      ((lambda (_%g261889262068%_
                                                _%g261890262070%_
                                                _%g261891262071%_
                                                _%g261892262072%_
                                                _%g261893262073%_
                                                _%g261894262074%_
                                                _%g261895262075%_
                                                _%g261896262076%_
                                                _%g261897262077%_
                                                _%g261898262078%_
                                                _%g261899262079%_)
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
                                                           (cons _%g261899262079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g261898262078%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g261897262077%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g261896262076%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g261895262075%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g261894262074%_ '()))
                                           (cons _%g261893262073%_
                                                 (cons _%g261892262072%_
                                                       (cons _%g261891262071%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g261890262070%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g261889262068%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd261934262062%_
                                       _%hd261931262052%_
                                       _%hd261928262042%_
                                       _%hd261925262032%_
                                       _%hd261922262022%_
                                       _%hd261919262012%_
                                       _%hd261916262002%_
                                       _%hd261913261992%_
                                       _%hd261910261982%_
                                       _%hd261907261972%_
                                       _%hd261904261962%_)
                                      (_%g261887261941%_ _%g261888261945%_))))
                              (_%g261887261941%_ _%g261888261945%_))))
                      (_%g261887261941%_ _%g261888261945%_))))
              (_%g261887261941%_ _%g261888261945%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261887261941%_
                                               _%g261888261945%_))))
                                      (_%g261887261941%_ _%g261888261945%_))))
                              (_%g261887261941%_ _%g261888261945%_))))
                      (_%g261887261941%_ _%g261888261945%_))))
              (_%g261887261941%_ _%g261888261945%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261887261941%_
                                               _%g261888261945%_))))
                                      (_%g261887261941%_ _%g261888261945%_))))
                              (_%g261887261941%_ _%g261888261945%_))))
                      (_%g261887261941%_ _%g261888261945%_)))))
          (_%g261886262122%_ _%$stx261883%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx262126%_)
        (let* ((_%g262130262144%_
                (lambda (_%g262131262140%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262131262140%_))))
               (_%g262129262185%_
                (lambda (_%g262131262148%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262131262148%_))
                      (let ((_%e262133262151%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262131262148%_))))
                        (let ((_%hd262134262155%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262133262151%_)))
                              (_%tl262135262158%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262133262151%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262135262158%_))
                              (let ((_%e262136262161%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262135262158%_))))
                                (let ((_%hd262137262165%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262136262161%_)))
                                      (_%tl262138262168%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262136262161%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl262138262168%_))
                                      ((lambda (_%g262132262171%_)
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
                                                           (cons _%g262132262171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd262137262165%_)
                                      (_%g262130262144%_ _%g262131262148%_))))
                              (_%g262130262144%_ _%g262131262148%_))))
                      (_%g262130262144%_ _%g262131262148%_)))))
          (_%g262129262185%_ _%$stx262126%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx262189%_)
        (let* ((_%g262193262207%_
                (lambda (_%g262194262203%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262194262203%_))))
               (_%g262192262248%_
                (lambda (_%g262194262211%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262194262211%_))
                      (let ((_%e262196262214%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262194262211%_))))
                        (let ((_%hd262197262218%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262196262214%_)))
                              (_%tl262198262221%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262196262214%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262198262221%_))
                              (let ((_%e262199262224%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262198262221%_))))
                                (let ((_%hd262200262228%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262199262224%_)))
                                      (_%tl262201262231%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262199262224%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl262201262231%_))
                                      ((lambda (_%g262195262234%_)
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
                                                           (cons _%g262195262234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd262200262228%_)
                                      (_%g262193262207%_ _%g262194262211%_))))
                              (_%g262193262207%_ _%g262194262211%_))))
                      (_%g262193262207%_ _%g262194262211%_)))))
          (_%g262192262248%_ _%$stx262189%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx262252%_)
        (let* ((_%g262256262278%_
                (lambda (_%g262257262274%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262257262274%_))))
               (_%g262255262347%_
                (lambda (_%g262257262282%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262257262282%_))
                      (let ((_%e262261262285%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262257262282%_))))
                        (let ((_%hd262262262289%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262261262285%_)))
                              (_%tl262263262292%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262261262285%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262263262292%_))
                              (let ((_%e262264262295%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262263262292%_))))
                                (let ((_%hd262265262299%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262264262295%_)))
                                      (_%tl262266262302%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262264262295%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262266262302%_))
                                      (let ((_%e262267262305%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262266262302%_))))
                                        (let ((_%hd262268262309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262267262305%_)))
                                              (_%tl262269262312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262267262305%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl262269262312%_))
                                              (let ((_%e262270262315%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl262269262312%_))))
                                                (let ((_%hd262271262319%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e262270262315%_)))
                                                      (_%tl262272262322%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e262270262315%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl262272262322%_))
                                                      ((lambda (_%g262258262325%_
                                                                _%g262259262327%_
                                                                _%g262260262328%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g262260262328%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g262259262327%_ '()))
                                   (cons _%g262258262325%_ '())))))
               _%hd262271262319%_
               _%hd262268262309%_
               _%hd262265262299%_)
              (_%g262256262278%_ _%g262257262282%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g262256262278%_
                                               _%g262257262282%_))))
                                      (_%g262256262278%_ _%g262257262282%_))))
                              (_%g262256262278%_ _%g262257262282%_))))
                      (_%g262256262278%_ _%g262257262282%_)))))
          (_%g262255262347%_ _%$stx262252%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx262351%_)
        (let* ((_%g262355262377%_
                (lambda (_%g262356262373%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262356262373%_))))
               (_%g262354262446%_
                (lambda (_%g262356262381%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262356262381%_))
                      (let ((_%e262360262384%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262356262381%_))))
                        (let ((_%hd262361262388%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262360262384%_)))
                              (_%tl262362262391%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262360262384%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262362262391%_))
                              (let ((_%e262363262394%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262362262391%_))))
                                (let ((_%hd262364262398%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262363262394%_)))
                                      (_%tl262365262401%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262363262394%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262365262401%_))
                                      (let ((_%e262366262404%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262365262401%_))))
                                        (let ((_%hd262367262408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262366262404%_)))
                                              (_%tl262368262411%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262366262404%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl262368262411%_))
                                              (let ((_%e262369262414%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl262368262411%_))))
                                                (let ((_%hd262370262418%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e262369262414%_)))
                                                      (_%tl262371262421%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e262369262414%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl262371262421%_))
                                                      ((lambda (_%g262357262424%_
                                                                _%g262358262426%_
                                                                _%g262359262427%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g262359262427%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g262358262426%_ '()))
                                   (cons _%g262357262424%_ '())))))
               _%hd262370262418%_
               _%hd262367262408%_
               _%hd262364262398%_)
              (_%g262355262377%_ _%g262356262381%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g262355262377%_
                                               _%g262356262381%_))))
                                      (_%g262355262377%_ _%g262356262381%_))))
                              (_%g262355262377%_ _%g262356262381%_))))
                      (_%g262355262377%_ _%g262356262381%_)))))
          (_%g262354262446%_ _%$stx262351%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx262450%_)
        (let* ((_%g262454262468%_
                (lambda (_%g262455262464%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262455262464%_))))
               (_%g262453262509%_
                (lambda (_%g262455262472%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262455262472%_))
                      (let ((_%e262457262475%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262455262472%_))))
                        (let ((_%hd262458262479%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262457262475%_)))
                              (_%tl262459262482%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262457262475%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262459262482%_))
                              (let ((_%e262460262485%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262459262482%_))))
                                (let ((_%hd262461262489%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262460262485%_)))
                                      (_%tl262462262492%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262460262485%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl262462262492%_))
                                      ((lambda (_%g262456262495%_)
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
                                                           (cons _%g262456262495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd262461262489%_)
                                      (_%g262454262468%_ _%g262455262472%_))))
                              (_%g262454262468%_ _%g262455262472%_))))
                      (_%g262454262468%_ _%g262455262472%_)))))
          (_%g262453262509%_ _%$stx262450%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx262513%_)
        (let* ((_%g262517262535%_
                (lambda (_%g262518262531%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262518262531%_))))
               (_%g262516262590%_
                (lambda (_%g262518262539%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262518262539%_))
                      (let ((_%e262521262542%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262518262539%_))))
                        (let ((_%hd262522262546%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262521262542%_)))
                              (_%tl262523262549%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262521262542%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262523262549%_))
                              (let ((_%e262524262552%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262523262549%_))))
                                (let ((_%hd262525262556%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262524262552%_)))
                                      (_%tl262526262559%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262524262552%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262526262559%_))
                                      (let ((_%e262527262562%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262526262559%_))))
                                        (let ((_%hd262528262566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262527262562%_)))
                                              (_%tl262529262569%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262527262562%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262529262569%_))
                                              ((lambda (_%g262519262572%_
                                                        _%g262520262574%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g262520262574%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g262519262572%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd262528262566%_
                                               _%hd262525262556%_)
                                              (_%g262517262535%_
                                               _%g262518262539%_))))
                                      (_%g262517262535%_ _%g262518262539%_))))
                              (_%g262517262535%_ _%g262518262539%_))))
                      (_%g262517262535%_ _%g262518262539%_)))))
          (_%g262516262590%_ _%$stx262513%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx262594%_)
        (let* ((_%__stx266910266911%_ _%$stx262594%_)
               (_%g262601262662%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266910266911%_)))))
          (let ((_%__kont266913266914%_
                 (lambda (_%g262603262900%_ _%g262604262902%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g262604262902%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g262603262900%_ '()))
                                     '())))))
                (_%__kont266915266916%_
                 (lambda (_%g262614262839%_
                          _%g262615262841%_
                          _%g262616262842%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g262616262842%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g262615262841%_ '()))
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
                                 (cons _%g262614262839%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont266917266918%_
                 (lambda (_%g262633262763%_ _%g262634262765%_)
                   (cons _%g262634262765%_
                         (cons _%g262633262763%_ (cons '#f '())))))
                (_%__kont266919266920%_
                 (lambda (_%g262641262713%_
                          _%g262642262715%_
                          _%g262643262716%_)
                   (cons _%g262643262716%_
                         (cons _%g262642262715%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g262641262713%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx266910266911%_))
                (let ((_%e262605262870%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx266910266911%_))))
                  (let ((_%tl262607262877%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262605262870%_)))
                        (_%hd262606262874%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262605262870%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl262607262877%_))
                        (let ((_%e262608262880%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl262607262877%_))))
                          (let ((_%tl262610262887%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262608262880%_)))
                                (_%hd262609262884%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262608262880%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl262610262887%_))
                                (let ((_%e262611262890%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl262610262887%_))))
                                  (let ((_%tl262613262897%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e262611262890%_)))
                                        (_%hd262612262894%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e262611262890%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262613262897%_))
                                        (_%__kont266913266914%_
                                         _%hd262612262894%_
                                         _%hd262609262884%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl262613262897%_))
                                            (let ((_%e262626262815%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl262613262897%_))))
                                              (let ((_%tl262628262822%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e262626262815%_)))
                                                    (_%hd262627262819%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e262626262815%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd262627262819%_))
                                                    (let ((_%e262629262825%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd262627262819%_))))
                                                      (if (equal? _%e262629262825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl262628262822%_))
                      (let ((_%e262630262829%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl262628262822%_))))
                        (let ((_%tl262632262836%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262630262829%_)))
                              (_%hd262631262833%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262630262829%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl262632262836%_))
                              (_%__kont266915266916%_
                               _%hd262631262833%_
                               _%hd262612262894%_
                               _%hd262609262884%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd262612262894%_))
                                  (let ((_%e262653262699%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd262612262894%_))))
                                    (declare (not safe))
                                    (_%g262601262662%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g262601262662%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd262612262894%_))
                          (let ((_%e262653262699%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd262612262894%_))))
                            (if (equal? _%e262653262699%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl262628262822%_))
                                    (_%__kont266919266920%_
                                     _%hd262627262819%_
                                     _%hd262609262884%_
                                     _%hd262606262874%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g262601262662%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g262601262662%_))))
                          (let () (declare (not safe)) (_%g262601262662%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd262612262894%_))
                      (let ((_%e262653262699%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd262612262894%_))))
                        (if (equal? _%e262653262699%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl262628262822%_))
                                (_%__kont266919266920%_
                                 _%hd262627262819%_
                                 _%hd262609262884%_
                                 _%hd262606262874%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g262601262662%_)))
                            (let () (declare (not safe)) (_%g262601262662%_))))
                      (let () (declare (not safe)) (_%g262601262662%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd262612262894%_))
                                                        (let ((_%e262653262699%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd262612262894%_))))
                  (if (equal? _%e262653262699%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl262628262822%_))
                          (_%__kont266919266920%_
                           _%hd262627262819%_
                           _%hd262609262884%_
                           _%hd262606262874%_)
                          (let () (declare (not safe)) (_%g262601262662%_)))
                      (let () (declare (not safe)) (_%g262601262662%_))))
                (let () (declare (not safe)) (_%g262601262662%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd262612262894%_))
                                                (let ((_%e262653262699%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd262612262894%_))))
                                                  (declare (not safe))
                                                  (_%g262601262662%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g262601262662%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl262610262887%_))
                                    (_%__kont266917266918%_
                                     _%hd262609262884%_
                                     _%hd262606262874%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g262601262662%_))))))
                        (let () (declare (not safe)) (_%g262601262662%_)))))
                (let () (declare (not safe)) (_%g262601262662%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx262921%_)
        (let* ((_%g262925262954%_
                (lambda (_%g262926262950%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262926262950%_))))
               (_%g262924263059%_
                (lambda (_%g262926262958%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262926262958%_))
                      (let ((_%e262928262961%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262926262958%_))))
                        (let ((_%hd262929262965%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262928262961%_)))
                              (_%tl262930262968%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262928262961%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl262930262968%_))
                              (let ((_g267540_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl262930262968%_
                                        '0))))
                                (begin
                                  (let ((_g267541_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g267540_)
                                               (##values-length _g267540_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g267541_ 2)))
                                        (error "Context expects 2 values"
                                               _g267541_)))
                                  (let ((_%target262931262971%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267540_ 0)))
                                        (_%tl262933262974%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267540_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262933262974%_))
                                        (letrec ((_%loop262934262977%_
                                                  (lambda (_%hd262932262981%_
                                                           _%clause262938262984%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd262932262981%_))
                                                        (let ((_%e262935262986%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd262932262981%_))))
                  (let ((_%lp-hd262936262990%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262935262986%_)))
                        (_%lp-tl262937262993%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262935262986%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd262936262990%_))
                        (let ((_g267542_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd262936262990%_
                                  '0))))
                          (begin
                            (let ((_g267543_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g267542_)
                                         (##values-length _g267542_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g267543_ 2)))
                                  (error "Context expects 2 values"
                                         _g267543_)))
                            (let ((_%target262940262996%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g267542_ 0)))
                                  (_%tl262942262999%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g267542_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl262942262999%_))
                                  (letrec ((_%loop262943263002%_
                                            (lambda (_%hd262941263006%_
                                                     _%clause262947263009%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd262941263006%_))
                                                  (let ((_%e262944263011%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd262941263006%_))))
                                                    (let ((_%lp-hd262945263015%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e262944263011%_)))
                                                          (_%lp-tl262946263018%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e262944263011%_))))
                                                      (_%loop262943263002%_
                                                       _%lp-tl262946263018%_
                                                       (cons _%lp-hd262945263015%_
                                                             _%clause262947263009%_))))
                                                  (let ((_%clause262948263021%_
                                                         (reverse _%clause262947263009%_)))
                                                    (_%loop262934262977%_
                                                     _%lp-tl262937262993%_
                                                     (cons _%clause262948263021%_
                                                           _%clause262938262984%_)))))))
                                    (_%loop262943263002%_
                                     _%target262940262996%_
                                     '()))
                                  (_%g262925262954%_ _%g262926262958%_)))))
                        (_%g262925262954%_ _%g262926262958%_))))
                (let ((_%clause262939263024%_
                       (reverse _%clause262938262984%_)))
                  ((lambda (_%g262927263027%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp267544
                                              (lambda (_%g263042263047%_
                                                       _%g263043263050%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp267545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g263044263053%_ _%g263045263056%_)
                             (cons _%g263044263053%_ _%g263045263056%_))))
                      (declare (not safe))
                      (foldr__0 __tmp267545 '() _%g263042263047%_)))
              _%g263043263050%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp267544
                                          '()
                                          _%g262927263027%_)))
                                 '())))
                   _%clause262939263024%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop262934262977%_
                                           _%target262931262971%_
                                           '()))
                                        (_%g262925262954%_
                                         _%g262926262958%_)))))
                              (_%g262925262954%_ _%g262926262958%_))))
                      (_%g262925262954%_ _%g262926262958%_)))))
          (_%g262924263059%_ _%$stx262921%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx263065%_)
        (let* ((_%g263069263087%_
                (lambda (_%g263070263083%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263070263083%_))))
               (_%g263068263142%_
                (lambda (_%g263070263091%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263070263091%_))
                      (let ((_%e263073263094%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263070263091%_))))
                        (let ((_%hd263074263098%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263073263094%_)))
                              (_%tl263075263101%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263073263094%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263075263101%_))
                              (let ((_%e263076263104%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263075263101%_))))
                                (let ((_%hd263077263108%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263076263104%_)))
                                      (_%tl263078263111%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263076263104%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl263078263111%_))
                                      (let ((_%e263079263114%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl263078263111%_))))
                                        (let ((_%hd263080263118%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263079263114%_)))
                                              (_%tl263081263121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263079263114%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263081263121%_))
                                              ((lambda (_%g263071263124%_
                                                        _%g263072263126%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g263072263126%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g263071263124%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd263080263118%_
                                               _%hd263077263108%_)
                                              (_%g263069263087%_
                                               _%g263070263091%_))))
                                      (_%g263069263087%_ _%g263070263091%_))))
                              (_%g263069263087%_ _%g263070263091%_))))
                      (_%g263069263087%_ _%g263070263091%_)))))
          (_%g263068263142%_ _%$stx263065%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx263146%_)
        (let* ((_%g263150263168%_
                (lambda (_%g263151263164%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263151263164%_))))
               (_%g263149263223%_
                (lambda (_%g263151263172%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263151263172%_))
                      (let ((_%e263154263175%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263151263172%_))))
                        (let ((_%hd263155263179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263154263175%_)))
                              (_%tl263156263182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263154263175%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263156263182%_))
                              (let ((_%e263157263185%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263156263182%_))))
                                (let ((_%hd263158263189%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263157263185%_)))
                                      (_%tl263159263192%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263157263185%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl263159263192%_))
                                      (let ((_%e263160263195%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl263159263192%_))))
                                        (let ((_%hd263161263199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263160263195%_)))
                                              (_%tl263162263202%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263160263195%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263162263202%_))
                                              ((lambda (_%g263152263205%_
                                                        _%g263153263207%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g263153263207%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g263152263205%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd263161263199%_
                                               _%hd263158263189%_)
                                              (_%g263150263168%_
                                               _%g263151263172%_))))
                                      (_%g263150263168%_ _%g263151263172%_))))
                              (_%g263150263168%_ _%g263151263172%_))))
                      (_%g263150263168%_ _%g263151263172%_)))))
          (_%g263149263223%_ _%$stx263146%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx263227%_)
        (let* ((_%g263231263260%_
                (lambda (_%g263232263256%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263232263256%_))))
               (_%g263230263356%_
                (lambda (_%g263232263264%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263232263264%_))
                      (let ((_%e263235263267%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263232263264%_))))
                        (let ((_%hd263236263271%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263235263267%_)))
                              (_%tl263237263274%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263235263267%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl263237263274%_))
                              (let ((_g267546_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl263237263274%_
                                        '0))))
                                (begin
                                  (let ((_g267547_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g267546_)
                                               (##values-length _g267546_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g267547_ 2)))
                                        (error "Context expects 2 values"
                                               _g267547_)))
                                  (let ((_%target263238263277%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267546_ 0)))
                                        (_%tl263240263280%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267546_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263240263280%_))
                                        (letrec ((_%loop263241263283%_
                                                  (lambda (_%hd263239263287%_
                                                           _%rule263245263290%_
                                                           _%proc263246263291%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd263239263287%_))
                                                        (let ((_%e263242263293%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd263239263287%_))))
                  (let ((_%lp-hd263243263297%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263242263293%_)))
                        (_%lp-tl263244263300%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263242263293%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd263243263297%_))
                        (let ((_%e263249263303%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd263243263297%_))))
                          (let ((_%hd263250263307%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263249263303%_)))
                                (_%tl263251263310%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263249263303%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl263251263310%_))
                                (let ((_%e263252263313%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl263251263310%_))))
                                  (let ((_%hd263253263317%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263252263313%_)))
                                        (_%tl263254263320%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263252263313%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263254263320%_))
                                        (_%loop263241263283%_
                                         _%lp-tl263244263300%_
                                         (cons _%hd263253263317%_
                                               _%rule263245263290%_)
                                         (cons _%hd263250263307%_
                                               _%proc263246263291%_))
                                        (_%g263231263260%_
                                         _%g263232263264%_))))
                                (_%g263231263260%_ _%g263232263264%_))))
                        (_%g263231263260%_ _%g263232263264%_))))
                (let ((_%rule263247263323%_ (reverse _%rule263245263290%_))
                      (_%proc263248263325%_ (reverse _%proc263246263291%_)))
                  ((lambda (_%g263233263327%_ _%g263234263329%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g263233263327%_
                                _%g263234263329%_))
                             (let ((__tmp267548
                                    (lambda (_%g263344263348%_
                                             _%g263345263351%_
                                             _%g263346263353%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g263345263351%_
                                                        (cons _%g263344263348%_
                                                              '())))
                                            _%g263346263353%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp267548
                                '()
                                _%g263233263327%_
                                _%g263234263329%_)))))
                   _%rule263247263323%_
                   _%proc263248263325%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop263241263283%_
                                           _%target263238263277%_
                                           '()
                                           '()))
                                        (_%g263231263260%_
                                         _%g263232263264%_)))))
                              (_%g263231263260%_ _%g263232263264%_))))
                      (_%g263231263260%_ _%g263232263264%_)))))
          (_%g263230263356%_ _%$stx263227%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx263361%_)
        (let* ((_%g263365263383%_
                (lambda (_%g263366263379%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263366263379%_))))
               (_%g263364263438%_
                (lambda (_%g263366263387%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263366263387%_))
                      (let ((_%e263369263390%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263366263387%_))))
                        (let ((_%hd263370263394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263369263390%_)))
                              (_%tl263371263397%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263369263390%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263371263397%_))
                              (let ((_%e263372263400%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263371263397%_))))
                                (let ((_%hd263373263404%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263372263400%_)))
                                      (_%tl263374263407%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263372263400%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl263374263407%_))
                                      (let ((_%e263375263410%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl263374263407%_))))
                                        (let ((_%hd263376263414%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263375263410%_)))
                                              (_%tl263377263417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263375263410%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263377263417%_))
                                              ((lambda (_%g263367263420%_
                                                        _%g263368263422%_)
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
                                                   (cons _%g263368263422%_
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
                 (cons _%g263367263420%_ '())))
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
                                   (cons _%g263368263422%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd263376263414%_
                                               _%hd263373263404%_)
                                              (_%g263365263383%_
                                               _%g263366263387%_))))
                                      (_%g263365263383%_ _%g263366263387%_))))
                              (_%g263365263383%_ _%g263366263387%_))))
                      (_%g263365263383%_ _%g263366263387%_)))))
          (_%g263364263438%_ _%$stx263361%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx263442%_)
        (let* ((_%__stx267028267029%_ _%$stx263442%_)
               (_%g263447263472%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx267028267029%_)))))
          (let ((_%__kont267031267032%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont267033267034%_
                 (lambda (_%g263452263519%_
                          _%g263453263521%_
                          _%g263454263522%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g263454263522%_
                                           (cons _%g263453263521%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g263452263519%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx267028267029%_))
                (let ((_%e263449263548%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx267028267029%_))))
                  (let ((_%tl263451263555%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263449263548%_)))
                        (_%hd263450263552%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263449263548%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl263451263555%_))
                        (_%__kont267031267032%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl263451263555%_))
                            (let ((_%e263458263489%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl263451263555%_))))
                              (let ((_%tl263460263496%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e263458263489%_)))
                                    (_%hd263459263493%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e263458263489%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd263459263493%_))
                                    (let ((_%e263461263499%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd263459263493%_))))
                                      (let ((_%tl263463263506%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e263461263499%_)))
                                            (_%hd263462263503%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e263461263499%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl263463263506%_))
                                            (let ((_%e263464263509%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl263463263506%_))))
                                              (let ((_%tl263466263516%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e263464263509%_)))
                                                    (_%hd263465263513%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e263464263509%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl263466263516%_))
                                                    (_%__kont267033267034%_
                                                     _%tl263460263496%_
                                                     _%hd263465263513%_
                                                     _%hd263462263503%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g263447263472%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g263447263472%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g263447263472%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g263447263472%_))))))
                (let () (declare (not safe)) (_%g263447263472%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx263566%_)
        (let* ((_%__stx267072267073%_ _%$stx263566%_)
               (_%g263571263602%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx267072267073%_)))))
          (let ((_%__kont267075267076%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont267077267078%_
                 (lambda (_%g263576263667%_
                          _%g263577263669%_
                          _%g263578263670%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g263578263670%_
                                           (let ((__tmp267549
                                                  (lambda (_%g263690263693%_
                                                           _%g263691263696%_)
                                                    (cons _%g263690263693%_
                                                          _%g263691263696%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp267549
                                              '()
                                              _%g263577263669%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g263576263667%_)
                                     '()))))))
            (let ((_%__match267115267116%_
                   (lambda (_%e263579263609%_
                            _%hd263580263613%_
                            _%tl263581263616%_
                            _%e263582263619%_
                            _%hd263583263623%_
                            _%tl263584263626%_
                            _%e263585263629%_
                            _%hd263586263633%_
                            _%tl263587263636%_
                            _%__splice267079267080%_
                            _%target263588263639%_
                            _%tl263590263642%_)
                     (letrec ((_%loop263591263645%_
                               (lambda (_%hd263589263649%_ _%sig263595263652%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd263589263649%_))
                                     (let ((_%e263592263654%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd263589263649%_))))
                                       (let ((_%lp-tl263594263661%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e263592263654%_)))
                                             (_%lp-hd263593263658%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e263592263654%_))))
                                         (_%loop263591263645%_
                                          _%lp-tl263594263661%_
                                          (cons _%lp-hd263593263658%_
                                                _%sig263595263652%_))))
                                     (let ((_%sig263596263664%_
                                            (reverse _%sig263595263652%_)))
                                       (_%__kont267077267078%_
                                        _%tl263584263626%_
                                        _%sig263596263664%_
                                        _%hd263586263633%_))))))
                       (_%loop263591263645%_ _%target263588263639%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx267072267073%_))
                  (let ((_%e263573263706%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx267072267073%_))))
                    (let ((_%tl263575263713%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263573263706%_)))
                          (_%hd263574263710%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263573263706%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl263575263713%_))
                          (_%__kont267075267076%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263575263713%_))
                              (let ((_%e263582263619%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263575263713%_))))
                                (let ((_%tl263584263626%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263582263619%_)))
                                      (_%hd263583263623%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263582263619%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd263583263623%_))
                                      (let ((_%e263585263629%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd263583263623%_))))
                                        (let ((_%tl263587263636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263585263629%_)))
                                              (_%hd263586263633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263585263629%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl263587263636%_))
                                              (let ((_%__splice267079267080%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl263587263636%_
                                                        '0))))
                                                (let ((_%tl263590263642%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice267079267080%_
                                                          '1)))
                                                      (_%target263588263639%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice267079267080%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl263590263642%_))
                                                      (_%__match267115267116%_
                                                       _%e263573263706%_
                                                       _%hd263574263710%_
                                                       _%tl263575263713%_
                                                       _%e263582263619%_
                                                       _%hd263583263623%_
                                                       _%tl263584263626%_
                                                       _%e263585263629%_
                                                       _%hd263586263633%_
                                                       _%tl263587263636%_
                                                       _%__splice267079267080%_
                                                       _%target263588263639%_
                                                       _%tl263590263642%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g263571263602%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g263571263602%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g263571263602%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g263571263602%_))))))
                  (let () (declare (not safe)) (_%g263571263602%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx263725%_)
        (let* ((_%__stx267118267119%_ _%$stx263725%_)
               (_%g263730263777%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx267118267119%_)))))
          (let ((_%__kont267121267122%_
                 (lambda (_%g263732263935%_ _%g263733263937%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g263733263937%_
                               (let ((__tmp267550
                                      (lambda (_%g263957263960%_
                                               _%g263958263963%_)
                                        (cons _%g263957263960%_
                                              _%g263958263963%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp267550
                                  '()
                                  _%g263732263935%_))))))
                (_%__kont267125267126%_
                 (lambda (_%g263755263832%_ _%g263756263834%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g263756263834%_
                               (let ((__tmp267551
                                      (lambda (_%g263851263854%_
                                               _%g263852263857%_)
                                        (cons _%g263851263854%_
                                              _%g263852263857%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp267551
                                  '()
                                  _%g263755263832%_)))))))
            (let* ((_%__match267185267186%_
                    (lambda (_%e263757263784%_
                             _%hd263758263788%_
                             _%tl263759263791%_
                             _%e263760263794%_
                             _%hd263761263798%_
                             _%tl263762263801%_
                             _%__splice267127267128%_
                             _%target263763263804%_
                             _%tl263765263807%_)
                      (letrec ((_%loop263766263810%_
                                (lambda (_%hd263764263814%_
                                         _%sig263770263817%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd263764263814%_))
                                      (let ((_%e263767263819%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd263764263814%_))))
                                        (let ((_%lp-tl263769263826%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263767263819%_)))
                                              (_%lp-hd263768263823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263767263819%_))))
                                          (_%loop263766263810%_
                                           _%lp-tl263769263826%_
                                           (cons _%lp-hd263768263823%_
                                                 _%sig263770263817%_))))
                                      (let ((_%sig263771263829%_
                                             (reverse _%sig263770263817%_)))
                                        (_%__kont267125267126%_
                                         _%sig263771263829%_
                                         _%hd263761263798%_))))))
                        (_%loop263766263810%_ _%target263763263804%_ '()))))
                   (_%__match267177267178%_
                    (lambda (_%e263757263784%_
                             _%hd263758263788%_
                             _%tl263759263791%_
                             _%e263760263794%_
                             _%hd263761263798%_
                             _%tl263762263801%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl263762263801%_))
                          (let ((_%__splice267127267128%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl263762263801%_
                                    '0))))
                            (let ((_%tl263765263807%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice267127267128%_
                                      '1)))
                                  (_%target263763263804%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice267127267128%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl263765263807%_))
                                  (_%__match267185267186%_
                                   _%e263757263784%_
                                   _%hd263758263788%_
                                   _%tl263759263791%_
                                   _%e263760263794%_
                                   _%hd263761263798%_
                                   _%tl263762263801%_
                                   _%__splice267127267128%_
                                   _%target263763263804%_
                                   _%tl263765263807%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g263730263777%_)))))
                          (let () (declare (not safe)) (_%g263730263777%_)))))
                   (_%__match267165267166%_
                    (lambda (_%e263734263867%_
                             _%hd263735263871%_
                             _%tl263736263874%_
                             _%e263737263877%_
                             _%hd263738263881%_
                             _%tl263739263884%_
                             _%e263740263887%_
                             _%hd263741263891%_
                             _%tl263742263894%_
                             _%e263743263897%_
                             _%hd263744263901%_
                             _%tl263745263904%_
                             _%__splice267123267124%_
                             _%target263746263907%_
                             _%tl263748263910%_)
                      (letrec ((_%loop263749263913%_
                                (lambda (_%hd263747263917%_
                                         _%sig263753263920%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd263747263917%_))
                                      (let ((_%e263750263922%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd263747263917%_))))
                                        (let ((_%lp-tl263752263929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263750263922%_)))
                                              (_%lp-hd263751263926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263750263922%_))))
                                          (_%loop263749263913%_
                                           _%lp-tl263752263929%_
                                           (cons _%lp-hd263751263926%_
                                                 _%sig263753263920%_))))
                                      (let ((_%sig263754263932%_
                                             (reverse _%sig263753263920%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl263742263894%_))
                                            (_%__kont267121267122%_
                                             _%sig263754263932%_
                                             _%hd263738263881%_)
                                            (_%__match267177267178%_
                                             _%e263734263867%_
                                             _%hd263735263871%_
                                             _%tl263736263874%_
                                             _%e263737263877%_
                                             _%hd263738263881%_
                                             _%tl263739263884%_)))))))
                        (_%loop263749263913%_ _%target263746263907%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx267118267119%_))
                  (let ((_%e263734263867%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx267118267119%_))))
                    (let ((_%tl263736263874%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263734263867%_)))
                          (_%hd263735263871%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263734263867%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl263736263874%_))
                          (let ((_%e263737263877%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl263736263874%_))))
                            (let ((_%tl263739263884%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e263737263877%_)))
                                  (_%hd263738263881%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e263737263877%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl263739263884%_))
                                  (let ((_%e263740263887%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl263739263884%_))))
                                    (let ((_%tl263742263894%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e263740263887%_)))
                                          (_%hd263741263891%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e263740263887%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd263741263891%_))
                                          (let ((_%e263743263897%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd263741263891%_))))
                                            (let ((_%tl263745263904%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e263743263897%_)))
                                                  (_%hd263744263901%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e263743263897%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd263744263901%_))
                                                  (if (let ((__tmp267552
                                                             |gxc[1]#_g267553_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp267552
                                                         _%hd263744263901%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl263745263904%_))
                                                          (let ((_%__splice267123267124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl263745263904%_
                            '0))))
                    (let ((_%tl263748263910%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice267123267124%_ '1)))
                          (_%target263746263907%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice267123267124%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl263748263910%_))
                          (_%__match267165267166%_
                           _%e263734263867%_
                           _%hd263735263871%_
                           _%tl263736263874%_
                           _%e263737263877%_
                           _%hd263738263881%_
                           _%tl263739263884%_
                           _%e263740263887%_
                           _%hd263741263891%_
                           _%tl263742263894%_
                           _%e263743263897%_
                           _%hd263744263901%_
                           _%tl263745263904%_
                           _%__splice267123267124%_
                           _%target263746263907%_
                           _%tl263748263910%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl263739263884%_))
                              (let ((_%__splice267127267128%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl263739263884%_
                                        '0))))
                                (let ((_%tl263765263807%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice267127267128%_
                                          '1)))
                                      (_%target263763263804%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice267127267128%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl263765263807%_))
                                      (_%__match267185267186%_
                                       _%e263734263867%_
                                       _%hd263735263871%_
                                       _%tl263736263874%_
                                       _%e263737263877%_
                                       _%hd263738263881%_
                                       _%tl263739263884%_
                                       _%__splice267127267128%_
                                       _%target263763263804%_
                                       _%tl263765263807%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g263730263777%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g263730263777%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl263739263884%_))
                      (let ((_%__splice267127267128%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl263739263884%_
                                '0))))
                        (let ((_%tl263765263807%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267127267128%_ '1)))
                              (_%target263763263804%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267127267128%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl263765263807%_))
                              (_%__match267185267186%_
                               _%e263734263867%_
                               _%hd263735263871%_
                               _%tl263736263874%_
                               _%e263737263877%_
                               _%hd263738263881%_
                               _%tl263739263884%_
                               _%__splice267127267128%_
                               _%target263763263804%_
                               _%tl263765263807%_)
                              (let ()
                                (declare (not safe))
                                (_%g263730263777%_)))))
                      (let () (declare (not safe)) (_%g263730263777%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl263739263884%_))
                  (let ((_%__splice267127267128%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl263739263884%_
                            '0))))
                    (let ((_%tl263765263807%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice267127267128%_ '1)))
                          (_%target263763263804%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice267127267128%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl263765263807%_))
                          (_%__match267185267186%_
                           _%e263734263867%_
                           _%hd263735263871%_
                           _%tl263736263874%_
                           _%e263737263877%_
                           _%hd263738263881%_
                           _%tl263739263884%_
                           _%__splice267127267128%_
                           _%target263763263804%_
                           _%tl263765263807%_)
                          (let () (declare (not safe)) (_%g263730263777%_)))))
                  (let () (declare (not safe)) (_%g263730263777%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl263739263884%_))
                                                      (let ((_%__splice267127267128%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl263739263884%_
                        '0))))
                (let ((_%tl263765263807%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice267127267128%_ '1)))
                      (_%target263763263804%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice267127267128%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl263765263807%_))
                      (_%__match267185267186%_
                       _%e263734263867%_
                       _%hd263735263871%_
                       _%tl263736263874%_
                       _%e263737263877%_
                       _%hd263738263881%_
                       _%tl263739263884%_
                       _%__splice267127267128%_
                       _%target263763263804%_
                       _%tl263765263807%_)
                      (let () (declare (not safe)) (_%g263730263777%_)))))
              (let () (declare (not safe)) (_%g263730263777%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl263739263884%_))
                                              (let ((_%__splice267127267128%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl263739263884%_
                                                        '0))))
                                                (let ((_%tl263765263807%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice267127267128%_
                                                          '1)))
                                                      (_%target263763263804%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice267127267128%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl263765263807%_))
                                                      (_%__match267185267186%_
                                                       _%e263734263867%_
                                                       _%hd263735263871%_
                                                       _%tl263736263874%_
                                                       _%e263737263877%_
                                                       _%hd263738263881%_
                                                       _%tl263739263884%_
                                                       _%__splice267127267128%_
                                                       _%target263763263804%_
                                                       _%tl263765263807%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g263730263777%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g263730263777%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl263739263884%_))
                                      (let ((_%__splice267127267128%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl263739263884%_
                                                '0))))
                                        (let ((_%tl263765263807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice267127267128%_
                                                  '1)))
                                              (_%target263763263804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice267127267128%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263765263807%_))
                                              (_%__match267185267186%_
                                               _%e263734263867%_
                                               _%hd263735263871%_
                                               _%tl263736263874%_
                                               _%e263737263877%_
                                               _%hd263738263881%_
                                               _%tl263739263884%_
                                               _%__splice267127267128%_
                                               _%target263763263804%_
                                               _%tl263765263807%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g263730263777%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g263730263777%_))))))
                          (let () (declare (not safe)) (_%g263730263777%_)))))
                  (let () (declare (not safe)) (_%g263730263777%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx265120%_ _%id265122%_)
        (let ((_%proc265126%_
               (let ((__tmp267554
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id265122%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp267554))))
          (if (procedure? _%proc265126%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx265120%_
                 _%id265122%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx265111%_ _%id265113%_)
        (let ((_%klass265117%_
               (let ((__tmp267555
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id265113%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp267555))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass265117%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx265111%_
                 _%id265113%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx264361%_ _%proc264363%_ _%sig264364%_)
        (letrec ((_%signature-arity264366%_
                  (lambda (_%args265043%_)
                    (let _%loop265046%_ ((_%rest265049%_ _%args265043%_)
                                         (_%count265051%_ '0))
                      (let* ((_%rest265052265063%_ _%rest265049%_)
                             (_%E265056265069%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest265052265063%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K265059265100%_
                               (lambda (_%rest265097%_)
                                 (_%loop265046%_
                                  _%rest265097%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count265051%_ '1)))))
                              (_%K265058265089%_ (lambda () _%count265051%_))
                              (_%K265057265077%_
                               (lambda () (cons _%count265051%_ '()))))
                          (let ((_%try-match265054265093%_
                                 (lambda ()
                                   (if (null? _%rest265052265063%_)
                                       (_%K265058265089%_)
                                       (_%K265057265077%_)))))
                            (if (pair? _%rest265052265063%_)
                                (let* ((_%tl265061265104%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest265052265063%_)))
                                       (_%rest265108%_ _%tl265061265104%_))
                                  (_%K265059265100%_ _%rest265108%_))
                                (_%try-match265054265093%_))))))))
                 (_%make-signature264368%_
                  (lambda (_%args264925%_
                           _%return264927%_
                           _%effect264928%_
                           _%unchecked264929%_)
                    (let ((__tmp267556
                           (lambda (_%g264930264932%_)
                             (|gxc[1]#verify-class!|
                              _%ctx264361%_
                              _%g264930264932%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp267556 _%args264925%_))
                    (|gxc[1]#verify-class!| _%ctx264361%_ _%return264927%_)
                    (if _%unchecked264929%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx264361%_
                         _%unchecked264929%_)
                        '#!void)
                    (let ((_%arity264936%_
                           (_%signature-arity264366%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args264925%_)))))
                      (if _%effect264928%_
                          (let ((_%effect264939%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect264928%_))))
                            (if (and (list? _%effect264939%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect264939%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx264361%_
                                   _%proc264363%_
                                   _%effect264939%_))))
                          '#!void)
                      (cons _%arity264936%_
                            (cons (let* ((_%g264942264965%_
                                          (lambda (_%g264943264961%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g264943264961%_))))
                                         (_%g264941265039%_
                                          (lambda (_%g264943264969%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g264943264969%_))
                                                (let ((_%e264948264972%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g264943264969%_))))
                                                  (let ((_%hd264949264976%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e264948264972%_)))
                                                        (_%tl264950264979%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e264948264972%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl264950264979%_))
                                                        (let ((_%e264951264982%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl264950264979%_))))
                  (let ((_%hd264952264986%_
                         (let ()
                           (declare (not safe))
                           (##car _%e264951264982%_)))
                        (_%tl264953264989%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e264951264982%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl264953264989%_))
                        (let ((_%e264954264992%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl264953264989%_))))
                          (let ((_%hd264955264996%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264954264992%_)))
                                (_%tl264956264999%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264954264992%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl264956264999%_))
                                (let ((_%e264957265002%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl264956264999%_))))
                                  (let ((_%hd264958265006%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e264957265002%_)))
                                        (_%tl264959265009%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e264957265002%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl264959265009%_))
                                        ((lambda (_%g264944265012%_
                                                  _%g264945265014%_
                                                  _%g264946265015%_
                                                  _%g264947265016%_)
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
                           (cons _%g264947265016%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g264946265015%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g264945265014%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g264944265012%_ '()))
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
                                         _%hd264958265006%_
                                         _%hd264955264996%_
                                         _%hd264952264986%_
                                         _%hd264949264976%_)
                                        (_%g264942264965%_
                                         _%g264943264969%_))))
                                (_%g264942264965%_ _%g264943264969%_))))
                        (_%g264942264965%_ _%g264943264969%_))))
                (_%g264942264965%_ _%g264943264969%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g264942264965%_
                                                 _%g264943264969%_)))))
                                    (_%g264941265039%_
                                     (list _%args264925%_
                                           _%return264927%_
                                           _%effect264928%_
                                           _%unchecked264929%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx264361%_ _%proc264363%_)
          (let* ((_%__stx267196267197%_ _%sig264364%_)
                 (_%g264375264478%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx267196267197%_)))))
            (let ((_%__kont267199267200%_
                   (lambda (_%g264377264906%_ _%g264378264908%_)
                     (_%make-signature264368%_
                      _%g264378264908%_
                      _%g264377264906%_
                      '#f
                      '#f)))
                  (_%__kont267201267202%_
                   (lambda (_%g264385264857%_
                            _%g264386264859%_
                            _%g264387264860%_)
                     (_%make-signature264368%_
                      _%g264387264860%_
                      _%g264386264859%_
                      _%g264385264857%_
                      '#f)))
                  (_%__kont267203267204%_
                   (lambda (_%g264401264781%_
                            _%g264402264783%_
                            _%g264403264784%_)
                     (_%make-signature264368%_
                      _%g264403264784%_
                      _%g264402264783%_
                      _%g264401264781%_
                      (let ((__tmp267557
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc264363%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp267557)))))
                  (_%__kont267205267206%_
                   (lambda (_%g264421264687%_
                            _%g264422264689%_
                            _%g264423264690%_
                            _%g264424264691%_)
                     (_%make-signature264368%_
                      _%g264424264691%_
                      _%g264423264690%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g264421264687%_)))))
                  (_%__kont267207267208%_
                   (lambda (_%g264445264594%_ _%g264446264596%_)
                     (_%make-signature264368%_
                      _%g264446264596%_
                      _%g264445264594%_
                      '#f
                      (let ((__tmp267558
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc264363%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp267558)))))
                  (_%__kont267209267210%_
                   (lambda (_%g264457264529%_
                            _%g264458264531%_
                            _%g264459264532%_)
                     (_%make-signature264368%_
                      _%g264459264532%_
                      _%g264458264531%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g264457264529%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx267196267197%_))
                  (let ((_%e264379264886%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx267196267197%_))))
                    (let ((_%tl264381264893%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e264379264886%_)))
                          (_%hd264380264890%_
                           (let ()
                             (declare (not safe))
                             (##car _%e264379264886%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl264381264893%_))
                          (let ((_%e264382264896%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl264381264893%_))))
                            (let ((_%tl264384264903%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e264382264896%_)))
                                  (_%hd264383264900%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e264382264896%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl264384264903%_))
                                  (_%__kont267199267200%_
                                   _%hd264383264900%_
                                   _%hd264380264890%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl264384264903%_))
                                      (let ((_%e264394264833%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl264384264903%_))))
                                        (let ((_%tl264396264840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264394264833%_)))
                                              (_%hd264395264837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264394264833%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd264395264837%_))
                                              (let ((_%e264397264843%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd264395264837%_))))
                                                (if (equal? _%e264397264843%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl264396264840%_))
                                                        (let ((_%e264398264847%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl264396264840%_))))
                  (let ((_%tl264400264854%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e264398264847%_)))
                        (_%hd264399264851%_
                         (let ()
                           (declare (not safe))
                           (##car _%e264398264847%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl264400264854%_))
                        (_%__kont267201267202%_
                         _%hd264399264851%_
                         _%hd264383264900%_
                         _%hd264380264890%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl264400264854%_))
                            (let ((_%e264417264767%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl264400264854%_))))
                              (let ((_%tl264419264774%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e264417264767%_)))
                                    (_%hd264418264771%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e264417264767%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd264418264771%_))
                                    (let ((_%e264420264777%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd264418264771%_))))
                                      (if (equal? _%e264420264777%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl264419264774%_))
                                              (_%__kont267203267204%_
                                               _%hd264399264851%_
                                               _%hd264383264900%_
                                               _%hd264380264890%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl264419264774%_))
                                                  (let ((_%e264442264677%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl264419264774%_))))
                                                    (let ((_%tl264444264684%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e264442264677%_)))
                                                          (_%hd264443264681%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e264442264677%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl264444264684%_))
                                                          (_%__kont267205267206%_
                                                           _%hd264443264681%_
                                                           _%hd264399264851%_
                                                           _%hd264383264900%_
                                                           _%hd264380264890%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g264375264478%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g264375264478%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g264375264478%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g264375264478%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g264375264478%_))))))
                (let () (declare (not safe)) (_%g264375264478%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e264397264843%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl264396264840%_))
                                                            (_%__kont267207267208%_
                                                             _%hd264383264900%_
                                                             _%hd264380264890%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl264396264840%_))
                        (let ((_%e264470264519%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl264396264840%_))))
                          (let ((_%tl264472264526%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264470264519%_)))
                                (_%hd264471264523%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264470264519%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl264472264526%_))
                                (_%__kont267209267210%_
                                 _%hd264471264523%_
                                 _%hd264383264900%_
                                 _%hd264380264890%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g264375264478%_)))))
                        (let () (declare (not safe)) (_%g264375264478%_))))
                (let () (declare (not safe)) (_%g264375264478%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g264375264478%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g264375264478%_))))))
                          (let () (declare (not safe)) (_%g264375264478%_)))))
                  (let () (declare (not safe)) (_%g264375264478%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig263972%_)
        (let* ((_%g263975264055%_
                (lambda (_%g263976264051%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263976264051%_))))
               (_%g263974264357%_
                (lambda (_%g263976264059%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263976264059%_))
                      (let ((_%e263982264062%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263976264059%_))))
                        (let ((_%hd263983264066%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263982264062%_)))
                              (_%tl263984264069%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263982264062%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263984264069%_))
                              (let ((_%e263985264072%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263984264069%_))))
                                (let ((_%hd263986264076%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263985264072%_)))
                                      (_%tl263987264079%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263985264072%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd263986264076%_))
                                      (let ((_%e263988264082%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd263986264076%_))))
                                        (if (equal? _%e263988264082%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl263987264079%_))
                                                (let ((_%e263989264086%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl263987264079%_))))
                                                  (let ((_%hd263990264090%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e263989264086%_)))
                                                        (_%tl263991264093%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e263989264086%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd263990264090%_))
                                                        (let ((_%e263992264096%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd263990264090%_))))
                  (let ((_%hd263993264100%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263992264096%_)))
                        (_%tl263994264103%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263992264096%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd263993264100%_))
                        (if (let ((__tmp267559 |gxc[1]#_g267560_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp267559
                               _%hd263993264100%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl263994264103%_))
                                (let ((_%e263995264106%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl263994264103%_))))
                                  (let ((_%hd263996264110%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263995264106%_)))
                                        (_%tl263997264113%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263995264106%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263997264113%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl263991264093%_))
                                            (let ((_%e263998264116%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl263991264093%_))))
                                              (let ((_%hd263999264120%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e263998264116%_)))
                                                    (_%tl264000264123%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e263998264116%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd263999264120%_))
                                                    (let ((_%e264001264126%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd263999264120%_))))
                                                      (if (equal? _%e264001264126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl264000264123%_))
                      (let ((_%e264002264130%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl264000264123%_))))
                        (let ((_%hd264003264134%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264002264130%_)))
                              (_%tl264004264137%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264002264130%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd264003264134%_))
                              (let ((_%e264005264140%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd264003264134%_))))
                                (let ((_%hd264006264144%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264005264140%_)))
                                      (_%tl264007264147%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264005264140%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd264006264144%_))
                                      (if (let ((__tmp267561
                                                 |gxc[1]#_g267562_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp267561
                                             _%hd264006264144%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl264007264147%_))
                                              (let ((_%e264008264150%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl264007264147%_))))
                                                (let ((_%hd264009264154%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e264008264150%_)))
                                                      (_%tl264010264157%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e264008264150%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl264010264157%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl264004264137%_))
                                                          (let ((_%e264011264160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl264004264137%_))))
                    (let ((_%hd264012264164%_
                           (let ()
                             (declare (not safe))
                             (##car _%e264011264160%_)))
                          (_%tl264013264167%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e264011264160%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd264012264164%_))
                          (let ((_%e264014264170%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd264012264164%_))))
                            (if (equal? _%e264014264170%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl264013264167%_))
                                    (let ((_%e264015264174%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl264013264167%_))))
                                      (let ((_%hd264016264178%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e264015264174%_)))
                                            (_%tl264017264181%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e264015264174%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd264016264178%_))
                                            (let ((_%e264018264184%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd264016264178%_))))
                                              (let ((_%hd264019264188%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e264018264184%_)))
                                                    (_%tl264020264191%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e264018264184%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd264019264188%_))
                                                    (if (let ((__tmp267563
                                                               |gxc[1]#_g267564_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp267563
                                                           _%hd264019264188%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl264020264191%_))
                                                            (let ((_%e264021264194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl264020264191%_))))
                      (let ((_%hd264022264198%_
                             (let ()
                               (declare (not safe))
                               (##car _%e264021264194%_)))
                            (_%tl264023264201%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e264021264194%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl264023264201%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl264017264181%_))
                                (let ((_%e264024264204%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl264017264181%_))))
                                  (let ((_%hd264025264208%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e264024264204%_)))
                                        (_%tl264026264211%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e264024264204%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd264025264208%_))
                                        (let ((_%e264027264214%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd264025264208%_))))
                                          (if (equal? _%e264027264214%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl264026264211%_))
                                                  (let ((_%e264028264218%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl264026264211%_))))
                                                    (let ((_%hd264029264222%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e264028264218%_)))
                                                          (_%tl264030264225%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e264028264218%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd264029264222%_))
                                                          (let ((_%e264031264228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd264029264222%_))))
                    (let ((_%hd264032264232%_
                           (let ()
                             (declare (not safe))
                             (##car _%e264031264228%_)))
                          (_%tl264033264235%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e264031264228%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd264032264232%_))
                          (if (let ((__tmp267565 |gxc[1]#_g267566_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp267565
                                 _%hd264032264232%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl264033264235%_))
                                  (let ((_%e264034264238%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl264033264235%_))))
                                    (let ((_%hd264035264242%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e264034264238%_)))
                                          (_%tl264036264245%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e264034264238%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl264036264245%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl264030264225%_))
                                              (let ((_%e264037264248%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl264030264225%_))))
                                                (let ((_%hd264038264252%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e264037264248%_)))
                                                      (_%tl264039264255%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e264037264248%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd264038264252%_))
                                                      (let ((_%e264040264258%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd264038264252%_))))
                (if (equal? _%e264040264258%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl264039264255%_))
                        (let ((_%e264041264262%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl264039264255%_))))
                          (let ((_%hd264042264266%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264041264262%_)))
                                (_%tl264043264269%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264041264262%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd264042264266%_))
                                (let ((_%e264044264272%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd264042264266%_))))
                                  (let ((_%hd264045264276%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e264044264272%_)))
                                        (_%tl264046264279%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e264044264272%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd264045264276%_))
                                        (if (let ((__tmp267567
                                                   |gxc[1]#_g267568_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp267567
                                               _%hd264045264276%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl264046264279%_))
                                                (let ((_%e264047264282%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl264046264279%_))))
                                                  (let ((_%hd264048264286%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e264047264282%_)))
                                                        (_%tl264049264289%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e264047264282%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl264049264289%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl264043264269%_))
                                                            ((lambda (_%g263977264292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g263978264294%_
                              _%g263979264295%_
                              _%g263980264296%_
                              _%g263981264297%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g263978264294%_))
                           (cons _%g263978264294%_
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
                       (cons _%g263980264296%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g263977264292%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd264048264286%_
                     _%hd264035264242%_
                     _%hd264022264198%_
                     _%hd264009264154%_
                     _%hd263996264110%_)
                    (_%g263975264055%_ _%g263976264059%_))
                (_%g263975264055%_ _%g263976264059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g263975264055%_
                                                 _%g263976264059%_))
                                            (_%g263975264055%_
                                             _%g263976264059%_))
                                        (_%g263975264055%_
                                         _%g263976264059%_))))
                                (_%g263975264055%_ _%g263976264059%_))))
                        (_%g263975264055%_ _%g263976264059%_))
                    (_%g263975264055%_ _%g263976264059%_)))
              (_%g263975264055%_ _%g263976264059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g263975264055%_
                                               _%g263976264059%_))
                                          (_%g263975264055%_
                                           _%g263976264059%_))))
                                  (_%g263975264055%_ _%g263976264059%_))
                              (_%g263975264055%_ _%g263976264059%_))
                          (_%g263975264055%_ _%g263976264059%_))))
                  (_%g263975264055%_ _%g263976264059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g263975264055%_
                                                   _%g263976264059%_))
                                              (_%g263975264055%_
                                               _%g263976264059%_)))
                                        (_%g263975264055%_
                                         _%g263976264059%_))))
                                (_%g263975264055%_ _%g263976264059%_))
                            (_%g263975264055%_ _%g263976264059%_))))
                    (_%g263975264055%_ _%g263976264059%_))
                (_%g263975264055%_ _%g263976264059%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g263975264055%_
                                                     _%g263976264059%_))))
                                            (_%g263975264055%_
                                             _%g263976264059%_))))
                                    (_%g263975264055%_ _%g263976264059%_))
                                (_%g263975264055%_ _%g263976264059%_)))
                          (_%g263975264055%_ _%g263976264059%_))))
                  (_%g263975264055%_ _%g263976264059%_))
              (_%g263975264055%_ _%g263976264059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g263975264055%_
                                               _%g263976264059%_))
                                          (_%g263975264055%_
                                           _%g263976264059%_))
                                      (_%g263975264055%_ _%g263976264059%_))))
                              (_%g263975264055%_ _%g263976264059%_))))
                      (_%g263975264055%_ _%g263976264059%_))
                  (_%g263975264055%_ _%g263976264059%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g263975264055%_
                                                     _%g263976264059%_))))
                                            (_%g263975264055%_
                                             _%g263976264059%_))
                                        (_%g263975264055%_
                                         _%g263976264059%_))))
                                (_%g263975264055%_ _%g263976264059%_))
                            (_%g263975264055%_ _%g263976264059%_))
                        (_%g263975264055%_ _%g263976264059%_))))
                (_%g263975264055%_ _%g263976264059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g263975264055%_
                                                 _%g263976264059%_))
                                            (_%g263975264055%_
                                             _%g263976264059%_)))
                                      (_%g263975264055%_ _%g263976264059%_))))
                              (_%g263975264055%_ _%g263976264059%_))))
                      (_%g263975264055%_ _%g263976264059%_)))))
          (_%g263974264357%_ _%sig263972%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx265129%_)
        (let* ((_%g265132265150%_
                (lambda (_%g265133265146%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265133265146%_))))
               (_%g265131265205%_
                (lambda (_%g265133265154%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265133265154%_))
                      (let ((_%e265136265157%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265133265154%_))))
                        (let ((_%hd265137265161%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265136265157%_)))
                              (_%tl265138265164%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265136265157%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl265138265164%_))
                              (let ((_%e265139265167%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl265138265164%_))))
                                (let ((_%hd265140265171%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265139265167%_)))
                                      (_%tl265141265174%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265139265167%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl265141265174%_))
                                      (let ((_%e265142265177%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl265141265174%_))))
                                        (let ((_%hd265143265181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e265142265177%_)))
                                              (_%tl265144265184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e265142265177%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl265144265184%_))
                                              ((lambda (_%g265134265187%_
                                                        _%g265135265189%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g265135265189%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g265134265187%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx265129%_
                                                        _%g265135265189%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx265129%_
                                                        _%g265134265187%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g265135265189%_
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
                                                   (cons _%g265134265187%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g265132265150%_
                                                      _%g265133265154%_)))
                                               _%hd265143265181%_
                                               _%hd265140265171%_)
                                              (_%g265132265150%_
                                               _%g265133265154%_))))
                                      (_%g265132265150%_ _%g265133265154%_))))
                              (_%g265132265150%_ _%g265133265154%_))))
                      (_%g265132265150%_ _%g265133265154%_)))))
          (_%g265131265205%_ _%stx265129%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx265209%_)
        (let* ((_%g265212265236%_
                (lambda (_%g265213265232%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265213265232%_))))
               (_%g265211265517%_
                (lambda (_%g265213265240%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265213265240%_))
                      (let ((_%e265216265243%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265213265240%_))))
                        (let ((_%hd265217265247%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265216265243%_)))
                              (_%tl265218265250%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265216265243%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl265218265250%_))
                              (let ((_%e265219265253%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl265218265250%_))))
                                (let ((_%hd265220265257%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265219265253%_)))
                                      (_%tl265221265260%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265219265253%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl265221265260%_))
                                      (let ((_g267569_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl265221265260%_
                                                '0))))
                                        (begin
                                          (let ((_g267570_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g267569_)
                                                       (##values-length
                                                        _g267569_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g267570_ 2)))
                                                (error "Context expects 2 values"
                                                       _g267570_)))
                                          (let ((_%target265222265263%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g267569_ 0)))
                                                (_%tl265224265266%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g267569_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl265224265266%_))
                                                (letrec ((_%loop265225265269%_
                                                          (lambda (_%hd265223265273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature265229265276%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd265223265273%_))
                        (let ((_%e265226265278%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd265223265273%_))))
                          (let ((_%lp-hd265227265282%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e265226265278%_)))
                                (_%lp-tl265228265285%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e265226265278%_))))
                            (_%loop265225265269%_
                             _%lp-tl265228265285%_
                             (cons _%lp-hd265227265282%_
                                   _%signature265229265276%_))))
                        (let ((_%signature265230265288%_
                               (reverse _%signature265229265276%_)))
                          ((lambda (_%g265214265291%_ _%g265215265293%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g265215265293%_))
                                 (let* ((_%g265311265326%_
                                         (lambda (_%g265312265322%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g265312265322%_))))
                                        (_%g265310265505%_
                                         (lambda (_%g265312265330%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g265312265330%_))
                                               (let ((_%e265315265333%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g265312265330%_))))
                                                 (let ((_%hd265316265337%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e265315265333%_)))
                                                       (_%tl265317265340%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e265315265333%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl265317265340%_))
                                                       (let ((_%e265318265343%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl265317265340%_))))
                 (let ((_%hd265319265347%_
                        (let ()
                          (declare (not safe))
                          (##car _%e265318265343%_)))
                       (_%tl265320265350%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e265318265343%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl265320265350%_))
                       ((lambda (_%g265313265353%_ _%g265314265355%_)
                          (let* ((_%g265371265379%_
                                  (lambda (_%g265372265375%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g265372265375%_))))
                                 (_%g265370265501%_
                                  (lambda (_%g265372265383%_)
                                    ((lambda (_%g265373265386%_)
                                       (let* ((_%unchecked265399%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g265313265353%_))
                                              (_%g265402265410%_
                                               (lambda (_%g265403265406%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g265403265406%_))))
                                              (_%g265401265433%_
                                               (lambda (_%g265403265414%_)
                                                 ((lambda (_%g265404265417%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g265373265386%_
                                                                (cons _%g265404265417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g265403265414%_))))
                                         (_%g265401265433%_
                                          (if _%unchecked265399%_
                                              (let* ((_%g265437265452%_
                                                      (lambda (_%g265438265448%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g265438265448%_))))
                                                     (_%g265436265497%_
                                                      (lambda (_%g265438265456%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g265438265456%_))
                                                            (let ((_%e265441265459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g265438265456%_))))
                      (let ((_%hd265442265463%_
                             (let ()
                               (declare (not safe))
                               (##car _%e265441265459%_)))
                            (_%tl265443265466%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e265441265459%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl265443265466%_))
                            (let ((_%e265444265469%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl265443265466%_))))
                              (let ((_%hd265445265473%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e265444265469%_)))
                                    (_%tl265446265476%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e265444265469%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl265446265476%_))
                                    ((lambda (_%g265439265479%_
                                              _%g265440265481%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g265440265481%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g265314265355%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g265439265479%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd265445265473%_
                                     _%hd265442265463%_)
                                    (_%g265437265452%_ _%g265438265456%_))))
                            (_%g265437265452%_ _%g265438265456%_))))
                    (_%g265437265452%_ _%g265438265456%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g265436265497%_
                                                 _%unchecked265399%_))
                                              '(begin)))))
                                     _%g265372265383%_))))
                            (_%g265370265501%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g265215265293%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g265314265355%_ '()))
                   (cons '#f (cons 'signature: (cons _%g265313265353%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd265319265347%_
                        _%hd265316265337%_)
                       (_%g265311265326%_ _%g265312265330%_))))
               (_%g265311265326%_ _%g265312265330%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265311265326%_
                                                _%g265312265330%_)))))
                                   (_%g265310265505%_
                                    (|gxc[1]#parse-signature|
                                     _%stx265209%_
                                     _%g265215265293%_
                                     (let ((__tmp267571
                                            (lambda (_%g265508265511%_
                                                     _%g265509265514%_)
                                              (cons _%g265508265511%_
                                                    _%g265509265514%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp267571
                                        '()
                                        _%g265214265291%_)))))
                                 (_%g265212265236%_ _%g265213265240%_)))
                           _%signature265230265288%_
                           _%hd265220265257%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop265225265269%_
                                                   _%target265222265263%_
                                                   '()))
                                                (_%g265212265236%_
                                                 _%g265213265240%_)))))
                                      (_%g265212265236%_ _%g265213265240%_))))
                              (_%g265212265236%_ _%g265213265240%_))))
                      (_%g265212265236%_ _%g265213265240%_)))))
          (_%g265211265517%_ _%stx265209%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx265522%_)
        (let* ((_%g265525265549%_
                (lambda (_%g265526265545%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265526265545%_))))
               (_%g265524266424%_
                (lambda (_%g265526265553%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265526265553%_))
                      (let ((_%e265529265556%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265526265553%_))))
                        (let ((_%hd265530265560%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265529265556%_)))
                              (_%tl265531265563%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265529265556%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl265531265563%_))
                              (let ((_%e265532265566%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl265531265563%_))))
                                (let ((_%hd265533265570%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265532265566%_)))
                                      (_%tl265534265573%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265532265566%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl265534265573%_))
                                      (let ((_g267572_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl265534265573%_
                                                '0))))
                                        (begin
                                          (let ((_g267573_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g267572_)
                                                       (##values-length
                                                        _g267572_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g267573_ 2)))
                                                (error "Context expects 2 values"
                                                       _g267573_)))
                                          (let ((_%target265535265576%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g267572_ 0)))
                                                (_%tl265537265579%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g267572_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl265537265579%_))
                                                (letrec ((_%loop265538265582%_
                                                          (lambda (_%hd265536265586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature265542265589%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd265536265586%_))
                        (let ((_%e265539265591%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd265536265586%_))))
                          (let ((_%lp-hd265540265595%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e265539265591%_)))
                                (_%lp-tl265541265598%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e265539265591%_))))
                            (_%loop265538265582%_
                             _%lp-tl265541265598%_
                             (cons _%lp-hd265540265595%_
                                   _%case-signature265542265589%_))))
                        (let ((_%case-signature265543265601%_
                               (reverse _%case-signature265542265589%_)))
                          ((lambda (_%g265527265604%_ _%g265528265606%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g265528265606%_))
                                 (let* ((_%signatures265637%_
                                         (map (lambda (_%g265623265625%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx265522%_
                                                 _%g265528265606%_
                                                 _%g265623265625%_))
                                              (let ((__tmp267574
                                                     (lambda (_%g265628265631%_
                                                              _%g265629265634%_)
                                                       (cons _%g265628265631%_
                                                             _%g265629265634%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp267574
                                                 '()
                                                 _%g265527265604%_))))
                                        (_%g265640265666%_
                                         (lambda (_%g265641265662%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g265641265662%_))))
                                        (_%g265639266420%_
                                         (lambda (_%g265641265670%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g265641265670%_))
                                               (let ((_g267575_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g265641265670%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g267576_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g267575_)
                        (##values-length _g267575_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g267576_ 2)))
                 (error "Context expects 2 values" _g267576_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target265644265673%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g267575_
                                                             0)))
                                                         (_%tl265646265676%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g267575_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl265646265676%_))
                                                         (letrec ((_%loop265647265679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd265645265683%_
                                    _%sig265651265686%_
                                    _%arity265652265687%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd265645265683%_))
                                 (let ((_%e265648265689%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd265645265683%_))))
                                   (let ((_%lp-hd265649265693%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e265648265689%_)))
                                         (_%lp-tl265650265696%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e265648265689%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd265649265693%_))
                                         (let ((_%e265655265699%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd265649265693%_))))
                                           (let ((_%hd265656265703%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e265655265699%_)))
                                                 (_%tl265657265706%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e265655265699%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl265657265706%_))
                                                 (let ((_%e265658265709%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl265657265706%_))))
                                                   (let ((_%hd265659265713%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e265658265709%_)))
                                                         (_%tl265660265716%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e265658265709%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl265660265716%_))
                                                         (_%loop265647265679%_
                                                          _%lp-tl265650265696%_
                                                          (cons _%hd265659265713%_
                                                                _%sig265651265686%_)
                                                          (cons _%hd265656265703%_
                                                                _%arity265652265687%_))
                                                         (_%g265640265666%_
                                                          _%g265641265670%_))))
                                                 (_%g265640265666%_
                                                  _%g265641265670%_))))
                                         (_%g265640265666%_
                                          _%g265641265670%_))))
                                 (let ((_%sig265653265719%_
                                        (reverse _%sig265651265686%_))
                                       (_%arity265654265721%_
                                        (reverse _%arity265652265687%_)))
                                   ((lambda (_%g265642265723%_
                                             _%g265643265725%_)
                                      (let* ((_%g265742265750%_
                                              (lambda (_%g265743265746%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g265743265746%_))))
                                             (_%g265741266405%_
                                              (lambda (_%g265743265754%_)
                                                ((lambda (_%g265744265757%_)
                                                   (let* ((_%g265770265778%_
                                                           (lambda (_%g265771265774%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g265771265774%_))))
                  (_%g265769265800%_
                   (lambda (_%g265771265782%_)
                     ((lambda (_%g265772265785%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g265744265757%_
                                    (cons _%g265772265785%_ '()))))
                      _%g265771265782%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g265769265800%_
                                                      (let ((_g267577_
                                                             (let _%loop265804%_ ((_%rest265807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures265637%_)
                                          (_%unchecked-proc265809%_ '#f)
                                          (_%unchecked-clauses265810%_ '()))
                       (let* ((_%rest265811265819%_ _%rest265807%_)
                              (_%else265813265831%_
                               (lambda ()
                                 (values _%unchecked-proc265809%_
                                         (reverse!
                                          _%unchecked-clauses265810%_))))
                              (_%K265815266272%_
                               (lambda (_%rest265835%_ _%hd265837%_)
                                 (let* ((_%g265839265926%_
                                         (lambda (_%g265840265922%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g265840265922%_))))
                                        (_%g265838266268%_
                                         (lambda (_%g265840265930%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g265840265930%_))
                                               (let ((_%e265847265933%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g265840265930%_))))
                                                 (let ((_%hd265848265937%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e265847265933%_)))
                                                       (_%tl265849265940%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e265847265933%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl265849265940%_))
                                                       (let ((_%e265850265943%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl265849265940%_))))
                 (let ((_%hd265851265947%_
                        (let ()
                          (declare (not safe))
                          (##car _%e265850265943%_)))
                       (_%tl265852265950%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e265850265943%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd265851265947%_))
                       (let ((_%e265853265953%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd265851265947%_))))
                         (let ((_%hd265854265957%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e265853265953%_)))
                               (_%tl265855265960%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e265853265953%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl265855265960%_))
                               (let ((_%e265856265963%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl265855265960%_))))
                                 (let ((_%hd265857265967%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e265856265963%_)))
                                       (_%tl265858265970%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e265856265963%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd265857265967%_))
                                       (let ((_%e265859265973%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd265857265967%_))))
                                         (if (equal? _%e265859265973%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl265858265970%_))
                                                 (let ((_%e265860265977%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl265858265970%_))))
                                                   (let ((_%hd265861265981%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e265860265977%_)))
                                                         (_%tl265862265984%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e265860265977%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd265861265981%_))
                                                         (let ((_%e265863265987%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd265861265981%_))))
                   (let ((_%hd265864265991%_
                          (let ()
                            (declare (not safe))
                            (##car _%e265863265987%_)))
                         (_%tl265865265994%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e265863265987%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd265864265991%_))
                         (if (let ((__tmp267579 |gxc[1]#_g267580_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp267579
                                _%hd265864265991%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl265865265994%_))
                                 (let ((_%e265866265997%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl265865265994%_))))
                                   (let ((_%hd265867266001%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e265866265997%_)))
                                         (_%tl265868266004%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e265866265997%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl265868266004%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl265862265984%_))
                                             (let ((_%e265869266007%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl265862265984%_))))
                                               (let ((_%hd265870266011%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e265869266007%_)))
                                                     (_%tl265871266014%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e265869266007%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd265870266011%_))
                                                     (let ((_%e265872266017%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd265870266011%_))))
                                                       (if (equal? _%e265872266017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl265871266014%_))
                       (let ((_%e265873266021%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl265871266014%_))))
                         (let ((_%hd265874266025%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e265873266021%_)))
                               (_%tl265875266028%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e265873266021%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd265874266025%_))
                               (let ((_%e265876266031%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd265874266025%_))))
                                 (let ((_%hd265877266035%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e265876266031%_)))
                                       (_%tl265878266038%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e265876266031%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd265877266035%_))
                                       (if (let ((__tmp267581
                                                  |gxc[1]#_g267582_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp267581
                                              _%hd265877266035%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl265878266038%_))
                                               (let ((_%e265879266041%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl265878266038%_))))
                                                 (let ((_%hd265880266045%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e265879266041%_)))
                                                       (_%tl265881266048%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e265879266041%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl265881266048%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl265875266028%_))
                                                           (let ((_%e265882266051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl265875266028%_))))
                     (let ((_%hd265883266055%_
                            (let ()
                              (declare (not safe))
                              (##car _%e265882266051%_)))
                           (_%tl265884266058%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e265882266051%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd265883266055%_))
                           (let ((_%e265885266061%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd265883266055%_))))
                             (if (equal? _%e265885266061%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl265884266058%_))
                                     (let ((_%e265886266065%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl265884266058%_))))
                                       (let ((_%hd265887266069%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e265886266065%_)))
                                             (_%tl265888266072%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e265886266065%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd265887266069%_))
                                             (let ((_%e265889266075%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd265887266069%_))))
                                               (let ((_%hd265890266079%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e265889266075%_)))
                                                     (_%tl265891266082%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e265889266075%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd265890266079%_))
                                                     (if (let ((__tmp267583
                                                                |gxc[1]#_g267584_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp267583
                                                            _%hd265890266079%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl265891266082%_))
                     (let ((_%e265892266085%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl265891266082%_))))
                       (let ((_%hd265893266089%_
                              (let ()
                                (declare (not safe))
                                (##car _%e265892266085%_)))
                             (_%tl265894266092%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e265892266085%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl265894266092%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl265888266072%_))
                                 (let ((_%e265895266095%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl265888266072%_))))
                                   (let ((_%hd265896266099%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e265895266095%_)))
                                         (_%tl265897266102%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e265895266095%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd265896266099%_))
                                         (let ((_%e265898266105%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd265896266099%_))))
                                           (if (equal? _%e265898266105%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl265897266102%_))
                                                   (let ((_%e265899266109%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl265897266102%_))))
                                                     (let ((_%hd265900266113%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e265899266109%_)))
                                                           (_%tl265901266116%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e265899266109%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd265900266113%_))
                                                           (let ((_%e265902266119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd265900266113%_))))
                     (let ((_%hd265903266123%_
                            (let ()
                              (declare (not safe))
                              (##car _%e265902266119%_)))
                           (_%tl265904266126%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e265902266119%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd265903266123%_))
                           (if (let ((__tmp267585 |gxc[1]#_g267586_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp267585
                                  _%hd265903266123%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl265904266126%_))
                                   (let ((_%e265905266129%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl265904266126%_))))
                                     (let ((_%hd265906266133%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e265905266129%_)))
                                           (_%tl265907266136%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e265905266129%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl265907266136%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl265901266116%_))
                                               (let ((_%e265908266139%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl265901266116%_))))
                                                 (let ((_%hd265909266143%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e265908266139%_)))
                                                       (_%tl265910266146%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e265908266139%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd265909266143%_))
                                                       (let ((_%e265911266149%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd265909266143%_))))
                 (if (equal? _%e265911266149%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl265910266146%_))
                         (let ((_%e265912266153%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl265910266146%_))))
                           (let ((_%hd265913266157%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e265912266153%_)))
                                 (_%tl265914266160%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e265912266153%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd265913266157%_))
                                 (let ((_%e265915266163%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd265913266157%_))))
                                   (let ((_%hd265916266167%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e265915266163%_)))
                                         (_%tl265917266170%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e265915266163%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd265916266167%_))
                                         (if (let ((__tmp267587
                                                    |gxc[1]#_g267588_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp267587
                                                _%hd265916266167%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl265917266170%_))
                                                 (let ((_%e265918266173%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl265917266170%_))))
                                                   (let ((_%hd265919266177%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e265918266173%_)))
                                                         (_%tl265920266180%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e265918266173%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl265920266180%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl265914266160%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl265852265950%_))
                         ((lambda (_%g265841266183%_
                                   _%g265842266185%_
                                   _%g265843266186%_
                                   _%g265844266187%_
                                   _%g265845266188%_
                                   _%g265846266189%_)
                            (let ((_%clause266260%_
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
                                                     (cons _%g265846266189%_
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
                                                 (cons _%g265844266187%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g265841266183%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked266262%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g265842266185%_))))
                              (_%loop265804%_
                               _%rest265835%_
                               (let ((_%$e266264%_ _%unchecked266262%_))
                                 (if _%$e266264%_
                                     _%$e266264%_
                                     _%unchecked-proc265809%_))
                               (cons _%clause266260%_
                                     _%unchecked-clauses265810%_))))
                          _%hd265919266177%_
                          _%hd265906266133%_
                          _%hd265893266089%_
                          _%hd265880266045%_
                          _%hd265867266001%_
                          _%hd265848265937%_)
                         (_%g265839265926%_ _%g265840265930%_))
                     (_%g265839265926%_ _%g265840265930%_))
                 (_%g265839265926%_ _%g265840265930%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g265839265926%_
                                                  _%g265840265930%_))
                                             (_%g265839265926%_
                                              _%g265840265930%_))
                                         (_%g265839265926%_
                                          _%g265840265930%_))))
                                 (_%g265839265926%_ _%g265840265930%_))))
                         (_%g265839265926%_ _%g265840265930%_))
                     (_%g265839265926%_ _%g265840265930%_)))
               (_%g265839265926%_ _%g265840265930%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265839265926%_
                                                _%g265840265930%_))
                                           (_%g265839265926%_
                                            _%g265840265930%_))))
                                   (_%g265839265926%_ _%g265840265930%_))
                               (_%g265839265926%_ _%g265840265930%_))
                           (_%g265839265926%_ _%g265840265930%_))))
                   (_%g265839265926%_ _%g265840265930%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g265839265926%_
                                                    _%g265840265930%_))
                                               (_%g265839265926%_
                                                _%g265840265930%_)))
                                         (_%g265839265926%_
                                          _%g265840265930%_))))
                                 (_%g265839265926%_ _%g265840265930%_))
                             (_%g265839265926%_ _%g265840265930%_))))
                     (_%g265839265926%_ _%g265840265930%_))
                 (_%g265839265926%_ _%g265840265930%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g265839265926%_
                                                      _%g265840265930%_))))
                                             (_%g265839265926%_
                                              _%g265840265930%_))))
                                     (_%g265839265926%_ _%g265840265930%_))
                                 (_%g265839265926%_ _%g265840265930%_)))
                           (_%g265839265926%_ _%g265840265930%_))))
                   (_%g265839265926%_ _%g265840265930%_))
               (_%g265839265926%_ _%g265840265930%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265839265926%_
                                                _%g265840265930%_))
                                           (_%g265839265926%_
                                            _%g265840265930%_))
                                       (_%g265839265926%_ _%g265840265930%_))))
                               (_%g265839265926%_ _%g265840265930%_))))
                       (_%g265839265926%_ _%g265840265930%_))
                   (_%g265839265926%_ _%g265840265930%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g265839265926%_
                                                      _%g265840265930%_))))
                                             (_%g265839265926%_
                                              _%g265840265930%_))
                                         (_%g265839265926%_
                                          _%g265840265930%_))))
                                 (_%g265839265926%_ _%g265840265930%_))
                             (_%g265839265926%_ _%g265840265930%_))
                         (_%g265839265926%_ _%g265840265930%_))))
                 (_%g265839265926%_ _%g265840265930%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g265839265926%_
                                                  _%g265840265930%_))
                                             (_%g265839265926%_
                                              _%g265840265930%_)))
                                       (_%g265839265926%_ _%g265840265930%_))))
                               (_%g265839265926%_ _%g265840265930%_))))
                       (_%g265839265926%_ _%g265840265930%_))))
               (_%g265839265926%_ _%g265840265930%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265839265926%_
                                                _%g265840265930%_)))))
                                   (_%g265838266268%_ _%hd265837%_)))))
                         (if (pair? _%rest265811265819%_)
                             (let ((_%hd265816266276%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest265811265819%_)))
                                   (_%tl265817266279%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest265811265819%_))))
                               (let* ((_%hd266282%_ _%hd265816266276%_)
                                      (_%rest266285%_ _%tl265817266279%_))
                                 (_%K265815266272%_
                                  _%rest266285%_
                                  _%hd266282%_)))
                             (_%else265813265831%_))))))
                (begin
                  (let ((_g267578_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g267577_)
                               (##values-length _g267577_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g267578_ 2)))
                        (error "Context expects 2 values" _g267578_)))
                  (let ((_%unchecked-proc266288%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g267577_ 0)))
                        (_%unchecked-clauses266290%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g267577_ 1))))
                    (if _%unchecked-proc266288%_
                        (let* ((_%g266292266316%_
                                (lambda (_%g266293266312%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g266293266312%_))))
                               (_%g266291266401%_
                                (lambda (_%g266293266320%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g266293266320%_))
                                      (let ((_%e266296266323%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g266293266320%_))))
                                        (let ((_%hd266297266327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e266296266323%_)))
                                              (_%tl266298266330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e266296266323%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl266298266330%_))
                                              (let ((_%e266299266333%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl266298266330%_))))
                                                (let ((_%hd266300266337%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e266299266333%_)))
                                                      (_%tl266301266340%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e266299266333%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd266300266337%_))
                                                      (let ((_g267589_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd266300266337%_ '0))))
                (begin
                  (let ((_g267590_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g267589_)
                               (##values-length _g267589_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g267590_ 2)))
                        (error "Context expects 2 values" _g267590_)))
                  (let ((_%target266302266343%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g267589_ 0)))
                        (_%tl266304266346%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g267589_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl266304266346%_))
                        (letrec ((_%loop266305266349%_
                                  (lambda (_%hd266303266353%_
                                           _%clause266309266356%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd266303266353%_))
                                        (let ((_%e266306266358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd266303266353%_))))
                                          (let ((_%lp-hd266307266362%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e266306266358%_)))
                                                (_%lp-tl266308266365%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e266306266358%_))))
                                            (_%loop266305266349%_
                                             _%lp-tl266308266365%_
                                             (cons _%lp-hd266307266362%_
                                                   _%clause266309266356%_))))
                                        (let ((_%clause266310266368%_
                                               (reverse _%clause266309266356%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl266301266340%_))
                                              ((lambda (_%g266294266371%_
                                                        _%g266295266373%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g266295266373%_
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
                                             (let ((__tmp267591
                                                    (lambda (_%g266392266395%_
                                                             _%g266393266398%_)
                                                      (cons _%g266392266395%_
                                                            _%g266393266398%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp267591
                                                '()
                                                _%g266294266371%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause266310266368%_
                                               _%hd266297266327%_)
                                              (_%g266292266316%_
                                               _%g266293266320%_)))))))
                          (_%loop266305266349%_ _%target266302266343%_ '()))
                        (_%g266292266316%_ _%g266293266320%_)))))
              (_%g266292266316%_ _%g266293266320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g266292266316%_
                                               _%g266293266320%_))))
                                      (_%g266292266316%_ _%g266293266320%_)))))
                          (_%g266291266401%_
                           (list _%unchecked-proc266288%_
                                 _%unchecked-clauses266290%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g265743265754%_))))
                                        (_%g265741266405%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g265528265606%_
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
                                          _%g265642265723%_
                                          _%g265643265725%_))
                                       (let ((__tmp267592
                                              (lambda (_%g266408266412%_
                                                       _%g266409266415%_
                                                       _%g266410266417%_)
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
                                (cons _%g266409266415%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g266408266412%_ '())))))
              _%g266410266417%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__1
                                          __tmp267592
                                          '()
                                          _%g265642265723%_
                                          _%g265643265725%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig265653265719%_
                                    _%arity265654265721%_))))))
                   (_%loop265647265679%_ _%target265644265673%_ '() '()))
                 (_%g265640265666%_ _%g265641265670%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265640265666%_
                                                _%g265641265670%_)))))
                                   (_%g265639266420%_ _%signatures265637%_))
                                 (_%g265525265549%_ _%g265526265553%_)))
                           _%case-signature265543265601%_
                           _%hd265533265570%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop265538265582%_
                                                   _%target265535265576%_
                                                   '()))
                                                (_%g265525265549%_
                                                 _%g265526265553%_)))))
                                      (_%g265525265549%_ _%g265526265553%_))))
                              (_%g265525265549%_ _%g265526265553%_))))
                      (_%g265525265549%_ _%g265526265553%_)))))
          (_%g265524266424%_ _%stx265522%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx266432%_)
        (let* ((_%__stx267412267413%_ _%$stx266432%_)
               (_%g266438266498%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx267412267413%_)))))
          (let ((_%__kont267415267416%_
                 (lambda (_%g266440266720%_ _%g266441266722%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g266441266722%_ '()))
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
                                                       (cons _%g266441266722%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g266440266720%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont267417267418%_
                 (lambda (_%g266455266645%_
                          _%g266456266647%_
                          _%g266457266648%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g266457266648%_ '()))
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
                                                       (cons _%g266457266648%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g266456266647%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g266455266645%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont267419267420%_
                 (lambda (_%g266474266559%_
                          _%g266475266561%_
                          _%g266476266562%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g266476266562%_ '()))
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
                                                       (cons _%g266476266562%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g266475266561%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g266474266559%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx267412267413%_))
                (let ((_%e266442266676%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx267412267413%_))))
                  (let ((_%tl266444266683%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e266442266676%_)))
                        (_%hd266443266680%_
                         (let ()
                           (declare (not safe))
                           (##car _%e266442266676%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl266444266683%_))
                        (let ((_%e266445266686%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl266444266683%_))))
                          (let ((_%tl266447266693%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e266445266686%_)))
                                (_%hd266446266690%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e266445266686%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd266446266690%_))
                                (let ((_%e266448266696%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd266446266690%_))))
                                  (if (equal? _%e266448266696%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl266447266693%_))
                                          (let ((_%e266449266700%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl266447266693%_))))
                                            (let ((_%tl266451266707%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e266449266700%_)))
                                                  (_%hd266450266704%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e266449266700%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl266451266707%_))
                                                  (let ((_%e266452266710%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl266451266707%_))))
                                                    (let ((_%tl266454266717%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e266452266710%_)))
                                                          (_%hd266453266714%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e266452266710%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl266454266717%_))
                                                          (_%__kont267415267416%_
                                                           _%hd266453266714%_
                                                           _%hd266450266704%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g266438266498%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g266438266498%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g266438266498%_)))
                                      (if (equal? _%e266448266696%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl266447266693%_))
                                              (let ((_%e266465266615%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl266447266693%_))))
                                                (let ((_%tl266467266622%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e266465266615%_)))
                                                      (_%hd266466266619%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e266465266615%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl266467266622%_))
                                                      (let ((_%e266468266625%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl266467266622%_))))
                (let ((_%tl266470266632%_
                       (let () (declare (not safe)) (##cdr _%e266468266625%_)))
                      (_%hd266469266629%_
                       (let ()
                         (declare (not safe))
                         (##car _%e266468266625%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl266470266632%_))
                      (let ((_%e266471266635%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl266470266632%_))))
                        (let ((_%tl266473266642%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e266471266635%_)))
                              (_%hd266472266639%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e266471266635%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl266473266642%_))
                              (_%__kont267417267418%_
                               _%hd266472266639%_
                               _%hd266469266629%_
                               _%hd266466266619%_)
                              (let ()
                                (declare (not safe))
                                (_%g266438266498%_)))))
                      (let () (declare (not safe)) (_%g266438266498%_)))))
              (let () (declare (not safe)) (_%g266438266498%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g266438266498%_)))
                                          (if (equal? _%e266448266696%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl266447266693%_))
                                                  (let ((_%e266484266529%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl266447266693%_))))
                                                    (let ((_%tl266486266536%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e266484266529%_)))
                                                          (_%hd266485266533%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e266484266529%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl266486266536%_))
                                                          (let ((_%e266487266539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl266486266536%_))))
                    (let ((_%tl266489266546%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e266487266539%_)))
                          (_%hd266488266543%_
                           (let ()
                             (declare (not safe))
                             (##car _%e266487266539%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl266489266546%_))
                          (let ((_%e266490266549%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl266489266546%_))))
                            (let ((_%tl266492266556%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e266490266549%_)))
                                  (_%hd266491266553%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e266490266549%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl266492266556%_))
                                  (_%__kont267419267420%_
                                   _%hd266491266553%_
                                   _%hd266488266543%_
                                   _%hd266485266533%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g266438266498%_)))))
                          (let () (declare (not safe)) (_%g266438266498%_)))))
                  (let () (declare (not safe)) (_%g266438266498%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g266438266498%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g266438266498%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g266438266498%_)))))
                        (let () (declare (not safe)) (_%g266438266498%_)))))
                (let () (declare (not safe)) (_%g266438266498%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx266744%_)
        (let* ((_%g266748266768%_
                (lambda (_%g266749266764%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g266749266764%_))))
               (_%g266747266837%_
                (lambda (_%g266749266772%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g266749266772%_))
                      (let ((_%e266751266775%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g266749266772%_))))
                        (let ((_%hd266752266779%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e266751266775%_)))
                              (_%tl266753266782%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e266751266775%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl266753266782%_))
                              (let ((_g267593_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl266753266782%_
                                        '0))))
                                (begin
                                  (let ((_g267594_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g267593_)
                                               (##values-length _g267593_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g267594_ 2)))
                                        (error "Context expects 2 values"
                                               _g267594_)))
                                  (let ((_%target266754266785%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267593_ 0)))
                                        (_%tl266756266788%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267593_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl266756266788%_))
                                        (letrec ((_%loop266757266791%_
                                                  (lambda (_%hd266755266795%_
                                                           _%decl266761266798%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd266755266795%_))
                                                        (let ((_%e266758266800%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd266755266795%_))))
                  (let ((_%lp-hd266759266804%_
                         (let ()
                           (declare (not safe))
                           (##car _%e266758266800%_)))
                        (_%lp-tl266760266807%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e266758266800%_))))
                    (_%loop266757266791%_
                     _%lp-tl266760266807%_
                     (cons _%lp-hd266759266804%_ _%decl266761266798%_))))
                (let ((_%decl266762266810%_ (reverse _%decl266761266798%_)))
                  ((lambda (_%g266750266813%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp267595
                                  (lambda (_%g266828266831%_ _%g266829266834%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g266828266831%_)
                                          _%g266829266834%_))))
                             (declare (not safe))
                             (foldr__0 __tmp267595 '() _%g266750266813%_))))
                   _%decl266762266810%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop266757266791%_
                                           _%target266754266785%_
                                           '()))
                                        (_%g266748266768%_
                                         _%g266749266772%_)))))
                              (_%g266748266768%_ _%g266749266772%_))))
                      (_%g266748266768%_ _%g266749266772%_)))))
          (_%g266747266837%_ _%$stx266744%_))))))
