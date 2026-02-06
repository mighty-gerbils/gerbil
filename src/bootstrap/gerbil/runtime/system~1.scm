(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g118008_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg117199%_)
       (arg117111 . _%arg117111117169%_)
       (id . _%id117136%_)
       (arg117112 . _%arg117112117183%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g118009_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g118008_|)))
  (define |[1]#_g118010_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value117215%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g118011_|
    (##structure
     gx#syntax-quote::t
     '_%new-value117215%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g118010_|)))
  (define |[1]#_g118013_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g118014_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g118013_|)))
  (define |[1]#_g118015_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg117334%_)
       (arg117247 . _%arg117247117304%_)
       (id . _%id117271%_)
       (arg117248 . _%arg117248117318%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g118016_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g118015_|)))
  (define |[1]#_g118018_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g118019_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g118018_|)))
  (define |[1]#_g118020_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg117495%_)
       (id . _%id117432%_)
       (arg117408 . _%arg117408117465%_)
       (arg117409 . _%arg117409117479%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g118021_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g118020_|)))
  (define |[1]#_g118023_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g118024_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g118023_|)))
  (define |[1]#_g118025_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg117638%_)
       (arg117551 . _%arg117551117608%_)
       (id . _%id117575%_)
       (arg117552 . _%arg117552117622%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g118026_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g118025_|)))
  (define |[1]#_g118027_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value117654%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g118028_|
    (##structure
     gx#syntax-quote::t
     '_%new-value117654%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g118027_|)))
  (define |[1]#_g118030_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g118031_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g118030_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx117093%_)
        (let* ((_%__stx117894117895%_ _%$stx117093%_)
               (_%g117098117119%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx117894117895%_))))
          (let ((_%__kont117897117898%_
                 (lambda (_%g117100117185%_)
                   (cons (gx#datum->syntax
                          |[1]#_g118009_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g118011_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp118012
                                                  (lambda (_%g117200117203%_
                                                           _%g117201117206%_)
                                                    (cons _%g117200117203%_
                                                          _%g117201117206%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp118012
                                              '()
                                              _%g117100117185%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g118014_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g118011_|
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
                            |[1]#_g118011_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont117901117902%_
                 (lambda (_%g117113117126%_)
                   (gx#datum->syntax '#f 'build-manifest-set!))))
            (let* ((_%g117097117138%_
                    (lambda ()
                      (let ((_%g117113117126%_ _%__stx117894117895%_))
                        (if (gx#identifier? _%g117113117126%_)
                            (_%__kont117901117902%_ _%g117113117126%_)
                            (let ()
                              (declare (not safe))
                              (_%g117098117119%_))))))
                   (_%__match117917117918%_
                    (lambda (_%e117101117145%_
                             _%hd117102117149%_
                             _%tl117103117152%_
                             _%__splice117899117900%_
                             _%target117104117155%_
                             _%tl117106117158%_)
                      (letrec ((_%loop117107117161%_
                                (lambda (_%hd117105117165%_
                                         _%arg117111117168%_)
                                  (if (gx#stx-pair? _%hd117105117165%_)
                                      (let ((_%e117108117171%_
                                             (gx#syntax-e _%hd117105117165%_)))
                                        (let ((_%lp-tl117110117178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e117108117171%_)))
                                              (_%lp-hd117109117175%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e117108117171%_))))
                                          (_%loop117107117161%_
                                           _%lp-tl117110117178%_
                                           (cons _%lp-hd117109117175%_
                                                 _%arg117111117168%_))))
                                      (let ((_%arg117112117181%_
                                             (reverse _%arg117111117168%_)))
                                        (_%__kont117897117898%_
                                         _%arg117112117181%_))))))
                        (_%loop117107117161%_ _%target117104117155%_ '())))))
              (if (gx#stx-pair? _%__stx117894117895%_)
                  (let ((_%e117101117145%_
                         (gx#syntax-e _%__stx117894117895%_)))
                    (let ((_%tl117103117152%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e117101117145%_)))
                          (_%hd117102117149%_
                           (let ()
                             (declare (not safe))
                             (##car _%e117101117145%_))))
                      (if (gx#stx-pair/null? _%tl117103117152%_)
                          (let ((_%__splice117899117900%_
                                 (gx#syntax-split-splice->vector
                                  _%tl117103117152%_
                                  '0)))
                            (let ((_%tl117106117158%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117899117900%_
                                      '1)))
                                  (_%target117104117155%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117899117900%_
                                      '0))))
                              (if (gx#stx-null? _%tl117106117158%_)
                                  (_%__match117917117918%_
                                   _%e117101117145%_
                                   _%hd117102117149%_
                                   _%tl117103117152%_
                                   _%__splice117899117900%_
                                   _%target117104117155%_
                                   _%tl117106117158%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g117097117138%_)))))
                          (let () (declare (not safe)) (_%g117097117138%_)))))
                  (let () (declare (not safe)) (_%g117097117138%_))))))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx117229%_)
        (let* ((_%__stx117920117921%_ _%$stx117229%_)
               (_%g117234117255%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx117920117921%_))))
          (let ((_%__kont117923117924%_
                 (lambda (_%g117236117320%_)
                   (cons (gx#datum->syntax
                          |[1]#_g118016_|
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
                                     (cons (let ((__tmp118017
                                                  (lambda (_%g117335117338%_
                                                           _%g117336117341%_)
                                                    (cons _%g117335117338%_
                                                          _%g117336117341%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp118017
                                              '()
                                              _%g117236117320%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g118019_|
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
                (_%__kont117927117928%_
                 (lambda (_%g117249117262%_)
                   (gx#datum->syntax '#f 'display-build-manifest))))
            (let* ((_%g117233117273%_
                    (lambda ()
                      (let ((_%g117249117262%_ _%__stx117920117921%_))
                        (if (gx#identifier? _%g117249117262%_)
                            (_%__kont117927117928%_ _%g117249117262%_)
                            (let ()
                              (declare (not safe))
                              (_%g117234117255%_))))))
                   (_%__match117943117944%_
                    (lambda (_%e117237117280%_
                             _%hd117238117284%_
                             _%tl117239117287%_
                             _%__splice117925117926%_
                             _%target117240117290%_
                             _%tl117242117293%_)
                      (letrec ((_%loop117243117296%_
                                (lambda (_%hd117241117300%_
                                         _%arg117247117303%_)
                                  (if (gx#stx-pair? _%hd117241117300%_)
                                      (let ((_%e117244117306%_
                                             (gx#syntax-e _%hd117241117300%_)))
                                        (let ((_%lp-tl117246117313%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e117244117306%_)))
                                              (_%lp-hd117245117310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e117244117306%_))))
                                          (_%loop117243117296%_
                                           _%lp-tl117246117313%_
                                           (cons _%lp-hd117245117310%_
                                                 _%arg117247117303%_))))
                                      (let ((_%arg117248117316%_
                                             (reverse _%arg117247117303%_)))
                                        (_%__kont117923117924%_
                                         _%arg117248117316%_))))))
                        (_%loop117243117296%_ _%target117240117290%_ '())))))
              (if (gx#stx-pair? _%__stx117920117921%_)
                  (let ((_%e117237117280%_
                         (gx#syntax-e _%__stx117920117921%_)))
                    (let ((_%tl117239117287%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e117237117280%_)))
                          (_%hd117238117284%_
                           (let ()
                             (declare (not safe))
                             (##car _%e117237117280%_))))
                      (if (gx#stx-pair/null? _%tl117239117287%_)
                          (let ((_%__splice117925117926%_
                                 (gx#syntax-split-splice->vector
                                  _%tl117239117287%_
                                  '0)))
                            (let ((_%tl117242117293%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117925117926%_
                                      '1)))
                                  (_%target117240117290%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117925117926%_
                                      '0))))
                              (if (gx#stx-null? _%tl117242117293%_)
                                  (_%__match117943117944%_
                                   _%e117237117280%_
                                   _%hd117238117284%_
                                   _%tl117239117287%_
                                   _%__splice117925117926%_
                                   _%target117240117290%_
                                   _%tl117242117293%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g117233117273%_)))))
                          (let () (declare (not safe)) (_%g117233117273%_)))))
                  (let () (declare (not safe)) (_%g117233117273%_))))))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx117390%_)
        (let* ((_%__stx117946117947%_ _%$stx117390%_)
               (_%g117395117416%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx117946117947%_))))
          (let ((_%__kont117949117950%_
                 (lambda (_%g117397117481%_)
                   (cons (gx#datum->syntax
                          |[1]#_g118021_|
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
                                     (cons (let ((__tmp118022
                                                  (lambda (_%g117496117499%_
                                                           _%g117497117502%_)
                                                    (cons _%g117496117499%_
                                                          _%g117497117502%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp118022
                                              '()
                                              _%g117397117481%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g118024_|
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
                (_%__kont117953117954%_
                 (lambda (_%g117410117423%_)
                   (gx#datum->syntax '#f 'build-manifest-string))))
            (let* ((_%g117394117434%_
                    (lambda ()
                      (let ((_%g117410117423%_ _%__stx117946117947%_))
                        (if (gx#identifier? _%g117410117423%_)
                            (_%__kont117953117954%_ _%g117410117423%_)
                            (let ()
                              (declare (not safe))
                              (_%g117395117416%_))))))
                   (_%__match117969117970%_
                    (lambda (_%e117398117441%_
                             _%hd117399117445%_
                             _%tl117400117448%_
                             _%__splice117951117952%_
                             _%target117401117451%_
                             _%tl117403117454%_)
                      (letrec ((_%loop117404117457%_
                                (lambda (_%hd117402117461%_
                                         _%arg117408117464%_)
                                  (if (gx#stx-pair? _%hd117402117461%_)
                                      (let ((_%e117405117467%_
                                             (gx#syntax-e _%hd117402117461%_)))
                                        (let ((_%lp-tl117407117474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e117405117467%_)))
                                              (_%lp-hd117406117471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e117405117467%_))))
                                          (_%loop117404117457%_
                                           _%lp-tl117407117474%_
                                           (cons _%lp-hd117406117471%_
                                                 _%arg117408117464%_))))
                                      (let ((_%arg117409117477%_
                                             (reverse _%arg117408117464%_)))
                                        (_%__kont117949117950%_
                                         _%arg117409117477%_))))))
                        (_%loop117404117457%_ _%target117401117451%_ '())))))
              (if (gx#stx-pair? _%__stx117946117947%_)
                  (let ((_%e117398117441%_
                         (gx#syntax-e _%__stx117946117947%_)))
                    (let ((_%tl117400117448%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e117398117441%_)))
                          (_%hd117399117445%_
                           (let ()
                             (declare (not safe))
                             (##car _%e117398117441%_))))
                      (if (gx#stx-pair/null? _%tl117400117448%_)
                          (let ((_%__splice117951117952%_
                                 (gx#syntax-split-splice->vector
                                  _%tl117400117448%_
                                  '0)))
                            (let ((_%tl117403117454%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117951117952%_
                                      '1)))
                                  (_%target117401117451%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117951117952%_
                                      '0))))
                              (if (gx#stx-null? _%tl117403117454%_)
                                  (_%__match117969117970%_
                                   _%e117398117441%_
                                   _%hd117399117445%_
                                   _%tl117400117448%_
                                   _%__splice117951117952%_
                                   _%target117401117451%_
                                   _%tl117403117454%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g117394117434%_)))))
                          (let () (declare (not safe)) (_%g117394117434%_)))))
                  (let () (declare (not safe)) (_%g117394117434%_))))))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx117533%_)
        (let* ((_%__stx117972117973%_ _%$stx117533%_)
               (_%g117538117559%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx117972117973%_))))
          (let ((_%__kont117975117976%_
                 (lambda (_%g117540117624%_)
                   (cons (gx#datum->syntax
                          |[1]#_g118026_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g118028_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp118029
                                                  (lambda (_%g117639117642%_
                                                           _%g117640117645%_)
                                                    (cons _%g117639117642%_
                                                          _%g117640117645%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp118029
                                              '()
                                              _%g117540117624%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g118031_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g118028_|
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
                            |[1]#_g118028_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont117979117980%_
                 (lambda (_%g117553117566%_)
                   (gx#datum->syntax '#f 'gerbil-greeting-set!))))
            (let* ((_%g117537117577%_
                    (lambda ()
                      (let ((_%g117553117566%_ _%__stx117972117973%_))
                        (if (gx#identifier? _%g117553117566%_)
                            (_%__kont117979117980%_ _%g117553117566%_)
                            (let ()
                              (declare (not safe))
                              (_%g117538117559%_))))))
                   (_%__match117995117996%_
                    (lambda (_%e117541117584%_
                             _%hd117542117588%_
                             _%tl117543117591%_
                             _%__splice117977117978%_
                             _%target117544117594%_
                             _%tl117546117597%_)
                      (letrec ((_%loop117547117600%_
                                (lambda (_%hd117545117604%_
                                         _%arg117551117607%_)
                                  (if (gx#stx-pair? _%hd117545117604%_)
                                      (let ((_%e117548117610%_
                                             (gx#syntax-e _%hd117545117604%_)))
                                        (let ((_%lp-tl117550117617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e117548117610%_)))
                                              (_%lp-hd117549117614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e117548117610%_))))
                                          (_%loop117547117600%_
                                           _%lp-tl117550117617%_
                                           (cons _%lp-hd117549117614%_
                                                 _%arg117551117607%_))))
                                      (let ((_%arg117552117620%_
                                             (reverse _%arg117551117607%_)))
                                        (_%__kont117975117976%_
                                         _%arg117552117620%_))))))
                        (_%loop117547117600%_ _%target117544117594%_ '())))))
              (if (gx#stx-pair? _%__stx117972117973%_)
                  (let ((_%e117541117584%_
                         (gx#syntax-e _%__stx117972117973%_)))
                    (let ((_%tl117543117591%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e117541117584%_)))
                          (_%hd117542117588%_
                           (let ()
                             (declare (not safe))
                             (##car _%e117541117584%_))))
                      (if (gx#stx-pair/null? _%tl117543117591%_)
                          (let ((_%__splice117977117978%_
                                 (gx#syntax-split-splice->vector
                                  _%tl117543117591%_
                                  '0)))
                            (let ((_%tl117546117597%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117977117978%_
                                      '1)))
                                  (_%target117544117594%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice117977117978%_
                                      '0))))
                              (if (gx#stx-null? _%tl117546117597%_)
                                  (_%__match117995117996%_
                                   _%e117541117584%_
                                   _%hd117542117588%_
                                   _%tl117543117591%_
                                   _%__splice117977117978%_
                                   _%target117544117594%_
                                   _%tl117546117597%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g117537117577%_)))))
                          (let () (declare (not safe)) (_%g117537117577%_)))))
                  (let () (declare (not safe)) (_%g117537117577%_))))))))))
