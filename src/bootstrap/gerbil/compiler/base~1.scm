(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g187786_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187788_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187790_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187792_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187793_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187795_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187796_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187798_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187799_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187801_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187802_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx186746%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx186746%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx186749%_)
        (let* ((_%g186752186776%_
                (lambda (_%g186753186772%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g186753186772%_))))
               (_%g186751187075%_
                (lambda (_%g186753186780%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g186753186780%_))
                      (let ((_%e186756186783%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g186753186780%_))))
                        (let ((_%hd186757186787%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186756186783%_)))
                              (_%tl186758186790%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186756186783%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl186758186790%_))
                              (let ((_%e186759186793%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl186758186790%_))))
                                (let ((_%hd186760186797%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e186759186793%_)))
                                      (_%tl186761186800%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e186759186793%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl186761186800%_))
                                      (let ((_g187777_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl186761186800%_
                                                '0))))
                                        (begin
                                          (let ((_g187778_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g187777_)
                                                       (##values-length
                                                        _g187777_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g187778_ 2)))
                                                (error "Context expects 2 values"
                                                       _g187778_)))
                                          (let ((_%target186762186803%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g187777_ 0)))
                                                (_%tl186764186806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g187777_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl186764186806%_))
                                                (letrec ((_%loop186765186809%_
                                                          (lambda (_%hd186763186813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause186769186816%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd186763186813%_))
                        (let ((_%e186766186818%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd186763186813%_))))
                          (let ((_%lp-hd186767186822%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e186766186818%_)))
                                (_%lp-tl186768186825%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e186766186818%_))))
                            (_%loop186765186809%_
                             _%lp-tl186768186825%_
                             (cons _%lp-hd186767186822%_
                                   _%clause186769186816%_))))
                        (let ((_%clause186770186828%_
                               (reverse _%clause186769186816%_)))
                          ((lambda (_%g186754186831%_ _%g186755186833%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g186755186833%_))
                                 (let* ((_%g186852186869%_
                                         (lambda (_%g186853186865%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g186853186865%_))))
                                        (_%g186851186928%_
                                         (lambda (_%g186853186873%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g186853186873%_))
                                               (let ((_g187779_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g186853186873%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g187780_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g187779_)
                        (##values-length _g187779_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g187780_ 2)))
                 (error "Context expects 2 values" _g187780_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target186855186876%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g187779_
                                                             0)))
                                                         (_%tl186857186879%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g187779_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl186857186879%_))
                                                         (letrec ((_%loop186858186882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd186856186886%_ _%clause186862186889%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd186856186886%_))
                                 (let ((_%e186859186891%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd186856186886%_))))
                                   (let ((_%lp-hd186860186895%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e186859186891%_)))
                                         (_%lp-tl186861186898%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e186859186891%_))))
                                     (_%loop186858186882%_
                                      _%lp-tl186861186898%_
                                      (cons _%lp-hd186860186895%_
                                            _%clause186862186889%_))))
                                 (let ((_%clause186863186901%_
                                        (reverse _%clause186862186889%_)))
                                   ((lambda (_%g186854186904%_)
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
                            (cons _%g186755186833%_
                                  (let ((__tmp187781
                                         (lambda (_%g186919186922%_
                                                  _%g186920186925%_)
                                           (cons _%g186919186922%_
                                                 _%g186920186925%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp187781
                                     '()
                                     _%g186854186904%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause186863186901%_))))))
                   (_%loop186858186882%_ _%target186855186876%_ '()))
                 (_%g186852186869%_ _%g186853186873%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g186852186869%_
                                                _%g186853186873%_)))))
                                   (_%g186851186928%_
                                    (let ((__tmp187784
                                           (lambda (_%clause186932%_)
                                             (let* ((_%__stx187696187697%_
                                                     _%clause186932%_)
                                                    (_%g186936186963%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx187696187697%_)))))
                                               (let ((_%__kont187699187700%_
                                                      (lambda (_%g186938187048%_
                                                               _%g186939187050%_)
                                                        (cons _%g186939187050%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g186938187048%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont187701187702%_
                                                      (lambda (_%g186946187000%_
                                                               _%g186947187002%_
                                                               _%g186948187003%_)
                                                        (cons _%g186948187003%_
                                                              (cons _%g186947187002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g186946187000%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx187696187697%_))
                                                     (let ((_%e186940187028%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx187696187697%_))))
                                                       (let ((_%tl186942187035%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e186940187028%_)))
                     (_%hd186941187032%_
                      (let () (declare (not safe)) (##car _%e186940187028%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl186942187035%_))
                     (let ((_%e186943187038%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl186942187035%_))))
                       (let ((_%tl186945187045%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e186943187038%_)))
                             (_%hd186944187042%_
                              (let ()
                                (declare (not safe))
                                (##car _%e186943187038%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl186945187045%_))
                             (_%__kont187699187700%_
                              _%hd186944187042%_
                              _%hd186941187032%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl186945187045%_))
                                 (let ((_%e186955186990%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl186945187045%_))))
                                   (let ((_%tl186957186997%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e186955186990%_)))
                                         (_%hd186956186994%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e186955186990%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl186957186997%_))
                                         (_%__kont187701187702%_
                                          _%hd186956186994%_
                                          _%hd186944187042%_
                                          _%hd186941187032%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g186936186963%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g186936186963%_))))))
                     (let () (declare (not safe)) (_%g186936186963%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g186936186963%_)))))))
                                          (__tmp187782
                                           (let ((__tmp187783
                                                  (lambda (_%g187066187069%_
                                                           _%g187067187072%_)
                                                    (cons _%g187066187069%_
                                                          _%g187067187072%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp187783
                                              '()
                                              _%g186754186831%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp187784 __tmp187782))))
                                 (_%g186752186776%_ _%g186753186780%_)))
                           _%clause186770186828%_
                           _%hd186760186797%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop186765186809%_
                                                   _%target186762186803%_
                                                   '()))
                                                (_%g186752186776%_
                                                 _%g186753186780%_)))))
                                      (_%g186752186776%_ _%g186753186780%_))))
                              (_%g186752186776%_ _%g186753186780%_))))
                      (_%g186752186776%_ _%g186753186780%_)))))
          (_%g186751187075%_ _%stx186749%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj187746
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
           __obj187746
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187746 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj187746
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj187746
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187746 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187746 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187746 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187746 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187746 ':init! '12 '#f '#f))
        (let ((__tmp187785 |gxc[1]#_g187786_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj187746 __tmp187785 '3 '#f '#f))
        (let ((__tmp187787 |gxc[1]#_g187788_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj187746 __tmp187787 '13 '#f '#f))
        (let ((__tmp187789 |gxc[1]#_g187790_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj187746 __tmp187789 '14 '#f '#f))
        (let ((__tmp187791
               (cons (cons 'gensyms |gxc[1]#_g187792_|)
                     (cons (cons 'bindings |gxc[1]#_g187793_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj187746 __tmp187791 '15 '#f '#f))
        (let ((__tmp187794
               (cons (cons 'gensyms |gxc[1]#_g187795_|)
                     (cons (cons 'bindings |gxc[1]#_g187796_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj187746 __tmp187794 '16 '#f '#f))
        (let ((__tmp187797
               (cons (cons 'gensyms |gxc[1]#_g187798_|)
                     (cons (cons 'bindings |gxc[1]#_g187799_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj187746 __tmp187797 '17 '#f '#f))
        (let ((__tmp187800
               (cons (cons 'gensyms |gxc[1]#_g187801_|)
                     (cons (cons 'bindings |gxc[1]#_g187802_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj187746 __tmp187800 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187746 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187746 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187746 '() '20 '#f '#f))
        __obj187746))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx187081%_)
        (let* ((_%g187085187099%_
                (lambda (_%g187086187095%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187086187095%_))))
               (_%g187084187140%_
                (lambda (_%g187086187103%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187086187103%_))
                      (let ((_%e187088187106%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g187086187103%_))))
                        (let ((_%hd187089187110%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187088187106%_)))
                              (_%tl187090187113%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187088187106%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187090187113%_))
                              (let ((_%e187091187116%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl187090187113%_))))
                                (let ((_%hd187092187120%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187091187116%_)))
                                      (_%tl187093187123%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187091187116%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl187093187123%_))
                                      ((lambda (_%g187087187126%_)
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
                         (cons '() (cons _%g187087187126%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd187092187120%_)
                                      (_%g187085187099%_ _%g187086187103%_))))
                              (_%g187085187099%_ _%g187086187103%_))))
                      (_%g187085187099%_ _%g187086187103%_)))))
          (_%g187084187140%_ _%$stx187081%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx187144%_)
        (let* ((_%g187148187162%_
                (lambda (_%g187149187158%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187149187158%_))))
               (_%g187147187203%_
                (lambda (_%g187149187166%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187149187166%_))
                      (let ((_%e187151187169%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g187149187166%_))))
                        (let ((_%hd187152187173%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187151187169%_)))
                              (_%tl187153187176%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187151187169%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187153187176%_))
                              (let ((_%e187154187179%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl187153187176%_))))
                                (let ((_%hd187155187183%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187154187179%_)))
                                      (_%tl187156187186%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187154187179%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl187156187186%_))
                                      ((lambda (_%g187150187189%_)
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
                         (cons _%g187150187189%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd187155187183%_)
                                      (_%g187148187162%_ _%g187149187166%_))))
                              (_%g187148187162%_ _%g187149187166%_))))
                      (_%g187148187162%_ _%g187149187166%_)))))
          (_%g187147187203%_ _%$stx187144%_))))))
