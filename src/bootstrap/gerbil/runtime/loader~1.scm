(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g179261_|
    (gx#core-deserialize-mark
     '(0
       ($%arg178076 . _%$%arg178076178147%_)
       (id . _%id178100%_)
       ($%arg178075 . _%$%arg178075178133%_)
       (arg . _%arg178163%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g179262_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g179261_|)))
  (define |[1]#_g179264_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g179265_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g179264_|)))
  (define |[1]#_g179266_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id178220%_)
       ($%arg178197 . _%$%arg178197178267%_)
       ($%arg178196 . _%$%arg178196178253%_)
       (arg . _%arg178283%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g179267_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g179266_|)))
  (define |[1]#_g179269_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g179270_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g179269_|)))
  (define |[1]#_g179271_|
    (gx#core-deserialize-mark
     '(0
       ($%arg178317 . _%$%arg178317178387%_)
       (id . _%id178340%_)
       ($%arg178316 . _%$%arg178316178373%_)
       (arg . _%arg178403%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g179272_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g179271_|)))
  (define |[1]#_g179274_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g179275_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g179274_|)))
  (define |[1]#_g179276_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id178460%_)
       ($%arg178436 . _%$%arg178436178493%_)
       ($%arg178437 . _%$%arg178437178507%_)
       (arg . _%arg178523%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g179277_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g179276_|)))
  (define |[1]#_g179279_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g179280_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g179279_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx178057%_)
        (let* ((_%__stx179152179153%_ _%$stx178057%_)
               (_%$%g178062178083%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179152179153%_))))
          (let ((_%__kont179155179156%_
                 (lambda (_%$%g178064178149%_)
                   (cons (gx#datum->syntax
                          |[1]#_g179262_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp179263
                                                  (lambda (_%$%g178164178167%_
                                                           _%$%g178165178170%_)
                                                    (cons _%$%g178164178167%_
                                                          _%$%g178165178170%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp179263
                                              '()
                                              _%$%g178064178149%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g179265_|
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
                (_%__kont179159179160%_
                 (lambda (_%$%g178077178090%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%$%g178061178102%_
                    (lambda ()
                      (let ((_%$%g178077178090%_ _%__stx179152179153%_))
                        (if (gx#identifier? _%$%g178077178090%_)
                            (_%__kont179159179160%_ _%$%g178077178090%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g178062178083%_))))))
                   (_%__match179175179176%_
                    (lambda (_%$%e178065178109%_
                             _%$%hd178066178113%_
                             _%$%tl178067178116%_
                             _%__splice179157179158%_
                             _%$%target178068178119%_
                             _%$%tl178070178122%_)
                      (letrec ((_%$%loop178071178125%_
                                (lambda (_%$%hd178069178129%_
                                         _%$%arg178075178132%_)
                                  (if (gx#stx-pair? _%$%hd178069178129%_)
                                      (let ((_%$%e178072178135%_
                                             (gx#syntax-e
                                              _%$%hd178069178129%_)))
                                        (let ((_%$%lp-tl178074178142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e178072178135%_)))
                                              (_%$%lp-hd178073178139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e178072178135%_))))
                                          (_%$%loop178071178125%_
                                           _%$%lp-tl178074178142%_
                                           (cons _%$%lp-hd178073178139%_
                                                 _%$%arg178075178132%_))))
                                      (let ((_%$%arg178076178145%_
                                             (reverse _%$%arg178075178132%_)))
                                        (_%__kont179155179156%_
                                         _%$%arg178076178145%_))))))
                        (_%$%loop178071178125%_
                         _%$%target178068178119%_
                         '())))))
              (if (gx#stx-pair? _%__stx179152179153%_)
                  (let ((_%$%e178065178109%_
                         (gx#syntax-e _%__stx179152179153%_)))
                    (let ((_%$%tl178067178116%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e178065178109%_)))
                          (_%$%hd178066178113%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e178065178109%_))))
                      (if (gx#stx-pair/null? _%$%tl178067178116%_)
                          (let ((_%__splice179157179158%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl178067178116%_
                                  '0)))
                            (let ((_%$%tl178070178122%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179157179158%_
                                      '1)))
                                  (_%$%target178068178119%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179157179158%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl178070178122%_)
                                  (_%__match179175179176%_
                                   _%$%e178065178109%_
                                   _%$%hd178066178113%_
                                   _%$%tl178067178116%_
                                   _%__splice179157179158%_
                                   _%$%target178068178119%_
                                   _%$%tl178070178122%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g178061178102%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g178061178102%_)))))
                  (let () (declare (not safe)) (_%$%g178061178102%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx178178%_)
        (let* ((_%__stx179178179179%_ _%$stx178178%_)
               (_%$%g178183178204%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179178179179%_))))
          (let ((_%__kont179181179182%_
                 (lambda (_%$%g178185178269%_)
                   (cons (gx#datum->syntax
                          |[1]#_g179267_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp179268
                                                  (lambda (_%$%g178284178287%_
                                                           _%$%g178285178290%_)
                                                    (cons _%$%g178284178287%_
                                                          _%$%g178285178290%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp179268
                                              '()
                                              _%$%g178185178269%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g179270_|
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
                (_%__kont179185179186%_
                 (lambda (_%$%g178198178211%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%$%g178182178222%_
                    (lambda ()
                      (let ((_%$%g178198178211%_ _%__stx179178179179%_))
                        (if (gx#identifier? _%$%g178198178211%_)
                            (_%__kont179185179186%_ _%$%g178198178211%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g178183178204%_))))))
                   (_%__match179201179202%_
                    (lambda (_%$%e178186178229%_
                             _%$%hd178187178233%_
                             _%$%tl178188178236%_
                             _%__splice179183179184%_
                             _%$%target178189178239%_
                             _%$%tl178191178242%_)
                      (letrec ((_%$%loop178192178245%_
                                (lambda (_%$%hd178190178249%_
                                         _%$%arg178196178252%_)
                                  (if (gx#stx-pair? _%$%hd178190178249%_)
                                      (let ((_%$%e178193178255%_
                                             (gx#syntax-e
                                              _%$%hd178190178249%_)))
                                        (let ((_%$%lp-tl178195178262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e178193178255%_)))
                                              (_%$%lp-hd178194178259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e178193178255%_))))
                                          (_%$%loop178192178245%_
                                           _%$%lp-tl178195178262%_
                                           (cons _%$%lp-hd178194178259%_
                                                 _%$%arg178196178252%_))))
                                      (let ((_%$%arg178197178265%_
                                             (reverse _%$%arg178196178252%_)))
                                        (_%__kont179181179182%_
                                         _%$%arg178197178265%_))))))
                        (_%$%loop178192178245%_
                         _%$%target178189178239%_
                         '())))))
              (if (gx#stx-pair? _%__stx179178179179%_)
                  (let ((_%$%e178186178229%_
                         (gx#syntax-e _%__stx179178179179%_)))
                    (let ((_%$%tl178188178236%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e178186178229%_)))
                          (_%$%hd178187178233%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e178186178229%_))))
                      (if (gx#stx-pair/null? _%$%tl178188178236%_)
                          (let ((_%__splice179183179184%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl178188178236%_
                                  '0)))
                            (let ((_%$%tl178191178242%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179183179184%_
                                      '1)))
                                  (_%$%target178189178239%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179183179184%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl178191178242%_)
                                  (_%__match179201179202%_
                                   _%$%e178186178229%_
                                   _%$%hd178187178233%_
                                   _%$%tl178188178236%_
                                   _%__splice179183179184%_
                                   _%$%target178189178239%_
                                   _%$%tl178191178242%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g178182178222%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g178182178222%_)))))
                  (let () (declare (not safe)) (_%$%g178182178222%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx178298%_)
        (let* ((_%__stx179204179205%_ _%$stx178298%_)
               (_%$%g178303178324%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179204179205%_))))
          (let ((_%__kont179207179208%_
                 (lambda (_%$%g178305178389%_)
                   (cons (gx#datum->syntax
                          |[1]#_g179272_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp179273
                                                  (lambda (_%$%g178404178407%_
                                                           _%$%g178405178410%_)
                                                    (cons _%$%g178404178407%_
                                                          _%$%g178405178410%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp179273
                                              '()
                                              _%$%g178305178389%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g179275_|
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
                (_%__kont179211179212%_
                 (lambda (_%$%g178318178331%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%$%g178302178342%_
                    (lambda ()
                      (let ((_%$%g178318178331%_ _%__stx179204179205%_))
                        (if (gx#identifier? _%$%g178318178331%_)
                            (_%__kont179211179212%_ _%$%g178318178331%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g178303178324%_))))))
                   (_%__match179227179228%_
                    (lambda (_%$%e178306178349%_
                             _%$%hd178307178353%_
                             _%$%tl178308178356%_
                             _%__splice179209179210%_
                             _%$%target178309178359%_
                             _%$%tl178311178362%_)
                      (letrec ((_%$%loop178312178365%_
                                (lambda (_%$%hd178310178369%_
                                         _%$%arg178316178372%_)
                                  (if (gx#stx-pair? _%$%hd178310178369%_)
                                      (let ((_%$%e178313178375%_
                                             (gx#syntax-e
                                              _%$%hd178310178369%_)))
                                        (let ((_%$%lp-tl178315178382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e178313178375%_)))
                                              (_%$%lp-hd178314178379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e178313178375%_))))
                                          (_%$%loop178312178365%_
                                           _%$%lp-tl178315178382%_
                                           (cons _%$%lp-hd178314178379%_
                                                 _%$%arg178316178372%_))))
                                      (let ((_%$%arg178317178385%_
                                             (reverse _%$%arg178316178372%_)))
                                        (_%__kont179207179208%_
                                         _%$%arg178317178385%_))))))
                        (_%$%loop178312178365%_
                         _%$%target178309178359%_
                         '())))))
              (if (gx#stx-pair? _%__stx179204179205%_)
                  (let ((_%$%e178306178349%_
                         (gx#syntax-e _%__stx179204179205%_)))
                    (let ((_%$%tl178308178356%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e178306178349%_)))
                          (_%$%hd178307178353%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e178306178349%_))))
                      (if (gx#stx-pair/null? _%$%tl178308178356%_)
                          (let ((_%__splice179209179210%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl178308178356%_
                                  '0)))
                            (let ((_%$%tl178311178362%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179209179210%_
                                      '1)))
                                  (_%$%target178309178359%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179209179210%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl178311178362%_)
                                  (_%__match179227179228%_
                                   _%$%e178306178349%_
                                   _%$%hd178307178353%_
                                   _%$%tl178308178356%_
                                   _%__splice179209179210%_
                                   _%$%target178309178359%_
                                   _%$%tl178311178362%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g178302178342%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g178302178342%_)))))
                  (let () (declare (not safe)) (_%$%g178302178342%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx178418%_)
        (let* ((_%__stx179230179231%_ _%$stx178418%_)
               (_%$%g178423178444%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179230179231%_))))
          (let ((_%__kont179233179234%_
                 (lambda (_%$%g178425178509%_)
                   (cons (gx#datum->syntax
                          |[1]#_g179277_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp179278
                                                  (lambda (_%$%g178524178527%_
                                                           _%$%g178525178530%_)
                                                    (cons _%$%g178524178527%_
                                                          _%$%g178525178530%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp179278
                                              '()
                                              _%$%g178425178509%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g179280_|
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
                (_%__kont179237179238%_
                 (lambda (_%$%g178438178451%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%$%g178422178462%_
                    (lambda ()
                      (let ((_%$%g178438178451%_ _%__stx179230179231%_))
                        (if (gx#identifier? _%$%g178438178451%_)
                            (_%__kont179237179238%_ _%$%g178438178451%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g178423178444%_))))))
                   (_%__match179253179254%_
                    (lambda (_%$%e178426178469%_
                             _%$%hd178427178473%_
                             _%$%tl178428178476%_
                             _%__splice179235179236%_
                             _%$%target178429178479%_
                             _%$%tl178431178482%_)
                      (letrec ((_%$%loop178432178485%_
                                (lambda (_%$%hd178430178489%_
                                         _%$%arg178436178492%_)
                                  (if (gx#stx-pair? _%$%hd178430178489%_)
                                      (let ((_%$%e178433178495%_
                                             (gx#syntax-e
                                              _%$%hd178430178489%_)))
                                        (let ((_%$%lp-tl178435178502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e178433178495%_)))
                                              (_%$%lp-hd178434178499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e178433178495%_))))
                                          (_%$%loop178432178485%_
                                           _%$%lp-tl178435178502%_
                                           (cons _%$%lp-hd178434178499%_
                                                 _%$%arg178436178492%_))))
                                      (let ((_%$%arg178437178505%_
                                             (reverse _%$%arg178436178492%_)))
                                        (_%__kont179233179234%_
                                         _%$%arg178437178505%_))))))
                        (_%$%loop178432178485%_
                         _%$%target178429178479%_
                         '())))))
              (if (gx#stx-pair? _%__stx179230179231%_)
                  (let ((_%$%e178426178469%_
                         (gx#syntax-e _%__stx179230179231%_)))
                    (let ((_%$%tl178428178476%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e178426178469%_)))
                          (_%$%hd178427178473%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e178426178469%_))))
                      (if (gx#stx-pair/null? _%$%tl178428178476%_)
                          (let ((_%__splice179235179236%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl178428178476%_
                                  '0)))
                            (let ((_%$%tl178431178482%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179235179236%_
                                      '1)))
                                  (_%$%target178429178479%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179235179236%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl178431178482%_)
                                  (_%__match179253179254%_
                                   _%$%e178426178469%_
                                   _%$%hd178427178473%_
                                   _%$%tl178428178476%_
                                   _%__splice179235179236%_
                                   _%$%target178429178479%_
                                   _%$%tl178431178482%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g178422178462%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g178422178462%_)))))
                  (let () (declare (not safe)) (_%$%g178422178462%_))))))))))
