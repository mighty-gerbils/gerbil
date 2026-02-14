(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g265899_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g265906_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g265908_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g265910_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g265912_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g265914_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g265926_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g265928_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g265930_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g265932_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g265934_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx259357%_)
        (let* ((_%g259361259379%_
                (lambda (_%g259362259375%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259362259375%_))))
               (_%g259360259434%_
                (lambda (_%g259362259383%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259362259383%_))
                      (let ((_%e259365259386%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259362259383%_))))
                        (let ((_%hd259366259390%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259365259386%_)))
                              (_%tl259367259393%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259365259386%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259367259393%_))
                              (let ((_%e259368259396%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259367259393%_))))
                                (let ((_%hd259369259400%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259368259396%_)))
                                      (_%tl259370259403%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259368259396%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl259370259403%_))
                                      (let ((_%e259371259406%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl259370259403%_))))
                                        (let ((_%hd259372259410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259371259406%_)))
                                              (_%tl259373259413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259371259406%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259373259413%_))
                                              ((lambda (_%g259363259416%_
                                                        _%g259364259418%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g259364259418%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-type!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g259364259418%_ '()))
                         (cons _%g259363259416%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g259361259379%_
                                                      _%g259362259383%_)))
                                               _%hd259372259410%_
                                               _%hd259369259400%_)
                                              (_%g259361259379%_
                                               _%g259362259383%_))))
                                      (_%g259361259379%_ _%g259362259383%_))))
                              (_%g259361259379%_ _%g259362259383%_))))
                      (_%g259361259379%_ _%g259362259383%_)))))
          (_%g259360259434%_ _%$stx259357%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx259438%_)
        (let* ((_%g259442259460%_
                (lambda (_%g259443259456%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259443259456%_))))
               (_%g259441259515%_
                (lambda (_%g259443259464%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259443259464%_))
                      (let ((_%e259446259467%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259443259464%_))))
                        (let ((_%hd259447259471%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259446259467%_)))
                              (_%tl259448259474%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259446259467%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259448259474%_))
                              (let ((_%e259449259477%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259448259474%_))))
                                (let ((_%hd259450259481%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259449259477%_)))
                                      (_%tl259451259484%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259449259477%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl259451259484%_))
                                      (let ((_%e259452259487%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl259451259484%_))))
                                        (let ((_%hd259453259491%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259452259487%_)))
                                              (_%tl259454259494%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259452259487%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259454259494%_))
                                              ((lambda (_%g259444259497%_
                                                        _%g259445259499%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g259445259499%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-class!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g259445259499%_ '()))
                         (cons _%g259444259497%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g259442259460%_
                                                      _%g259443259464%_)))
                                               _%hd259453259491%_
                                               _%hd259450259481%_)
                                              (_%g259442259460%_
                                               _%g259443259464%_))))
                                      (_%g259442259460%_ _%g259443259464%_))))
                              (_%g259442259460%_ _%g259443259464%_))))
                      (_%g259442259460%_ _%g259443259464%_)))))
          (_%g259441259515%_ _%$stx259438%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx259519%_)
        (let* ((_%g259523259552%_
                (lambda (_%g259524259548%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259524259548%_))))
               (_%g259522259648%_
                (lambda (_%g259524259556%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259524259556%_))
                      (let ((_%e259527259559%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259524259556%_))))
                        (let ((_%hd259528259563%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259527259559%_)))
                              (_%tl259529259566%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259527259559%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl259529259566%_))
                              (let ((_g265877_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl259529259566%_
                                        '0))))
                                (begin
                                  (let ((_g265878_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g265877_)
                                               (##values-length _g265877_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g265878_ 2)))
                                        (error "Context expects 2 values"
                                               _g265878_)))
                                  (let ((_%target259530259569%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g265877_ 0)))
                                        (_%tl259532259572%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g265877_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl259532259572%_))
                                        (letrec ((_%loop259533259575%_
                                                  (lambda (_%hd259531259579%_
                                                           _%type259537259582%_
                                                           _%symbol259538259583%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd259531259579%_))
                                                        (let ((_%e259534259585%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd259531259579%_))))
                  (let ((_%lp-hd259535259589%_
                         (let ()
                           (declare (not safe))
                           (##car _%e259534259585%_)))
                        (_%lp-tl259536259592%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e259534259585%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd259535259589%_))
                        (let ((_%e259541259595%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd259535259589%_))))
                          (let ((_%hd259542259599%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e259541259595%_)))
                                (_%tl259543259602%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e259541259595%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl259543259602%_))
                                (let ((_%e259544259605%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl259543259602%_))))
                                  (let ((_%hd259545259609%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e259544259605%_)))
                                        (_%tl259546259612%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e259544259605%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl259546259612%_))
                                        (_%loop259533259575%_
                                         _%lp-tl259536259592%_
                                         (cons _%hd259545259609%_
                                               _%type259537259582%_)
                                         (cons _%hd259542259599%_
                                               _%symbol259538259583%_))
                                        (_%g259523259552%_
                                         _%g259524259556%_))))
                                (_%g259523259552%_ _%g259524259556%_))))
                        (_%g259523259552%_ _%g259524259556%_))))
                (let ((_%type259539259615%_ (reverse _%type259537259582%_))
                      (_%symbol259540259617%_
                       (reverse _%symbol259538259583%_)))
                  ((lambda (_%g259525259619%_ _%g259526259621%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g259525259619%_
                                _%g259526259621%_))
                             (let ((__tmp265879
                                    (lambda (_%g259636259640%_
                                             _%g259637259643%_
                                             _%g259638259645%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g259637259643%_
                                                        (cons _%g259636259640%_
                                                              '())))
                                            _%g259638259645%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp265879
                                '()
                                _%g259525259619%_
                                _%g259526259621%_)))))
                   _%type259539259615%_
                   _%symbol259540259617%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop259533259575%_
                                           _%target259530259569%_
                                           '()
                                           '()))
                                        (_%g259523259552%_
                                         _%g259524259556%_)))))
                              (_%g259523259552%_ _%g259524259556%_))))
                      (_%g259523259552%_ _%g259524259556%_)))))
          (_%g259522259648%_ _%$stx259519%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx259653%_)
        (let* ((_%__stx265188265189%_ _%$stx259653%_)
               (_%g259658259700%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx265188265189%_)))))
          (let ((_%__kont265191265192%_
                 (lambda (_%g259660259828%_
                          _%g259661259830%_
                          _%g259662259831%_
                          _%g259663259832%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g259663259832%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g259662259831%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g259661259830%_ '()))
                                           (cons _%g259660259828%_ '())))))))
                (_%__kont265193265194%_
                 (lambda (_%g259679259747%_
                          _%g259680259749%_
                          _%g259681259750%_
                          _%g259682259751%_)
                   (cons _%g259682259751%_
                         (cons _%g259681259750%_
                               (cons _%g259680259749%_
                                     (cons _%g259679259747%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match265227265228%_
                   (lambda (_%e259664259778%_
                            _%hd259665259782%_
                            _%tl259666259785%_
                            _%e259667259788%_
                            _%hd259668259792%_
                            _%tl259669259795%_
                            _%e259670259798%_
                            _%hd259671259802%_
                            _%tl259672259805%_
                            _%e259673259808%_
                            _%hd259674259812%_
                            _%tl259675259815%_
                            _%e259676259818%_
                            _%hd259677259822%_
                            _%tl259678259825%_)
                     (let ((_%g259660259828%_ _%hd259677259822%_)
                           (_%g259661259830%_ _%hd259674259812%_)
                           (_%g259662259831%_ _%hd259671259802%_)
                           (_%g259663259832%_ _%hd259668259792%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g259663259832%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g259662259831%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g259661259830%_)))
                           (_%__kont265191265192%_
                            _%g259660259828%_
                            _%g259661259830%_
                            _%g259662259831%_
                            _%g259663259832%_)
                           (let ()
                             (declare (not safe))
                             (_%g259658259700%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx265188265189%_))
                  (let ((_%e259664259778%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx265188265189%_))))
                    (let ((_%tl259666259785%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e259664259778%_)))
                          (_%hd259665259782%_
                           (let ()
                             (declare (not safe))
                             (##car _%e259664259778%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl259666259785%_))
                          (let ((_%e259667259788%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl259666259785%_))))
                            (let ((_%tl259669259795%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e259667259788%_)))
                                  (_%hd259668259792%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e259667259788%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl259669259795%_))
                                  (let ((_%e259670259798%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl259669259795%_))))
                                    (let ((_%tl259672259805%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e259670259798%_)))
                                          (_%hd259671259802%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e259670259798%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl259672259805%_))
                                          (let ((_%e259673259808%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl259672259805%_))))
                                            (let ((_%tl259675259815%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e259673259808%_)))
                                                  (_%hd259674259812%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e259673259808%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl259675259815%_))
                                                  (let ((_%e259676259818%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl259675259815%_))))
                                                    (let ((_%tl259678259825%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e259676259818%_)))
                                                          (_%hd259677259822%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e259676259818%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl259678259825%_))
                                                          (_%__match265227265228%_
                                                           _%e259664259778%_
                                                           _%hd259665259782%_
                                                           _%tl259666259785%_
                                                           _%e259667259788%_
                                                           _%hd259668259792%_
                                                           _%tl259669259795%_
                                                           _%e259670259798%_
                                                           _%hd259671259802%_
                                                           _%tl259672259805%_
                                                           _%e259673259808%_
                                                           _%hd259674259812%_
                                                           _%tl259675259815%_
                                                           _%e259676259818%_
                                                           _%hd259677259822%_
                                                           _%tl259678259825%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g259658259700%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl259675259815%_))
                                                      (_%__kont265193265194%_
                                                       _%hd259674259812%_
                                                       _%hd259671259802%_
                                                       _%hd259668259792%_
                                                       _%hd259665259782%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g259658259700%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g259658259700%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g259658259700%_)))))
                          (let () (declare (not safe)) (_%g259658259700%_)))))
                  (let () (declare (not safe)) (_%g259658259700%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx259857%_)
        (let* ((_%g259861259896%_
                (lambda (_%g259862259892%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259862259892%_))))
               (_%g259860260009%_
                (lambda (_%g259862259900%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259862259900%_))
                      (let ((_%e259866259903%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259862259900%_))))
                        (let ((_%hd259867259907%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259866259903%_)))
                              (_%tl259868259910%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259866259903%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl259868259910%_))
                              (let ((_g265880_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl259868259910%_
                                        '0))))
                                (begin
                                  (let ((_g265881_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g265880_)
                                               (##values-length _g265880_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g265881_ 2)))
                                        (error "Context expects 2 values"
                                               _g265881_)))
                                  (let ((_%target259869259913%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g265880_ 0)))
                                        (_%tl259871259916%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g265880_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl259871259916%_))
                                        (letrec ((_%loop259872259919%_
                                                  (lambda (_%hd259870259923%_
                                                           _%symbol259876259926%_
                                                           _%method259877259927%_
                                                           _%type-t259878259928%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd259870259923%_))
                                                        (let ((_%e259873259930%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd259870259923%_))))
                  (let ((_%lp-hd259874259934%_
                         (let ()
                           (declare (not safe))
                           (##car _%e259873259930%_)))
                        (_%lp-tl259875259937%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e259873259930%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd259874259934%_))
                        (let ((_%e259882259940%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd259874259934%_))))
                          (let ((_%hd259883259944%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e259882259940%_)))
                                (_%tl259884259947%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e259882259940%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl259884259947%_))
                                (let ((_%e259885259950%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl259884259947%_))))
                                  (let ((_%hd259886259954%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e259885259950%_)))
                                        (_%tl259887259957%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e259885259950%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl259887259957%_))
                                        (let ((_%e259888259960%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl259887259957%_))))
                                          (let ((_%hd259889259964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e259888259960%_)))
                                                (_%tl259890259967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e259888259960%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl259890259967%_))
                                                (_%loop259872259919%_
                                                 _%lp-tl259875259937%_
                                                 (cons _%hd259889259964%_
                                                       _%symbol259876259926%_)
                                                 (cons _%hd259886259954%_
                                                       _%method259877259927%_)
                                                 (cons _%hd259883259944%_
                                                       _%type-t259878259928%_))
                                                (_%g259861259896%_
                                                 _%g259862259900%_))))
                                        (_%g259861259896%_
                                         _%g259862259900%_))))
                                (_%g259861259896%_ _%g259862259900%_))))
                        (_%g259861259896%_ _%g259862259900%_))))
                (let ((_%symbol259879259970%_ (reverse _%symbol259876259926%_))
                      (_%method259880259972%_ (reverse _%method259877259927%_))
                      (_%type-t259881259973%_
                       (reverse _%type-t259878259928%_)))
                  ((lambda (_%g259863259975%_
                            _%g259864259977%_
                            _%g259865259978%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g259863259975%_
                                _%g259864259977%_
                                _%g259865259978%_))
                             (let ((__tmp265882
                                    (lambda (_%g259994259999%_
                                             _%g259995260002%_
                                             _%g259996260004%_
                                             _%g259997260006%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g259996260004%_
                                                        (cons _%g259995260002%_
                                                              (cons _%g259994259999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g259997260006%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp265882
                                '()
                                _%g259863259975%_
                                _%g259864259977%_
                                _%g259865259978%_)))))
                   _%symbol259879259970%_
                   _%method259880259972%_
                   _%type-t259881259973%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop259872259919%_
                                           _%target259869259913%_
                                           '()
                                           '()
                                           '()))
                                        (_%g259861259896%_
                                         _%g259862259900%_)))))
                              (_%g259861259896%_ _%g259862259900%_))))
                      (_%g259861259896%_ _%g259862259900%_)))))
          (_%g259860260009%_ _%$stx259857%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx260014%_)
        (let* ((_%g260018260051%_
                (lambda (_%g260019260047%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260019260047%_))))
               (_%g260017260161%_
                (lambda (_%g260019260055%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260019260055%_))
                      (let ((_%e260023260058%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260019260055%_))))
                        (let ((_%hd260024260062%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260023260058%_)))
                              (_%tl260025260065%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260023260058%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260025260065%_))
                              (let ((_%e260026260068%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260025260065%_))))
                                (let ((_%hd260027260072%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260026260068%_)))
                                      (_%tl260028260075%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260026260068%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl260028260075%_))
                                      (let ((_g265883_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl260028260075%_
                                                '0))))
                                        (begin
                                          (let ((_g265884_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g265883_)
                                                       (##values-length
                                                        _g265883_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g265884_ 2)))
                                                (error "Context expects 2 values"
                                                       _g265884_)))
                                          (let ((_%target260029260078%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g265883_ 0)))
                                                (_%tl260031260081%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g265883_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl260031260081%_))
                                                (letrec ((_%loop260032260084%_
                                                          (lambda (_%hd260030260088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol260036260091%_
                           _%method260037260092%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd260030260088%_))
                        (let ((_%e260033260094%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd260030260088%_))))
                          (let ((_%lp-hd260034260098%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260033260094%_)))
                                (_%lp-tl260035260101%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260033260094%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd260034260098%_))
                                (let ((_%e260040260104%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd260034260098%_))))
                                  (let ((_%hd260041260108%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e260040260104%_)))
                                        (_%tl260042260111%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e260040260104%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl260042260111%_))
                                        (let ((_%e260043260114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl260042260111%_))))
                                          (let ((_%hd260044260118%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e260043260114%_)))
                                                (_%tl260045260121%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e260043260114%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl260045260121%_))
                                                (_%loop260032260084%_
                                                 _%lp-tl260035260101%_
                                                 (cons _%hd260044260118%_
                                                       _%symbol260036260091%_)
                                                 (cons _%hd260041260108%_
                                                       _%method260037260092%_))
                                                (_%g260018260051%_
                                                 _%g260019260055%_))))
                                        (_%g260018260051%_
                                         _%g260019260055%_))))
                                (_%g260018260051%_ _%g260019260055%_))))
                        (let ((_%symbol260038260124%_
                               (reverse _%symbol260036260091%_))
                              (_%method260039260126%_
                               (reverse _%method260037260092%_)))
                          ((lambda (_%g260020260128%_
                                    _%g260021260130%_
                                    _%g260022260131%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g260020260128%_
                                        _%g260021260130%_))
                                     (let ((__tmp265885
                                            (lambda (_%g260149260153%_
                                                     _%g260150260156%_
                                                     _%g260151260158%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g260022260131%_
                                                                (cons _%g260150260156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g260149260153%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g260151260158%_))))
                                       (declare (not safe))
                                       (foldr__1
                                        __tmp265885
                                        '()
                                        _%g260020260128%_
                                        _%g260021260130%_)))))
                           _%symbol260038260124%_
                           _%method260039260126%_
                           _%hd260027260072%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop260032260084%_
                                                   _%target260029260078%_
                                                   '()
                                                   '()))
                                                (_%g260018260051%_
                                                 _%g260019260055%_)))))
                                      (_%g260018260051%_ _%g260019260055%_))))
                              (_%g260018260051%_ _%g260019260055%_))))
                      (_%g260018260051%_ _%g260019260055%_)))))
          (_%g260017260161%_ _%$stx260014%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx260166%_)
        (let* ((_%g260170260184%_
                (lambda (_%g260171260180%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260171260180%_))))
               (_%g260169260225%_
                (lambda (_%g260171260188%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260171260188%_))
                      (let ((_%e260173260191%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260171260188%_))))
                        (let ((_%hd260174260195%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260173260191%_)))
                              (_%tl260175260198%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260173260191%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260175260198%_))
                              (let ((_%e260176260201%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260175260198%_))))
                                (let ((_%hd260177260205%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260176260201%_)))
                                      (_%tl260178260208%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260176260201%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl260178260208%_))
                                      ((lambda (_%g260172260211%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!alias))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g260172260211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd260177260205%_)
                                      (_%g260170260184%_ _%g260171260188%_))))
                              (_%g260170260184%_ _%g260171260188%_))))
                      (_%g260170260184%_ _%g260171260188%_)))))
          (_%g260169260225%_ _%$stx260166%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx260229%_)
        (let* ((_%g260233260287%_
                (lambda (_%g260234260283%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260234260283%_))))
               (_%g260232260468%_
                (lambda (_%g260234260291%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260234260291%_))
                      (let ((_%e260246260294%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260234260291%_))))
                        (let ((_%hd260247260298%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260246260294%_)))
                              (_%tl260248260301%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260246260294%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260248260301%_))
                              (let ((_%e260249260304%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260248260301%_))))
                                (let ((_%hd260250260308%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260249260304%_)))
                                      (_%tl260251260311%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260249260304%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260251260311%_))
                                      (let ((_%e260252260314%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260251260311%_))))
                                        (let ((_%hd260253260318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260252260314%_)))
                                              (_%tl260254260321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260252260314%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl260254260321%_))
                                              (let ((_%e260255260324%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl260254260321%_))))
                                                (let ((_%hd260256260328%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e260255260324%_)))
                                                      (_%tl260257260331%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e260255260324%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl260257260331%_))
                                                      (let ((_%e260258260334%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl260257260331%_))))
                (let ((_%hd260259260338%_
                       (let () (declare (not safe)) (##car _%e260258260334%_)))
                      (_%tl260260260341%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e260258260334%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl260260260341%_))
                      (let ((_%e260261260344%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl260260260341%_))))
                        (let ((_%hd260262260348%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260261260344%_)))
                              (_%tl260263260351%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260261260344%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260263260351%_))
                              (let ((_%e260264260354%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260263260351%_))))
                                (let ((_%hd260265260358%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260264260354%_)))
                                      (_%tl260266260361%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260264260354%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260266260361%_))
                                      (let ((_%e260267260364%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260266260361%_))))
                                        (let ((_%hd260268260368%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260267260364%_)))
                                              (_%tl260269260371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260267260364%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl260269260371%_))
                                              (let ((_%e260270260374%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl260269260371%_))))
                                                (let ((_%hd260271260378%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e260270260374%_)))
                                                      (_%tl260272260381%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e260270260374%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl260272260381%_))
                                                      (let ((_%e260273260384%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl260272260381%_))))
                (let ((_%hd260274260388%_
                       (let () (declare (not safe)) (##car _%e260273260384%_)))
                      (_%tl260275260391%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e260273260384%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl260275260391%_))
                      (let ((_%e260276260394%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl260275260391%_))))
                        (let ((_%hd260277260398%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260276260394%_)))
                              (_%tl260278260401%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260276260394%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260278260401%_))
                              (let ((_%e260279260404%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260278260401%_))))
                                (let ((_%hd260280260408%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260279260404%_)))
                                      (_%tl260281260411%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260279260404%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl260281260411%_))
                                      ((lambda (_%g260235260414%_
                                                _%g260236260416%_
                                                _%g260237260417%_
                                                _%g260238260418%_
                                                _%g260239260419%_
                                                _%g260240260420%_
                                                _%g260241260421%_
                                                _%g260242260422%_
                                                _%g260243260423%_
                                                _%g260244260424%_
                                                _%g260245260425%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!class))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g260245260425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g260244260424%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g260243260423%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g260242260422%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g260241260421%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g260240260420%_ '()))
                                           (cons _%g260239260419%_
                                                 (cons _%g260238260418%_
                                                       (cons _%g260237260417%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g260236260416%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g260235260414%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd260280260408%_
                                       _%hd260277260398%_
                                       _%hd260274260388%_
                                       _%hd260271260378%_
                                       _%hd260268260368%_
                                       _%hd260265260358%_
                                       _%hd260262260348%_
                                       _%hd260259260338%_
                                       _%hd260256260328%_
                                       _%hd260253260318%_
                                       _%hd260250260308%_)
                                      (_%g260233260287%_ _%g260234260291%_))))
                              (_%g260233260287%_ _%g260234260291%_))))
                      (_%g260233260287%_ _%g260234260291%_))))
              (_%g260233260287%_ _%g260234260291%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g260233260287%_
                                               _%g260234260291%_))))
                                      (_%g260233260287%_ _%g260234260291%_))))
                              (_%g260233260287%_ _%g260234260291%_))))
                      (_%g260233260287%_ _%g260234260291%_))))
              (_%g260233260287%_ _%g260234260291%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g260233260287%_
                                               _%g260234260291%_))))
                                      (_%g260233260287%_ _%g260234260291%_))))
                              (_%g260233260287%_ _%g260234260291%_))))
                      (_%g260233260287%_ _%g260234260291%_)))))
          (_%g260232260468%_ _%$stx260229%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx260472%_)
        (let* ((_%g260476260490%_
                (lambda (_%g260477260486%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260477260486%_))))
               (_%g260475260531%_
                (lambda (_%g260477260494%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260477260494%_))
                      (let ((_%e260479260497%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260477260494%_))))
                        (let ((_%hd260480260501%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260479260497%_)))
                              (_%tl260481260504%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260479260497%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260481260504%_))
                              (let ((_%e260482260507%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260481260504%_))))
                                (let ((_%hd260483260511%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260482260507%_)))
                                      (_%tl260484260514%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260482260507%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl260484260514%_))
                                      ((lambda (_%g260478260517%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g260478260517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd260483260511%_)
                                      (_%g260476260490%_ _%g260477260494%_))))
                              (_%g260476260490%_ _%g260477260494%_))))
                      (_%g260476260490%_ _%g260477260494%_)))))
          (_%g260475260531%_ _%$stx260472%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx260535%_)
        (let* ((_%g260539260553%_
                (lambda (_%g260540260549%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260540260549%_))))
               (_%g260538260594%_
                (lambda (_%g260540260557%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260540260557%_))
                      (let ((_%e260542260560%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260540260557%_))))
                        (let ((_%hd260543260564%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260542260560%_)))
                              (_%tl260544260567%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260542260560%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260544260567%_))
                              (let ((_%e260545260570%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260544260567%_))))
                                (let ((_%hd260546260574%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260545260570%_)))
                                      (_%tl260547260577%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260545260570%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl260547260577%_))
                                      ((lambda (_%g260541260580%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!constructor))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g260541260580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd260546260574%_)
                                      (_%g260539260553%_ _%g260540260557%_))))
                              (_%g260539260553%_ _%g260540260557%_))))
                      (_%g260539260553%_ _%g260540260557%_)))))
          (_%g260538260594%_ _%$stx260535%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx260598%_)
        (let* ((_%g260602260624%_
                (lambda (_%g260603260620%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260603260620%_))))
               (_%g260601260693%_
                (lambda (_%g260603260628%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260603260628%_))
                      (let ((_%e260607260631%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260603260628%_))))
                        (let ((_%hd260608260635%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260607260631%_)))
                              (_%tl260609260638%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260607260631%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260609260638%_))
                              (let ((_%e260610260641%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260609260638%_))))
                                (let ((_%hd260611260645%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260610260641%_)))
                                      (_%tl260612260648%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260610260641%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260612260648%_))
                                      (let ((_%e260613260651%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260612260648%_))))
                                        (let ((_%hd260614260655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260613260651%_)))
                                              (_%tl260615260658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260613260651%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl260615260658%_))
                                              (let ((_%e260616260661%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl260615260658%_))))
                                                (let ((_%hd260617260665%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e260616260661%_)))
                                                      (_%tl260618260668%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e260616260661%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl260618260668%_))
                                                      ((lambda (_%g260604260671%_
                                                                _%g260605260673%_
                                                                _%g260606260674%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g260606260674%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g260605260673%_ '()))
                                   (cons _%g260604260671%_ '())))))
               _%hd260617260665%_
               _%hd260614260655%_
               _%hd260611260645%_)
              (_%g260602260624%_ _%g260603260628%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g260602260624%_
                                               _%g260603260628%_))))
                                      (_%g260602260624%_ _%g260603260628%_))))
                              (_%g260602260624%_ _%g260603260628%_))))
                      (_%g260602260624%_ _%g260603260628%_)))))
          (_%g260601260693%_ _%$stx260598%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx260697%_)
        (let* ((_%g260701260723%_
                (lambda (_%g260702260719%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260702260719%_))))
               (_%g260700260792%_
                (lambda (_%g260702260727%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260702260727%_))
                      (let ((_%e260706260730%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260702260727%_))))
                        (let ((_%hd260707260734%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260706260730%_)))
                              (_%tl260708260737%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260706260730%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260708260737%_))
                              (let ((_%e260709260740%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260708260737%_))))
                                (let ((_%hd260710260744%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260709260740%_)))
                                      (_%tl260711260747%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260709260740%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260711260747%_))
                                      (let ((_%e260712260750%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260711260747%_))))
                                        (let ((_%hd260713260754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260712260750%_)))
                                              (_%tl260714260757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260712260750%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl260714260757%_))
                                              (let ((_%e260715260760%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl260714260757%_))))
                                                (let ((_%hd260716260764%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e260715260760%_)))
                                                      (_%tl260717260767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e260715260760%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl260717260767%_))
                                                      ((lambda (_%g260703260770%_
                                                                _%g260704260772%_
                                                                _%g260705260773%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g260705260773%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g260704260772%_ '()))
                                   (cons _%g260703260770%_ '())))))
               _%hd260716260764%_
               _%hd260713260754%_
               _%hd260710260744%_)
              (_%g260701260723%_ _%g260702260727%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g260701260723%_
                                               _%g260702260727%_))))
                                      (_%g260701260723%_ _%g260702260727%_))))
                              (_%g260701260723%_ _%g260702260727%_))))
                      (_%g260701260723%_ _%g260702260727%_)))))
          (_%g260700260792%_ _%$stx260697%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx260796%_)
        (let* ((_%g260800260814%_
                (lambda (_%g260801260810%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260801260810%_))))
               (_%g260799260855%_
                (lambda (_%g260801260818%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260801260818%_))
                      (let ((_%e260803260821%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260801260818%_))))
                        (let ((_%hd260804260825%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260803260821%_)))
                              (_%tl260805260828%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260803260821%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260805260828%_))
                              (let ((_%e260806260831%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260805260828%_))))
                                (let ((_%hd260807260835%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260806260831%_)))
                                      (_%tl260808260838%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260806260831%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl260808260838%_))
                                      ((lambda (_%g260802260841%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g260802260841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd260807260835%_)
                                      (_%g260800260814%_ _%g260801260818%_))))
                              (_%g260800260814%_ _%g260801260818%_))))
                      (_%g260800260814%_ _%g260801260818%_)))))
          (_%g260799260855%_ _%$stx260796%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx260859%_)
        (let* ((_%g260863260881%_
                (lambda (_%g260864260877%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260864260877%_))))
               (_%g260862260936%_
                (lambda (_%g260864260885%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260864260885%_))
                      (let ((_%e260867260888%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260864260885%_))))
                        (let ((_%hd260868260892%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260867260888%_)))
                              (_%tl260869260895%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260867260888%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260869260895%_))
                              (let ((_%e260870260898%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260869260895%_))))
                                (let ((_%hd260871260902%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260870260898%_)))
                                      (_%tl260872260905%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260870260898%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260872260905%_))
                                      (let ((_%e260873260908%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260872260905%_))))
                                        (let ((_%hd260874260912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260873260908%_)))
                                              (_%tl260875260915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260873260908%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260875260915%_))
                                              ((lambda (_%g260865260918%_
                                                        _%g260866260920%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g260866260920%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g260865260918%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd260874260912%_
                                               _%hd260871260902%_)
                                              (_%g260863260881%_
                                               _%g260864260885%_))))
                                      (_%g260863260881%_ _%g260864260885%_))))
                              (_%g260863260881%_ _%g260864260885%_))))
                      (_%g260863260881%_ _%g260864260885%_)))))
          (_%g260862260936%_ _%$stx260859%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx260940%_)
        (let* ((_%__stx265256265257%_ _%$stx260940%_)
               (_%g260947261008%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx265256265257%_)))))
          (let ((_%__kont265259265260%_
                 (lambda (_%g260949261246%_ _%g260950261248%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g260950261248%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g260949261246%_ '()))
                                     '())))))
                (_%__kont265261265262%_
                 (lambda (_%g260960261185%_
                          _%g260961261187%_
                          _%g260962261188%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g260962261188%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g260961261187%_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g260960261185%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont265263265264%_
                 (lambda (_%g260979261109%_ _%g260980261111%_)
                   (cons _%g260980261111%_
                         (cons _%g260979261109%_ (cons '#f '())))))
                (_%__kont265265265266%_
                 (lambda (_%g260987261059%_
                          _%g260988261061%_
                          _%g260989261062%_)
                   (cons _%g260989261062%_
                         (cons _%g260988261061%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g260987261059%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx265256265257%_))
                (let ((_%e260951261216%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx265256265257%_))))
                  (let ((_%tl260953261223%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e260951261216%_)))
                        (_%hd260952261220%_
                         (let ()
                           (declare (not safe))
                           (##car _%e260951261216%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl260953261223%_))
                        (let ((_%e260954261226%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl260953261223%_))))
                          (let ((_%tl260956261233%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260954261226%_)))
                                (_%hd260955261230%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260954261226%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl260956261233%_))
                                (let ((_%e260957261236%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl260956261233%_))))
                                  (let ((_%tl260959261243%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e260957261236%_)))
                                        (_%hd260958261240%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e260957261236%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260959261243%_))
                                        (_%__kont265259265260%_
                                         _%hd260958261240%_
                                         _%hd260955261230%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl260959261243%_))
                                            (let ((_%e260972261161%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl260959261243%_))))
                                              (let ((_%tl260974261168%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e260972261161%_)))
                                                    (_%hd260973261165%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e260972261161%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd260973261165%_))
                                                    (let ((_%e260975261171%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd260973261165%_))))
                                                      (if (equal? _%e260975261171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl260974261168%_))
                      (let ((_%e260976261175%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl260974261168%_))))
                        (let ((_%tl260978261182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260976261175%_)))
                              (_%hd260977261179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260976261175%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl260978261182%_))
                              (_%__kont265261265262%_
                               _%hd260977261179%_
                               _%hd260958261240%_
                               _%hd260955261230%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd260958261240%_))
                                  (let ((_%e260999261045%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd260958261240%_))))
                                    (declare (not safe))
                                    (_%g260947261008%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g260947261008%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd260958261240%_))
                          (let ((_%e260999261045%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd260958261240%_))))
                            (if (equal? _%e260999261045%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl260974261168%_))
                                    (_%__kont265265265266%_
                                     _%hd260973261165%_
                                     _%hd260955261230%_
                                     _%hd260952261220%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g260947261008%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g260947261008%_))))
                          (let () (declare (not safe)) (_%g260947261008%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd260958261240%_))
                      (let ((_%e260999261045%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd260958261240%_))))
                        (if (equal? _%e260999261045%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl260974261168%_))
                                (_%__kont265265265266%_
                                 _%hd260973261165%_
                                 _%hd260955261230%_
                                 _%hd260952261220%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g260947261008%_)))
                            (let () (declare (not safe)) (_%g260947261008%_))))
                      (let () (declare (not safe)) (_%g260947261008%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd260958261240%_))
                                                        (let ((_%e260999261045%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd260958261240%_))))
                  (if (equal? _%e260999261045%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl260974261168%_))
                          (_%__kont265265265266%_
                           _%hd260973261165%_
                           _%hd260955261230%_
                           _%hd260952261220%_)
                          (let () (declare (not safe)) (_%g260947261008%_)))
                      (let () (declare (not safe)) (_%g260947261008%_))))
                (let () (declare (not safe)) (_%g260947261008%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd260958261240%_))
                                                (let ((_%e260999261045%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd260958261240%_))))
                                                  (declare (not safe))
                                                  (_%g260947261008%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g260947261008%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl260956261233%_))
                                    (_%__kont265263265264%_
                                     _%hd260955261230%_
                                     _%hd260952261220%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g260947261008%_))))))
                        (let () (declare (not safe)) (_%g260947261008%_)))))
                (let () (declare (not safe)) (_%g260947261008%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx261267%_)
        (let* ((_%g261271261300%_
                (lambda (_%g261272261296%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261272261296%_))))
               (_%g261270261405%_
                (lambda (_%g261272261304%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261272261304%_))
                      (let ((_%e261274261307%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261272261304%_))))
                        (let ((_%hd261275261311%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261274261307%_)))
                              (_%tl261276261314%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261274261307%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl261276261314%_))
                              (let ((_g265886_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl261276261314%_
                                        '0))))
                                (begin
                                  (let ((_g265887_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g265886_)
                                               (##values-length _g265886_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g265887_ 2)))
                                        (error "Context expects 2 values"
                                               _g265887_)))
                                  (let ((_%target261277261317%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g265886_ 0)))
                                        (_%tl261279261320%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g265886_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261279261320%_))
                                        (letrec ((_%loop261280261323%_
                                                  (lambda (_%hd261278261327%_
                                                           _%clause261284261330%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd261278261327%_))
                                                        (let ((_%e261281261332%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd261278261327%_))))
                  (let ((_%lp-hd261282261336%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261281261332%_)))
                        (_%lp-tl261283261339%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261281261332%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd261282261336%_))
                        (let ((_g265888_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd261282261336%_
                                  '0))))
                          (begin
                            (let ((_g265889_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g265888_)
                                         (##values-length _g265888_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g265889_ 2)))
                                  (error "Context expects 2 values"
                                         _g265889_)))
                            (let ((_%target261286261342%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g265888_ 0)))
                                  (_%tl261288261345%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g265888_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl261288261345%_))
                                  (letrec ((_%loop261289261348%_
                                            (lambda (_%hd261287261352%_
                                                     _%clause261293261355%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd261287261352%_))
                                                  (let ((_%e261290261357%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd261287261352%_))))
                                                    (let ((_%lp-hd261291261361%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e261290261357%_)))
                                                          (_%lp-tl261292261364%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e261290261357%_))))
                                                      (_%loop261289261348%_
                                                       _%lp-tl261292261364%_
                                                       (cons _%lp-hd261291261361%_
                                                             _%clause261293261355%_))))
                                                  (let ((_%clause261294261367%_
                                                         (reverse _%clause261293261355%_)))
                                                    (_%loop261280261323%_
                                                     _%lp-tl261283261339%_
                                                     (cons _%clause261294261367%_
                                                           _%clause261284261330%_)))))))
                                    (_%loop261289261348%_
                                     _%target261286261342%_
                                     '()))
                                  (_%g261271261300%_ _%g261272261304%_)))))
                        (_%g261271261300%_ _%g261272261304%_))))
                (let ((_%clause261285261370%_
                       (reverse _%clause261284261330%_)))
                  ((lambda (_%g261273261373%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp265890
                                              (lambda (_%g261388261393%_
                                                       _%g261389261396%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp265891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g261390261399%_ _%g261391261402%_)
                             (cons _%g261390261399%_ _%g261391261402%_))))
                      (declare (not safe))
                      (foldr__0 __tmp265891 '() _%g261388261393%_)))
              _%g261389261396%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp265890
                                          '()
                                          _%g261273261373%_)))
                                 '())))
                   _%clause261285261370%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop261280261323%_
                                           _%target261277261317%_
                                           '()))
                                        (_%g261271261300%_
                                         _%g261272261304%_)))))
                              (_%g261271261300%_ _%g261272261304%_))))
                      (_%g261271261300%_ _%g261272261304%_)))))
          (_%g261270261405%_ _%$stx261267%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx261411%_)
        (let* ((_%g261415261433%_
                (lambda (_%g261416261429%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261416261429%_))))
               (_%g261414261488%_
                (lambda (_%g261416261437%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261416261437%_))
                      (let ((_%e261419261440%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261416261437%_))))
                        (let ((_%hd261420261444%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261419261440%_)))
                              (_%tl261421261447%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261419261440%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261421261447%_))
                              (let ((_%e261422261450%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261421261447%_))))
                                (let ((_%hd261423261454%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261422261450%_)))
                                      (_%tl261424261457%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261422261450%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261424261457%_))
                                      (let ((_%e261425261460%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261424261457%_))))
                                        (let ((_%hd261426261464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261425261460%_)))
                                              (_%tl261427261467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261425261460%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261427261467%_))
                                              ((lambda (_%g261417261470%_
                                                        _%g261418261472%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g261418261472%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g261417261470%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd261426261464%_
                                               _%hd261423261454%_)
                                              (_%g261415261433%_
                                               _%g261416261437%_))))
                                      (_%g261415261433%_ _%g261416261437%_))))
                              (_%g261415261433%_ _%g261416261437%_))))
                      (_%g261415261433%_ _%g261416261437%_)))))
          (_%g261414261488%_ _%$stx261411%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx261492%_)
        (let* ((_%g261496261514%_
                (lambda (_%g261497261510%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261497261510%_))))
               (_%g261495261569%_
                (lambda (_%g261497261518%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261497261518%_))
                      (let ((_%e261500261521%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261497261518%_))))
                        (let ((_%hd261501261525%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261500261521%_)))
                              (_%tl261502261528%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261500261521%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261502261528%_))
                              (let ((_%e261503261531%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261502261528%_))))
                                (let ((_%hd261504261535%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261503261531%_)))
                                      (_%tl261505261538%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261503261531%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261505261538%_))
                                      (let ((_%e261506261541%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261505261538%_))))
                                        (let ((_%hd261507261545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261506261541%_)))
                                              (_%tl261508261548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261506261541%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261508261548%_))
                                              ((lambda (_%g261498261551%_
                                                        _%g261499261553%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g261499261553%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g261498261551%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd261507261545%_
                                               _%hd261504261535%_)
                                              (_%g261496261514%_
                                               _%g261497261518%_))))
                                      (_%g261496261514%_ _%g261497261518%_))))
                              (_%g261496261514%_ _%g261497261518%_))))
                      (_%g261496261514%_ _%g261497261518%_)))))
          (_%g261495261569%_ _%$stx261492%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx261573%_)
        (let* ((_%g261577261606%_
                (lambda (_%g261578261602%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261578261602%_))))
               (_%g261576261702%_
                (lambda (_%g261578261610%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261578261610%_))
                      (let ((_%e261581261613%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261578261610%_))))
                        (let ((_%hd261582261617%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261581261613%_)))
                              (_%tl261583261620%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261581261613%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl261583261620%_))
                              (let ((_g265892_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl261583261620%_
                                        '0))))
                                (begin
                                  (let ((_g265893_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g265892_)
                                               (##values-length _g265892_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g265893_ 2)))
                                        (error "Context expects 2 values"
                                               _g265893_)))
                                  (let ((_%target261584261623%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g265892_ 0)))
                                        (_%tl261586261626%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g265892_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261586261626%_))
                                        (letrec ((_%loop261587261629%_
                                                  (lambda (_%hd261585261633%_
                                                           _%rule261591261636%_
                                                           _%proc261592261637%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd261585261633%_))
                                                        (let ((_%e261588261639%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd261585261633%_))))
                  (let ((_%lp-hd261589261643%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261588261639%_)))
                        (_%lp-tl261590261646%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261588261639%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd261589261643%_))
                        (let ((_%e261595261649%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd261589261643%_))))
                          (let ((_%hd261596261653%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261595261649%_)))
                                (_%tl261597261656%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261595261649%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl261597261656%_))
                                (let ((_%e261598261659%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl261597261656%_))))
                                  (let ((_%hd261599261663%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261598261659%_)))
                                        (_%tl261600261666%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261598261659%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261600261666%_))
                                        (_%loop261587261629%_
                                         _%lp-tl261590261646%_
                                         (cons _%hd261599261663%_
                                               _%rule261591261636%_)
                                         (cons _%hd261596261653%_
                                               _%proc261592261637%_))
                                        (_%g261577261606%_
                                         _%g261578261610%_))))
                                (_%g261577261606%_ _%g261578261610%_))))
                        (_%g261577261606%_ _%g261578261610%_))))
                (let ((_%rule261593261669%_ (reverse _%rule261591261636%_))
                      (_%proc261594261671%_ (reverse _%proc261592261637%_)))
                  ((lambda (_%g261579261673%_ _%g261580261675%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g261579261673%_
                                _%g261580261675%_))
                             (let ((__tmp265894
                                    (lambda (_%g261690261694%_
                                             _%g261691261697%_
                                             _%g261692261699%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g261691261697%_
                                                        (cons _%g261690261694%_
                                                              '())))
                                            _%g261692261699%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp265894
                                '()
                                _%g261579261673%_
                                _%g261580261675%_)))))
                   _%rule261593261669%_
                   _%proc261594261671%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop261587261629%_
                                           _%target261584261623%_
                                           '()
                                           '()))
                                        (_%g261577261606%_
                                         _%g261578261610%_)))))
                              (_%g261577261606%_ _%g261578261610%_))))
                      (_%g261577261606%_ _%g261578261610%_)))))
          (_%g261576261702%_ _%$stx261573%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx261707%_)
        (let* ((_%g261711261729%_
                (lambda (_%g261712261725%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261712261725%_))))
               (_%g261710261784%_
                (lambda (_%g261712261733%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261712261733%_))
                      (let ((_%e261715261736%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261712261733%_))))
                        (let ((_%hd261716261740%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261715261736%_)))
                              (_%tl261717261743%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261715261736%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261717261743%_))
                              (let ((_%e261718261746%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261717261743%_))))
                                (let ((_%hd261719261750%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261718261746%_)))
                                      (_%tl261720261753%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261718261746%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261720261753%_))
                                      (let ((_%e261721261756%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261720261753%_))))
                                        (let ((_%hd261722261760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261721261756%_)))
                                              (_%tl261723261763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261721261756%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261723261763%_))
                                              ((lambda (_%g261713261766%_
                                                        _%g261714261768%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'let))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'type))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'optimizer-lookup-type))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g261714261768%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'if))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '!lambda?))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'type))
                                                   '()))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'set!))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '!lambda-inline))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'type))
                             '()))
                 (cons _%g261713261766%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'displayln))
                                                         (cons '"*** WARNING unknown procedure "
                                                               (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g261714261768%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd261722261760%_
                                               _%hd261719261750%_)
                                              (_%g261711261729%_
                                               _%g261712261733%_))))
                                      (_%g261711261729%_ _%g261712261733%_))))
                              (_%g261711261729%_ _%g261712261733%_))))
                      (_%g261711261729%_ _%g261712261733%_)))))
          (_%g261710261784%_ _%$stx261707%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx261788%_)
        (let* ((_%__stx265374265375%_ _%$stx261788%_)
               (_%g261793261818%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx265374265375%_)))))
          (let ((_%__kont265377265378%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont265379265380%_
                 (lambda (_%g261798261865%_
                          _%g261799261867%_
                          _%g261800261868%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g261800261868%_
                                           (cons _%g261799261867%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g261798261865%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx265374265375%_))
                (let ((_%e261795261894%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx265374265375%_))))
                  (let ((_%tl261797261901%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261795261894%_)))
                        (_%hd261796261898%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261795261894%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl261797261901%_))
                        (_%__kont265377265378%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl261797261901%_))
                            (let ((_%e261804261835%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl261797261901%_))))
                              (let ((_%tl261806261842%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e261804261835%_)))
                                    (_%hd261805261839%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e261804261835%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd261805261839%_))
                                    (let ((_%e261807261845%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd261805261839%_))))
                                      (let ((_%tl261809261852%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e261807261845%_)))
                                            (_%hd261808261849%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e261807261845%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl261809261852%_))
                                            (let ((_%e261810261855%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl261809261852%_))))
                                              (let ((_%tl261812261862%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e261810261855%_)))
                                                    (_%hd261811261859%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e261810261855%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl261812261862%_))
                                                    (_%__kont265379265380%_
                                                     _%tl261806261842%_
                                                     _%hd261811261859%_
                                                     _%hd261808261849%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g261793261818%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g261793261818%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g261793261818%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g261793261818%_))))))
                (let () (declare (not safe)) (_%g261793261818%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx261912%_)
        (let* ((_%__stx265418265419%_ _%$stx261912%_)
               (_%g261917261948%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx265418265419%_)))))
          (let ((_%__kont265421265422%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont265423265424%_
                 (lambda (_%g261922262013%_
                          _%g261923262015%_
                          _%g261924262016%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g261924262016%_
                                           (let ((__tmp265895
                                                  (lambda (_%g262036262039%_
                                                           _%g262037262042%_)
                                                    (cons _%g262036262039%_
                                                          _%g262037262042%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp265895
                                              '()
                                              _%g261923262015%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g261922262013%_)
                                     '()))))))
            (let ((_%__match265461265462%_
                   (lambda (_%e261925261955%_
                            _%hd261926261959%_
                            _%tl261927261962%_
                            _%e261928261965%_
                            _%hd261929261969%_
                            _%tl261930261972%_
                            _%e261931261975%_
                            _%hd261932261979%_
                            _%tl261933261982%_
                            _%__splice265425265426%_
                            _%target261934261985%_
                            _%tl261936261988%_)
                     (letrec ((_%loop261937261991%_
                               (lambda (_%hd261935261995%_ _%sig261941261998%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd261935261995%_))
                                     (let ((_%e261938262000%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd261935261995%_))))
                                       (let ((_%lp-tl261940262007%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e261938262000%_)))
                                             (_%lp-hd261939262004%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e261938262000%_))))
                                         (_%loop261937261991%_
                                          _%lp-tl261940262007%_
                                          (cons _%lp-hd261939262004%_
                                                _%sig261941261998%_))))
                                     (let ((_%sig261942262010%_
                                            (reverse _%sig261941261998%_)))
                                       (_%__kont265423265424%_
                                        _%tl261930261972%_
                                        _%sig261942262010%_
                                        _%hd261932261979%_))))))
                       (_%loop261937261991%_ _%target261934261985%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx265418265419%_))
                  (let ((_%e261919262052%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx265418265419%_))))
                    (let ((_%tl261921262059%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e261919262052%_)))
                          (_%hd261920262056%_
                           (let ()
                             (declare (not safe))
                             (##car _%e261919262052%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl261921262059%_))
                          (_%__kont265421265422%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261921262059%_))
                              (let ((_%e261928261965%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261921262059%_))))
                                (let ((_%tl261930261972%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261928261965%_)))
                                      (_%hd261929261969%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261928261965%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd261929261969%_))
                                      (let ((_%e261931261975%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd261929261969%_))))
                                        (let ((_%tl261933261982%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261931261975%_)))
                                              (_%hd261932261979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261931261975%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl261933261982%_))
                                              (let ((_%__splice265425265426%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl261933261982%_
                                                        '0))))
                                                (let ((_%tl261936261988%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice265425265426%_
                                                          '1)))
                                                      (_%target261934261985%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice265425265426%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl261936261988%_))
                                                      (_%__match265461265462%_
                                                       _%e261919262052%_
                                                       _%hd261920262056%_
                                                       _%tl261921262059%_
                                                       _%e261928261965%_
                                                       _%hd261929261969%_
                                                       _%tl261930261972%_
                                                       _%e261931261975%_
                                                       _%hd261932261979%_
                                                       _%tl261933261982%_
                                                       _%__splice265425265426%_
                                                       _%target261934261985%_
                                                       _%tl261936261988%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g261917261948%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g261917261948%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g261917261948%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g261917261948%_))))))
                  (let () (declare (not safe)) (_%g261917261948%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx262071%_)
        (let* ((_%__stx265464265465%_ _%$stx262071%_)
               (_%g262076262123%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx265464265465%_)))))
          (let ((_%__kont265467265468%_
                 (lambda (_%g262078262281%_ _%g262079262283%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g262079262283%_
                               (let ((__tmp265896
                                      (lambda (_%g262303262306%_
                                               _%g262304262309%_)
                                        (cons _%g262303262306%_
                                              _%g262304262309%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp265896
                                  '()
                                  _%g262078262281%_))))))
                (_%__kont265471265472%_
                 (lambda (_%g262101262178%_ _%g262102262180%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g262102262180%_
                               (let ((__tmp265897
                                      (lambda (_%g262197262200%_
                                               _%g262198262203%_)
                                        (cons _%g262197262200%_
                                              _%g262198262203%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp265897
                                  '()
                                  _%g262101262178%_)))))))
            (let* ((_%__match265531265532%_
                    (lambda (_%e262103262130%_
                             _%hd262104262134%_
                             _%tl262105262137%_
                             _%e262106262140%_
                             _%hd262107262144%_
                             _%tl262108262147%_
                             _%__splice265473265474%_
                             _%target262109262150%_
                             _%tl262111262153%_)
                      (letrec ((_%loop262112262156%_
                                (lambda (_%hd262110262160%_
                                         _%sig262116262163%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd262110262160%_))
                                      (let ((_%e262113262165%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd262110262160%_))))
                                        (let ((_%lp-tl262115262172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262113262165%_)))
                                              (_%lp-hd262114262169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262113262165%_))))
                                          (_%loop262112262156%_
                                           _%lp-tl262115262172%_
                                           (cons _%lp-hd262114262169%_
                                                 _%sig262116262163%_))))
                                      (let ((_%sig262117262175%_
                                             (reverse _%sig262116262163%_)))
                                        (_%__kont265471265472%_
                                         _%sig262117262175%_
                                         _%hd262107262144%_))))))
                        (_%loop262112262156%_ _%target262109262150%_ '()))))
                   (_%__match265523265524%_
                    (lambda (_%e262103262130%_
                             _%hd262104262134%_
                             _%tl262105262137%_
                             _%e262106262140%_
                             _%hd262107262144%_
                             _%tl262108262147%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl262108262147%_))
                          (let ((_%__splice265473265474%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl262108262147%_
                                    '0))))
                            (let ((_%tl262111262153%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice265473265474%_
                                      '1)))
                                  (_%target262109262150%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice265473265474%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl262111262153%_))
                                  (_%__match265531265532%_
                                   _%e262103262130%_
                                   _%hd262104262134%_
                                   _%tl262105262137%_
                                   _%e262106262140%_
                                   _%hd262107262144%_
                                   _%tl262108262147%_
                                   _%__splice265473265474%_
                                   _%target262109262150%_
                                   _%tl262111262153%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g262076262123%_)))))
                          (let () (declare (not safe)) (_%g262076262123%_)))))
                   (_%__match265511265512%_
                    (lambda (_%e262080262213%_
                             _%hd262081262217%_
                             _%tl262082262220%_
                             _%e262083262223%_
                             _%hd262084262227%_
                             _%tl262085262230%_
                             _%e262086262233%_
                             _%hd262087262237%_
                             _%tl262088262240%_
                             _%e262089262243%_
                             _%hd262090262247%_
                             _%tl262091262250%_
                             _%__splice265469265470%_
                             _%target262092262253%_
                             _%tl262094262256%_)
                      (letrec ((_%loop262095262259%_
                                (lambda (_%hd262093262263%_
                                         _%sig262099262266%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd262093262263%_))
                                      (let ((_%e262096262268%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd262093262263%_))))
                                        (let ((_%lp-tl262098262275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262096262268%_)))
                                              (_%lp-hd262097262272%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262096262268%_))))
                                          (_%loop262095262259%_
                                           _%lp-tl262098262275%_
                                           (cons _%lp-hd262097262272%_
                                                 _%sig262099262266%_))))
                                      (let ((_%sig262100262278%_
                                             (reverse _%sig262099262266%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl262088262240%_))
                                            (_%__kont265467265468%_
                                             _%sig262100262278%_
                                             _%hd262084262227%_)
                                            (_%__match265523265524%_
                                             _%e262080262213%_
                                             _%hd262081262217%_
                                             _%tl262082262220%_
                                             _%e262083262223%_
                                             _%hd262084262227%_
                                             _%tl262085262230%_)))))))
                        (_%loop262095262259%_ _%target262092262253%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx265464265465%_))
                  (let ((_%e262080262213%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx265464265465%_))))
                    (let ((_%tl262082262220%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e262080262213%_)))
                          (_%hd262081262217%_
                           (let ()
                             (declare (not safe))
                             (##car _%e262080262213%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl262082262220%_))
                          (let ((_%e262083262223%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl262082262220%_))))
                            (let ((_%tl262085262230%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e262083262223%_)))
                                  (_%hd262084262227%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e262083262223%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl262085262230%_))
                                  (let ((_%e262086262233%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl262085262230%_))))
                                    (let ((_%tl262088262240%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e262086262233%_)))
                                          (_%hd262087262237%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e262086262233%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd262087262237%_))
                                          (let ((_%e262089262243%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd262087262237%_))))
                                            (let ((_%tl262091262250%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e262089262243%_)))
                                                  (_%hd262090262247%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e262089262243%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd262090262247%_))
                                                  (if (let ((__tmp265898
                                                             |gxc[1]#_g265899_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp265898
                                                         _%hd262090262247%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl262091262250%_))
                                                          (let ((_%__splice265469265470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl262091262250%_
                            '0))))
                    (let ((_%tl262094262256%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice265469265470%_ '1)))
                          (_%target262092262253%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice265469265470%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl262094262256%_))
                          (_%__match265511265512%_
                           _%e262080262213%_
                           _%hd262081262217%_
                           _%tl262082262220%_
                           _%e262083262223%_
                           _%hd262084262227%_
                           _%tl262085262230%_
                           _%e262086262233%_
                           _%hd262087262237%_
                           _%tl262088262240%_
                           _%e262089262243%_
                           _%hd262090262247%_
                           _%tl262091262250%_
                           _%__splice265469265470%_
                           _%target262092262253%_
                           _%tl262094262256%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl262085262230%_))
                              (let ((_%__splice265473265474%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl262085262230%_
                                        '0))))
                                (let ((_%tl262111262153%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice265473265474%_
                                          '1)))
                                      (_%target262109262150%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice265473265474%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl262111262153%_))
                                      (_%__match265531265532%_
                                       _%e262080262213%_
                                       _%hd262081262217%_
                                       _%tl262082262220%_
                                       _%e262083262223%_
                                       _%hd262084262227%_
                                       _%tl262085262230%_
                                       _%__splice265473265474%_
                                       _%target262109262150%_
                                       _%tl262111262153%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g262076262123%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g262076262123%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl262085262230%_))
                      (let ((_%__splice265473265474%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl262085262230%_
                                '0))))
                        (let ((_%tl262111262153%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice265473265474%_ '1)))
                              (_%target262109262150%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice265473265474%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl262111262153%_))
                              (_%__match265531265532%_
                               _%e262080262213%_
                               _%hd262081262217%_
                               _%tl262082262220%_
                               _%e262083262223%_
                               _%hd262084262227%_
                               _%tl262085262230%_
                               _%__splice265473265474%_
                               _%target262109262150%_
                               _%tl262111262153%_)
                              (let ()
                                (declare (not safe))
                                (_%g262076262123%_)))))
                      (let () (declare (not safe)) (_%g262076262123%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl262085262230%_))
                  (let ((_%__splice265473265474%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl262085262230%_
                            '0))))
                    (let ((_%tl262111262153%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice265473265474%_ '1)))
                          (_%target262109262150%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice265473265474%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl262111262153%_))
                          (_%__match265531265532%_
                           _%e262080262213%_
                           _%hd262081262217%_
                           _%tl262082262220%_
                           _%e262083262223%_
                           _%hd262084262227%_
                           _%tl262085262230%_
                           _%__splice265473265474%_
                           _%target262109262150%_
                           _%tl262111262153%_)
                          (let () (declare (not safe)) (_%g262076262123%_)))))
                  (let () (declare (not safe)) (_%g262076262123%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl262085262230%_))
                                                      (let ((_%__splice265473265474%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl262085262230%_
                        '0))))
                (let ((_%tl262111262153%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice265473265474%_ '1)))
                      (_%target262109262150%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice265473265474%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl262111262153%_))
                      (_%__match265531265532%_
                       _%e262080262213%_
                       _%hd262081262217%_
                       _%tl262082262220%_
                       _%e262083262223%_
                       _%hd262084262227%_
                       _%tl262085262230%_
                       _%__splice265473265474%_
                       _%target262109262150%_
                       _%tl262111262153%_)
                      (let () (declare (not safe)) (_%g262076262123%_)))))
              (let () (declare (not safe)) (_%g262076262123%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl262085262230%_))
                                              (let ((_%__splice265473265474%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl262085262230%_
                                                        '0))))
                                                (let ((_%tl262111262153%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice265473265474%_
                                                          '1)))
                                                      (_%target262109262150%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice265473265474%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl262111262153%_))
                                                      (_%__match265531265532%_
                                                       _%e262080262213%_
                                                       _%hd262081262217%_
                                                       _%tl262082262220%_
                                                       _%e262083262223%_
                                                       _%hd262084262227%_
                                                       _%tl262085262230%_
                                                       _%__splice265473265474%_
                                                       _%target262109262150%_
                                                       _%tl262111262153%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g262076262123%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g262076262123%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl262085262230%_))
                                      (let ((_%__splice265473265474%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl262085262230%_
                                                '0))))
                                        (let ((_%tl262111262153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice265473265474%_
                                                  '1)))
                                              (_%target262109262150%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice265473265474%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262111262153%_))
                                              (_%__match265531265532%_
                                               _%e262080262213%_
                                               _%hd262081262217%_
                                               _%tl262082262220%_
                                               _%e262083262223%_
                                               _%hd262084262227%_
                                               _%tl262085262230%_
                                               _%__splice265473265474%_
                                               _%target262109262150%_
                                               _%tl262111262153%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g262076262123%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g262076262123%_))))))
                          (let () (declare (not safe)) (_%g262076262123%_)))))
                  (let () (declare (not safe)) (_%g262076262123%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx263466%_ _%id263468%_)
        (let ((_%proc263472%_
               (let ((__tmp265900
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id263468%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp265900))))
          (if (procedure? _%proc263472%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx263466%_
                 _%id263468%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx263457%_ _%id263459%_)
        (let ((_%klass263463%_
               (let ((__tmp265901
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id263459%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp265901))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass263463%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx263457%_
                 _%id263459%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx262707%_ _%proc262709%_ _%sig262710%_)
        (letrec ((_%signature-arity262712%_
                  (lambda (_%args263389%_)
                    (let _%loop263392%_ ((_%rest263395%_ _%args263389%_)
                                         (_%count263397%_ '0))
                      (let* ((_%rest263398263409%_ _%rest263395%_)
                             (_%E263402263415%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest263398263409%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K263405263446%_
                               (lambda (_%rest263443%_)
                                 (_%loop263392%_
                                  _%rest263443%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count263397%_ '1)))))
                              (_%K263404263435%_ (lambda () _%count263397%_))
                              (_%K263403263423%_
                               (lambda () (cons _%count263397%_ '()))))
                          (let ((_%try-match263400263439%_
                                 (lambda ()
                                   (if (null? _%rest263398263409%_)
                                       (_%K263404263435%_)
                                       (_%K263403263423%_)))))
                            (if (pair? _%rest263398263409%_)
                                (let* ((_%tl263407263450%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest263398263409%_)))
                                       (_%rest263454%_ _%tl263407263450%_))
                                  (_%K263405263446%_ _%rest263454%_))
                                (_%try-match263400263439%_))))))))
                 (_%make-signature262714%_
                  (lambda (_%args263271%_
                           _%return263273%_
                           _%effect263274%_
                           _%unchecked263275%_)
                    (let ((__tmp265902
                           (lambda (_%g263276263278%_)
                             (|gxc[1]#verify-class!|
                              _%ctx262707%_
                              _%g263276263278%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp265902 _%args263271%_))
                    (|gxc[1]#verify-class!| _%ctx262707%_ _%return263273%_)
                    (if _%unchecked263275%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx262707%_
                         _%unchecked263275%_)
                        '#!void)
                    (let ((_%arity263282%_
                           (_%signature-arity262712%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args263271%_)))))
                      (if _%effect263274%_
                          (let ((_%effect263285%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect263274%_))))
                            (if (and (list? _%effect263285%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect263285%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx262707%_
                                   _%proc262709%_
                                   _%effect263285%_))))
                          '#!void)
                      (cons _%arity263282%_
                            (cons (let* ((_%g263288263311%_
                                          (lambda (_%g263289263307%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g263289263307%_))))
                                         (_%g263287263385%_
                                          (lambda (_%g263289263315%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g263289263315%_))
                                                (let ((_%e263294263318%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g263289263315%_))))
                                                  (let ((_%hd263295263322%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e263294263318%_)))
                                                        (_%tl263296263325%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e263294263318%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl263296263325%_))
                                                        (let ((_%e263297263328%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl263296263325%_))))
                  (let ((_%hd263298263332%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263297263328%_)))
                        (_%tl263299263335%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263297263328%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl263299263335%_))
                        (let ((_%e263300263338%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl263299263335%_))))
                          (let ((_%hd263301263342%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263300263338%_)))
                                (_%tl263302263345%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263300263338%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl263302263345%_))
                                (let ((_%e263303263348%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl263302263345%_))))
                                  (let ((_%hd263304263352%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263303263348%_)))
                                        (_%tl263305263355%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263303263348%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263305263355%_))
                                        ((lambda (_%g263290263358%_
                                                  _%g263291263360%_
                                                  _%g263292263361%_
                                                  _%g263293263362%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'make-!signature))
                                                 (cons 'arguments:
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g263293263362%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g263292263361%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g263291263360%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g263290263358%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'builtin))
                                         '()))
                             '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd263304263352%_
                                         _%hd263301263342%_
                                         _%hd263298263332%_
                                         _%hd263295263322%_)
                                        (_%g263288263311%_
                                         _%g263289263315%_))))
                                (_%g263288263311%_ _%g263289263315%_))))
                        (_%g263288263311%_ _%g263289263315%_))))
                (_%g263288263311%_ _%g263289263315%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g263288263311%_
                                                 _%g263289263315%_)))))
                                    (_%g263287263385%_
                                     (list _%args263271%_
                                           _%return263273%_
                                           _%effect263274%_
                                           _%unchecked263275%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx262707%_ _%proc262709%_)
          (let* ((_%__stx265542265543%_ _%sig262710%_)
                 (_%g262721262824%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx265542265543%_)))))
            (let ((_%__kont265545265546%_
                   (lambda (_%g262723263252%_ _%g262724263254%_)
                     (_%make-signature262714%_
                      _%g262724263254%_
                      _%g262723263252%_
                      '#f
                      '#f)))
                  (_%__kont265547265548%_
                   (lambda (_%g262731263203%_
                            _%g262732263205%_
                            _%g262733263206%_)
                     (_%make-signature262714%_
                      _%g262733263206%_
                      _%g262732263205%_
                      _%g262731263203%_
                      '#f)))
                  (_%__kont265549265550%_
                   (lambda (_%g262747263127%_
                            _%g262748263129%_
                            _%g262749263130%_)
                     (_%make-signature262714%_
                      _%g262749263130%_
                      _%g262748263129%_
                      _%g262747263127%_
                      (let ((__tmp265903
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc262709%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp265903)))))
                  (_%__kont265551265552%_
                   (lambda (_%g262767263033%_
                            _%g262768263035%_
                            _%g262769263036%_
                            _%g262770263037%_)
                     (_%make-signature262714%_
                      _%g262770263037%_
                      _%g262769263036%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g262767263033%_)))))
                  (_%__kont265553265554%_
                   (lambda (_%g262791262940%_ _%g262792262942%_)
                     (_%make-signature262714%_
                      _%g262792262942%_
                      _%g262791262940%_
                      '#f
                      (let ((__tmp265904
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc262709%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp265904)))))
                  (_%__kont265555265556%_
                   (lambda (_%g262803262875%_
                            _%g262804262877%_
                            _%g262805262878%_)
                     (_%make-signature262714%_
                      _%g262805262878%_
                      _%g262804262877%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g262803262875%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx265542265543%_))
                  (let ((_%e262725263232%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx265542265543%_))))
                    (let ((_%tl262727263239%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e262725263232%_)))
                          (_%hd262726263236%_
                           (let ()
                             (declare (not safe))
                             (##car _%e262725263232%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl262727263239%_))
                          (let ((_%e262728263242%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl262727263239%_))))
                            (let ((_%tl262730263249%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e262728263242%_)))
                                  (_%hd262729263246%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e262728263242%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl262730263249%_))
                                  (_%__kont265545265546%_
                                   _%hd262729263246%_
                                   _%hd262726263236%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262730263249%_))
                                      (let ((_%e262740263179%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262730263249%_))))
                                        (let ((_%tl262742263186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262740263179%_)))
                                              (_%hd262741263183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262740263179%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd262741263183%_))
                                              (let ((_%e262743263189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd262741263183%_))))
                                                (if (equal? _%e262743263189%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl262742263186%_))
                                                        (let ((_%e262744263193%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl262742263186%_))))
                  (let ((_%tl262746263200%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262744263193%_)))
                        (_%hd262745263197%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262744263193%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl262746263200%_))
                        (_%__kont265547265548%_
                         _%hd262745263197%_
                         _%hd262729263246%_
                         _%hd262726263236%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl262746263200%_))
                            (let ((_%e262763263113%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl262746263200%_))))
                              (let ((_%tl262765263120%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e262763263113%_)))
                                    (_%hd262764263117%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e262763263113%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd262764263117%_))
                                    (let ((_%e262766263123%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd262764263117%_))))
                                      (if (equal? _%e262766263123%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262765263120%_))
                                              (_%__kont265549265550%_
                                               _%hd262745263197%_
                                               _%hd262729263246%_
                                               _%hd262726263236%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl262765263120%_))
                                                  (let ((_%e262788263023%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl262765263120%_))))
                                                    (let ((_%tl262790263030%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e262788263023%_)))
                                                          (_%hd262789263027%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e262788263023%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl262790263030%_))
                                                          (_%__kont265551265552%_
                                                           _%hd262789263027%_
                                                           _%hd262745263197%_
                                                           _%hd262729263246%_
                                                           _%hd262726263236%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g262721262824%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g262721262824%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g262721262824%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g262721262824%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g262721262824%_))))))
                (let () (declare (not safe)) (_%g262721262824%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e262743263189%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl262742263186%_))
                                                            (_%__kont265553265554%_
                                                             _%hd262729263246%_
                                                             _%hd262726263236%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl262742263186%_))
                        (let ((_%e262816262865%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl262742263186%_))))
                          (let ((_%tl262818262872%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262816262865%_)))
                                (_%hd262817262869%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262816262865%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl262818262872%_))
                                (_%__kont265555265556%_
                                 _%hd262817262869%_
                                 _%hd262729263246%_
                                 _%hd262726263236%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g262721262824%_)))))
                        (let () (declare (not safe)) (_%g262721262824%_))))
                (let () (declare (not safe)) (_%g262721262824%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g262721262824%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g262721262824%_))))))
                          (let () (declare (not safe)) (_%g262721262824%_)))))
                  (let () (declare (not safe)) (_%g262721262824%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig262318%_)
        (let* ((_%g262321262401%_
                (lambda (_%g262322262397%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262322262397%_))))
               (_%g262320262703%_
                (lambda (_%g262322262405%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262322262405%_))
                      (let ((_%e262328262408%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262322262405%_))))
                        (let ((_%hd262329262412%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262328262408%_)))
                              (_%tl262330262415%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262328262408%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262330262415%_))
                              (let ((_%e262331262418%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262330262415%_))))
                                (let ((_%hd262332262422%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262331262418%_)))
                                      (_%tl262333262425%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262331262418%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd262332262422%_))
                                      (let ((_%e262334262428%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd262332262422%_))))
                                        (if (equal? _%e262334262428%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl262333262425%_))
                                                (let ((_%e262335262432%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl262333262425%_))))
                                                  (let ((_%hd262336262436%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e262335262432%_)))
                                                        (_%tl262337262439%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e262335262432%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd262336262436%_))
                                                        (let ((_%e262338262442%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd262336262436%_))))
                  (let ((_%hd262339262446%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262338262442%_)))
                        (_%tl262340262449%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262338262442%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd262339262446%_))
                        (if (let ((__tmp265905 |gxc[1]#_g265906_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp265905
                               _%hd262339262446%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl262340262449%_))
                                (let ((_%e262341262452%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl262340262449%_))))
                                  (let ((_%hd262342262456%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e262341262452%_)))
                                        (_%tl262343262459%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e262341262452%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262343262459%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl262337262439%_))
                                            (let ((_%e262344262462%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl262337262439%_))))
                                              (let ((_%hd262345262466%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e262344262462%_)))
                                                    (_%tl262346262469%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e262344262462%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd262345262466%_))
                                                    (let ((_%e262347262472%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd262345262466%_))))
                                                      (if (equal? _%e262347262472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl262346262469%_))
                      (let ((_%e262348262476%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl262346262469%_))))
                        (let ((_%hd262349262480%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262348262476%_)))
                              (_%tl262350262483%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262348262476%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd262349262480%_))
                              (let ((_%e262351262486%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd262349262480%_))))
                                (let ((_%hd262352262490%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262351262486%_)))
                                      (_%tl262353262493%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262351262486%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd262352262490%_))
                                      (if (let ((__tmp265907
                                                 |gxc[1]#_g265908_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp265907
                                             _%hd262352262490%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl262353262493%_))
                                              (let ((_%e262354262496%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl262353262493%_))))
                                                (let ((_%hd262355262500%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e262354262496%_)))
                                                      (_%tl262356262503%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e262354262496%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl262356262503%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl262350262483%_))
                                                          (let ((_%e262357262506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl262350262483%_))))
                    (let ((_%hd262358262510%_
                           (let ()
                             (declare (not safe))
                             (##car _%e262357262506%_)))
                          (_%tl262359262513%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e262357262506%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd262358262510%_))
                          (let ((_%e262360262516%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd262358262510%_))))
                            (if (equal? _%e262360262516%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl262359262513%_))
                                    (let ((_%e262361262520%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl262359262513%_))))
                                      (let ((_%hd262362262524%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e262361262520%_)))
                                            (_%tl262363262527%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e262361262520%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd262362262524%_))
                                            (let ((_%e262364262530%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd262362262524%_))))
                                              (let ((_%hd262365262534%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e262364262530%_)))
                                                    (_%tl262366262537%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e262364262530%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd262365262534%_))
                                                    (if (let ((__tmp265909
                                                               |gxc[1]#_g265910_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp265909
                                                           _%hd262365262534%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl262366262537%_))
                                                            (let ((_%e262367262540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl262366262537%_))))
                      (let ((_%hd262368262544%_
                             (let ()
                               (declare (not safe))
                               (##car _%e262367262540%_)))
                            (_%tl262369262547%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e262367262540%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl262369262547%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl262363262527%_))
                                (let ((_%e262370262550%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl262363262527%_))))
                                  (let ((_%hd262371262554%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e262370262550%_)))
                                        (_%tl262372262557%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e262370262550%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd262371262554%_))
                                        (let ((_%e262373262560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd262371262554%_))))
                                          (if (equal? _%e262373262560%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl262372262557%_))
                                                  (let ((_%e262374262564%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl262372262557%_))))
                                                    (let ((_%hd262375262568%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e262374262564%_)))
                                                          (_%tl262376262571%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e262374262564%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd262375262568%_))
                                                          (let ((_%e262377262574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd262375262568%_))))
                    (let ((_%hd262378262578%_
                           (let ()
                             (declare (not safe))
                             (##car _%e262377262574%_)))
                          (_%tl262379262581%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e262377262574%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd262378262578%_))
                          (if (let ((__tmp265911 |gxc[1]#_g265912_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp265911
                                 _%hd262378262578%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl262379262581%_))
                                  (let ((_%e262380262584%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl262379262581%_))))
                                    (let ((_%hd262381262588%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e262380262584%_)))
                                          (_%tl262382262591%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e262380262584%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl262382262591%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl262376262571%_))
                                              (let ((_%e262383262594%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl262376262571%_))))
                                                (let ((_%hd262384262598%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e262383262594%_)))
                                                      (_%tl262385262601%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e262383262594%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd262384262598%_))
                                                      (let ((_%e262386262604%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd262384262598%_))))
                (if (equal? _%e262386262604%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl262385262601%_))
                        (let ((_%e262387262608%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl262385262601%_))))
                          (let ((_%hd262388262612%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262387262608%_)))
                                (_%tl262389262615%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262387262608%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd262388262612%_))
                                (let ((_%e262390262618%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd262388262612%_))))
                                  (let ((_%hd262391262622%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e262390262618%_)))
                                        (_%tl262392262625%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e262390262618%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd262391262622%_))
                                        (if (let ((__tmp265913
                                                   |gxc[1]#_g265914_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp265913
                                               _%hd262391262622%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl262392262625%_))
                                                (let ((_%e262393262628%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl262392262625%_))))
                                                  (let ((_%hd262394262632%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e262393262628%_)))
                                                        (_%tl262395262635%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e262393262628%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl262395262635%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl262389262615%_))
                                                            ((lambda (_%g262323262638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g262324262640%_
                              _%g262325262641%_
                              _%g262326262642%_
                              _%g262327262643%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g262324262640%_))
                           (cons _%g262324262640%_
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!signature))
                                             (cons 'return:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g262326262642%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g262323262638%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd262394262632%_
                     _%hd262381262588%_
                     _%hd262368262544%_
                     _%hd262355262500%_
                     _%hd262342262456%_)
                    (_%g262321262401%_ _%g262322262405%_))
                (_%g262321262401%_ _%g262322262405%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g262321262401%_
                                                 _%g262322262405%_))
                                            (_%g262321262401%_
                                             _%g262322262405%_))
                                        (_%g262321262401%_
                                         _%g262322262405%_))))
                                (_%g262321262401%_ _%g262322262405%_))))
                        (_%g262321262401%_ _%g262322262405%_))
                    (_%g262321262401%_ _%g262322262405%_)))
              (_%g262321262401%_ _%g262322262405%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g262321262401%_
                                               _%g262322262405%_))
                                          (_%g262321262401%_
                                           _%g262322262405%_))))
                                  (_%g262321262401%_ _%g262322262405%_))
                              (_%g262321262401%_ _%g262322262405%_))
                          (_%g262321262401%_ _%g262322262405%_))))
                  (_%g262321262401%_ _%g262322262405%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g262321262401%_
                                                   _%g262322262405%_))
                                              (_%g262321262401%_
                                               _%g262322262405%_)))
                                        (_%g262321262401%_
                                         _%g262322262405%_))))
                                (_%g262321262401%_ _%g262322262405%_))
                            (_%g262321262401%_ _%g262322262405%_))))
                    (_%g262321262401%_ _%g262322262405%_))
                (_%g262321262401%_ _%g262322262405%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g262321262401%_
                                                     _%g262322262405%_))))
                                            (_%g262321262401%_
                                             _%g262322262405%_))))
                                    (_%g262321262401%_ _%g262322262405%_))
                                (_%g262321262401%_ _%g262322262405%_)))
                          (_%g262321262401%_ _%g262322262405%_))))
                  (_%g262321262401%_ _%g262322262405%_))
              (_%g262321262401%_ _%g262322262405%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g262321262401%_
                                               _%g262322262405%_))
                                          (_%g262321262401%_
                                           _%g262322262405%_))
                                      (_%g262321262401%_ _%g262322262405%_))))
                              (_%g262321262401%_ _%g262322262405%_))))
                      (_%g262321262401%_ _%g262322262405%_))
                  (_%g262321262401%_ _%g262322262405%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g262321262401%_
                                                     _%g262322262405%_))))
                                            (_%g262321262401%_
                                             _%g262322262405%_))
                                        (_%g262321262401%_
                                         _%g262322262405%_))))
                                (_%g262321262401%_ _%g262322262405%_))
                            (_%g262321262401%_ _%g262322262405%_))
                        (_%g262321262401%_ _%g262322262405%_))))
                (_%g262321262401%_ _%g262322262405%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g262321262401%_
                                                 _%g262322262405%_))
                                            (_%g262321262401%_
                                             _%g262322262405%_)))
                                      (_%g262321262401%_ _%g262322262405%_))))
                              (_%g262321262401%_ _%g262322262405%_))))
                      (_%g262321262401%_ _%g262322262405%_)))))
          (_%g262320262703%_ _%sig262318%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx263475%_)
        (let* ((_%g263478263496%_
                (lambda (_%g263479263492%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263479263492%_))))
               (_%g263477263551%_
                (lambda (_%g263479263500%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263479263500%_))
                      (let ((_%e263482263503%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263479263500%_))))
                        (let ((_%hd263483263507%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263482263503%_)))
                              (_%tl263484263510%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263482263503%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263484263510%_))
                              (let ((_%e263485263513%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263484263510%_))))
                                (let ((_%hd263486263517%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263485263513%_)))
                                      (_%tl263487263520%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263485263513%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl263487263520%_))
                                      (let ((_%e263488263523%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl263487263520%_))))
                                        (let ((_%hd263489263527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263488263523%_)))
                                              (_%tl263490263530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263488263523%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263490263530%_))
                                              ((lambda (_%g263480263533%_
                                                        _%g263481263535%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g263481263535%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g263480263533%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx263475%_
                                                        _%g263481263535%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx263475%_
                                                        _%g263480263533%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g263481263535%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-predicate))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g263480263533%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g263478263496%_
                                                      _%g263479263500%_)))
                                               _%hd263489263527%_
                                               _%hd263486263517%_)
                                              (_%g263478263496%_
                                               _%g263479263500%_))))
                                      (_%g263478263496%_ _%g263479263500%_))))
                              (_%g263478263496%_ _%g263479263500%_))))
                      (_%g263478263496%_ _%g263479263500%_)))))
          (_%g263477263551%_ _%stx263475%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx263555%_)
        (let* ((_%g263558263582%_
                (lambda (_%g263559263578%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263559263578%_))))
               (_%g263557263863%_
                (lambda (_%g263559263586%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263559263586%_))
                      (let ((_%e263562263589%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263559263586%_))))
                        (let ((_%hd263563263593%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263562263589%_)))
                              (_%tl263564263596%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263562263589%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263564263596%_))
                              (let ((_%e263565263599%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263564263596%_))))
                                (let ((_%hd263566263603%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263565263599%_)))
                                      (_%tl263567263606%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263565263599%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl263567263606%_))
                                      (let ((_g265915_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl263567263606%_
                                                '0))))
                                        (begin
                                          (let ((_g265916_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g265915_)
                                                       (##values-length
                                                        _g265915_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g265916_ 2)))
                                                (error "Context expects 2 values"
                                                       _g265916_)))
                                          (let ((_%target263568263609%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g265915_ 0)))
                                                (_%tl263570263612%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g265915_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl263570263612%_))
                                                (letrec ((_%loop263571263615%_
                                                          (lambda (_%hd263569263619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature263575263622%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd263569263619%_))
                        (let ((_%e263572263624%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd263569263619%_))))
                          (let ((_%lp-hd263573263628%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263572263624%_)))
                                (_%lp-tl263574263631%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263572263624%_))))
                            (_%loop263571263615%_
                             _%lp-tl263574263631%_
                             (cons _%lp-hd263573263628%_
                                   _%signature263575263622%_))))
                        (let ((_%signature263576263634%_
                               (reverse _%signature263575263622%_)))
                          ((lambda (_%g263560263637%_ _%g263561263639%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g263561263639%_))
                                 (let* ((_%g263657263672%_
                                         (lambda (_%g263658263668%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g263658263668%_))))
                                        (_%g263656263851%_
                                         (lambda (_%g263658263676%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g263658263676%_))
                                               (let ((_%e263661263679%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g263658263676%_))))
                                                 (let ((_%hd263662263683%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e263661263679%_)))
                                                       (_%tl263663263686%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e263661263679%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl263663263686%_))
                                                       (let ((_%e263664263689%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl263663263686%_))))
                 (let ((_%hd263665263693%_
                        (let ()
                          (declare (not safe))
                          (##car _%e263664263689%_)))
                       (_%tl263666263696%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e263664263689%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl263666263696%_))
                       ((lambda (_%g263659263699%_ _%g263660263701%_)
                          (let* ((_%g263717263725%_
                                  (lambda (_%g263718263721%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g263718263721%_))))
                                 (_%g263716263847%_
                                  (lambda (_%g263718263729%_)
                                    ((lambda (_%g263719263732%_)
                                       (let* ((_%unchecked263745%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g263659263699%_))
                                              (_%g263748263756%_
                                               (lambda (_%g263749263752%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g263749263752%_))))
                                              (_%g263747263779%_
                                               (lambda (_%g263749263760%_)
                                                 ((lambda (_%g263750263763%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g263719263732%_
                                                                (cons _%g263750263763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g263749263760%_))))
                                         (_%g263747263779%_
                                          (if _%unchecked263745%_
                                              (let* ((_%g263783263798%_
                                                      (lambda (_%g263784263794%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g263784263794%_))))
                                                     (_%g263782263843%_
                                                      (lambda (_%g263784263802%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g263784263802%_))
                                                            (let ((_%e263787263805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g263784263802%_))))
                      (let ((_%hd263788263809%_
                             (let ()
                               (declare (not safe))
                               (##car _%e263787263805%_)))
                            (_%tl263789263812%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e263787263805%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl263789263812%_))
                            (let ((_%e263790263815%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl263789263812%_))))
                              (let ((_%hd263791263819%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e263790263815%_)))
                                    (_%tl263792263822%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e263790263815%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl263792263822%_))
                                    ((lambda (_%g263785263825%_
                                              _%g263786263827%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g263786263827%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g263660263701%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g263785263825%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd263791263819%_
                                     _%hd263788263809%_)
                                    (_%g263783263798%_ _%g263784263802%_))))
                            (_%g263783263798%_ _%g263784263802%_))))
                    (_%g263783263798%_ _%g263784263802%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g263782263843%_
                                                 _%unchecked263745%_))
                                              '(begin)))))
                                     _%g263718263729%_))))
                            (_%g263716263847%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g263561263639%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g263660263701%_ '()))
                   (cons '#f (cons 'signature: (cons _%g263659263699%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd263665263693%_
                        _%hd263662263683%_)
                       (_%g263657263672%_ _%g263658263676%_))))
               (_%g263657263672%_ _%g263658263676%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g263657263672%_
                                                _%g263658263676%_)))))
                                   (_%g263656263851%_
                                    (|gxc[1]#parse-signature|
                                     _%stx263555%_
                                     _%g263561263639%_
                                     (let ((__tmp265917
                                            (lambda (_%g263854263857%_
                                                     _%g263855263860%_)
                                              (cons _%g263854263857%_
                                                    _%g263855263860%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp265917
                                        '()
                                        _%g263560263637%_)))))
                                 (_%g263558263582%_ _%g263559263586%_)))
                           _%signature263576263634%_
                           _%hd263566263603%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop263571263615%_
                                                   _%target263568263609%_
                                                   '()))
                                                (_%g263558263582%_
                                                 _%g263559263586%_)))))
                                      (_%g263558263582%_ _%g263559263586%_))))
                              (_%g263558263582%_ _%g263559263586%_))))
                      (_%g263558263582%_ _%g263559263586%_)))))
          (_%g263557263863%_ _%stx263555%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx263868%_)
        (let* ((_%g263871263895%_
                (lambda (_%g263872263891%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263872263891%_))))
               (_%g263870264770%_
                (lambda (_%g263872263899%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263872263899%_))
                      (let ((_%e263875263902%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263872263899%_))))
                        (let ((_%hd263876263906%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263875263902%_)))
                              (_%tl263877263909%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263875263902%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263877263909%_))
                              (let ((_%e263878263912%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263877263909%_))))
                                (let ((_%hd263879263916%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263878263912%_)))
                                      (_%tl263880263919%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263878263912%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl263880263919%_))
                                      (let ((_g265918_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl263880263919%_
                                                '0))))
                                        (begin
                                          (let ((_g265919_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g265918_)
                                                       (##values-length
                                                        _g265918_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g265919_ 2)))
                                                (error "Context expects 2 values"
                                                       _g265919_)))
                                          (let ((_%target263881263922%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g265918_ 0)))
                                                (_%tl263883263925%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g265918_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl263883263925%_))
                                                (letrec ((_%loop263884263928%_
                                                          (lambda (_%hd263882263932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature263888263935%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd263882263932%_))
                        (let ((_%e263885263937%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd263882263932%_))))
                          (let ((_%lp-hd263886263941%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263885263937%_)))
                                (_%lp-tl263887263944%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263885263937%_))))
                            (_%loop263884263928%_
                             _%lp-tl263887263944%_
                             (cons _%lp-hd263886263941%_
                                   _%case-signature263888263935%_))))
                        (let ((_%case-signature263889263947%_
                               (reverse _%case-signature263888263935%_)))
                          ((lambda (_%g263873263950%_ _%g263874263952%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g263874263952%_))
                                 (let* ((_%signatures263983%_
                                         (map (lambda (_%g263969263971%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx263868%_
                                                 _%g263874263952%_
                                                 _%g263969263971%_))
                                              (let ((__tmp265920
                                                     (lambda (_%g263974263977%_
                                                              _%g263975263980%_)
                                                       (cons _%g263974263977%_
                                                             _%g263975263980%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp265920
                                                 '()
                                                 _%g263873263950%_))))
                                        (_%g263986264012%_
                                         (lambda (_%g263987264008%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g263987264008%_))))
                                        (_%g263985264766%_
                                         (lambda (_%g263987264016%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g263987264016%_))
                                               (let ((_g265921_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g263987264016%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g265922_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g265921_)
                        (##values-length _g265921_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g265922_ 2)))
                 (error "Context expects 2 values" _g265922_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target263990264019%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g265921_
                                                             0)))
                                                         (_%tl263992264022%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g265921_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl263992264022%_))
                                                         (letrec ((_%loop263993264025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd263991264029%_
                                    _%sig263997264032%_
                                    _%arity263998264033%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd263991264029%_))
                                 (let ((_%e263994264035%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd263991264029%_))))
                                   (let ((_%lp-hd263995264039%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e263994264035%_)))
                                         (_%lp-tl263996264042%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e263994264035%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd263995264039%_))
                                         (let ((_%e264001264045%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd263995264039%_))))
                                           (let ((_%hd264002264049%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e264001264045%_)))
                                                 (_%tl264003264052%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e264001264045%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl264003264052%_))
                                                 (let ((_%e264004264055%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl264003264052%_))))
                                                   (let ((_%hd264005264059%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e264004264055%_)))
                                                         (_%tl264006264062%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e264004264055%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl264006264062%_))
                                                         (_%loop263993264025%_
                                                          _%lp-tl263996264042%_
                                                          (cons _%hd264005264059%_
                                                                _%sig263997264032%_)
                                                          (cons _%hd264002264049%_
                                                                _%arity263998264033%_))
                                                         (_%g263986264012%_
                                                          _%g263987264016%_))))
                                                 (_%g263986264012%_
                                                  _%g263987264016%_))))
                                         (_%g263986264012%_
                                          _%g263987264016%_))))
                                 (let ((_%sig263999264065%_
                                        (reverse _%sig263997264032%_))
                                       (_%arity264000264067%_
                                        (reverse _%arity263998264033%_)))
                                   ((lambda (_%g263988264069%_
                                             _%g263989264071%_)
                                      (let* ((_%g264088264096%_
                                              (lambda (_%g264089264092%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g264089264092%_))))
                                             (_%g264087264751%_
                                              (lambda (_%g264089264100%_)
                                                ((lambda (_%g264090264103%_)
                                                   (let* ((_%g264116264124%_
                                                           (lambda (_%g264117264120%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g264117264120%_))))
                  (_%g264115264146%_
                   (lambda (_%g264117264128%_)
                     ((lambda (_%g264118264131%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g264090264103%_
                                    (cons _%g264118264131%_ '()))))
                      _%g264117264128%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g264115264146%_
                                                      (let ((_g265923_
                                                             (let _%loop264150%_ ((_%rest264153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures263983%_)
                                          (_%unchecked-proc264155%_ '#f)
                                          (_%unchecked-clauses264156%_ '()))
                       (let* ((_%rest264157264165%_ _%rest264153%_)
                              (_%else264159264177%_
                               (lambda ()
                                 (values _%unchecked-proc264155%_
                                         (reverse!
                                          _%unchecked-clauses264156%_))))
                              (_%K264161264618%_
                               (lambda (_%rest264181%_ _%hd264183%_)
                                 (let* ((_%g264185264272%_
                                         (lambda (_%g264186264268%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g264186264268%_))))
                                        (_%g264184264614%_
                                         (lambda (_%g264186264276%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g264186264276%_))
                                               (let ((_%e264193264279%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g264186264276%_))))
                                                 (let ((_%hd264194264283%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e264193264279%_)))
                                                       (_%tl264195264286%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e264193264279%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl264195264286%_))
                                                       (let ((_%e264196264289%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl264195264286%_))))
                 (let ((_%hd264197264293%_
                        (let ()
                          (declare (not safe))
                          (##car _%e264196264289%_)))
                       (_%tl264198264296%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e264196264289%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd264197264293%_))
                       (let ((_%e264199264299%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd264197264293%_))))
                         (let ((_%hd264200264303%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e264199264299%_)))
                               (_%tl264201264306%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e264199264299%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl264201264306%_))
                               (let ((_%e264202264309%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl264201264306%_))))
                                 (let ((_%hd264203264313%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e264202264309%_)))
                                       (_%tl264204264316%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e264202264309%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd264203264313%_))
                                       (let ((_%e264205264319%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd264203264313%_))))
                                         (if (equal? _%e264205264319%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl264204264316%_))
                                                 (let ((_%e264206264323%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl264204264316%_))))
                                                   (let ((_%hd264207264327%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e264206264323%_)))
                                                         (_%tl264208264330%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e264206264323%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd264207264327%_))
                                                         (let ((_%e264209264333%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd264207264327%_))))
                   (let ((_%hd264210264337%_
                          (let ()
                            (declare (not safe))
                            (##car _%e264209264333%_)))
                         (_%tl264211264340%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e264209264333%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd264210264337%_))
                         (if (let ((__tmp265925 |gxc[1]#_g265926_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp265925
                                _%hd264210264337%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl264211264340%_))
                                 (let ((_%e264212264343%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl264211264340%_))))
                                   (let ((_%hd264213264347%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e264212264343%_)))
                                         (_%tl264214264350%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e264212264343%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl264214264350%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl264208264330%_))
                                             (let ((_%e264215264353%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl264208264330%_))))
                                               (let ((_%hd264216264357%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e264215264353%_)))
                                                     (_%tl264217264360%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e264215264353%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd264216264357%_))
                                                     (let ((_%e264218264363%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd264216264357%_))))
                                                       (if (equal? _%e264218264363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl264217264360%_))
                       (let ((_%e264219264367%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl264217264360%_))))
                         (let ((_%hd264220264371%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e264219264367%_)))
                               (_%tl264221264374%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e264219264367%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd264220264371%_))
                               (let ((_%e264222264377%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd264220264371%_))))
                                 (let ((_%hd264223264381%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e264222264377%_)))
                                       (_%tl264224264384%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e264222264377%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd264223264381%_))
                                       (if (let ((__tmp265927
                                                  |gxc[1]#_g265928_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp265927
                                              _%hd264223264381%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl264224264384%_))
                                               (let ((_%e264225264387%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl264224264384%_))))
                                                 (let ((_%hd264226264391%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e264225264387%_)))
                                                       (_%tl264227264394%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e264225264387%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl264227264394%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl264221264374%_))
                                                           (let ((_%e264228264397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl264221264374%_))))
                     (let ((_%hd264229264401%_
                            (let ()
                              (declare (not safe))
                              (##car _%e264228264397%_)))
                           (_%tl264230264404%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e264228264397%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd264229264401%_))
                           (let ((_%e264231264407%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd264229264401%_))))
                             (if (equal? _%e264231264407%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl264230264404%_))
                                     (let ((_%e264232264411%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl264230264404%_))))
                                       (let ((_%hd264233264415%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e264232264411%_)))
                                             (_%tl264234264418%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e264232264411%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd264233264415%_))
                                             (let ((_%e264235264421%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd264233264415%_))))
                                               (let ((_%hd264236264425%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e264235264421%_)))
                                                     (_%tl264237264428%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e264235264421%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd264236264425%_))
                                                     (if (let ((__tmp265929
                                                                |gxc[1]#_g265930_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp265929
                                                            _%hd264236264425%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl264237264428%_))
                     (let ((_%e264238264431%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl264237264428%_))))
                       (let ((_%hd264239264435%_
                              (let ()
                                (declare (not safe))
                                (##car _%e264238264431%_)))
                             (_%tl264240264438%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e264238264431%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl264240264438%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl264234264418%_))
                                 (let ((_%e264241264441%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl264234264418%_))))
                                   (let ((_%hd264242264445%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e264241264441%_)))
                                         (_%tl264243264448%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e264241264441%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd264242264445%_))
                                         (let ((_%e264244264451%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd264242264445%_))))
                                           (if (equal? _%e264244264451%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl264243264448%_))
                                                   (let ((_%e264245264455%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl264243264448%_))))
                                                     (let ((_%hd264246264459%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e264245264455%_)))
                                                           (_%tl264247264462%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e264245264455%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd264246264459%_))
                                                           (let ((_%e264248264465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd264246264459%_))))
                     (let ((_%hd264249264469%_
                            (let ()
                              (declare (not safe))
                              (##car _%e264248264465%_)))
                           (_%tl264250264472%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e264248264465%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd264249264469%_))
                           (if (let ((__tmp265931 |gxc[1]#_g265932_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp265931
                                  _%hd264249264469%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl264250264472%_))
                                   (let ((_%e264251264475%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl264250264472%_))))
                                     (let ((_%hd264252264479%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e264251264475%_)))
                                           (_%tl264253264482%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e264251264475%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl264253264482%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl264247264462%_))
                                               (let ((_%e264254264485%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl264247264462%_))))
                                                 (let ((_%hd264255264489%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e264254264485%_)))
                                                       (_%tl264256264492%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e264254264485%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd264255264489%_))
                                                       (let ((_%e264257264495%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd264255264489%_))))
                 (if (equal? _%e264257264495%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl264256264492%_))
                         (let ((_%e264258264499%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl264256264492%_))))
                           (let ((_%hd264259264503%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e264258264499%_)))
                                 (_%tl264260264506%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e264258264499%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd264259264503%_))
                                 (let ((_%e264261264509%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd264259264503%_))))
                                   (let ((_%hd264262264513%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e264261264509%_)))
                                         (_%tl264263264516%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e264261264509%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd264262264513%_))
                                         (if (let ((__tmp265933
                                                    |gxc[1]#_g265934_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp265933
                                                _%hd264262264513%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl264263264516%_))
                                                 (let ((_%e264264264519%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl264263264516%_))))
                                                   (let ((_%hd264265264523%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e264264264519%_)))
                                                         (_%tl264266264526%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e264264264519%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl264266264526%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl264260264506%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl264198264296%_))
                         ((lambda (_%g264187264529%_
                                   _%g264188264531%_
                                   _%g264189264532%_
                                   _%g264190264533%_
                                   _%g264191264534%_
                                   _%g264192264535%_)
                            (let ((_%clause264606%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'make-!primitive-lambda))
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%g264192264535%_
                                                           '()))
                                               (cons '#f
                                                     (cons 'signature:
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'make-!signature))
                               (cons 'return:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g264190264533%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g264187264529%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked264608%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g264188264531%_))))
                              (_%loop264150%_
                               _%rest264181%_
                               (let ((_%$e264610%_ _%unchecked264608%_))
                                 (if _%$e264610%_
                                     _%$e264610%_
                                     _%unchecked-proc264155%_))
                               (cons _%clause264606%_
                                     _%unchecked-clauses264156%_))))
                          _%hd264265264523%_
                          _%hd264252264479%_
                          _%hd264239264435%_
                          _%hd264226264391%_
                          _%hd264213264347%_
                          _%hd264194264283%_)
                         (_%g264185264272%_ _%g264186264276%_))
                     (_%g264185264272%_ _%g264186264276%_))
                 (_%g264185264272%_ _%g264186264276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g264185264272%_
                                                  _%g264186264276%_))
                                             (_%g264185264272%_
                                              _%g264186264276%_))
                                         (_%g264185264272%_
                                          _%g264186264276%_))))
                                 (_%g264185264272%_ _%g264186264276%_))))
                         (_%g264185264272%_ _%g264186264276%_))
                     (_%g264185264272%_ _%g264186264276%_)))
               (_%g264185264272%_ _%g264186264276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g264185264272%_
                                                _%g264186264276%_))
                                           (_%g264185264272%_
                                            _%g264186264276%_))))
                                   (_%g264185264272%_ _%g264186264276%_))
                               (_%g264185264272%_ _%g264186264276%_))
                           (_%g264185264272%_ _%g264186264276%_))))
                   (_%g264185264272%_ _%g264186264276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g264185264272%_
                                                    _%g264186264276%_))
                                               (_%g264185264272%_
                                                _%g264186264276%_)))
                                         (_%g264185264272%_
                                          _%g264186264276%_))))
                                 (_%g264185264272%_ _%g264186264276%_))
                             (_%g264185264272%_ _%g264186264276%_))))
                     (_%g264185264272%_ _%g264186264276%_))
                 (_%g264185264272%_ _%g264186264276%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g264185264272%_
                                                      _%g264186264276%_))))
                                             (_%g264185264272%_
                                              _%g264186264276%_))))
                                     (_%g264185264272%_ _%g264186264276%_))
                                 (_%g264185264272%_ _%g264186264276%_)))
                           (_%g264185264272%_ _%g264186264276%_))))
                   (_%g264185264272%_ _%g264186264276%_))
               (_%g264185264272%_ _%g264186264276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g264185264272%_
                                                _%g264186264276%_))
                                           (_%g264185264272%_
                                            _%g264186264276%_))
                                       (_%g264185264272%_ _%g264186264276%_))))
                               (_%g264185264272%_ _%g264186264276%_))))
                       (_%g264185264272%_ _%g264186264276%_))
                   (_%g264185264272%_ _%g264186264276%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g264185264272%_
                                                      _%g264186264276%_))))
                                             (_%g264185264272%_
                                              _%g264186264276%_))
                                         (_%g264185264272%_
                                          _%g264186264276%_))))
                                 (_%g264185264272%_ _%g264186264276%_))
                             (_%g264185264272%_ _%g264186264276%_))
                         (_%g264185264272%_ _%g264186264276%_))))
                 (_%g264185264272%_ _%g264186264276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g264185264272%_
                                                  _%g264186264276%_))
                                             (_%g264185264272%_
                                              _%g264186264276%_)))
                                       (_%g264185264272%_ _%g264186264276%_))))
                               (_%g264185264272%_ _%g264186264276%_))))
                       (_%g264185264272%_ _%g264186264276%_))))
               (_%g264185264272%_ _%g264186264276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g264185264272%_
                                                _%g264186264276%_)))))
                                   (_%g264184264614%_ _%hd264183%_)))))
                         (if (pair? _%rest264157264165%_)
                             (let ((_%hd264162264622%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest264157264165%_)))
                                   (_%tl264163264625%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest264157264165%_))))
                               (let* ((_%hd264628%_ _%hd264162264622%_)
                                      (_%rest264631%_ _%tl264163264625%_))
                                 (_%K264161264618%_
                                  _%rest264631%_
                                  _%hd264628%_)))
                             (_%else264159264177%_))))))
                (begin
                  (let ((_g265924_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g265923_)
                               (##values-length _g265923_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g265924_ 2)))
                        (error "Context expects 2 values" _g265924_)))
                  (let ((_%unchecked-proc264634%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g265923_ 0)))
                        (_%unchecked-clauses264636%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g265923_ 1))))
                    (if _%unchecked-proc264634%_
                        (let* ((_%g264638264662%_
                                (lambda (_%g264639264658%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g264639264658%_))))
                               (_%g264637264747%_
                                (lambda (_%g264639264666%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g264639264666%_))
                                      (let ((_%e264642264669%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g264639264666%_))))
                                        (let ((_%hd264643264673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264642264669%_)))
                                              (_%tl264644264676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264642264669%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl264644264676%_))
                                              (let ((_%e264645264679%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl264644264676%_))))
                                                (let ((_%hd264646264683%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e264645264679%_)))
                                                      (_%tl264647264686%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e264645264679%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd264646264683%_))
                                                      (let ((_g265935_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd264646264683%_ '0))))
                (begin
                  (let ((_g265936_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g265935_)
                               (##values-length _g265935_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g265936_ 2)))
                        (error "Context expects 2 values" _g265936_)))
                  (let ((_%target264648264689%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g265935_ 0)))
                        (_%tl264650264692%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g265935_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl264650264692%_))
                        (letrec ((_%loop264651264695%_
                                  (lambda (_%hd264649264699%_
                                           _%clause264655264702%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd264649264699%_))
                                        (let ((_%e264652264704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd264649264699%_))))
                                          (let ((_%lp-hd264653264708%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e264652264704%_)))
                                                (_%lp-tl264654264711%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e264652264704%_))))
                                            (_%loop264651264695%_
                                             _%lp-tl264654264711%_
                                             (cons _%lp-hd264653264708%_
                                                   _%clause264655264702%_))))
                                        (let ((_%clause264656264714%_
                                               (reverse _%clause264655264702%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl264647264686%_))
                                              ((lambda (_%g264640264717%_
                                                        _%g264641264719%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g264641264719%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0
                                    '#f
                                    'make-!primitive-case-lambda))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list))
                                             (let ((__tmp265937
                                                    (lambda (_%g264738264741%_
                                                             _%g264739264744%_)
                                                      (cons _%g264738264741%_
                                                            _%g264739264744%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp265937
                                                '()
                                                _%g264640264717%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause264656264714%_
                                               _%hd264643264673%_)
                                              (_%g264638264662%_
                                               _%g264639264666%_)))))))
                          (_%loop264651264695%_ _%target264648264689%_ '()))
                        (_%g264638264662%_ _%g264639264666%_)))))
              (_%g264638264662%_ _%g264639264666%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g264638264662%_
                                               _%g264639264666%_))))
                                      (_%g264638264662%_ _%g264639264666%_)))))
                          (_%g264637264747%_
                           (list _%unchecked-proc264634%_
                                 _%unchecked-clauses264636%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g264089264100%_))))
                                        (_%g264087264751%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g263874263952%_
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'make-!primitive-case-lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '@list))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%g263988264069%_
                                          _%g263989264071%_))
                                       (let ((__tmp265938
                                              (lambda (_%g264754264758%_
                                                       _%g264755264761%_
                                                       _%g264756264763%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!primitive-lambda))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%g264755264761%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g264754264758%_ '())))))
              _%g264756264763%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__1
                                          __tmp265938
                                          '()
                                          _%g263988264069%_
                                          _%g263989264071%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig263999264065%_
                                    _%arity264000264067%_))))))
                   (_%loop263993264025%_ _%target263990264019%_ '() '()))
                 (_%g263986264012%_ _%g263987264016%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g263986264012%_
                                                _%g263987264016%_)))))
                                   (_%g263985264766%_ _%signatures263983%_))
                                 (_%g263871263895%_ _%g263872263899%_)))
                           _%case-signature263889263947%_
                           _%hd263879263916%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop263884263928%_
                                                   _%target263881263922%_
                                                   '()))
                                                (_%g263871263895%_
                                                 _%g263872263899%_)))))
                                      (_%g263871263895%_ _%g263872263899%_))))
                              (_%g263871263895%_ _%g263872263899%_))))
                      (_%g263871263895%_ _%g263872263899%_)))))
          (_%g263870264770%_ _%stx263868%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx264778%_)
        (let* ((_%__stx265758265759%_ _%$stx264778%_)
               (_%g264784264844%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx265758265759%_)))))
          (let ((_%__kont265761265762%_
                 (lambda (_%g264786265066%_ _%g264787265068%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g264787265068%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g264787265068%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g264786265066%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont265763265764%_
                 (lambda (_%g264801264991%_
                          _%g264802264993%_
                          _%g264803264994%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g264803264994%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g264803264994%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g264802264993%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g264801264991%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont265765265766%_
                 (lambda (_%g264820264905%_
                          _%g264821264907%_
                          _%g264822264908%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g264822264908%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g264822264908%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g264821264907%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g264820264905%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx265758265759%_))
                (let ((_%e264788265022%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx265758265759%_))))
                  (let ((_%tl264790265029%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e264788265022%_)))
                        (_%hd264789265026%_
                         (let ()
                           (declare (not safe))
                           (##car _%e264788265022%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl264790265029%_))
                        (let ((_%e264791265032%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl264790265029%_))))
                          (let ((_%tl264793265039%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264791265032%_)))
                                (_%hd264792265036%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264791265032%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd264792265036%_))
                                (let ((_%e264794265042%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd264792265036%_))))
                                  (if (equal? _%e264794265042%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl264793265039%_))
                                          (let ((_%e264795265046%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl264793265039%_))))
                                            (let ((_%tl264797265053%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e264795265046%_)))
                                                  (_%hd264796265050%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e264795265046%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl264797265053%_))
                                                  (let ((_%e264798265056%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl264797265053%_))))
                                                    (let ((_%tl264800265063%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e264798265056%_)))
                                                          (_%hd264799265060%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e264798265056%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl264800265063%_))
                                                          (_%__kont265761265762%_
                                                           _%hd264799265060%_
                                                           _%hd264796265050%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g264784264844%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g264784264844%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g264784264844%_)))
                                      (if (equal? _%e264794265042%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl264793265039%_))
                                              (let ((_%e264811264961%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl264793265039%_))))
                                                (let ((_%tl264813264968%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e264811264961%_)))
                                                      (_%hd264812264965%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e264811264961%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl264813264968%_))
                                                      (let ((_%e264814264971%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl264813264968%_))))
                (let ((_%tl264816264978%_
                       (let () (declare (not safe)) (##cdr _%e264814264971%_)))
                      (_%hd264815264975%_
                       (let ()
                         (declare (not safe))
                         (##car _%e264814264971%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl264816264978%_))
                      (let ((_%e264817264981%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl264816264978%_))))
                        (let ((_%tl264819264988%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264817264981%_)))
                              (_%hd264818264985%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264817264981%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl264819264988%_))
                              (_%__kont265763265764%_
                               _%hd264818264985%_
                               _%hd264815264975%_
                               _%hd264812264965%_)
                              (let ()
                                (declare (not safe))
                                (_%g264784264844%_)))))
                      (let () (declare (not safe)) (_%g264784264844%_)))))
              (let () (declare (not safe)) (_%g264784264844%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g264784264844%_)))
                                          (if (equal? _%e264794265042%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl264793265039%_))
                                                  (let ((_%e264830264875%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl264793265039%_))))
                                                    (let ((_%tl264832264882%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e264830264875%_)))
                                                          (_%hd264831264879%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e264830264875%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl264832264882%_))
                                                          (let ((_%e264833264885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl264832264882%_))))
                    (let ((_%tl264835264892%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e264833264885%_)))
                          (_%hd264834264889%_
                           (let ()
                             (declare (not safe))
                             (##car _%e264833264885%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl264835264892%_))
                          (let ((_%e264836264895%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl264835264892%_))))
                            (let ((_%tl264838264902%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e264836264895%_)))
                                  (_%hd264837264899%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e264836264895%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl264838264902%_))
                                  (_%__kont265765265766%_
                                   _%hd264837264899%_
                                   _%hd264834264889%_
                                   _%hd264831264879%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g264784264844%_)))))
                          (let () (declare (not safe)) (_%g264784264844%_)))))
                  (let () (declare (not safe)) (_%g264784264844%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g264784264844%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g264784264844%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g264784264844%_)))))
                        (let () (declare (not safe)) (_%g264784264844%_)))))
                (let () (declare (not safe)) (_%g264784264844%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx265090%_)
        (let* ((_%g265094265114%_
                (lambda (_%g265095265110%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265095265110%_))))
               (_%g265093265183%_
                (lambda (_%g265095265118%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265095265118%_))
                      (let ((_%e265097265121%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265095265118%_))))
                        (let ((_%hd265098265125%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265097265121%_)))
                              (_%tl265099265128%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265097265121%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl265099265128%_))
                              (let ((_g265939_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl265099265128%_
                                        '0))))
                                (begin
                                  (let ((_g265940_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g265939_)
                                               (##values-length _g265939_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g265940_ 2)))
                                        (error "Context expects 2 values"
                                               _g265940_)))
                                  (let ((_%target265100265131%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g265939_ 0)))
                                        (_%tl265102265134%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g265939_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl265102265134%_))
                                        (letrec ((_%loop265103265137%_
                                                  (lambda (_%hd265101265141%_
                                                           _%decl265107265144%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd265101265141%_))
                                                        (let ((_%e265104265146%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd265101265141%_))))
                  (let ((_%lp-hd265105265150%_
                         (let ()
                           (declare (not safe))
                           (##car _%e265104265146%_)))
                        (_%lp-tl265106265153%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e265104265146%_))))
                    (_%loop265103265137%_
                     _%lp-tl265106265153%_
                     (cons _%lp-hd265105265150%_ _%decl265107265144%_))))
                (let ((_%decl265108265156%_ (reverse _%decl265107265144%_)))
                  ((lambda (_%g265096265159%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp265941
                                  (lambda (_%g265174265177%_ _%g265175265180%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g265174265177%_)
                                          _%g265175265180%_))))
                             (declare (not safe))
                             (foldr__0 __tmp265941 '() _%g265096265159%_))))
                   _%decl265108265156%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop265103265137%_
                                           _%target265100265131%_
                                           '()))
                                        (_%g265094265114%_
                                         _%g265095265118%_)))))
                              (_%g265094265114%_ _%g265095265118%_))))
                      (_%g265094265114%_ _%g265095265118%_)))))
          (_%g265093265183%_ _%$stx265090%_))))))
