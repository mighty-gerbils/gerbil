(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g176336_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id175175%_)
       ($%arg175150 . _%$%arg175150175208%_)
       ($%arg175151 . _%$%arg175151175222%_)
       (arg . _%arg175238%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g176337_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g176336_|)))
  (define |[1]#_g176339_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g176340_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g176339_|)))
  (define |[1]#_g176341_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id175295%_)
       ($%arg175271 . _%$%arg175271175328%_)
       ($%arg175272 . _%$%arg175272175342%_)
       (arg . _%arg175358%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g176342_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g176341_|)))
  (define |[1]#_g176344_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g176345_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g176344_|)))
  (define |[1]#_g176346_|
    (gx#core-deserialize-mark
     '(0
       ($%arg175391 . _%$%arg175391175448%_)
       (id . _%id175415%_)
       ($%arg175392 . _%$%arg175392175462%_)
       (arg . _%arg175478%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g176347_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g176346_|)))
  (define |[1]#_g176349_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g176350_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g176349_|)))
  (define |[1]#_g176351_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg175598%_)
       (id . _%id175535%_)
       ($%arg175512 . _%$%arg175512175582%_)
       ($%arg175511 . _%$%arg175511175568%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g176352_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g176351_|)))
  (define |[1]#_g176354_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g176355_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g176354_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx175132%_)
        (let* ((_%__stx176227176228%_ _%$stx175132%_)
               (_%$%g175137175158%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx176227176228%_))))
          (let ((_%__kont176230176231%_
                 (lambda (_%$%g175139175224%_)
                   (cons (gx#datum->syntax
                          |[1]#_g176337_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp176338
                                                  (lambda (_%$%g175239175242%_
                                                           _%$%g175240175245%_)
                                                    (cons _%$%g175239175242%_
                                                          _%$%g175240175245%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp176338
                                              '()
                                              _%$%g175139175224%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g176340_|
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
                (_%__kont176234176235%_
                 (lambda (_%$%g175152175165%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%$%g175136175177%_
                    (lambda ()
                      (let ((_%$%g175152175165%_ _%__stx176227176228%_))
                        (if (gx#identifier? _%$%g175152175165%_)
                            (_%__kont176234176235%_ _%$%g175152175165%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g175137175158%_))))))
                   (_%__match176250176251%_
                    (lambda (_%$%e175140175184%_
                             _%$%hd175141175188%_
                             _%$%tl175142175191%_
                             _%__splice176232176233%_
                             _%$%target175143175194%_
                             _%$%tl175145175197%_)
                      (letrec ((_%$%loop175146175200%_
                                (lambda (_%$%hd175144175204%_
                                         _%$%arg175150175207%_)
                                  (if (gx#stx-pair? _%$%hd175144175204%_)
                                      (let ((_%$%e175147175210%_
                                             (gx#syntax-e
                                              _%$%hd175144175204%_)))
                                        (let ((_%$%lp-tl175149175217%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e175147175210%_)))
                                              (_%$%lp-hd175148175214%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e175147175210%_))))
                                          (_%$%loop175146175200%_
                                           _%$%lp-tl175149175217%_
                                           (cons _%$%lp-hd175148175214%_
                                                 _%$%arg175150175207%_))))
                                      (let ((_%$%arg175151175220%_
                                             (reverse _%$%arg175150175207%_)))
                                        (_%__kont176230176231%_
                                         _%$%arg175151175220%_))))))
                        (_%$%loop175146175200%_
                         _%$%target175143175194%_
                         '())))))
              (if (gx#stx-pair? _%__stx176227176228%_)
                  (let ((_%$%e175140175184%_
                         (gx#syntax-e _%__stx176227176228%_)))
                    (let ((_%$%tl175142175191%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e175140175184%_)))
                          (_%$%hd175141175188%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e175140175184%_))))
                      (if (gx#stx-pair/null? _%$%tl175142175191%_)
                          (let ((_%__splice176232176233%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl175142175191%_
                                  '0)))
                            (let ((_%$%tl175145175197%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice176232176233%_
                                      '1)))
                                  (_%$%target175143175194%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice176232176233%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl175145175197%_)
                                  (_%__match176250176251%_
                                   _%$%e175140175184%_
                                   _%$%hd175141175188%_
                                   _%$%tl175142175191%_
                                   _%__splice176232176233%_
                                   _%$%target175143175194%_
                                   _%$%tl175145175197%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g175136175177%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g175136175177%_)))))
                  (let () (declare (not safe)) (_%$%g175136175177%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx175253%_)
        (let* ((_%__stx176253176254%_ _%$stx175253%_)
               (_%$%g175258175279%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx176253176254%_))))
          (let ((_%__kont176256176257%_
                 (lambda (_%$%g175260175344%_)
                   (cons (gx#datum->syntax
                          |[1]#_g176342_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp176343
                                                  (lambda (_%$%g175359175362%_
                                                           _%$%g175360175365%_)
                                                    (cons _%$%g175359175362%_
                                                          _%$%g175360175365%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp176343
                                              '()
                                              _%$%g175260175344%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g176345_|
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
                (_%__kont176260176261%_
                 (lambda (_%$%g175273175286%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%$%g175257175297%_
                    (lambda ()
                      (let ((_%$%g175273175286%_ _%__stx176253176254%_))
                        (if (gx#identifier? _%$%g175273175286%_)
                            (_%__kont176260176261%_ _%$%g175273175286%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g175258175279%_))))))
                   (_%__match176276176277%_
                    (lambda (_%$%e175261175304%_
                             _%$%hd175262175308%_
                             _%$%tl175263175311%_
                             _%__splice176258176259%_
                             _%$%target175264175314%_
                             _%$%tl175266175317%_)
                      (letrec ((_%$%loop175267175320%_
                                (lambda (_%$%hd175265175324%_
                                         _%$%arg175271175327%_)
                                  (if (gx#stx-pair? _%$%hd175265175324%_)
                                      (let ((_%$%e175268175330%_
                                             (gx#syntax-e
                                              _%$%hd175265175324%_)))
                                        (let ((_%$%lp-tl175270175337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e175268175330%_)))
                                              (_%$%lp-hd175269175334%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e175268175330%_))))
                                          (_%$%loop175267175320%_
                                           _%$%lp-tl175270175337%_
                                           (cons _%$%lp-hd175269175334%_
                                                 _%$%arg175271175327%_))))
                                      (let ((_%$%arg175272175340%_
                                             (reverse _%$%arg175271175327%_)))
                                        (_%__kont176256176257%_
                                         _%$%arg175272175340%_))))))
                        (_%$%loop175267175320%_
                         _%$%target175264175314%_
                         '())))))
              (if (gx#stx-pair? _%__stx176253176254%_)
                  (let ((_%$%e175261175304%_
                         (gx#syntax-e _%__stx176253176254%_)))
                    (let ((_%$%tl175263175311%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e175261175304%_)))
                          (_%$%hd175262175308%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e175261175304%_))))
                      (if (gx#stx-pair/null? _%$%tl175263175311%_)
                          (let ((_%__splice176258176259%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl175263175311%_
                                  '0)))
                            (let ((_%$%tl175266175317%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice176258176259%_
                                      '1)))
                                  (_%$%target175264175314%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice176258176259%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl175266175317%_)
                                  (_%__match176276176277%_
                                   _%$%e175261175304%_
                                   _%$%hd175262175308%_
                                   _%$%tl175263175311%_
                                   _%__splice176258176259%_
                                   _%$%target175264175314%_
                                   _%$%tl175266175317%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g175257175297%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g175257175297%_)))))
                  (let () (declare (not safe)) (_%$%g175257175297%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx175373%_)
        (let* ((_%__stx176279176280%_ _%$stx175373%_)
               (_%$%g175378175399%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx176279176280%_))))
          (let ((_%__kont176282176283%_
                 (lambda (_%$%g175380175464%_)
                   (cons (gx#datum->syntax
                          |[1]#_g176347_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp176348
                                                  (lambda (_%$%g175479175482%_
                                                           _%$%g175480175485%_)
                                                    (cons _%$%g175479175482%_
                                                          _%$%g175480175485%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp176348
                                              '()
                                              _%$%g175380175464%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g176350_|
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
                (_%__kont176286176287%_
                 (lambda (_%$%g175393175406%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%$%g175377175417%_
                    (lambda ()
                      (let ((_%$%g175393175406%_ _%__stx176279176280%_))
                        (if (gx#identifier? _%$%g175393175406%_)
                            (_%__kont176286176287%_ _%$%g175393175406%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g175378175399%_))))))
                   (_%__match176302176303%_
                    (lambda (_%$%e175381175424%_
                             _%$%hd175382175428%_
                             _%$%tl175383175431%_
                             _%__splice176284176285%_
                             _%$%target175384175434%_
                             _%$%tl175386175437%_)
                      (letrec ((_%$%loop175387175440%_
                                (lambda (_%$%hd175385175444%_
                                         _%$%arg175391175447%_)
                                  (if (gx#stx-pair? _%$%hd175385175444%_)
                                      (let ((_%$%e175388175450%_
                                             (gx#syntax-e
                                              _%$%hd175385175444%_)))
                                        (let ((_%$%lp-tl175390175457%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e175388175450%_)))
                                              (_%$%lp-hd175389175454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e175388175450%_))))
                                          (_%$%loop175387175440%_
                                           _%$%lp-tl175390175457%_
                                           (cons _%$%lp-hd175389175454%_
                                                 _%$%arg175391175447%_))))
                                      (let ((_%$%arg175392175460%_
                                             (reverse _%$%arg175391175447%_)))
                                        (_%__kont176282176283%_
                                         _%$%arg175392175460%_))))))
                        (_%$%loop175387175440%_
                         _%$%target175384175434%_
                         '())))))
              (if (gx#stx-pair? _%__stx176279176280%_)
                  (let ((_%$%e175381175424%_
                         (gx#syntax-e _%__stx176279176280%_)))
                    (let ((_%$%tl175383175431%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e175381175424%_)))
                          (_%$%hd175382175428%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e175381175424%_))))
                      (if (gx#stx-pair/null? _%$%tl175383175431%_)
                          (let ((_%__splice176284176285%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl175383175431%_
                                  '0)))
                            (let ((_%$%tl175386175437%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice176284176285%_
                                      '1)))
                                  (_%$%target175384175434%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice176284176285%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl175386175437%_)
                                  (_%__match176302176303%_
                                   _%$%e175381175424%_
                                   _%$%hd175382175428%_
                                   _%$%tl175383175431%_
                                   _%__splice176284176285%_
                                   _%$%target175384175434%_
                                   _%$%tl175386175437%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g175377175417%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g175377175417%_)))))
                  (let () (declare (not safe)) (_%$%g175377175417%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx175493%_)
        (let* ((_%__stx176305176306%_ _%$stx175493%_)
               (_%$%g175498175519%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx176305176306%_))))
          (let ((_%__kont176308176309%_
                 (lambda (_%$%g175500175584%_)
                   (cons (gx#datum->syntax
                          |[1]#_g176352_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp176353
                                                  (lambda (_%$%g175599175602%_
                                                           _%$%g175600175605%_)
                                                    (cons _%$%g175599175602%_
                                                          _%$%g175600175605%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp176353
                                              '()
                                              _%$%g175500175584%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g176355_|
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
                (_%__kont176312176313%_
                 (lambda (_%$%g175513175526%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%$%g175497175537%_
                    (lambda ()
                      (let ((_%$%g175513175526%_ _%__stx176305176306%_))
                        (if (gx#identifier? _%$%g175513175526%_)
                            (_%__kont176312176313%_ _%$%g175513175526%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g175498175519%_))))))
                   (_%__match176328176329%_
                    (lambda (_%$%e175501175544%_
                             _%$%hd175502175548%_
                             _%$%tl175503175551%_
                             _%__splice176310176311%_
                             _%$%target175504175554%_
                             _%$%tl175506175557%_)
                      (letrec ((_%$%loop175507175560%_
                                (lambda (_%$%hd175505175564%_
                                         _%$%arg175511175567%_)
                                  (if (gx#stx-pair? _%$%hd175505175564%_)
                                      (let ((_%$%e175508175570%_
                                             (gx#syntax-e
                                              _%$%hd175505175564%_)))
                                        (let ((_%$%lp-tl175510175577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e175508175570%_)))
                                              (_%$%lp-hd175509175574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e175508175570%_))))
                                          (_%$%loop175507175560%_
                                           _%$%lp-tl175510175577%_
                                           (cons _%$%lp-hd175509175574%_
                                                 _%$%arg175511175567%_))))
                                      (let ((_%$%arg175512175580%_
                                             (reverse _%$%arg175511175567%_)))
                                        (_%__kont176308176309%_
                                         _%$%arg175512175580%_))))))
                        (_%$%loop175507175560%_
                         _%$%target175504175554%_
                         '())))))
              (if (gx#stx-pair? _%__stx176305176306%_)
                  (let ((_%$%e175501175544%_
                         (gx#syntax-e _%__stx176305176306%_)))
                    (let ((_%$%tl175503175551%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e175501175544%_)))
                          (_%$%hd175502175548%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e175501175544%_))))
                      (if (gx#stx-pair/null? _%$%tl175503175551%_)
                          (let ((_%__splice176310176311%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl175503175551%_
                                  '0)))
                            (let ((_%$%tl175506175557%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice176310176311%_
                                      '1)))
                                  (_%$%target175504175554%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice176310176311%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl175506175557%_)
                                  (_%__match176328176329%_
                                   _%$%e175501175544%_
                                   _%$%hd175502175548%_
                                   _%$%tl175503175551%_
                                   _%__splice176310176311%_
                                   _%$%target175504175554%_
                                   _%$%tl175506175557%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g175497175537%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g175497175537%_)))))
                  (let () (declare (not safe)) (_%$%g175497175537%_))))))))))
