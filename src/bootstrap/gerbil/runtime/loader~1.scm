(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g167104_|
    (gx#core-deserialize-mark
     '(0
       (arg165919 . _%arg165919165990%_)
       (arg165918 . _%arg165918165976%_)
       (id . _%id165943%_)
       (arg . _%arg166006%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g167105_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g167104_|)))
  (define |[1]#_g167107_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g167108_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g167107_|)))
  (define |[1]#_g167109_|
    (gx#core-deserialize-mark
     '(0
       (arg166054 . _%arg166054166124%_)
       (id . _%id166077%_)
       (arg166053 . _%arg166053166110%_)
       (arg . _%arg166140%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g167110_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g167109_|)))
  (define |[1]#_g167112_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g167113_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g167112_|)))
  (define |[1]#_g167114_|
    (gx#core-deserialize-mark
     '(0
       (arg166188 . _%arg166188166258%_)
       (id . _%id166211%_)
       (arg . _%arg166274%_)
       (arg166187 . _%arg166187166244%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g167115_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g167114_|)))
  (define |[1]#_g167117_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g167118_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g167117_|)))
  (define |[1]#_g167119_|
    (gx#core-deserialize-mark
     '(0
       (arg166321 . _%arg166321166378%_)
       (id . _%id166345%_)
       (arg . _%arg166408%_)
       (arg166322 . _%arg166322166392%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g167120_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g167119_|)))
  (define |[1]#_g167122_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g167123_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g167122_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx165900%_)
        (let* ((_%__stx166995166996%_ _%$stx165900%_)
               (_%g165905165926%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx166995166996%_))))
          (let ((_%__kont166998166999%_
                 (lambda (_%g165907165992%_)
                   (cons (gx#datum->syntax
                          |[1]#_g167105_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp167106
                                                  (lambda (_%g166007166010%_
                                                           _%g166008166013%_)
                                                    (cons _%g166007166010%_
                                                          _%g166008166013%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp167106
                                              '()
                                              _%g165907165992%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g167108_|
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
                (_%__kont167002167003%_
                 (lambda (_%g165920165933%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%g165904165945%_
                    (lambda ()
                      (let ((_%g165920165933%_ _%__stx166995166996%_))
                        (if (gx#identifier? _%g165920165933%_)
                            (_%__kont167002167003%_ _%g165920165933%_)
                            (let ()
                              (declare (not safe))
                              (_%g165905165926%_))))))
                   (_%__match167018167019%_
                    (lambda (_%e165908165952%_
                             _%hd165909165956%_
                             _%tl165910165959%_
                             _%__splice167000167001%_
                             _%target165911165962%_
                             _%tl165913165965%_)
                      (letrec ((_%loop165914165968%_
                                (lambda (_%hd165912165972%_
                                         _%arg165918165975%_)
                                  (if (gx#stx-pair? _%hd165912165972%_)
                                      (let ((_%e165915165978%_
                                             (gx#syntax-e _%hd165912165972%_)))
                                        (let ((_%lp-tl165917165985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165915165978%_)))
                                              (_%lp-hd165916165982%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165915165978%_))))
                                          (_%loop165914165968%_
                                           _%lp-tl165917165985%_
                                           (cons _%lp-hd165916165982%_
                                                 _%arg165918165975%_))))
                                      (let ((_%arg165919165988%_
                                             (reverse _%arg165918165975%_)))
                                        (_%__kont166998166999%_
                                         _%arg165919165988%_))))))
                        (_%loop165914165968%_ _%target165911165962%_ '())))))
              (if (gx#stx-pair? _%__stx166995166996%_)
                  (let ((_%e165908165952%_
                         (gx#syntax-e _%__stx166995166996%_)))
                    (let ((_%tl165910165959%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e165908165952%_)))
                          (_%hd165909165956%_
                           (let ()
                             (declare (not safe))
                             (##car _%e165908165952%_))))
                      (if (gx#stx-pair/null? _%tl165910165959%_)
                          (let ((_%__splice167000167001%_
                                 (gx#syntax-split-splice->vector
                                  _%tl165910165959%_
                                  '0)))
                            (let ((_%tl165913165965%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice167000167001%_
                                      '1)))
                                  (_%target165911165962%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice167000167001%_
                                      '0))))
                              (if (gx#stx-null? _%tl165913165965%_)
                                  (_%__match167018167019%_
                                   _%e165908165952%_
                                   _%hd165909165956%_
                                   _%tl165910165959%_
                                   _%__splice167000167001%_
                                   _%target165911165962%_
                                   _%tl165913165965%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g165904165945%_)))))
                          (let () (declare (not safe)) (_%g165904165945%_)))))
                  (let () (declare (not safe)) (_%g165904165945%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx166035%_)
        (let* ((_%__stx167021167022%_ _%$stx166035%_)
               (_%g166040166061%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx167021167022%_))))
          (let ((_%__kont167024167025%_
                 (lambda (_%g166042166126%_)
                   (cons (gx#datum->syntax
                          |[1]#_g167110_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp167111
                                                  (lambda (_%g166141166144%_
                                                           _%g166142166147%_)
                                                    (cons _%g166141166144%_
                                                          _%g166142166147%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp167111
                                              '()
                                              _%g166042166126%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g167113_|
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
                (_%__kont167028167029%_
                 (lambda (_%g166055166068%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%g166039166079%_
                    (lambda ()
                      (let ((_%g166055166068%_ _%__stx167021167022%_))
                        (if (gx#identifier? _%g166055166068%_)
                            (_%__kont167028167029%_ _%g166055166068%_)
                            (let ()
                              (declare (not safe))
                              (_%g166040166061%_))))))
                   (_%__match167044167045%_
                    (lambda (_%e166043166086%_
                             _%hd166044166090%_
                             _%tl166045166093%_
                             _%__splice167026167027%_
                             _%target166046166096%_
                             _%tl166048166099%_)
                      (letrec ((_%loop166049166102%_
                                (lambda (_%hd166047166106%_
                                         _%arg166053166109%_)
                                  (if (gx#stx-pair? _%hd166047166106%_)
                                      (let ((_%e166050166112%_
                                             (gx#syntax-e _%hd166047166106%_)))
                                        (let ((_%lp-tl166052166119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166050166112%_)))
                                              (_%lp-hd166051166116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166050166112%_))))
                                          (_%loop166049166102%_
                                           _%lp-tl166052166119%_
                                           (cons _%lp-hd166051166116%_
                                                 _%arg166053166109%_))))
                                      (let ((_%arg166054166122%_
                                             (reverse _%arg166053166109%_)))
                                        (_%__kont167024167025%_
                                         _%arg166054166122%_))))))
                        (_%loop166049166102%_ _%target166046166096%_ '())))))
              (if (gx#stx-pair? _%__stx167021167022%_)
                  (let ((_%e166043166086%_
                         (gx#syntax-e _%__stx167021167022%_)))
                    (let ((_%tl166045166093%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166043166086%_)))
                          (_%hd166044166090%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166043166086%_))))
                      (if (gx#stx-pair/null? _%tl166045166093%_)
                          (let ((_%__splice167026167027%_
                                 (gx#syntax-split-splice->vector
                                  _%tl166045166093%_
                                  '0)))
                            (let ((_%tl166048166099%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice167026167027%_
                                      '1)))
                                  (_%target166046166096%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice167026167027%_
                                      '0))))
                              (if (gx#stx-null? _%tl166048166099%_)
                                  (_%__match167044167045%_
                                   _%e166043166086%_
                                   _%hd166044166090%_
                                   _%tl166045166093%_
                                   _%__splice167026167027%_
                                   _%target166046166096%_
                                   _%tl166048166099%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g166039166079%_)))))
                          (let () (declare (not safe)) (_%g166039166079%_)))))
                  (let () (declare (not safe)) (_%g166039166079%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx166169%_)
        (let* ((_%__stx167047167048%_ _%$stx166169%_)
               (_%g166174166195%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx167047167048%_))))
          (let ((_%__kont167050167051%_
                 (lambda (_%g166176166260%_)
                   (cons (gx#datum->syntax
                          |[1]#_g167115_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp167116
                                                  (lambda (_%g166275166278%_
                                                           _%g166276166281%_)
                                                    (cons _%g166275166278%_
                                                          _%g166276166281%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp167116
                                              '()
                                              _%g166176166260%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g167118_|
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
                (_%__kont167054167055%_
                 (lambda (_%g166189166202%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%g166173166213%_
                    (lambda ()
                      (let ((_%g166189166202%_ _%__stx167047167048%_))
                        (if (gx#identifier? _%g166189166202%_)
                            (_%__kont167054167055%_ _%g166189166202%_)
                            (let ()
                              (declare (not safe))
                              (_%g166174166195%_))))))
                   (_%__match167070167071%_
                    (lambda (_%e166177166220%_
                             _%hd166178166224%_
                             _%tl166179166227%_
                             _%__splice167052167053%_
                             _%target166180166230%_
                             _%tl166182166233%_)
                      (letrec ((_%loop166183166236%_
                                (lambda (_%hd166181166240%_
                                         _%arg166187166243%_)
                                  (if (gx#stx-pair? _%hd166181166240%_)
                                      (let ((_%e166184166246%_
                                             (gx#syntax-e _%hd166181166240%_)))
                                        (let ((_%lp-tl166186166253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166184166246%_)))
                                              (_%lp-hd166185166250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166184166246%_))))
                                          (_%loop166183166236%_
                                           _%lp-tl166186166253%_
                                           (cons _%lp-hd166185166250%_
                                                 _%arg166187166243%_))))
                                      (let ((_%arg166188166256%_
                                             (reverse _%arg166187166243%_)))
                                        (_%__kont167050167051%_
                                         _%arg166188166256%_))))))
                        (_%loop166183166236%_ _%target166180166230%_ '())))))
              (if (gx#stx-pair? _%__stx167047167048%_)
                  (let ((_%e166177166220%_
                         (gx#syntax-e _%__stx167047167048%_)))
                    (let ((_%tl166179166227%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166177166220%_)))
                          (_%hd166178166224%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166177166220%_))))
                      (if (gx#stx-pair/null? _%tl166179166227%_)
                          (let ((_%__splice167052167053%_
                                 (gx#syntax-split-splice->vector
                                  _%tl166179166227%_
                                  '0)))
                            (let ((_%tl166182166233%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice167052167053%_
                                      '1)))
                                  (_%target166180166230%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice167052167053%_
                                      '0))))
                              (if (gx#stx-null? _%tl166182166233%_)
                                  (_%__match167070167071%_
                                   _%e166177166220%_
                                   _%hd166178166224%_
                                   _%tl166179166227%_
                                   _%__splice167052167053%_
                                   _%target166180166230%_
                                   _%tl166182166233%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g166173166213%_)))))
                          (let () (declare (not safe)) (_%g166173166213%_)))))
                  (let () (declare (not safe)) (_%g166173166213%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx166303%_)
        (let* ((_%__stx167073167074%_ _%$stx166303%_)
               (_%g166308166329%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx167073167074%_))))
          (let ((_%__kont167076167077%_
                 (lambda (_%g166310166394%_)
                   (cons (gx#datum->syntax
                          |[1]#_g167120_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp167121
                                                  (lambda (_%g166409166412%_
                                                           _%g166410166415%_)
                                                    (cons _%g166409166412%_
                                                          _%g166410166415%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp167121
                                              '()
                                              _%g166310166394%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g167123_|
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
                (_%__kont167080167081%_
                 (lambda (_%g166323166336%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%g166307166347%_
                    (lambda ()
                      (let ((_%g166323166336%_ _%__stx167073167074%_))
                        (if (gx#identifier? _%g166323166336%_)
                            (_%__kont167080167081%_ _%g166323166336%_)
                            (let ()
                              (declare (not safe))
                              (_%g166308166329%_))))))
                   (_%__match167096167097%_
                    (lambda (_%e166311166354%_
                             _%hd166312166358%_
                             _%tl166313166361%_
                             _%__splice167078167079%_
                             _%target166314166364%_
                             _%tl166316166367%_)
                      (letrec ((_%loop166317166370%_
                                (lambda (_%hd166315166374%_
                                         _%arg166321166377%_)
                                  (if (gx#stx-pair? _%hd166315166374%_)
                                      (let ((_%e166318166380%_
                                             (gx#syntax-e _%hd166315166374%_)))
                                        (let ((_%lp-tl166320166387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166318166380%_)))
                                              (_%lp-hd166319166384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166318166380%_))))
                                          (_%loop166317166370%_
                                           _%lp-tl166320166387%_
                                           (cons _%lp-hd166319166384%_
                                                 _%arg166321166377%_))))
                                      (let ((_%arg166322166390%_
                                             (reverse _%arg166321166377%_)))
                                        (_%__kont167076167077%_
                                         _%arg166322166390%_))))))
                        (_%loop166317166370%_ _%target166314166364%_ '())))))
              (if (gx#stx-pair? _%__stx167073167074%_)
                  (let ((_%e166311166354%_
                         (gx#syntax-e _%__stx167073167074%_)))
                    (let ((_%tl166313166361%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166311166354%_)))
                          (_%hd166312166358%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166311166354%_))))
                      (if (gx#stx-pair/null? _%tl166313166361%_)
                          (let ((_%__splice167078167079%_
                                 (gx#syntax-split-splice->vector
                                  _%tl166313166361%_
                                  '0)))
                            (let ((_%tl166316166367%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice167078167079%_
                                      '1)))
                                  (_%target166314166364%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice167078167079%_
                                      '0))))
                              (if (gx#stx-null? _%tl166316166367%_)
                                  (_%__match167096167097%_
                                   _%e166311166354%_
                                   _%hd166312166358%_
                                   _%tl166313166361%_
                                   _%__splice167078167079%_
                                   _%target166314166364%_
                                   _%tl166316166367%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g166307166347%_)))))
                          (let () (declare (not safe)) (_%g166307166347%_)))))
                  (let () (declare (not safe)) (_%g166307166347%_))))))))))
