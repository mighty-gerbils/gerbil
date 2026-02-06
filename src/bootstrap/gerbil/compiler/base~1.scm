(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g187694_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187696_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187698_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187700_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187701_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187703_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187704_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187706_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187707_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187709_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g187710_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx186654%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx186654%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx186657%_)
        (let* ((_%g186660186684%_
                (lambda (_%g186661186680%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g186661186680%_))))
               (_%g186659186983%_
                (lambda (_%g186661186688%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g186661186688%_))
                      (let ((_%e186664186691%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g186661186688%_))))
                        (let ((_%hd186665186695%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186664186691%_)))
                              (_%tl186666186698%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186664186691%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl186666186698%_))
                              (let ((_%e186667186701%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl186666186698%_))))
                                (let ((_%hd186668186705%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e186667186701%_)))
                                      (_%tl186669186708%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e186667186701%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl186669186708%_))
                                      (let ((_g187685_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl186669186708%_
                                                '0))))
                                        (begin
                                          (let ((_g187686_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g187685_)
                                                       (##values-length
                                                        _g187685_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g187686_ 2)))
                                                (error "Context expects 2 values"
                                                       _g187686_)))
                                          (let ((_%target186670186711%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g187685_ 0)))
                                                (_%tl186672186714%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g187685_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl186672186714%_))
                                                (letrec ((_%loop186673186717%_
                                                          (lambda (_%hd186671186721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause186677186724%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd186671186721%_))
                        (let ((_%e186674186726%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd186671186721%_))))
                          (let ((_%lp-hd186675186730%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e186674186726%_)))
                                (_%lp-tl186676186733%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e186674186726%_))))
                            (_%loop186673186717%_
                             _%lp-tl186676186733%_
                             (cons _%lp-hd186675186730%_
                                   _%clause186677186724%_))))
                        (let ((_%clause186678186736%_
                               (reverse _%clause186677186724%_)))
                          ((lambda (_%g186662186739%_ _%g186663186741%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g186663186741%_))
                                 (let* ((_%g186760186777%_
                                         (lambda (_%g186761186773%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g186761186773%_))))
                                        (_%g186759186836%_
                                         (lambda (_%g186761186781%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g186761186781%_))
                                               (let ((_g187687_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g186761186781%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g187688_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g187687_)
                        (##values-length _g187687_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g187688_ 2)))
                 (error "Context expects 2 values" _g187688_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target186763186784%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g187687_
                                                             0)))
                                                         (_%tl186765186787%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g187687_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl186765186787%_))
                                                         (letrec ((_%loop186766186790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd186764186794%_ _%clause186770186797%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd186764186794%_))
                                 (let ((_%e186767186799%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd186764186794%_))))
                                   (let ((_%lp-hd186768186803%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e186767186799%_)))
                                         (_%lp-tl186769186806%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e186767186799%_))))
                                     (_%loop186766186790%_
                                      _%lp-tl186769186806%_
                                      (cons _%lp-hd186768186803%_
                                            _%clause186770186797%_))))
                                 (let ((_%clause186771186809%_
                                        (reverse _%clause186770186797%_)))
                                   ((lambda (_%g186762186812%_)
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
                            (cons _%g186663186741%_
                                  (let ((__tmp187689
                                         (lambda (_%g186827186830%_
                                                  _%g186828186833%_)
                                           (cons _%g186827186830%_
                                                 _%g186828186833%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp187689
                                     '()
                                     _%g186762186812%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause186771186809%_))))))
                   (_%loop186766186790%_ _%target186763186784%_ '()))
                 (_%g186760186777%_ _%g186761186781%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g186760186777%_
                                                _%g186761186781%_)))))
                                   (_%g186759186836%_
                                    (let ((__tmp187692
                                           (lambda (_%clause186840%_)
                                             (let* ((_%__stx187604187605%_
                                                     _%clause186840%_)
                                                    (_%g186844186871%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx187604187605%_)))))
                                               (let ((_%__kont187607187608%_
                                                      (lambda (_%g186846186956%_
                                                               _%g186847186958%_)
                                                        (cons _%g186847186958%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g186846186956%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont187609187610%_
                                                      (lambda (_%g186854186908%_
                                                               _%g186855186910%_
                                                               _%g186856186911%_)
                                                        (cons _%g186856186911%_
                                                              (cons _%g186855186910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g186854186908%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx187604187605%_))
                                                     (let ((_%e186848186936%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx187604187605%_))))
                                                       (let ((_%tl186850186943%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e186848186936%_)))
                     (_%hd186849186940%_
                      (let () (declare (not safe)) (##car _%e186848186936%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl186850186943%_))
                     (let ((_%e186851186946%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl186850186943%_))))
                       (let ((_%tl186853186953%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e186851186946%_)))
                             (_%hd186852186950%_
                              (let ()
                                (declare (not safe))
                                (##car _%e186851186946%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl186853186953%_))
                             (_%__kont187607187608%_
                              _%hd186852186950%_
                              _%hd186849186940%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl186853186953%_))
                                 (let ((_%e186863186898%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl186853186953%_))))
                                   (let ((_%tl186865186905%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e186863186898%_)))
                                         (_%hd186864186902%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e186863186898%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl186865186905%_))
                                         (_%__kont187609187610%_
                                          _%hd186864186902%_
                                          _%hd186852186950%_
                                          _%hd186849186940%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g186844186871%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g186844186871%_))))))
                     (let () (declare (not safe)) (_%g186844186871%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g186844186871%_)))))))
                                          (__tmp187690
                                           (let ((__tmp187691
                                                  (lambda (_%g186974186977%_
                                                           _%g186975186980%_)
                                                    (cons _%g186974186977%_
                                                          _%g186975186980%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp187691
                                              '()
                                              _%g186662186739%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp187692 __tmp187690))))
                                 (_%g186660186684%_ _%g186661186688%_)))
                           _%clause186678186736%_
                           _%hd186668186705%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop186673186717%_
                                                   _%target186670186711%_
                                                   '()))
                                                (_%g186660186684%_
                                                 _%g186661186688%_)))))
                                      (_%g186660186684%_ _%g186661186688%_))))
                              (_%g186660186684%_ _%g186661186688%_))))
                      (_%g186660186684%_ _%g186661186688%_)))))
          (_%g186659186983%_ _%stx186657%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj187654
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
           __obj187654
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187654 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj187654
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj187654
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187654 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187654 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187654 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187654 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187654 ':init! '12 '#f '#f))
        (let ((__tmp187693 |gxc[1]#_g187694_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj187654 __tmp187693 '3 '#f '#f))
        (let ((__tmp187695 |gxc[1]#_g187696_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj187654 __tmp187695 '13 '#f '#f))
        (let ((__tmp187697 |gxc[1]#_g187698_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj187654 __tmp187697 '14 '#f '#f))
        (let ((__tmp187699
               (cons (cons 'gensyms |gxc[1]#_g187700_|)
                     (cons (cons 'bindings |gxc[1]#_g187701_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj187654 __tmp187699 '15 '#f '#f))
        (let ((__tmp187702
               (cons (cons 'gensyms |gxc[1]#_g187703_|)
                     (cons (cons 'bindings |gxc[1]#_g187704_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj187654 __tmp187702 '16 '#f '#f))
        (let ((__tmp187705
               (cons (cons 'gensyms |gxc[1]#_g187706_|)
                     (cons (cons 'bindings |gxc[1]#_g187707_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj187654 __tmp187705 '17 '#f '#f))
        (let ((__tmp187708
               (cons (cons 'gensyms |gxc[1]#_g187709_|)
                     (cons (cons 'bindings |gxc[1]#_g187710_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj187654 __tmp187708 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187654 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187654 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj187654 '() '20 '#f '#f))
        __obj187654))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx186989%_)
        (let* ((_%g186993187007%_
                (lambda (_%g186994187003%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g186994187003%_))))
               (_%g186992187048%_
                (lambda (_%g186994187011%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g186994187011%_))
                      (let ((_%e186996187014%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g186994187011%_))))
                        (let ((_%hd186997187018%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186996187014%_)))
                              (_%tl186998187021%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186996187014%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl186998187021%_))
                              (let ((_%e186999187024%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl186998187021%_))))
                                (let ((_%hd187000187028%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e186999187024%_)))
                                      (_%tl187001187031%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e186999187024%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl187001187031%_))
                                      ((lambda (_%g186995187034%_)
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
                         (cons '() (cons _%g186995187034%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd187000187028%_)
                                      (_%g186993187007%_ _%g186994187011%_))))
                              (_%g186993187007%_ _%g186994187011%_))))
                      (_%g186993187007%_ _%g186994187011%_)))))
          (_%g186992187048%_ _%$stx186989%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx187052%_)
        (let* ((_%g187056187070%_
                (lambda (_%g187057187066%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187057187066%_))))
               (_%g187055187111%_
                (lambda (_%g187057187074%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187057187074%_))
                      (let ((_%e187059187077%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g187057187074%_))))
                        (let ((_%hd187060187081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187059187077%_)))
                              (_%tl187061187084%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187059187077%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187061187084%_))
                              (let ((_%e187062187087%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl187061187084%_))))
                                (let ((_%hd187063187091%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187062187087%_)))
                                      (_%tl187064187094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187062187087%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl187064187094%_))
                                      ((lambda (_%g187058187097%_)
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
                         (cons _%g187058187097%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd187063187091%_)
                                      (_%g187056187070%_ _%g187057187074%_))))
                              (_%g187056187070%_ _%g187057187074%_))))
                      (_%g187056187070%_ _%g187057187074%_)))))
          (_%g187055187111%_ _%$stx187052%_))))))
