(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g132430_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132432_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132434_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132436_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132437_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132439_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132440_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132442_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132443_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132445_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132446_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx131513%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx131513%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx131516%_)
        (let* ((_%g131519131543%_
                (lambda (_%g131520131539%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131520131539%_))))
               (_%g131518131846%_
                (lambda (_%g131520131547%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131520131547%_))
                      (let ((_%e131523131550%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g131520131547%_))))
                        (let ((_%hd131524131554%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131523131550%_)))
                              (_%tl131525131557%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131523131550%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131525131557%_))
                              (let ((_%e131526131560%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl131525131557%_))))
                                (let ((_%hd131527131564%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131526131560%_)))
                                      (_%tl131528131567%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131526131560%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl131528131567%_))
                                      (let ((_g132421_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl131528131567%_
                                                '0))))
                                        (begin
                                          (let ((_g132422_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g132421_)
                                                       (##vector-length
                                                        _g132421_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g132422_ 2)))
                                                (error "Context expects 2 values"
                                                       _g132422_)))
                                          (let ((_%target131529131570%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g132421_ 0)))
                                                (_%tl131531131573%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g132421_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131531131573%_))
                                                (letrec ((_%loop131532131576%_
                                                          (lambda (_%hd131530131580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause131536131583%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131530131580%_))
                        (let ((_%e131533131586%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd131530131580%_))))
                          (let ((_%lp-hd131534131590%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131533131586%_)))
                                (_%lp-tl131535131593%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131533131586%_))))
                            (_%loop131532131576%_
                             _%lp-tl131535131593%_
                             (cons _%lp-hd131534131590%_
                                   _%clause131536131583%_))))
                        (let ((_%clause131537131596%_
                               (reverse _%clause131536131583%_)))
                          ((lambda (_%L131600%_ _%L131602%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L131602%_))
                                 (let* ((_%g131621131638%_
                                         (lambda (_%g131622131634%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g131622131634%_))))
                                        (_%g131620131699%_
                                         (lambda (_%g131622131642%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g131622131642%_))
                                               (let ((_g132423_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g131622131642%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g132424_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g132423_)
                        (##vector-length _g132423_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g132424_ 2)))
                 (error "Context expects 2 values" _g132424_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target131624131645%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g132423_
                                                             0)))
                                                         (_%tl131626131648%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g132423_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl131626131648%_))
                                                         (letrec ((_%loop131627131651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd131625131655%_ _%clause131631131658%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd131625131655%_))
                                 (let ((_%e131628131661%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd131625131655%_))))
                                   (let ((_%lp-hd131629131665%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e131628131661%_)))
                                         (_%lp-tl131630131668%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e131628131661%_))))
                                     (_%loop131627131651%_
                                      _%lp-tl131630131668%_
                                      (cons _%lp-hd131629131665%_
                                            _%clause131631131658%_))))
                                 (let ((_%clause131632131671%_
                                        (reverse _%clause131631131658%_)))
                                   ((lambda (_%L131675%_)
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'lambda))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '$stx))
                                                        '())
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'ast-case))
                      (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '$stx))
                            (cons _%L131602%_
                                  (let ((__tmp132425
                                         (lambda (_%g131690131693%_
                                                  _%g131691131696%_)
                                           (cons _%g131690131693%_
                                                 _%g131691131696%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp132425 '() _%L131675%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause131632131671%_))))))
                   (_%loop131627131651%_ _%target131624131645%_ '()))
                 (_%g131621131638%_ _%g131622131642%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g131621131638%_
                                                _%g131622131642%_)))))
                                   (_%g131620131699%_
                                    (let ((__tmp132428
                                           (lambda (_%clause131703%_)
                                             (let* ((_%__stx132341132342%_
                                                     _%clause131703%_)
                                                    (_%g131707131734%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx132341132342%_)))))
                                               (let ((_%__kont132344132345%_
                                                      (lambda (_%L131819%_
                                                               _%L131821%_)
                                                        (cons _%L131821%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L131819%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont132346132347%_
                                                      (lambda (_%L131771%_
                                                               _%L131773%_
                                                               _%L131774%_)
                                                        (cons _%L131774%_
                                                              (cons _%L131773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L131771%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx132341132342%_))
                                                     (let ((_%e131711131799%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx132341132342%_))))
                                                       (let ((_%tl131713131806%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e131711131799%_)))
                     (_%hd131712131803%_
                      (let () (declare (not safe)) (##car _%e131711131799%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl131713131806%_))
                     (let ((_%e131714131809%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl131713131806%_))))
                       (let ((_%tl131716131816%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e131714131809%_)))
                             (_%hd131715131813%_
                              (let ()
                                (declare (not safe))
                                (##car _%e131714131809%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl131716131816%_))
                             (_%__kont132344132345%_
                              _%hd131715131813%_
                              _%hd131712131803%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl131716131816%_))
                                 (let ((_%e131726131761%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl131716131816%_))))
                                   (let ((_%tl131728131768%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e131726131761%_)))
                                         (_%hd131727131765%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e131726131761%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl131728131768%_))
                                         (_%__kont132346132347%_
                                          _%hd131727131765%_
                                          _%hd131715131813%_
                                          _%hd131712131803%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g131707131734%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g131707131734%_))))))
                     (let () (declare (not safe)) (_%g131707131734%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g131707131734%_)))))))
                                          (__tmp132426
                                           (let ((__tmp132427
                                                  (lambda (_%g131837131840%_
                                                           _%g131838131843%_)
                                                    (cons _%g131837131840%_
                                                          _%g131838131843%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp132427
                                              '()
                                              _%L131600%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp132428 __tmp132426))))
                                 (_%g131519131543%_ _%g131520131547%_)))
                           _%clause131537131596%_
                           _%hd131527131564%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop131532131576%_
                                                   _%target131529131570%_
                                                   '()))
                                                (_%g131519131543%_
                                                 _%g131520131547%_)))))
                                      (_%g131519131543%_ _%g131520131547%_))))
                              (_%g131519131543%_ _%g131520131547%_))))
                      (_%g131519131543%_ _%g131520131547%_)))))
          (_%g131518131846%_ _%stx131516%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj132391
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj132391
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132391 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj132391
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj132391
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132391 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132391 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132391 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132391 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132391 ':init! '11 '#f '#f))
        (let ((__tmp132429 |gxc[1]#_g132430_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj132391 __tmp132429 '12 '#f '#f))
        (let ((__tmp132431 |gxc[1]#_g132432_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj132391 __tmp132431 '13 '#f '#f))
        (let ((__tmp132433 |gxc[1]#_g132434_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj132391 __tmp132433 '14 '#f '#f))
        (let ((__tmp132435
               (cons (cons 'gensyms |gxc[1]#_g132436_|)
                     (cons (cons 'bindings |gxc[1]#_g132437_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj132391 __tmp132435 '15 '#f '#f))
        (let ((__tmp132438
               (cons (cons 'gensyms |gxc[1]#_g132439_|)
                     (cons (cons 'bindings |gxc[1]#_g132440_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj132391 __tmp132438 '16 '#f '#f))
        (let ((__tmp132441
               (cons (cons 'gensyms |gxc[1]#_g132442_|)
                     (cons (cons 'bindings |gxc[1]#_g132443_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj132391 __tmp132441 '17 '#f '#f))
        (let ((__tmp132444
               (cons (cons 'gensyms |gxc[1]#_g132445_|)
                     (cons (cons 'bindings |gxc[1]#_g132446_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj132391 __tmp132444 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132391 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132391 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132391 '() '20 '#f '#f))
        __obj132391))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx131853%_)
        (let* ((_%g131857131871%_
                (lambda (_%g131858131867%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131858131867%_))))
               (_%g131856131912%_
                (lambda (_%g131858131875%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131858131875%_))
                      (let ((_%e131860131878%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g131858131875%_))))
                        (let ((_%hd131861131882%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131860131878%_)))
                              (_%tl131862131885%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131860131878%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131862131885%_))
                              (let ((_%e131863131888%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl131862131885%_))))
                                (let ((_%hd131864131892%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131863131888%_)))
                                      (_%tl131865131895%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131863131888%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl131865131895%_))
                                      ((lambda (_%L131898%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'with-lock))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '__verbose-mutex))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'lambda))
                         (cons '() (cons _%L131898%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd131864131892%_)
                                      (_%g131857131871%_ _%g131858131875%_))))
                              (_%g131857131871%_ _%g131858131875%_))))
                      (_%g131857131871%_ _%g131858131875%_)))))
          (_%g131856131912%_ _%$stx131853%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx131916%_)
        (let* ((_%g131920131934%_
                (lambda (_%g131921131930%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131921131930%_))))
               (_%g131919131975%_
                (lambda (_%g131921131938%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131921131938%_))
                      (let ((_%e131923131941%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g131921131938%_))))
                        (let ((_%hd131924131945%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131923131941%_)))
                              (_%tl131925131948%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131923131941%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131925131948%_))
                              (let ((_%e131926131951%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl131925131948%_))))
                                (let ((_%hd131927131955%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131926131951%_)))
                                      (_%tl131928131958%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131926131951%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl131928131958%_))
                                      ((lambda (_%L131961%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'spawn))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'lambda))
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L131961%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd131927131955%_)
                                      (_%g131920131934%_ _%g131921131938%_))))
                              (_%g131920131934%_ _%g131921131938%_))))
                      (_%g131920131934%_ _%g131921131938%_)))))
          (_%g131919131975%_ _%$stx131916%_))))))
