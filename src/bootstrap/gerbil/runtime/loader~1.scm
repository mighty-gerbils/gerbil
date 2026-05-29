(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g172288_|
    (gx#core-deserialize-mark
     '(0
       (arg171103 . _%arg171103171174%_)
       (arg . _%arg171190%_)
       (id . _%id171127%_)
       (arg171102 . _%arg171102171160%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g172289_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g172288_|)))
  (define |[1]#_g172291_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g172292_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g172291_|)))
  (define |[1]#_g172293_|
    (gx#core-deserialize-mark
     '(0
       (arg171224 . _%arg171224171294%_)
       (arg . _%arg171310%_)
       (id . _%id171247%_)
       (arg171223 . _%arg171223171280%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g172294_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g172293_|)))
  (define |[1]#_g172296_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g172297_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g172296_|)))
  (define |[1]#_g172298_|
    (gx#core-deserialize-mark
     '(0
       (arg171343 . _%arg171343171400%_)
       (arg171344 . _%arg171344171414%_)
       (arg . _%arg171430%_)
       (id . _%id171367%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g172299_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g172298_|)))
  (define |[1]#_g172301_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g172302_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g172301_|)))
  (define |[1]#_g172303_|
    (gx#core-deserialize-mark
     '(0
       (arg171464 . _%arg171464171534%_)
       (arg171463 . _%arg171463171520%_)
       (arg . _%arg171550%_)
       (id . _%id171487%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g172304_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g172303_|)))
  (define |[1]#_g172306_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g172307_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g172306_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx171084%_)
        (let* ((_%__stx172179172180%_ _%$stx171084%_)
               (_%g171089171110%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx172179172180%_))))
          (let ((_%__kont172182172183%_
                 (lambda (_%g171091171176%_)
                   (cons (gx#datum->syntax
                          |[1]#_g172289_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp172290
                                                  (lambda (_%g171191171194%_
                                                           _%g171192171197%_)
                                                    (cons _%g171191171194%_
                                                          _%g171192171197%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp172290
                                              '()
                                              _%g171091171176%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g172292_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'paths)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__set-load-path!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'paths)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont172186172187%_
                 (lambda (_%g171104171117%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%g171088171129%_
                    (lambda ()
                      (let ((_%g171104171117%_ _%__stx172179172180%_))
                        (if (gx#identifier? _%g171104171117%_)
                            (_%__kont172186172187%_ _%g171104171117%_)
                            (let ()
                              (declare (not safe))
                              (_%g171089171110%_))))))
                   (_%__match172202172203%_
                    (lambda (_%e171092171136%_
                             _%hd171093171140%_
                             _%tl171094171143%_
                             _%__splice172184172185%_
                             _%target171095171146%_
                             _%tl171097171149%_)
                      (letrec ((_%loop171098171152%_
                                (lambda (_%hd171096171156%_
                                         _%arg171102171159%_)
                                  (if (gx#stx-pair? _%hd171096171156%_)
                                      (let ((_%e171099171162%_
                                             (gx#syntax-e _%hd171096171156%_)))
                                        (let ((_%lp-tl171101171169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171099171162%_)))
                                              (_%lp-hd171100171166%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171099171162%_))))
                                          (_%loop171098171152%_
                                           _%lp-tl171101171169%_
                                           (cons _%lp-hd171100171166%_
                                                 _%arg171102171159%_))))
                                      (let ((_%arg171103171172%_
                                             (reverse _%arg171102171159%_)))
                                        (_%__kont172182172183%_
                                         _%arg171103171172%_))))))
                        (_%loop171098171152%_ _%target171095171146%_ '())))))
              (if (gx#stx-pair? _%__stx172179172180%_)
                  (let ((_%e171092171136%_
                         (gx#syntax-e _%__stx172179172180%_)))
                    (let ((_%tl171094171143%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e171092171136%_)))
                          (_%hd171093171140%_
                           (let ()
                             (declare (not safe))
                             (##car _%e171092171136%_))))
                      (if (gx#stx-pair/null? _%tl171094171143%_)
                          (let ((_%__splice172184172185%_
                                 (gx#syntax-split-splice->vector
                                  _%tl171094171143%_
                                  '0)))
                            (let ((_%tl171097171149%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice172184172185%_
                                      '1)))
                                  (_%target171095171146%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice172184172185%_
                                      '0))))
                              (if (gx#stx-null? _%tl171097171149%_)
                                  (_%__match172202172203%_
                                   _%e171092171136%_
                                   _%hd171093171140%_
                                   _%tl171094171143%_
                                   _%__splice172184172185%_
                                   _%target171095171146%_
                                   _%tl171097171149%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g171088171129%_)))))
                          (let () (declare (not safe)) (_%g171088171129%_)))))
                  (let () (declare (not safe)) (_%g171088171129%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx171205%_)
        (let* ((_%__stx172205172206%_ _%$stx171205%_)
               (_%g171210171231%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx172205172206%_))))
          (let ((_%__kont172208172209%_
                 (lambda (_%g171212171296%_)
                   (cons (gx#datum->syntax
                          |[1]#_g172294_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp172295
                                                  (lambda (_%g171311171314%_
                                                           _%g171312171317%_)
                                                    (cons _%g171311171314%_
                                                          _%g171312171317%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp172295
                                              '()
                                              _%g171212171296%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g172297_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'modpath)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__load-module)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'modpath)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont172212172213%_
                 (lambda (_%g171225171238%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%g171209171249%_
                    (lambda ()
                      (let ((_%g171225171238%_ _%__stx172205172206%_))
                        (if (gx#identifier? _%g171225171238%_)
                            (_%__kont172212172213%_ _%g171225171238%_)
                            (let ()
                              (declare (not safe))
                              (_%g171210171231%_))))))
                   (_%__match172228172229%_
                    (lambda (_%e171213171256%_
                             _%hd171214171260%_
                             _%tl171215171263%_
                             _%__splice172210172211%_
                             _%target171216171266%_
                             _%tl171218171269%_)
                      (letrec ((_%loop171219171272%_
                                (lambda (_%hd171217171276%_
                                         _%arg171223171279%_)
                                  (if (gx#stx-pair? _%hd171217171276%_)
                                      (let ((_%e171220171282%_
                                             (gx#syntax-e _%hd171217171276%_)))
                                        (let ((_%lp-tl171222171289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171220171282%_)))
                                              (_%lp-hd171221171286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171220171282%_))))
                                          (_%loop171219171272%_
                                           _%lp-tl171222171289%_
                                           (cons _%lp-hd171221171286%_
                                                 _%arg171223171279%_))))
                                      (let ((_%arg171224171292%_
                                             (reverse _%arg171223171279%_)))
                                        (_%__kont172208172209%_
                                         _%arg171224171292%_))))))
                        (_%loop171219171272%_ _%target171216171266%_ '())))))
              (if (gx#stx-pair? _%__stx172205172206%_)
                  (let ((_%e171213171256%_
                         (gx#syntax-e _%__stx172205172206%_)))
                    (let ((_%tl171215171263%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e171213171256%_)))
                          (_%hd171214171260%_
                           (let ()
                             (declare (not safe))
                             (##car _%e171213171256%_))))
                      (if (gx#stx-pair/null? _%tl171215171263%_)
                          (let ((_%__splice172210172211%_
                                 (gx#syntax-split-splice->vector
                                  _%tl171215171263%_
                                  '0)))
                            (let ((_%tl171218171269%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice172210172211%_
                                      '1)))
                                  (_%target171216171266%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice172210172211%_
                                      '0))))
                              (if (gx#stx-null? _%tl171218171269%_)
                                  (_%__match172228172229%_
                                   _%e171213171256%_
                                   _%hd171214171260%_
                                   _%tl171215171263%_
                                   _%__splice172210172211%_
                                   _%target171216171266%_
                                   _%tl171218171269%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g171209171249%_)))))
                          (let () (declare (not safe)) (_%g171209171249%_)))))
                  (let () (declare (not safe)) (_%g171209171249%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx171325%_)
        (let* ((_%__stx172231172232%_ _%$stx171325%_)
               (_%g171330171351%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx172231172232%_))))
          (let ((_%__kont172234172235%_
                 (lambda (_%g171332171416%_)
                   (cons (gx#datum->syntax
                          |[1]#_g172299_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp172300
                                                  (lambda (_%g171431171434%_
                                                           _%g171432171437%_)
                                                    (cons _%g171431171434%_
                                                          _%g171432171437%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp172300
                                              '()
                                              _%g171332171416%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g172302_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'modpath)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__reload-module!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'modpath)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont172238172239%_
                 (lambda (_%g171345171358%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%g171329171369%_
                    (lambda ()
                      (let ((_%g171345171358%_ _%__stx172231172232%_))
                        (if (gx#identifier? _%g171345171358%_)
                            (_%__kont172238172239%_ _%g171345171358%_)
                            (let ()
                              (declare (not safe))
                              (_%g171330171351%_))))))
                   (_%__match172254172255%_
                    (lambda (_%e171333171376%_
                             _%hd171334171380%_
                             _%tl171335171383%_
                             _%__splice172236172237%_
                             _%target171336171386%_
                             _%tl171338171389%_)
                      (letrec ((_%loop171339171392%_
                                (lambda (_%hd171337171396%_
                                         _%arg171343171399%_)
                                  (if (gx#stx-pair? _%hd171337171396%_)
                                      (let ((_%e171340171402%_
                                             (gx#syntax-e _%hd171337171396%_)))
                                        (let ((_%lp-tl171342171409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171340171402%_)))
                                              (_%lp-hd171341171406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171340171402%_))))
                                          (_%loop171339171392%_
                                           _%lp-tl171342171409%_
                                           (cons _%lp-hd171341171406%_
                                                 _%arg171343171399%_))))
                                      (let ((_%arg171344171412%_
                                             (reverse _%arg171343171399%_)))
                                        (_%__kont172234172235%_
                                         _%arg171344171412%_))))))
                        (_%loop171339171392%_ _%target171336171386%_ '())))))
              (if (gx#stx-pair? _%__stx172231172232%_)
                  (let ((_%e171333171376%_
                         (gx#syntax-e _%__stx172231172232%_)))
                    (let ((_%tl171335171383%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e171333171376%_)))
                          (_%hd171334171380%_
                           (let ()
                             (declare (not safe))
                             (##car _%e171333171376%_))))
                      (if (gx#stx-pair/null? _%tl171335171383%_)
                          (let ((_%__splice172236172237%_
                                 (gx#syntax-split-splice->vector
                                  _%tl171335171383%_
                                  '0)))
                            (let ((_%tl171338171389%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice172236172237%_
                                      '1)))
                                  (_%target171336171386%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice172236172237%_
                                      '0))))
                              (if (gx#stx-null? _%tl171338171389%_)
                                  (_%__match172254172255%_
                                   _%e171333171376%_
                                   _%hd171334171380%_
                                   _%tl171335171383%_
                                   _%__splice172236172237%_
                                   _%target171336171386%_
                                   _%tl171338171389%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g171329171369%_)))))
                          (let () (declare (not safe)) (_%g171329171369%_)))))
                  (let () (declare (not safe)) (_%g171329171369%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx171445%_)
        (let* ((_%__stx172257172258%_ _%$stx171445%_)
               (_%g171450171471%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx172257172258%_))))
          (let ((_%__kont172260172261%_
                 (lambda (_%g171452171536%_)
                   (cons (gx#datum->syntax
                          |[1]#_g172304_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp172305
                                                  (lambda (_%g171551171554%_
                                                           _%g171552171557%_)
                                                    (cons _%g171551171554%_
                                                          _%g171552171557%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp172305
                                              '()
                                              _%g171452171536%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g172307_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'modpath)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__module-load-order)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'modpath)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont172264172265%_
                 (lambda (_%g171465171478%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%g171449171489%_
                    (lambda ()
                      (let ((_%g171465171478%_ _%__stx172257172258%_))
                        (if (gx#identifier? _%g171465171478%_)
                            (_%__kont172264172265%_ _%g171465171478%_)
                            (let ()
                              (declare (not safe))
                              (_%g171450171471%_))))))
                   (_%__match172280172281%_
                    (lambda (_%e171453171496%_
                             _%hd171454171500%_
                             _%tl171455171503%_
                             _%__splice172262172263%_
                             _%target171456171506%_
                             _%tl171458171509%_)
                      (letrec ((_%loop171459171512%_
                                (lambda (_%hd171457171516%_
                                         _%arg171463171519%_)
                                  (if (gx#stx-pair? _%hd171457171516%_)
                                      (let ((_%e171460171522%_
                                             (gx#syntax-e _%hd171457171516%_)))
                                        (let ((_%lp-tl171462171529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171460171522%_)))
                                              (_%lp-hd171461171526%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171460171522%_))))
                                          (_%loop171459171512%_
                                           _%lp-tl171462171529%_
                                           (cons _%lp-hd171461171526%_
                                                 _%arg171463171519%_))))
                                      (let ((_%arg171464171532%_
                                             (reverse _%arg171463171519%_)))
                                        (_%__kont172260172261%_
                                         _%arg171464171532%_))))))
                        (_%loop171459171512%_ _%target171456171506%_ '())))))
              (if (gx#stx-pair? _%__stx172257172258%_)
                  (let ((_%e171453171496%_
                         (gx#syntax-e _%__stx172257172258%_)))
                    (let ((_%tl171455171503%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e171453171496%_)))
                          (_%hd171454171500%_
                           (let ()
                             (declare (not safe))
                             (##car _%e171453171496%_))))
                      (if (gx#stx-pair/null? _%tl171455171503%_)
                          (let ((_%__splice172262172263%_
                                 (gx#syntax-split-splice->vector
                                  _%tl171455171503%_
                                  '0)))
                            (let ((_%tl171458171509%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice172262172263%_
                                      '1)))
                                  (_%target171456171506%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice172262172263%_
                                      '0))))
                              (if (gx#stx-null? _%tl171458171509%_)
                                  (_%__match172280172281%_
                                   _%e171453171496%_
                                   _%hd171454171500%_
                                   _%tl171455171503%_
                                   _%__splice172262172263%_
                                   _%target171456171506%_
                                   _%tl171458171509%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g171449171489%_)))))
                          (let () (declare (not safe)) (_%g171449171489%_)))))
                  (let () (declare (not safe)) (_%g171449171489%_))))))))))
