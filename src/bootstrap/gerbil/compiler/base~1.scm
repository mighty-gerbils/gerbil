(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g190757_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190759_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190761_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190763_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190764_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190766_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190767_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190769_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190770_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190772_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190773_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx189717%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx189717%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx189720%_)
        (let* ((_%g189723189747%_
                (lambda (_%g189724189743%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189724189743%_))))
               (_%g189722190046%_
                (lambda (_%g189724189751%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189724189751%_))
                      (let ((_%e189727189754%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g189724189751%_))))
                        (let ((_%hd189728189758%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189727189754%_)))
                              (_%tl189729189761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189727189754%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl189729189761%_))
                              (let ((_%e189730189764%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl189729189761%_))))
                                (let ((_%hd189731189768%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e189730189764%_)))
                                      (_%tl189732189771%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e189730189764%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl189732189771%_))
                                      (let ((_g190748_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl189732189771%_
                                                '0))))
                                        (begin
                                          (let ((_g190749_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g190748_)
                                                       (##values-length
                                                        _g190748_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g190749_ 2)))
                                                (error "Context expects 2 values"
                                                       _g190749_)))
                                          (let ((_%target189733189774%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g190748_ 0)))
                                                (_%tl189735189777%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g190748_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl189735189777%_))
                                                (letrec ((_%loop189736189780%_
                                                          (lambda (_%hd189734189784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause189740189787%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd189734189784%_))
                        (let ((_%e189737189789%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd189734189784%_))))
                          (let ((_%lp-hd189738189793%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189737189789%_)))
                                (_%lp-tl189739189796%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189737189789%_))))
                            (_%loop189736189780%_
                             _%lp-tl189739189796%_
                             (cons _%lp-hd189738189793%_
                                   _%clause189740189787%_))))
                        (let ((_%clause189741189799%_
                               (reverse _%clause189740189787%_)))
                          ((lambda (_%g189725189802%_ _%g189726189804%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g189726189804%_))
                                 (let* ((_%g189823189840%_
                                         (lambda (_%g189824189836%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g189824189836%_))))
                                        (_%g189822189899%_
                                         (lambda (_%g189824189844%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g189824189844%_))
                                               (let ((_g190750_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g189824189844%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g190751_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g190750_)
                        (##values-length _g190750_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g190751_ 2)))
                 (error "Context expects 2 values" _g190751_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target189826189847%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g190750_
                                                             0)))
                                                         (_%tl189828189850%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g190750_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl189828189850%_))
                                                         (letrec ((_%loop189829189853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd189827189857%_ _%clause189833189860%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd189827189857%_))
                                 (let ((_%e189830189862%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd189827189857%_))))
                                   (let ((_%lp-hd189831189866%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e189830189862%_)))
                                         (_%lp-tl189832189869%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e189830189862%_))))
                                     (_%loop189829189853%_
                                      _%lp-tl189832189869%_
                                      (cons _%lp-hd189831189866%_
                                            _%clause189833189860%_))))
                                 (let ((_%clause189834189872%_
                                        (reverse _%clause189833189860%_)))
                                   ((lambda (_%g189825189875%_)
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
                            (cons _%g189726189804%_
                                  (let ((__tmp190752
                                         (lambda (_%g189890189893%_
                                                  _%g189891189896%_)
                                           (cons _%g189890189893%_
                                                 _%g189891189896%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp190752
                                     '()
                                     _%g189825189875%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause189834189872%_))))))
                   (_%loop189829189853%_ _%target189826189847%_ '()))
                 (_%g189823189840%_ _%g189824189844%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g189823189840%_
                                                _%g189824189844%_)))))
                                   (_%g189822189899%_
                                    (let ((__tmp190755
                                           (lambda (_%clause189903%_)
                                             (let* ((_%__stx190667190668%_
                                                     _%clause189903%_)
                                                    (_%g189907189934%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx190667190668%_)))))
                                               (let ((_%__kont190670190671%_
                                                      (lambda (_%g189909190019%_
                                                               _%g189910190021%_)
                                                        (cons _%g189910190021%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g189909190019%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont190672190673%_
                                                      (lambda (_%g189917189971%_
                                                               _%g189918189973%_
                                                               _%g189919189974%_)
                                                        (cons _%g189919189974%_
                                                              (cons _%g189918189973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g189917189971%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx190667190668%_))
                                                     (let ((_%e189911189999%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx190667190668%_))))
                                                       (let ((_%tl189913190006%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e189911189999%_)))
                     (_%hd189912190003%_
                      (let () (declare (not safe)) (##car _%e189911189999%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl189913190006%_))
                     (let ((_%e189914190009%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl189913190006%_))))
                       (let ((_%tl189916190016%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e189914190009%_)))
                             (_%hd189915190013%_
                              (let ()
                                (declare (not safe))
                                (##car _%e189914190009%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl189916190016%_))
                             (_%__kont190670190671%_
                              _%hd189915190013%_
                              _%hd189912190003%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl189916190016%_))
                                 (let ((_%e189926189961%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl189916190016%_))))
                                   (let ((_%tl189928189968%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e189926189961%_)))
                                         (_%hd189927189965%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e189926189961%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl189928189968%_))
                                         (_%__kont190672190673%_
                                          _%hd189927189965%_
                                          _%hd189915190013%_
                                          _%hd189912190003%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g189907189934%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g189907189934%_))))))
                     (let () (declare (not safe)) (_%g189907189934%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g189907189934%_)))))))
                                          (__tmp190753
                                           (let ((__tmp190754
                                                  (lambda (_%g190037190040%_
                                                           _%g190038190043%_)
                                                    (cons _%g190037190040%_
                                                          _%g190038190043%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp190754
                                              '()
                                              _%g189725189802%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp190755 __tmp190753))))
                                 (_%g189723189747%_ _%g189724189751%_)))
                           _%clause189741189799%_
                           _%hd189731189768%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop189736189780%_
                                                   _%target189733189774%_
                                                   '()))
                                                (_%g189723189747%_
                                                 _%g189724189751%_)))))
                                      (_%g189723189747%_ _%g189724189751%_))))
                              (_%g189723189747%_ _%g189724189751%_))))
                      (_%g189723189747%_ _%g189724189751%_)))))
          (_%g189722190046%_ _%stx189720%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj190717
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
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj190717
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190717 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj190717
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj190717
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190717 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190717 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190717 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190717 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190717 ':init! '12 '#f '#f))
        (let ((__tmp190756 |gxc[1]#_g190757_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj190717 __tmp190756 '3 '#f '#f))
        (let ((__tmp190758 |gxc[1]#_g190759_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj190717 __tmp190758 '13 '#f '#f))
        (let ((__tmp190760 |gxc[1]#_g190761_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj190717 __tmp190760 '14 '#f '#f))
        (let ((__tmp190762
               (cons (cons 'gensyms |gxc[1]#_g190763_|)
                     (cons (cons 'bindings |gxc[1]#_g190764_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj190717 __tmp190762 '15 '#f '#f))
        (let ((__tmp190765
               (cons (cons 'gensyms |gxc[1]#_g190766_|)
                     (cons (cons 'bindings |gxc[1]#_g190767_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj190717 __tmp190765 '16 '#f '#f))
        (let ((__tmp190768
               (cons (cons 'gensyms |gxc[1]#_g190769_|)
                     (cons (cons 'bindings |gxc[1]#_g190770_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj190717 __tmp190768 '17 '#f '#f))
        (let ((__tmp190771
               (cons (cons 'gensyms |gxc[1]#_g190772_|)
                     (cons (cons 'bindings |gxc[1]#_g190773_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj190717 __tmp190771 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190717 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190717 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190717 '() '20 '#f '#f))
        __obj190717))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx190052%_)
        (let* ((_%g190056190070%_
                (lambda (_%g190057190066%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190057190066%_))))
               (_%g190055190111%_
                (lambda (_%g190057190074%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190057190074%_))
                      (let ((_%e190059190077%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g190057190074%_))))
                        (let ((_%hd190060190081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190059190077%_)))
                              (_%tl190061190084%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190059190077%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190061190084%_))
                              (let ((_%e190062190087%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl190061190084%_))))
                                (let ((_%hd190063190091%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190062190087%_)))
                                      (_%tl190064190094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190062190087%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190064190094%_))
                                      ((lambda (_%g190058190097%_)
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
                         (cons '() (cons _%g190058190097%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd190063190091%_)
                                      (_%g190056190070%_ _%g190057190074%_))))
                              (_%g190056190070%_ _%g190057190074%_))))
                      (_%g190056190070%_ _%g190057190074%_)))))
          (_%g190055190111%_ _%$stx190052%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx190115%_)
        (let* ((_%g190119190133%_
                (lambda (_%g190120190129%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190120190129%_))))
               (_%g190118190174%_
                (lambda (_%g190120190137%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190120190137%_))
                      (let ((_%e190122190140%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g190120190137%_))))
                        (let ((_%hd190123190144%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190122190140%_)))
                              (_%tl190124190147%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190122190140%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190124190147%_))
                              (let ((_%e190125190150%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl190124190147%_))))
                                (let ((_%hd190126190154%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190125190150%_)))
                                      (_%tl190127190157%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190125190150%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190127190157%_))
                                      ((lambda (_%g190121190160%_)
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
                         (cons _%g190121190160%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd190126190154%_)
                                      (_%g190119190133%_ _%g190120190137%_))))
                              (_%g190119190133%_ _%g190120190137%_))))
                      (_%g190119190133%_ _%g190120190137%_)))))
          (_%g190118190174%_ _%$stx190115%_))))))
