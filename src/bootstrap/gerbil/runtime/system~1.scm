(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g129587_|
    (gx#core-deserialize-mark
     '(0
       (arg128691 . _%arg128691128762%_)
       (arg128690 . _%arg128690128748%_)
       (id . _%id128715%_)
       (arg . _%arg128778%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g129588_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g129587_|)))
  (define |[1]#_g129589_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value128794%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g129590_|
    (##structure
     gx#syntax-quote::t
     '_%new-value128794%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g129589_|)))
  (define |[1]#_g129592_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g129593_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g129592_|)))
  (define |[1]#_g129594_|
    (gx#core-deserialize-mark
     '(0
       (arg128827 . _%arg128827128897%_)
       (arg128826 . _%arg128826128883%_)
       (id . _%id128850%_)
       (arg . _%arg128913%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g129595_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g129594_|)))
  (define |[1]#_g129597_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g129598_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g129597_|)))
  (define |[1]#_g129599_|
    (gx#core-deserialize-mark
     '(0
       (arg128988 . _%arg128988129058%_)
       (arg128987 . _%arg128987129044%_)
       (id . _%id129011%_)
       (arg . _%arg129074%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g129600_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g129599_|)))
  (define |[1]#_g129602_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g129603_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g129602_|)))
  (define |[1]#_g129604_|
    (gx#core-deserialize-mark
     '(0
       (arg129131 . _%arg129131129201%_)
       (arg129130 . _%arg129130129187%_)
       (id . _%id129154%_)
       (arg . _%arg129217%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g129605_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g129604_|)))
  (define |[1]#_g129606_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value129233%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g129607_|
    (##structure
     gx#syntax-quote::t
     '_%new-value129233%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g129606_|)))
  (define |[1]#_g129609_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g129610_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g129609_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx128672%_)
        (let* ((_%__stx129473129474%_ _%$stx128672%_)
               (_%g128677128698%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx129473129474%_))))
          (let ((_%__kont129476129477%_
                 (lambda (_%g128679128764%_)
                   (cons (gx#datum->syntax
                          |[1]#_g129588_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g129590_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp129591
                                                  (lambda (_%g128779128782%_
                                                           _%g128780128785%_)
                                                    (cons _%g128779128782%_
                                                          _%g128780128785%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp129591
                                              '()
                                              _%g128679128764%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g129593_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g129590_|
                                                              'new-value
                                                              '#f
                                                              '#f)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__build-manifest-set!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |[1]#_g129590_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont129480129481%_
                 (lambda (_%g128692128705%_)
                   (gx#datum->syntax '#f 'build-manifest-set!))))
            (let* ((_%g128676128717%_
                    (lambda ()
                      (let ((_%g128692128705%_ _%__stx129473129474%_))
                        (if (gx#identifier? _%g128692128705%_)
                            (_%__kont129480129481%_ _%g128692128705%_)
                            (let ()
                              (declare (not safe))
                              (_%g128677128698%_))))))
                   (_%__match129496129497%_
                    (lambda (_%e128680128724%_
                             _%hd128681128728%_
                             _%tl128682128731%_
                             _%__splice129478129479%_
                             _%target128683128734%_
                             _%tl128685128737%_)
                      (letrec ((_%loop128686128740%_
                                (lambda (_%hd128684128744%_
                                         _%arg128690128747%_)
                                  (if (gx#stx-pair? _%hd128684128744%_)
                                      (let ((_%e128687128750%_
                                             (gx#syntax-e _%hd128684128744%_)))
                                        (let ((_%lp-tl128689128757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128687128750%_)))
                                              (_%lp-hd128688128754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128687128750%_))))
                                          (_%loop128686128740%_
                                           _%lp-tl128689128757%_
                                           (cons _%lp-hd128688128754%_
                                                 _%arg128690128747%_))))
                                      (let ((_%arg128691128760%_
                                             (reverse _%arg128690128747%_)))
                                        (_%__kont129476129477%_
                                         _%arg128691128760%_))))))
                        (_%loop128686128740%_ _%target128683128734%_ '())))))
              (if (gx#stx-pair? _%__stx129473129474%_)
                  (let ((_%e128680128724%_
                         (gx#syntax-e _%__stx129473129474%_)))
                    (let ((_%tl128682128731%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e128680128724%_)))
                          (_%hd128681128728%_
                           (let ()
                             (declare (not safe))
                             (##car _%e128680128724%_))))
                      (if (gx#stx-pair/null? _%tl128682128731%_)
                          (let ((_%__splice129478129479%_
                                 (gx#syntax-split-splice->vector
                                  _%tl128682128731%_
                                  '0)))
                            (let ((_%tl128685128737%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice129478129479%_
                                      '1)))
                                  (_%target128683128734%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice129478129479%_
                                      '0))))
                              (if (gx#stx-null? _%tl128685128737%_)
                                  (_%__match129496129497%_
                                   _%e128680128724%_
                                   _%hd128681128728%_
                                   _%tl128682128731%_
                                   _%__splice129478129479%_
                                   _%target128683128734%_
                                   _%tl128685128737%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g128676128717%_)))))
                          (let () (declare (not safe)) (_%g128676128717%_)))))
                  (let () (declare (not safe)) (_%g128676128717%_))))))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx128808%_)
        (let* ((_%__stx129499129500%_ _%$stx128808%_)
               (_%g128813128834%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx129499129500%_))))
          (let ((_%__kont129502129503%_
                 (lambda (_%g128815128899%_)
                   (cons (gx#datum->syntax
                          |[1]#_g129595_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'manifest)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '__build-manifest)
                                                       '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'port)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'current-output-port)
                           '())
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (let ((__tmp129596
                                                  (lambda (_%g128914128917%_
                                                           _%g128915128920%_)
                                                    (cons _%g128914128917%_
                                                          _%g128915128920%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp129596
                                              '()
                                              _%g128815128899%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g129598_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'manifest)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               (cons (cons (gx#datum->syntax '#f 'port)
                           (cons (gx#datum->syntax '#f ':)
                                 (cons (gx#datum->syntax '#f ':port) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__display-build-manifest)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'manifest)
                           (cons (gx#datum->syntax '#f 'port) '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont129506129507%_
                 (lambda (_%g128828128841%_)
                   (gx#datum->syntax '#f 'display-build-manifest))))
            (let* ((_%g128812128852%_
                    (lambda ()
                      (let ((_%g128828128841%_ _%__stx129499129500%_))
                        (if (gx#identifier? _%g128828128841%_)
                            (_%__kont129506129507%_ _%g128828128841%_)
                            (let ()
                              (declare (not safe))
                              (_%g128813128834%_))))))
                   (_%__match129522129523%_
                    (lambda (_%e128816128859%_
                             _%hd128817128863%_
                             _%tl128818128866%_
                             _%__splice129504129505%_
                             _%target128819128869%_
                             _%tl128821128872%_)
                      (letrec ((_%loop128822128875%_
                                (lambda (_%hd128820128879%_
                                         _%arg128826128882%_)
                                  (if (gx#stx-pair? _%hd128820128879%_)
                                      (let ((_%e128823128885%_
                                             (gx#syntax-e _%hd128820128879%_)))
                                        (let ((_%lp-tl128825128892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128823128885%_)))
                                              (_%lp-hd128824128889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128823128885%_))))
                                          (_%loop128822128875%_
                                           _%lp-tl128825128892%_
                                           (cons _%lp-hd128824128889%_
                                                 _%arg128826128882%_))))
                                      (let ((_%arg128827128895%_
                                             (reverse _%arg128826128882%_)))
                                        (_%__kont129502129503%_
                                         _%arg128827128895%_))))))
                        (_%loop128822128875%_ _%target128819128869%_ '())))))
              (if (gx#stx-pair? _%__stx129499129500%_)
                  (let ((_%e128816128859%_
                         (gx#syntax-e _%__stx129499129500%_)))
                    (let ((_%tl128818128866%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e128816128859%_)))
                          (_%hd128817128863%_
                           (let ()
                             (declare (not safe))
                             (##car _%e128816128859%_))))
                      (if (gx#stx-pair/null? _%tl128818128866%_)
                          (let ((_%__splice129504129505%_
                                 (gx#syntax-split-splice->vector
                                  _%tl128818128866%_
                                  '0)))
                            (let ((_%tl128821128872%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice129504129505%_
                                      '1)))
                                  (_%target128819128869%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice129504129505%_
                                      '0))))
                              (if (gx#stx-null? _%tl128821128872%_)
                                  (_%__match129522129523%_
                                   _%e128816128859%_
                                   _%hd128817128863%_
                                   _%tl128818128866%_
                                   _%__splice129504129505%_
                                   _%target128819128869%_
                                   _%tl128821128872%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g128812128852%_)))))
                          (let () (declare (not safe)) (_%g128812128852%_)))))
                  (let () (declare (not safe)) (_%g128812128852%_))))))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx128969%_)
        (let* ((_%__stx129525129526%_ _%$stx128969%_)
               (_%g128974128995%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx129525129526%_))))
          (let ((_%__kont129528129529%_
                 (lambda (_%g128976129060%_)
                   (cons (gx#datum->syntax
                          |[1]#_g129600_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'manifest)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '__build-manifest)
                                                       '()))
                                           '())
                                     (cons (let ((__tmp129601
                                                  (lambda (_%g129075129078%_
                                                           _%g129076129081%_)
                                                    (cons _%g129075129078%_
                                                          _%g129076129081%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp129601
                                              '()
                                              _%g128976129060%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g129603_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'manifest)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__build-manifest-string)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'manifest)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont129532129533%_
                 (lambda (_%g128989129002%_)
                   (gx#datum->syntax '#f 'build-manifest-string))))
            (let* ((_%g128973129013%_
                    (lambda ()
                      (let ((_%g128989129002%_ _%__stx129525129526%_))
                        (if (gx#identifier? _%g128989129002%_)
                            (_%__kont129532129533%_ _%g128989129002%_)
                            (let ()
                              (declare (not safe))
                              (_%g128974128995%_))))))
                   (_%__match129548129549%_
                    (lambda (_%e128977129020%_
                             _%hd128978129024%_
                             _%tl128979129027%_
                             _%__splice129530129531%_
                             _%target128980129030%_
                             _%tl128982129033%_)
                      (letrec ((_%loop128983129036%_
                                (lambda (_%hd128981129040%_
                                         _%arg128987129043%_)
                                  (if (gx#stx-pair? _%hd128981129040%_)
                                      (let ((_%e128984129046%_
                                             (gx#syntax-e _%hd128981129040%_)))
                                        (let ((_%lp-tl128986129053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e128984129046%_)))
                                              (_%lp-hd128985129050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e128984129046%_))))
                                          (_%loop128983129036%_
                                           _%lp-tl128986129053%_
                                           (cons _%lp-hd128985129050%_
                                                 _%arg128987129043%_))))
                                      (let ((_%arg128988129056%_
                                             (reverse _%arg128987129043%_)))
                                        (_%__kont129528129529%_
                                         _%arg128988129056%_))))))
                        (_%loop128983129036%_ _%target128980129030%_ '())))))
              (if (gx#stx-pair? _%__stx129525129526%_)
                  (let ((_%e128977129020%_
                         (gx#syntax-e _%__stx129525129526%_)))
                    (let ((_%tl128979129027%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e128977129020%_)))
                          (_%hd128978129024%_
                           (let ()
                             (declare (not safe))
                             (##car _%e128977129020%_))))
                      (if (gx#stx-pair/null? _%tl128979129027%_)
                          (let ((_%__splice129530129531%_
                                 (gx#syntax-split-splice->vector
                                  _%tl128979129027%_
                                  '0)))
                            (let ((_%tl128982129033%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice129530129531%_
                                      '1)))
                                  (_%target128980129030%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice129530129531%_
                                      '0))))
                              (if (gx#stx-null? _%tl128982129033%_)
                                  (_%__match129548129549%_
                                   _%e128977129020%_
                                   _%hd128978129024%_
                                   _%tl128979129027%_
                                   _%__splice129530129531%_
                                   _%target128980129030%_
                                   _%tl128982129033%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g128973129013%_)))))
                          (let () (declare (not safe)) (_%g128973129013%_)))))
                  (let () (declare (not safe)) (_%g128973129013%_))))))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx129112%_)
        (let* ((_%__stx129551129552%_ _%$stx129112%_)
               (_%g129117129138%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx129551129552%_))))
          (let ((_%__kont129554129555%_
                 (lambda (_%g129119129203%_)
                   (cons (gx#datum->syntax
                          |[1]#_g129605_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g129607_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp129608
                                                  (lambda (_%g129218129221%_
                                                           _%g129219129224%_)
                                                    (cons _%g129218129221%_
                                                          _%g129219129224%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp129608
                                              '()
                                              _%g129119129203%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g129610_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g129607_|
                                                              'new-value
                                                              '#f
                                                              '#f)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__gerbil-greeting-set!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |[1]#_g129607_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont129558129559%_
                 (lambda (_%g129132129145%_)
                   (gx#datum->syntax '#f 'gerbil-greeting-set!))))
            (let* ((_%g129116129156%_
                    (lambda ()
                      (let ((_%g129132129145%_ _%__stx129551129552%_))
                        (if (gx#identifier? _%g129132129145%_)
                            (_%__kont129558129559%_ _%g129132129145%_)
                            (let ()
                              (declare (not safe))
                              (_%g129117129138%_))))))
                   (_%__match129574129575%_
                    (lambda (_%e129120129163%_
                             _%hd129121129167%_
                             _%tl129122129170%_
                             _%__splice129556129557%_
                             _%target129123129173%_
                             _%tl129125129176%_)
                      (letrec ((_%loop129126129179%_
                                (lambda (_%hd129124129183%_
                                         _%arg129130129186%_)
                                  (if (gx#stx-pair? _%hd129124129183%_)
                                      (let ((_%e129127129189%_
                                             (gx#syntax-e _%hd129124129183%_)))
                                        (let ((_%lp-tl129129129196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e129127129189%_)))
                                              (_%lp-hd129128129193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e129127129189%_))))
                                          (_%loop129126129179%_
                                           _%lp-tl129129129196%_
                                           (cons _%lp-hd129128129193%_
                                                 _%arg129130129186%_))))
                                      (let ((_%arg129131129199%_
                                             (reverse _%arg129130129186%_)))
                                        (_%__kont129554129555%_
                                         _%arg129131129199%_))))))
                        (_%loop129126129179%_ _%target129123129173%_ '())))))
              (if (gx#stx-pair? _%__stx129551129552%_)
                  (let ((_%e129120129163%_
                         (gx#syntax-e _%__stx129551129552%_)))
                    (let ((_%tl129122129170%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e129120129163%_)))
                          (_%hd129121129167%_
                           (let ()
                             (declare (not safe))
                             (##car _%e129120129163%_))))
                      (if (gx#stx-pair/null? _%tl129122129170%_)
                          (let ((_%__splice129556129557%_
                                 (gx#syntax-split-splice->vector
                                  _%tl129122129170%_
                                  '0)))
                            (let ((_%tl129125129176%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice129556129557%_
                                      '1)))
                                  (_%target129123129173%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice129556129557%_
                                      '0))))
                              (if (gx#stx-null? _%tl129125129176%_)
                                  (_%__match129574129575%_
                                   _%e129120129163%_
                                   _%hd129121129167%_
                                   _%tl129122129170%_
                                   _%__splice129556129557%_
                                   _%target129123129173%_
                                   _%tl129125129176%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g129116129156%_)))))
                          (let () (declare (not safe)) (_%g129116129156%_)))))
                  (let () (declare (not safe)) (_%g129116129156%_))))))))))
