(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g118016_|
    (gx#core-deserialize-mark
     '(0
       (arg117120 . _%arg117120117191%_)
       (arg117119 . _%arg117119117177%_)
       (id . _%id117144%_)
       (arg . _%arg117207%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g118017_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g118016_|)))
  (define |[1]#_g118018_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value117223%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g118019_|
    (##structure
     gx#syntax-quote::t
     '_%new-value117223%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g118018_|)))
  (define |[1]#_g118021_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g118022_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g118021_|)))
  (define |[1]#_g118023_|
    (gx#core-deserialize-mark
     '(0
       (arg117256 . _%arg117256117326%_)
       (id . _%id117279%_)
       (arg117255 . _%arg117255117312%_)
       (arg . _%arg117342%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g118024_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g118023_|)))
  (define |[1]#_g118026_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g118027_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g118026_|)))
  (define |[1]#_g118028_|
    (gx#core-deserialize-mark
     '(0
       (arg117416 . _%arg117416117473%_)
       (id . _%id117440%_)
       (arg . _%arg117503%_)
       (arg117417 . _%arg117417117487%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g118029_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g118028_|)))
  (define |[1]#_g118031_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g118032_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g118031_|)))
  (define |[1]#_g118033_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id117583%_)
       (arg . _%arg117646%_)
       (arg117560 . _%arg117560117630%_)
       (arg117559 . _%arg117559117616%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g118034_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g118033_|)))
  (define |[1]#_g118035_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value117662%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g118036_|
    (##structure
     gx#syntax-quote::t
     '_%new-value117662%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g118035_|)))
  (define |[1]#_g118038_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g118039_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g118038_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx117101%_)
        (let* ((_%__stx117902117903%_ _%$stx117101%_)
               (_%g117106117127%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx117902117903%_))))
          (let ((_%__kont117905117906%_
                 (lambda (_%g117108117193%_)
                   (cons (gx#datum->syntax
                          |[1]#_g118017_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g118019_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp118020
                                                  (lambda (_%g117208117211%_
                                                           _%g117209117214%_)
                                                    (cons _%g117208117211%_
                                                          _%g117209117214%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp118020
                                              '()
                                              _%g117108117193%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g118022_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g118019_|
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
                            |[1]#_g118019_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont117909117910%_
                 (lambda (_%g117121117134%_)
                   (gx#datum->syntax '#f 'build-manifest-set!))))
            (let* ((_%g117105117146%_
                    (lambda ()
                      (let ((_%g117121117134%_ _%__stx117902117903%_))
                        (if (gx#identifier? _%g117121117134%_)
                            (_%__kont117909117910%_ _%g117121117134%_)
                            (let ()
                              (declare (not safe))
                              (_%g117106117127%_))))))
                   (_%__match117925117926%_
                    (lambda (_%e117109117153%_
                             _%hd117110117157%_
                             _%tl117111117160%_
                             _%__splice117907117908%_
                             _%target117112117163%_
                             _%tl117114117166%_)
                      (letrec ((_%loop117115117169%_
                                (lambda (_%hd117113117173%_
                                         _%arg117119117176%_)
                                  (if (gx#stx-pair? _%hd117113117173%_)
                                      (let ((_%e117116117179%_
                                             (gx#syntax-e _%hd117113117173%_)))
                                        (let ((_%lp-tl117118117186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e117116117179%_)))
                                              (_%lp-hd117117117183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e117116117179%_))))
                                          (_%loop117115117169%_
                                           _%lp-tl117118117186%_
                                           (cons _%lp-hd117117117183%_
                                                 _%arg117119117176%_))))
                                      (let ((_%arg117120117189%_
                                             (reverse _%arg117119117176%_)))
                                        (_%__kont117905117906%_
                                         _%arg117120117189%_))))))
                        (_%loop117115117169%_ _%target117112117163%_ '())))))
              (if (gx#stx-pair? _%__stx117902117903%_)
                  (let ((_%e117109117153%_
                         (gx#syntax-e _%__stx117902117903%_)))
                    (let ((_%tl117111117160%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e117109117153%_)))
                          (_%hd117110117157%_
                           (let ()
                             (declare (not safe))
                             (##car _%e117109117153%_))))
                      (if (gx#stx-pair/null? _%tl117111117160%_)
                          (let ((_%__splice117907117908%_
                                 (gx#syntax-split-splice->vector
                                  _%tl117111117160%_
                                  '0)))
                            (let ((_%tl117114117166%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117907117908%_
                                      '1)))
                                  (_%target117112117163%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117907117908%_
                                      '0))))
                              (if (gx#stx-null? _%tl117114117166%_)
                                  (_%__match117925117926%_
                                   _%e117109117153%_
                                   _%hd117110117157%_
                                   _%tl117111117160%_
                                   _%__splice117907117908%_
                                   _%target117112117163%_
                                   _%tl117114117166%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g117105117146%_)))))
                          (let () (declare (not safe)) (_%g117105117146%_)))))
                  (let () (declare (not safe)) (_%g117105117146%_))))))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx117237%_)
        (let* ((_%__stx117928117929%_ _%$stx117237%_)
               (_%g117242117263%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx117928117929%_))))
          (let ((_%__kont117931117932%_
                 (lambda (_%g117244117328%_)
                   (cons (gx#datum->syntax
                          |[1]#_g118024_|
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
                                     (cons (let ((__tmp118025
                                                  (lambda (_%g117343117346%_
                                                           _%g117344117349%_)
                                                    (cons _%g117343117346%_
                                                          _%g117344117349%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp118025
                                              '()
                                              _%g117244117328%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g118027_|
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
                (_%__kont117935117936%_
                 (lambda (_%g117257117270%_)
                   (gx#datum->syntax '#f 'display-build-manifest))))
            (let* ((_%g117241117281%_
                    (lambda ()
                      (let ((_%g117257117270%_ _%__stx117928117929%_))
                        (if (gx#identifier? _%g117257117270%_)
                            (_%__kont117935117936%_ _%g117257117270%_)
                            (let ()
                              (declare (not safe))
                              (_%g117242117263%_))))))
                   (_%__match117951117952%_
                    (lambda (_%e117245117288%_
                             _%hd117246117292%_
                             _%tl117247117295%_
                             _%__splice117933117934%_
                             _%target117248117298%_
                             _%tl117250117301%_)
                      (letrec ((_%loop117251117304%_
                                (lambda (_%hd117249117308%_
                                         _%arg117255117311%_)
                                  (if (gx#stx-pair? _%hd117249117308%_)
                                      (let ((_%e117252117314%_
                                             (gx#syntax-e _%hd117249117308%_)))
                                        (let ((_%lp-tl117254117321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e117252117314%_)))
                                              (_%lp-hd117253117318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e117252117314%_))))
                                          (_%loop117251117304%_
                                           _%lp-tl117254117321%_
                                           (cons _%lp-hd117253117318%_
                                                 _%arg117255117311%_))))
                                      (let ((_%arg117256117324%_
                                             (reverse _%arg117255117311%_)))
                                        (_%__kont117931117932%_
                                         _%arg117256117324%_))))))
                        (_%loop117251117304%_ _%target117248117298%_ '())))))
              (if (gx#stx-pair? _%__stx117928117929%_)
                  (let ((_%e117245117288%_
                         (gx#syntax-e _%__stx117928117929%_)))
                    (let ((_%tl117247117295%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e117245117288%_)))
                          (_%hd117246117292%_
                           (let ()
                             (declare (not safe))
                             (##car _%e117245117288%_))))
                      (if (gx#stx-pair/null? _%tl117247117295%_)
                          (let ((_%__splice117933117934%_
                                 (gx#syntax-split-splice->vector
                                  _%tl117247117295%_
                                  '0)))
                            (let ((_%tl117250117301%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117933117934%_
                                      '1)))
                                  (_%target117248117298%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117933117934%_
                                      '0))))
                              (if (gx#stx-null? _%tl117250117301%_)
                                  (_%__match117951117952%_
                                   _%e117245117288%_
                                   _%hd117246117292%_
                                   _%tl117247117295%_
                                   _%__splice117933117934%_
                                   _%target117248117298%_
                                   _%tl117250117301%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g117241117281%_)))))
                          (let () (declare (not safe)) (_%g117241117281%_)))))
                  (let () (declare (not safe)) (_%g117241117281%_))))))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx117398%_)
        (let* ((_%__stx117954117955%_ _%$stx117398%_)
               (_%g117403117424%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx117954117955%_))))
          (let ((_%__kont117957117958%_
                 (lambda (_%g117405117489%_)
                   (cons (gx#datum->syntax
                          |[1]#_g118029_|
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
                                     (cons (let ((__tmp118030
                                                  (lambda (_%g117504117507%_
                                                           _%g117505117510%_)
                                                    (cons _%g117504117507%_
                                                          _%g117505117510%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp118030
                                              '()
                                              _%g117405117489%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g118032_|
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
                (_%__kont117961117962%_
                 (lambda (_%g117418117431%_)
                   (gx#datum->syntax '#f 'build-manifest-string))))
            (let* ((_%g117402117442%_
                    (lambda ()
                      (let ((_%g117418117431%_ _%__stx117954117955%_))
                        (if (gx#identifier? _%g117418117431%_)
                            (_%__kont117961117962%_ _%g117418117431%_)
                            (let ()
                              (declare (not safe))
                              (_%g117403117424%_))))))
                   (_%__match117977117978%_
                    (lambda (_%e117406117449%_
                             _%hd117407117453%_
                             _%tl117408117456%_
                             _%__splice117959117960%_
                             _%target117409117459%_
                             _%tl117411117462%_)
                      (letrec ((_%loop117412117465%_
                                (lambda (_%hd117410117469%_
                                         _%arg117416117472%_)
                                  (if (gx#stx-pair? _%hd117410117469%_)
                                      (let ((_%e117413117475%_
                                             (gx#syntax-e _%hd117410117469%_)))
                                        (let ((_%lp-tl117415117482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e117413117475%_)))
                                              (_%lp-hd117414117479%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e117413117475%_))))
                                          (_%loop117412117465%_
                                           _%lp-tl117415117482%_
                                           (cons _%lp-hd117414117479%_
                                                 _%arg117416117472%_))))
                                      (let ((_%arg117417117485%_
                                             (reverse _%arg117416117472%_)))
                                        (_%__kont117957117958%_
                                         _%arg117417117485%_))))))
                        (_%loop117412117465%_ _%target117409117459%_ '())))))
              (if (gx#stx-pair? _%__stx117954117955%_)
                  (let ((_%e117406117449%_
                         (gx#syntax-e _%__stx117954117955%_)))
                    (let ((_%tl117408117456%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e117406117449%_)))
                          (_%hd117407117453%_
                           (let ()
                             (declare (not safe))
                             (##car _%e117406117449%_))))
                      (if (gx#stx-pair/null? _%tl117408117456%_)
                          (let ((_%__splice117959117960%_
                                 (gx#syntax-split-splice->vector
                                  _%tl117408117456%_
                                  '0)))
                            (let ((_%tl117411117462%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117959117960%_
                                      '1)))
                                  (_%target117409117459%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117959117960%_
                                      '0))))
                              (if (gx#stx-null? _%tl117411117462%_)
                                  (_%__match117977117978%_
                                   _%e117406117449%_
                                   _%hd117407117453%_
                                   _%tl117408117456%_
                                   _%__splice117959117960%_
                                   _%target117409117459%_
                                   _%tl117411117462%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g117402117442%_)))))
                          (let () (declare (not safe)) (_%g117402117442%_)))))
                  (let () (declare (not safe)) (_%g117402117442%_))))))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx117541%_)
        (let* ((_%__stx117980117981%_ _%$stx117541%_)
               (_%g117546117567%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx117980117981%_))))
          (let ((_%__kont117983117984%_
                 (lambda (_%g117548117632%_)
                   (cons (gx#datum->syntax
                          |[1]#_g118034_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g118036_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp118037
                                                  (lambda (_%g117647117650%_
                                                           _%g117648117653%_)
                                                    (cons _%g117647117650%_
                                                          _%g117648117653%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp118037
                                              '()
                                              _%g117548117632%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g118039_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g118036_|
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
                            |[1]#_g118036_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont117987117988%_
                 (lambda (_%g117561117574%_)
                   (gx#datum->syntax '#f 'gerbil-greeting-set!))))
            (let* ((_%g117545117585%_
                    (lambda ()
                      (let ((_%g117561117574%_ _%__stx117980117981%_))
                        (if (gx#identifier? _%g117561117574%_)
                            (_%__kont117987117988%_ _%g117561117574%_)
                            (let ()
                              (declare (not safe))
                              (_%g117546117567%_))))))
                   (_%__match118003118004%_
                    (lambda (_%e117549117592%_
                             _%hd117550117596%_
                             _%tl117551117599%_
                             _%__splice117985117986%_
                             _%target117552117602%_
                             _%tl117554117605%_)
                      (letrec ((_%loop117555117608%_
                                (lambda (_%hd117553117612%_
                                         _%arg117559117615%_)
                                  (if (gx#stx-pair? _%hd117553117612%_)
                                      (let ((_%e117556117618%_
                                             (gx#syntax-e _%hd117553117612%_)))
                                        (let ((_%lp-tl117558117625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e117556117618%_)))
                                              (_%lp-hd117557117622%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e117556117618%_))))
                                          (_%loop117555117608%_
                                           _%lp-tl117558117625%_
                                           (cons _%lp-hd117557117622%_
                                                 _%arg117559117615%_))))
                                      (let ((_%arg117560117628%_
                                             (reverse _%arg117559117615%_)))
                                        (_%__kont117983117984%_
                                         _%arg117560117628%_))))))
                        (_%loop117555117608%_ _%target117552117602%_ '())))))
              (if (gx#stx-pair? _%__stx117980117981%_)
                  (let ((_%e117549117592%_
                         (gx#syntax-e _%__stx117980117981%_)))
                    (let ((_%tl117551117599%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e117549117592%_)))
                          (_%hd117550117596%_
                           (let ()
                             (declare (not safe))
                             (##car _%e117549117592%_))))
                      (if (gx#stx-pair/null? _%tl117551117599%_)
                          (let ((_%__splice117985117986%_
                                 (gx#syntax-split-splice->vector
                                  _%tl117551117599%_
                                  '0)))
                            (let ((_%tl117554117605%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117985117986%_
                                      '1)))
                                  (_%target117552117602%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117985117986%_
                                      '0))))
                              (if (gx#stx-null? _%tl117554117605%_)
                                  (_%__match118003118004%_
                                   _%e117549117592%_
                                   _%hd117550117596%_
                                   _%tl117551117599%_
                                   _%__splice117985117986%_
                                   _%target117552117602%_
                                   _%tl117554117605%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g117545117585%_)))))
                          (let () (declare (not safe)) (_%g117545117585%_)))))
                  (let () (declare (not safe)) (_%g117545117585%_))))))))))
