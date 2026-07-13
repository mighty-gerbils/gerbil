(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g124247_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg123438%_)
       ($%arg123351 . _%$%arg123351123422%_)
       (id . _%id123375%_)
       ($%arg123350 . _%$%arg123350123408%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g124248_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g124247_|)))
  (define |[1]#_g124249_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value124105%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g124250_|
    (##structure
     gx#syntax-quote::t
     '_%new-value124105%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g124249_|)))
  (define |[1]#_g124252_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g124253_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g124252_|)))
  (define |[1]#_g124254_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg123558%_)
       (id . _%id123495%_)
       ($%arg123471 . _%$%arg123471123528%_)
       ($%arg123472 . _%$%arg123472123542%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g124255_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g124254_|)))
  (define |[1]#_g124257_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g124258_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g124257_|)))
  (define |[1]#_g124259_|
    (gx#core-deserialize-mark
     '(0
       ($%arg123591 . _%$%arg123591123648%_)
       (arg . _%arg123678%_)
       (id . _%id123615%_)
       ($%arg123592 . _%$%arg123592123662%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g124260_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g124259_|)))
  (define |[1]#_g124262_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g124263_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g124262_|)))
  (define |[1]#_g124264_|
    (gx#core-deserialize-mark
     '(0
       ($%arg123712 . _%$%arg123712123782%_)
       (arg . _%arg123798%_)
       ($%arg123711 . _%$%arg123711123768%_)
       (id . _%id123735%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g124265_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g124264_|)))
  (define |[1]#_g124266_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value123855%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g124267_|
    (##structure
     gx#syntax-quote::t
     '_%new-value123855%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g124266_|)))
  (define |[1]#_g124269_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g124270_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g124269_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx123332%_)
        (let* ((_%__stx124133124134%_ _%$stx123332%_)
               (_%$%g123337123358%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx124133124134%_))))
          (let ((_%__kont124136124137%_
                 (lambda (_%$%g123339123424%_)
                   (cons (gx#datum->syntax
                          |[1]#_g124248_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g124250_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp124251
                                                  (lambda (_%$%g123439123442%_
                                                           _%$%g123440123445%_)
                                                    (cons _%$%g123439123442%_
                                                          _%$%g123440123445%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp124251
                                              '()
                                              _%$%g123339123424%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g124253_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g124250_|
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
                            |[1]#_g124250_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont124140124141%_
                 (lambda (_%$%g123352123365%_)
                   (gx#datum->syntax '#f 'build-manifest-set!))))
            (let* ((_%$%g123336123377%_
                    (lambda ()
                      (let ((_%$%g123352123365%_ _%__stx124133124134%_))
                        (if (gx#identifier? _%$%g123352123365%_)
                            (_%__kont124140124141%_ _%$%g123352123365%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g123337123358%_))))))
                   (_%__match124156124157%_
                    (lambda (_%$%e123340123384%_
                             _%$%hd123341123388%_
                             _%$%tl123342123391%_
                             _%__splice124138124139%_
                             _%$%target123343123394%_
                             _%$%tl123345123397%_)
                      (letrec ((_%$%loop123346123400%_
                                (lambda (_%$%hd123344123404%_
                                         _%$%arg123350123407%_)
                                  (if (gx#stx-pair? _%$%hd123344123404%_)
                                      (let ((_%$%e123347123410%_
                                             (gx#syntax-e
                                              _%$%hd123344123404%_)))
                                        (let ((_%$%lp-tl123349123417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e123347123410%_)))
                                              (_%$%lp-hd123348123414%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e123347123410%_))))
                                          (_%$%loop123346123400%_
                                           _%$%lp-tl123349123417%_
                                           (cons _%$%lp-hd123348123414%_
                                                 _%$%arg123350123407%_))))
                                      (let ((_%$%arg123351123420%_
                                             (reverse _%$%arg123350123407%_)))
                                        (_%__kont124136124137%_
                                         _%$%arg123351123420%_))))))
                        (_%$%loop123346123400%_
                         _%$%target123343123394%_
                         '())))))
              (if (gx#stx-pair? _%__stx124133124134%_)
                  (let ((_%$%e123340123384%_
                         (gx#syntax-e _%__stx124133124134%_)))
                    (let ((_%$%tl123342123391%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e123340123384%_)))
                          (_%$%hd123341123388%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e123340123384%_))))
                      (if (gx#stx-pair/null? _%$%tl123342123391%_)
                          (let ((_%__splice124138124139%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl123342123391%_
                                  '0)))
                            (let ((_%$%tl123345123397%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice124138124139%_
                                      '1)))
                                  (_%$%target123343123394%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice124138124139%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl123345123397%_)
                                  (_%__match124156124157%_
                                   _%$%e123340123384%_
                                   _%$%hd123341123388%_
                                   _%$%tl123342123391%_
                                   _%__splice124138124139%_
                                   _%$%target123343123394%_
                                   _%$%tl123345123397%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g123336123377%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g123336123377%_)))))
                  (let () (declare (not safe)) (_%$%g123336123377%_))))))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx123453%_)
        (let* ((_%__stx124159124160%_ _%$stx123453%_)
               (_%$%g123458123479%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx124159124160%_))))
          (let ((_%__kont124162124163%_
                 (lambda (_%$%g123460123544%_)
                   (cons (gx#datum->syntax
                          |[1]#_g124255_|
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
                                     (cons (let ((__tmp124256
                                                  (lambda (_%$%g123559123562%_
                                                           _%$%g123560123565%_)
                                                    (cons _%$%g123559123562%_
                                                          _%$%g123560123565%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp124256
                                              '()
                                              _%$%g123460123544%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g124258_|
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
                (_%__kont124166124167%_
                 (lambda (_%$%g123473123486%_)
                   (gx#datum->syntax '#f 'display-build-manifest))))
            (let* ((_%$%g123457123497%_
                    (lambda ()
                      (let ((_%$%g123473123486%_ _%__stx124159124160%_))
                        (if (gx#identifier? _%$%g123473123486%_)
                            (_%__kont124166124167%_ _%$%g123473123486%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g123458123479%_))))))
                   (_%__match124182124183%_
                    (lambda (_%$%e123461123504%_
                             _%$%hd123462123508%_
                             _%$%tl123463123511%_
                             _%__splice124164124165%_
                             _%$%target123464123514%_
                             _%$%tl123466123517%_)
                      (letrec ((_%$%loop123467123520%_
                                (lambda (_%$%hd123465123524%_
                                         _%$%arg123471123527%_)
                                  (if (gx#stx-pair? _%$%hd123465123524%_)
                                      (let ((_%$%e123468123530%_
                                             (gx#syntax-e
                                              _%$%hd123465123524%_)))
                                        (let ((_%$%lp-tl123470123537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e123468123530%_)))
                                              (_%$%lp-hd123469123534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e123468123530%_))))
                                          (_%$%loop123467123520%_
                                           _%$%lp-tl123470123537%_
                                           (cons _%$%lp-hd123469123534%_
                                                 _%$%arg123471123527%_))))
                                      (let ((_%$%arg123472123540%_
                                             (reverse _%$%arg123471123527%_)))
                                        (_%__kont124162124163%_
                                         _%$%arg123472123540%_))))))
                        (_%$%loop123467123520%_
                         _%$%target123464123514%_
                         '())))))
              (if (gx#stx-pair? _%__stx124159124160%_)
                  (let ((_%$%e123461123504%_
                         (gx#syntax-e _%__stx124159124160%_)))
                    (let ((_%$%tl123463123511%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e123461123504%_)))
                          (_%$%hd123462123508%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e123461123504%_))))
                      (if (gx#stx-pair/null? _%$%tl123463123511%_)
                          (let ((_%__splice124164124165%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl123463123511%_
                                  '0)))
                            (let ((_%$%tl123466123517%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice124164124165%_
                                      '1)))
                                  (_%$%target123464123514%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice124164124165%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl123466123517%_)
                                  (_%__match124182124183%_
                                   _%$%e123461123504%_
                                   _%$%hd123462123508%_
                                   _%$%tl123463123511%_
                                   _%__splice124164124165%_
                                   _%$%target123464123514%_
                                   _%$%tl123466123517%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g123457123497%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g123457123497%_)))))
                  (let () (declare (not safe)) (_%$%g123457123497%_))))))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx123573%_)
        (let* ((_%__stx124185124186%_ _%$stx123573%_)
               (_%$%g123578123599%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx124185124186%_))))
          (let ((_%__kont124188124189%_
                 (lambda (_%$%g123580123664%_)
                   (cons (gx#datum->syntax
                          |[1]#_g124260_|
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
                                     (cons (let ((__tmp124261
                                                  (lambda (_%$%g123679123682%_
                                                           _%$%g123680123685%_)
                                                    (cons _%$%g123679123682%_
                                                          _%$%g123680123685%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp124261
                                              '()
                                              _%$%g123580123664%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g124263_|
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
                (_%__kont124192124193%_
                 (lambda (_%$%g123593123606%_)
                   (gx#datum->syntax '#f 'build-manifest-string))))
            (let* ((_%$%g123577123617%_
                    (lambda ()
                      (let ((_%$%g123593123606%_ _%__stx124185124186%_))
                        (if (gx#identifier? _%$%g123593123606%_)
                            (_%__kont124192124193%_ _%$%g123593123606%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g123578123599%_))))))
                   (_%__match124208124209%_
                    (lambda (_%$%e123581123624%_
                             _%$%hd123582123628%_
                             _%$%tl123583123631%_
                             _%__splice124190124191%_
                             _%$%target123584123634%_
                             _%$%tl123586123637%_)
                      (letrec ((_%$%loop123587123640%_
                                (lambda (_%$%hd123585123644%_
                                         _%$%arg123591123647%_)
                                  (if (gx#stx-pair? _%$%hd123585123644%_)
                                      (let ((_%$%e123588123650%_
                                             (gx#syntax-e
                                              _%$%hd123585123644%_)))
                                        (let ((_%$%lp-tl123590123657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e123588123650%_)))
                                              (_%$%lp-hd123589123654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e123588123650%_))))
                                          (_%$%loop123587123640%_
                                           _%$%lp-tl123590123657%_
                                           (cons _%$%lp-hd123589123654%_
                                                 _%$%arg123591123647%_))))
                                      (let ((_%$%arg123592123660%_
                                             (reverse _%$%arg123591123647%_)))
                                        (_%__kont124188124189%_
                                         _%$%arg123592123660%_))))))
                        (_%$%loop123587123640%_
                         _%$%target123584123634%_
                         '())))))
              (if (gx#stx-pair? _%__stx124185124186%_)
                  (let ((_%$%e123581123624%_
                         (gx#syntax-e _%__stx124185124186%_)))
                    (let ((_%$%tl123583123631%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e123581123624%_)))
                          (_%$%hd123582123628%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e123581123624%_))))
                      (if (gx#stx-pair/null? _%$%tl123583123631%_)
                          (let ((_%__splice124190124191%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl123583123631%_
                                  '0)))
                            (let ((_%$%tl123586123637%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice124190124191%_
                                      '1)))
                                  (_%$%target123584123634%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice124190124191%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl123586123637%_)
                                  (_%__match124208124209%_
                                   _%$%e123581123624%_
                                   _%$%hd123582123628%_
                                   _%$%tl123583123631%_
                                   _%__splice124190124191%_
                                   _%$%target123584123634%_
                                   _%$%tl123586123637%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g123577123617%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g123577123617%_)))))
                  (let () (declare (not safe)) (_%$%g123577123617%_))))))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx123693%_)
        (let* ((_%__stx124211124212%_ _%$stx123693%_)
               (_%$%g123698123719%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx124211124212%_))))
          (let ((_%__kont124214124215%_
                 (lambda (_%$%g123700123784%_)
                   (cons (gx#datum->syntax
                          |[1]#_g124265_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g124267_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp124268
                                                  (lambda (_%$%g123799123802%_
                                                           _%$%g123800123805%_)
                                                    (cons _%$%g123799123802%_
                                                          _%$%g123800123805%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp124268
                                              '()
                                              _%$%g123700123784%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g124270_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g124267_|
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
                            |[1]#_g124267_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont124218124219%_
                 (lambda (_%$%g123713123726%_)
                   (gx#datum->syntax '#f 'gerbil-greeting-set!))))
            (let* ((_%$%g123697123737%_
                    (lambda ()
                      (let ((_%$%g123713123726%_ _%__stx124211124212%_))
                        (if (gx#identifier? _%$%g123713123726%_)
                            (_%__kont124218124219%_ _%$%g123713123726%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g123698123719%_))))))
                   (_%__match124234124235%_
                    (lambda (_%$%e123701123744%_
                             _%$%hd123702123748%_
                             _%$%tl123703123751%_
                             _%__splice124216124217%_
                             _%$%target123704123754%_
                             _%$%tl123706123757%_)
                      (letrec ((_%$%loop123707123760%_
                                (lambda (_%$%hd123705123764%_
                                         _%$%arg123711123767%_)
                                  (if (gx#stx-pair? _%$%hd123705123764%_)
                                      (let ((_%$%e123708123770%_
                                             (gx#syntax-e
                                              _%$%hd123705123764%_)))
                                        (let ((_%$%lp-tl123710123777%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e123708123770%_)))
                                              (_%$%lp-hd123709123774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e123708123770%_))))
                                          (_%$%loop123707123760%_
                                           _%$%lp-tl123710123777%_
                                           (cons _%$%lp-hd123709123774%_
                                                 _%$%arg123711123767%_))))
                                      (let ((_%$%arg123712123780%_
                                             (reverse _%$%arg123711123767%_)))
                                        (_%__kont124214124215%_
                                         _%$%arg123712123780%_))))))
                        (_%$%loop123707123760%_
                         _%$%target123704123754%_
                         '())))))
              (if (gx#stx-pair? _%__stx124211124212%_)
                  (let ((_%$%e123701123744%_
                         (gx#syntax-e _%__stx124211124212%_)))
                    (let ((_%$%tl123703123751%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e123701123744%_)))
                          (_%$%hd123702123748%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e123701123744%_))))
                      (if (gx#stx-pair/null? _%$%tl123703123751%_)
                          (let ((_%__splice124216124217%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl123703123751%_
                                  '0)))
                            (let ((_%$%tl123706123757%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice124216124217%_
                                      '1)))
                                  (_%$%target123704123754%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice124216124217%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl123706123757%_)
                                  (_%__match124234124235%_
                                   _%$%e123701123744%_
                                   _%$%hd123702123748%_
                                   _%$%tl123703123751%_
                                   _%__splice124216124217%_
                                   _%$%target123704123754%_
                                   _%$%tl123706123757%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g123697123737%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g123697123737%_)))))
                  (let () (declare (not safe)) (_%$%g123697123737%_))))))))))
