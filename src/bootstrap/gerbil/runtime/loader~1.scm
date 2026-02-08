(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g167188_|
    (gx#core-deserialize-mark
     '(0
       (arg166003 . _%arg166003166074%_)
       (id . _%id166027%_)
       (arg166002 . _%arg166002166060%_)
       (arg . _%arg166090%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g167189_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g167188_|)))
  (define |[1]#_g167191_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g167192_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g167191_|)))
  (define |[1]#_g167193_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id166161%_)
       (arg166138 . _%arg166138166208%_)
       (arg . _%arg166224%_)
       (arg166137 . _%arg166137166194%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g167194_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g167193_|)))
  (define |[1]#_g167196_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g167197_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g167196_|)))
  (define |[1]#_g167198_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id166295%_)
       (arg . _%arg166358%_)
       (arg166272 . _%arg166272166342%_)
       (arg166271 . _%arg166271166328%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g167199_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g167198_|)))
  (define |[1]#_g167201_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g167202_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g167201_|)))
  (define |[1]#_g167203_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id166429%_)
       (arg . _%arg166492%_)
       (arg166405 . _%arg166405166462%_)
       (arg166406 . _%arg166406166476%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g167204_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g167203_|)))
  (define |[1]#_g167206_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g167207_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g167206_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx165984%_)
        (let* ((_%__stx167079167080%_ _%$stx165984%_)
               (_%g165989166010%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx167079167080%_))))
          (let ((_%__kont167082167083%_
                 (lambda (_%g165991166076%_)
                   (cons (gx#datum->syntax
                          |[1]#_g167189_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp167190
                                                  (lambda (_%g166091166094%_
                                                           _%g166092166097%_)
                                                    (cons _%g166091166094%_
                                                          _%g166092166097%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp167190
                                              '()
                                              _%g165991166076%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g167192_|
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
                (_%__kont167086167087%_
                 (lambda (_%g166004166017%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%g165988166029%_
                    (lambda ()
                      (let ((_%g166004166017%_ _%__stx167079167080%_))
                        (if (gx#identifier? _%g166004166017%_)
                            (_%__kont167086167087%_ _%g166004166017%_)
                            (let ()
                              (declare (not safe))
                              (_%g165989166010%_))))))
                   (_%__match167102167103%_
                    (lambda (_%e165992166036%_
                             _%hd165993166040%_
                             _%tl165994166043%_
                             _%__splice167084167085%_
                             _%target165995166046%_
                             _%tl165997166049%_)
                      (letrec ((_%loop165998166052%_
                                (lambda (_%hd165996166056%_
                                         _%arg166002166059%_)
                                  (if (gx#stx-pair? _%hd165996166056%_)
                                      (let ((_%e165999166062%_
                                             (gx#syntax-e _%hd165996166056%_)))
                                        (let ((_%lp-tl166001166069%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165999166062%_)))
                                              (_%lp-hd166000166066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165999166062%_))))
                                          (_%loop165998166052%_
                                           _%lp-tl166001166069%_
                                           (cons _%lp-hd166000166066%_
                                                 _%arg166002166059%_))))
                                      (let ((_%arg166003166072%_
                                             (reverse _%arg166002166059%_)))
                                        (_%__kont167082167083%_
                                         _%arg166003166072%_))))))
                        (_%loop165998166052%_ _%target165995166046%_ '())))))
              (if (gx#stx-pair? _%__stx167079167080%_)
                  (let ((_%e165992166036%_
                         (gx#syntax-e _%__stx167079167080%_)))
                    (let ((_%tl165994166043%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e165992166036%_)))
                          (_%hd165993166040%_
                           (let ()
                             (declare (not safe))
                             (##car _%e165992166036%_))))
                      (if (gx#stx-pair/null? _%tl165994166043%_)
                          (let ((_%__splice167084167085%_
                                 (gx#syntax-split-splice->vector
                                  _%tl165994166043%_
                                  '0)))
                            (let ((_%tl165997166049%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice167084167085%_
                                      '1)))
                                  (_%target165995166046%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice167084167085%_
                                      '0))))
                              (if (gx#stx-null? _%tl165997166049%_)
                                  (_%__match167102167103%_
                                   _%e165992166036%_
                                   _%hd165993166040%_
                                   _%tl165994166043%_
                                   _%__splice167084167085%_
                                   _%target165995166046%_
                                   _%tl165997166049%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g165988166029%_)))))
                          (let () (declare (not safe)) (_%g165988166029%_)))))
                  (let () (declare (not safe)) (_%g165988166029%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx166119%_)
        (let* ((_%__stx167105167106%_ _%$stx166119%_)
               (_%g166124166145%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx167105167106%_))))
          (let ((_%__kont167108167109%_
                 (lambda (_%g166126166210%_)
                   (cons (gx#datum->syntax
                          |[1]#_g167194_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp167195
                                                  (lambda (_%g166225166228%_
                                                           _%g166226166231%_)
                                                    (cons _%g166225166228%_
                                                          _%g166226166231%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp167195
                                              '()
                                              _%g166126166210%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g167197_|
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
                (_%__kont167112167113%_
                 (lambda (_%g166139166152%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%g166123166163%_
                    (lambda ()
                      (let ((_%g166139166152%_ _%__stx167105167106%_))
                        (if (gx#identifier? _%g166139166152%_)
                            (_%__kont167112167113%_ _%g166139166152%_)
                            (let ()
                              (declare (not safe))
                              (_%g166124166145%_))))))
                   (_%__match167128167129%_
                    (lambda (_%e166127166170%_
                             _%hd166128166174%_
                             _%tl166129166177%_
                             _%__splice167110167111%_
                             _%target166130166180%_
                             _%tl166132166183%_)
                      (letrec ((_%loop166133166186%_
                                (lambda (_%hd166131166190%_
                                         _%arg166137166193%_)
                                  (if (gx#stx-pair? _%hd166131166190%_)
                                      (let ((_%e166134166196%_
                                             (gx#syntax-e _%hd166131166190%_)))
                                        (let ((_%lp-tl166136166203%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166134166196%_)))
                                              (_%lp-hd166135166200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166134166196%_))))
                                          (_%loop166133166186%_
                                           _%lp-tl166136166203%_
                                           (cons _%lp-hd166135166200%_
                                                 _%arg166137166193%_))))
                                      (let ((_%arg166138166206%_
                                             (reverse _%arg166137166193%_)))
                                        (_%__kont167108167109%_
                                         _%arg166138166206%_))))))
                        (_%loop166133166186%_ _%target166130166180%_ '())))))
              (if (gx#stx-pair? _%__stx167105167106%_)
                  (let ((_%e166127166170%_
                         (gx#syntax-e _%__stx167105167106%_)))
                    (let ((_%tl166129166177%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166127166170%_)))
                          (_%hd166128166174%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166127166170%_))))
                      (if (gx#stx-pair/null? _%tl166129166177%_)
                          (let ((_%__splice167110167111%_
                                 (gx#syntax-split-splice->vector
                                  _%tl166129166177%_
                                  '0)))
                            (let ((_%tl166132166183%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice167110167111%_
                                      '1)))
                                  (_%target166130166180%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice167110167111%_
                                      '0))))
                              (if (gx#stx-null? _%tl166132166183%_)
                                  (_%__match167128167129%_
                                   _%e166127166170%_
                                   _%hd166128166174%_
                                   _%tl166129166177%_
                                   _%__splice167110167111%_
                                   _%target166130166180%_
                                   _%tl166132166183%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g166123166163%_)))))
                          (let () (declare (not safe)) (_%g166123166163%_)))))
                  (let () (declare (not safe)) (_%g166123166163%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx166253%_)
        (let* ((_%__stx167131167132%_ _%$stx166253%_)
               (_%g166258166279%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx167131167132%_))))
          (let ((_%__kont167134167135%_
                 (lambda (_%g166260166344%_)
                   (cons (gx#datum->syntax
                          |[1]#_g167199_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp167200
                                                  (lambda (_%g166359166362%_
                                                           _%g166360166365%_)
                                                    (cons _%g166359166362%_
                                                          _%g166360166365%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp167200
                                              '()
                                              _%g166260166344%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g167202_|
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
                (_%__kont167138167139%_
                 (lambda (_%g166273166286%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%g166257166297%_
                    (lambda ()
                      (let ((_%g166273166286%_ _%__stx167131167132%_))
                        (if (gx#identifier? _%g166273166286%_)
                            (_%__kont167138167139%_ _%g166273166286%_)
                            (let ()
                              (declare (not safe))
                              (_%g166258166279%_))))))
                   (_%__match167154167155%_
                    (lambda (_%e166261166304%_
                             _%hd166262166308%_
                             _%tl166263166311%_
                             _%__splice167136167137%_
                             _%target166264166314%_
                             _%tl166266166317%_)
                      (letrec ((_%loop166267166320%_
                                (lambda (_%hd166265166324%_
                                         _%arg166271166327%_)
                                  (if (gx#stx-pair? _%hd166265166324%_)
                                      (let ((_%e166268166330%_
                                             (gx#syntax-e _%hd166265166324%_)))
                                        (let ((_%lp-tl166270166337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166268166330%_)))
                                              (_%lp-hd166269166334%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166268166330%_))))
                                          (_%loop166267166320%_
                                           _%lp-tl166270166337%_
                                           (cons _%lp-hd166269166334%_
                                                 _%arg166271166327%_))))
                                      (let ((_%arg166272166340%_
                                             (reverse _%arg166271166327%_)))
                                        (_%__kont167134167135%_
                                         _%arg166272166340%_))))))
                        (_%loop166267166320%_ _%target166264166314%_ '())))))
              (if (gx#stx-pair? _%__stx167131167132%_)
                  (let ((_%e166261166304%_
                         (gx#syntax-e _%__stx167131167132%_)))
                    (let ((_%tl166263166311%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166261166304%_)))
                          (_%hd166262166308%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166261166304%_))))
                      (if (gx#stx-pair/null? _%tl166263166311%_)
                          (let ((_%__splice167136167137%_
                                 (gx#syntax-split-splice->vector
                                  _%tl166263166311%_
                                  '0)))
                            (let ((_%tl166266166317%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice167136167137%_
                                      '1)))
                                  (_%target166264166314%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice167136167137%_
                                      '0))))
                              (if (gx#stx-null? _%tl166266166317%_)
                                  (_%__match167154167155%_
                                   _%e166261166304%_
                                   _%hd166262166308%_
                                   _%tl166263166311%_
                                   _%__splice167136167137%_
                                   _%target166264166314%_
                                   _%tl166266166317%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g166257166297%_)))))
                          (let () (declare (not safe)) (_%g166257166297%_)))))
                  (let () (declare (not safe)) (_%g166257166297%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx166387%_)
        (let* ((_%__stx167157167158%_ _%$stx166387%_)
               (_%g166392166413%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx167157167158%_))))
          (let ((_%__kont167160167161%_
                 (lambda (_%g166394166478%_)
                   (cons (gx#datum->syntax
                          |[1]#_g167204_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp167205
                                                  (lambda (_%g166493166496%_
                                                           _%g166494166499%_)
                                                    (cons _%g166493166496%_
                                                          _%g166494166499%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp167205
                                              '()
                                              _%g166394166478%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g167207_|
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
                (_%__kont167164167165%_
                 (lambda (_%g166407166420%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%g166391166431%_
                    (lambda ()
                      (let ((_%g166407166420%_ _%__stx167157167158%_))
                        (if (gx#identifier? _%g166407166420%_)
                            (_%__kont167164167165%_ _%g166407166420%_)
                            (let ()
                              (declare (not safe))
                              (_%g166392166413%_))))))
                   (_%__match167180167181%_
                    (lambda (_%e166395166438%_
                             _%hd166396166442%_
                             _%tl166397166445%_
                             _%__splice167162167163%_
                             _%target166398166448%_
                             _%tl166400166451%_)
                      (letrec ((_%loop166401166454%_
                                (lambda (_%hd166399166458%_
                                         _%arg166405166461%_)
                                  (if (gx#stx-pair? _%hd166399166458%_)
                                      (let ((_%e166402166464%_
                                             (gx#syntax-e _%hd166399166458%_)))
                                        (let ((_%lp-tl166404166471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166402166464%_)))
                                              (_%lp-hd166403166468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166402166464%_))))
                                          (_%loop166401166454%_
                                           _%lp-tl166404166471%_
                                           (cons _%lp-hd166403166468%_
                                                 _%arg166405166461%_))))
                                      (let ((_%arg166406166474%_
                                             (reverse _%arg166405166461%_)))
                                        (_%__kont167160167161%_
                                         _%arg166406166474%_))))))
                        (_%loop166401166454%_ _%target166398166448%_ '())))))
              (if (gx#stx-pair? _%__stx167157167158%_)
                  (let ((_%e166395166438%_
                         (gx#syntax-e _%__stx167157167158%_)))
                    (let ((_%tl166397166445%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166395166438%_)))
                          (_%hd166396166442%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166395166438%_))))
                      (if (gx#stx-pair/null? _%tl166397166445%_)
                          (let ((_%__splice167162167163%_
                                 (gx#syntax-split-splice->vector
                                  _%tl166397166445%_
                                  '0)))
                            (let ((_%tl166400166451%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice167162167163%_
                                      '1)))
                                  (_%target166398166448%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice167162167163%_
                                      '0))))
                              (if (gx#stx-null? _%tl166400166451%_)
                                  (_%__match167180167181%_
                                   _%e166395166438%_
                                   _%hd166396166442%_
                                   _%tl166397166445%_
                                   _%__splice167162167163%_
                                   _%target166398166448%_
                                   _%tl166400166451%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g166391166431%_)))))
                          (let () (declare (not safe)) (_%g166391166431%_)))))
                  (let () (declare (not safe)) (_%g166391166431%_))))))))))
