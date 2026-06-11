(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g121803_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id120931%_)
       ($%arg120906 . _%$%arg120906120964%_)
       ($%arg120907 . _%$%arg120907120978%_)
       (arg . _%arg120994%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121804_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121803_|)))
  (define |[1]#_g121805_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value121661%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121806_|
    (##structure
     gx#syntax-quote::t
     '_%new-value121661%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g121805_|)))
  (define |[1]#_g121808_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121809_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121808_|)))
  (define |[1]#_g121810_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id121051%_)
       ($%arg121027 . _%$%arg121027121084%_)
       (arg . _%arg121114%_)
       ($%arg121028 . _%$%arg121028121098%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121811_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121810_|)))
  (define |[1]#_g121813_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121814_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121813_|)))
  (define |[1]#_g121815_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id121171%_)
       ($%arg121148 . _%$%arg121148121218%_)
       ($%arg121147 . _%$%arg121147121204%_)
       (arg . _%arg121234%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121816_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121815_|)))
  (define |[1]#_g121818_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121819_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121818_|)))
  (define |[1]#_g121820_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id121291%_)
       (arg . _%arg121354%_)
       ($%arg121267 . _%$%arg121267121324%_)
       ($%arg121268 . _%$%arg121268121338%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121821_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121820_|)))
  (define |[1]#_g121822_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value121411%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121823_|
    (##structure
     gx#syntax-quote::t
     '_%new-value121411%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g121822_|)))
  (define |[1]#_g121825_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121826_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121825_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx120888%_)
        (let* ((_%__stx121689121690%_ _%$stx120888%_)
               (_%$%g120893120914%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121689121690%_))))
          (let ((_%__kont121692121693%_
                 (lambda (_%$%g120895120980%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121804_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g121806_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp121807
                                                  (lambda (_%$%g120995120998%_
                                                           _%$%g120996121001%_)
                                                    (cons _%$%g120995120998%_
                                                          _%$%g120996121001%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121807
                                              '()
                                              _%$%g120895120980%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121809_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g121806_|
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
                            |[1]#_g121806_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont121696121697%_
                 (lambda (_%$%g120908120921%_)
                   (gx#datum->syntax '#f 'build-manifest-set!))))
            (let* ((_%$%g120892120933%_
                    (lambda ()
                      (let ((_%$%g120908120921%_ _%__stx121689121690%_))
                        (if (gx#identifier? _%$%g120908120921%_)
                            (_%__kont121696121697%_ _%$%g120908120921%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g120893120914%_))))))
                   (_%__match121712121713%_
                    (lambda (_%$%e120896120940%_
                             _%$%hd120897120944%_
                             _%$%tl120898120947%_
                             _%__splice121694121695%_
                             _%$%target120899120950%_
                             _%$%tl120901120953%_)
                      (letrec ((_%$%loop120902120956%_
                                (lambda (_%$%hd120900120960%_
                                         _%$%arg120906120963%_)
                                  (if (gx#stx-pair? _%$%hd120900120960%_)
                                      (let ((_%$%e120903120966%_
                                             (gx#syntax-e
                                              _%$%hd120900120960%_)))
                                        (let ((_%$%lp-tl120905120973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e120903120966%_)))
                                              (_%$%lp-hd120904120970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e120903120966%_))))
                                          (_%$%loop120902120956%_
                                           _%$%lp-tl120905120973%_
                                           (cons _%$%lp-hd120904120970%_
                                                 _%$%arg120906120963%_))))
                                      (let ((_%$%arg120907120976%_
                                             (reverse _%$%arg120906120963%_)))
                                        (_%__kont121692121693%_
                                         _%$%arg120907120976%_))))))
                        (_%$%loop120902120956%_
                         _%$%target120899120950%_
                         '())))))
              (if (gx#stx-pair? _%__stx121689121690%_)
                  (let ((_%$%e120896120940%_
                         (gx#syntax-e _%__stx121689121690%_)))
                    (let ((_%$%tl120898120947%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e120896120940%_)))
                          (_%$%hd120897120944%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e120896120940%_))))
                      (if (gx#stx-pair/null? _%$%tl120898120947%_)
                          (let ((_%__splice121694121695%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl120898120947%_
                                  '0)))
                            (let ((_%$%tl120901120953%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121694121695%_
                                      '1)))
                                  (_%$%target120899120950%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121694121695%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl120901120953%_)
                                  (_%__match121712121713%_
                                   _%$%e120896120940%_
                                   _%$%hd120897120944%_
                                   _%$%tl120898120947%_
                                   _%__splice121694121695%_
                                   _%$%target120899120950%_
                                   _%$%tl120901120953%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g120892120933%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g120892120933%_)))))
                  (let () (declare (not safe)) (_%$%g120892120933%_))))))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx121009%_)
        (let* ((_%__stx121715121716%_ _%$stx121009%_)
               (_%$%g121014121035%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121715121716%_))))
          (let ((_%__kont121718121719%_
                 (lambda (_%$%g121016121100%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121811_|
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
                                     (cons (let ((__tmp121812
                                                  (lambda (_%$%g121115121118%_
                                                           _%$%g121116121121%_)
                                                    (cons _%$%g121115121118%_
                                                          _%$%g121116121121%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121812
                                              '()
                                              _%$%g121016121100%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121814_|
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
                (_%__kont121722121723%_
                 (lambda (_%$%g121029121042%_)
                   (gx#datum->syntax '#f 'display-build-manifest))))
            (let* ((_%$%g121013121053%_
                    (lambda ()
                      (let ((_%$%g121029121042%_ _%__stx121715121716%_))
                        (if (gx#identifier? _%$%g121029121042%_)
                            (_%__kont121722121723%_ _%$%g121029121042%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g121014121035%_))))))
                   (_%__match121738121739%_
                    (lambda (_%$%e121017121060%_
                             _%$%hd121018121064%_
                             _%$%tl121019121067%_
                             _%__splice121720121721%_
                             _%$%target121020121070%_
                             _%$%tl121022121073%_)
                      (letrec ((_%$%loop121023121076%_
                                (lambda (_%$%hd121021121080%_
                                         _%$%arg121027121083%_)
                                  (if (gx#stx-pair? _%$%hd121021121080%_)
                                      (let ((_%$%e121024121086%_
                                             (gx#syntax-e
                                              _%$%hd121021121080%_)))
                                        (let ((_%$%lp-tl121026121093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e121024121086%_)))
                                              (_%$%lp-hd121025121090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e121024121086%_))))
                                          (_%$%loop121023121076%_
                                           _%$%lp-tl121026121093%_
                                           (cons _%$%lp-hd121025121090%_
                                                 _%$%arg121027121083%_))))
                                      (let ((_%$%arg121028121096%_
                                             (reverse _%$%arg121027121083%_)))
                                        (_%__kont121718121719%_
                                         _%$%arg121028121096%_))))))
                        (_%$%loop121023121076%_
                         _%$%target121020121070%_
                         '())))))
              (if (gx#stx-pair? _%__stx121715121716%_)
                  (let ((_%$%e121017121060%_
                         (gx#syntax-e _%__stx121715121716%_)))
                    (let ((_%$%tl121019121067%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e121017121060%_)))
                          (_%$%hd121018121064%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e121017121060%_))))
                      (if (gx#stx-pair/null? _%$%tl121019121067%_)
                          (let ((_%__splice121720121721%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl121019121067%_
                                  '0)))
                            (let ((_%$%tl121022121073%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121720121721%_
                                      '1)))
                                  (_%$%target121020121070%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121720121721%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl121022121073%_)
                                  (_%__match121738121739%_
                                   _%$%e121017121060%_
                                   _%$%hd121018121064%_
                                   _%$%tl121019121067%_
                                   _%__splice121720121721%_
                                   _%$%target121020121070%_
                                   _%$%tl121022121073%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g121013121053%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g121013121053%_)))))
                  (let () (declare (not safe)) (_%$%g121013121053%_))))))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx121129%_)
        (let* ((_%__stx121741121742%_ _%$stx121129%_)
               (_%$%g121134121155%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121741121742%_))))
          (let ((_%__kont121744121745%_
                 (lambda (_%$%g121136121220%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121816_|
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
                                     (cons (let ((__tmp121817
                                                  (lambda (_%$%g121235121238%_
                                                           _%$%g121236121241%_)
                                                    (cons _%$%g121235121238%_
                                                          _%$%g121236121241%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121817
                                              '()
                                              _%$%g121136121220%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121819_|
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
                (_%__kont121748121749%_
                 (lambda (_%$%g121149121162%_)
                   (gx#datum->syntax '#f 'build-manifest-string))))
            (let* ((_%$%g121133121173%_
                    (lambda ()
                      (let ((_%$%g121149121162%_ _%__stx121741121742%_))
                        (if (gx#identifier? _%$%g121149121162%_)
                            (_%__kont121748121749%_ _%$%g121149121162%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g121134121155%_))))))
                   (_%__match121764121765%_
                    (lambda (_%$%e121137121180%_
                             _%$%hd121138121184%_
                             _%$%tl121139121187%_
                             _%__splice121746121747%_
                             _%$%target121140121190%_
                             _%$%tl121142121193%_)
                      (letrec ((_%$%loop121143121196%_
                                (lambda (_%$%hd121141121200%_
                                         _%$%arg121147121203%_)
                                  (if (gx#stx-pair? _%$%hd121141121200%_)
                                      (let ((_%$%e121144121206%_
                                             (gx#syntax-e
                                              _%$%hd121141121200%_)))
                                        (let ((_%$%lp-tl121146121213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e121144121206%_)))
                                              (_%$%lp-hd121145121210%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e121144121206%_))))
                                          (_%$%loop121143121196%_
                                           _%$%lp-tl121146121213%_
                                           (cons _%$%lp-hd121145121210%_
                                                 _%$%arg121147121203%_))))
                                      (let ((_%$%arg121148121216%_
                                             (reverse _%$%arg121147121203%_)))
                                        (_%__kont121744121745%_
                                         _%$%arg121148121216%_))))))
                        (_%$%loop121143121196%_
                         _%$%target121140121190%_
                         '())))))
              (if (gx#stx-pair? _%__stx121741121742%_)
                  (let ((_%$%e121137121180%_
                         (gx#syntax-e _%__stx121741121742%_)))
                    (let ((_%$%tl121139121187%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e121137121180%_)))
                          (_%$%hd121138121184%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e121137121180%_))))
                      (if (gx#stx-pair/null? _%$%tl121139121187%_)
                          (let ((_%__splice121746121747%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl121139121187%_
                                  '0)))
                            (let ((_%$%tl121142121193%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121746121747%_
                                      '1)))
                                  (_%$%target121140121190%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121746121747%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl121142121193%_)
                                  (_%__match121764121765%_
                                   _%$%e121137121180%_
                                   _%$%hd121138121184%_
                                   _%$%tl121139121187%_
                                   _%__splice121746121747%_
                                   _%$%target121140121190%_
                                   _%$%tl121142121193%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g121133121173%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g121133121173%_)))))
                  (let () (declare (not safe)) (_%$%g121133121173%_))))))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx121249%_)
        (let* ((_%__stx121767121768%_ _%$stx121249%_)
               (_%$%g121254121275%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121767121768%_))))
          (let ((_%__kont121770121771%_
                 (lambda (_%$%g121256121340%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121821_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g121823_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp121824
                                                  (lambda (_%$%g121355121358%_
                                                           _%$%g121356121361%_)
                                                    (cons _%$%g121355121358%_
                                                          _%$%g121356121361%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121824
                                              '()
                                              _%$%g121256121340%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121826_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g121823_|
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
                            |[1]#_g121823_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont121774121775%_
                 (lambda (_%$%g121269121282%_)
                   (gx#datum->syntax '#f 'gerbil-greeting-set!))))
            (let* ((_%$%g121253121293%_
                    (lambda ()
                      (let ((_%$%g121269121282%_ _%__stx121767121768%_))
                        (if (gx#identifier? _%$%g121269121282%_)
                            (_%__kont121774121775%_ _%$%g121269121282%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g121254121275%_))))))
                   (_%__match121790121791%_
                    (lambda (_%$%e121257121300%_
                             _%$%hd121258121304%_
                             _%$%tl121259121307%_
                             _%__splice121772121773%_
                             _%$%target121260121310%_
                             _%$%tl121262121313%_)
                      (letrec ((_%$%loop121263121316%_
                                (lambda (_%$%hd121261121320%_
                                         _%$%arg121267121323%_)
                                  (if (gx#stx-pair? _%$%hd121261121320%_)
                                      (let ((_%$%e121264121326%_
                                             (gx#syntax-e
                                              _%$%hd121261121320%_)))
                                        (let ((_%$%lp-tl121266121333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e121264121326%_)))
                                              (_%$%lp-hd121265121330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e121264121326%_))))
                                          (_%$%loop121263121316%_
                                           _%$%lp-tl121266121333%_
                                           (cons _%$%lp-hd121265121330%_
                                                 _%$%arg121267121323%_))))
                                      (let ((_%$%arg121268121336%_
                                             (reverse _%$%arg121267121323%_)))
                                        (_%__kont121770121771%_
                                         _%$%arg121268121336%_))))))
                        (_%$%loop121263121316%_
                         _%$%target121260121310%_
                         '())))))
              (if (gx#stx-pair? _%__stx121767121768%_)
                  (let ((_%$%e121257121300%_
                         (gx#syntax-e _%__stx121767121768%_)))
                    (let ((_%$%tl121259121307%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e121257121300%_)))
                          (_%$%hd121258121304%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e121257121300%_))))
                      (if (gx#stx-pair/null? _%$%tl121259121307%_)
                          (let ((_%__splice121772121773%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl121259121307%_
                                  '0)))
                            (let ((_%$%tl121262121313%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121772121773%_
                                      '1)))
                                  (_%$%target121260121310%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121772121773%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl121262121313%_)
                                  (_%__match121790121791%_
                                   _%$%e121257121300%_
                                   _%$%hd121258121304%_
                                   _%$%tl121259121307%_
                                   _%__splice121772121773%_
                                   _%$%target121260121310%_
                                   _%$%tl121262121313%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g121253121293%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g121253121293%_)))))
                  (let () (declare (not safe)) (_%$%g121253121293%_))))))))))
