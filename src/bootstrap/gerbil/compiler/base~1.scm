(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g191826_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191828_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191830_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191832_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191833_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191835_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191836_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191838_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191839_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191841_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191842_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx190786%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx190786%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx190789%_)
        (let* ((_%g190792190816%_
                (lambda (_%g190793190812%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190793190812%_))))
               (_%g190791191115%_
                (lambda (_%g190793190820%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190793190820%_))
                      (let ((_%e190796190823%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g190793190820%_))))
                        (let ((_%hd190797190827%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190796190823%_)))
                              (_%tl190798190830%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190796190823%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190798190830%_))
                              (let ((_%e190799190833%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl190798190830%_))))
                                (let ((_%hd190800190837%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190799190833%_)))
                                      (_%tl190801190840%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190799190833%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl190801190840%_))
                                      (let ((_g191817_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl190801190840%_
                                                '0))))
                                        (begin
                                          (let ((_g191818_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g191817_)
                                                       (##values-length
                                                        _g191817_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g191818_ 2)))
                                                (error "Context expects 2 values"
                                                       _g191818_)))
                                          (let ((_%target190802190843%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g191817_ 0)))
                                                (_%tl190804190846%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g191817_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl190804190846%_))
                                                (letrec ((_%loop190805190849%_
                                                          (lambda (_%hd190803190853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause190809190856%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd190803190853%_))
                        (let ((_%e190806190858%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd190803190853%_))))
                          (let ((_%lp-hd190807190862%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190806190858%_)))
                                (_%lp-tl190808190865%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190806190858%_))))
                            (_%loop190805190849%_
                             _%lp-tl190808190865%_
                             (cons _%lp-hd190807190862%_
                                   _%clause190809190856%_))))
                        (let ((_%clause190810190868%_
                               (reverse _%clause190809190856%_)))
                          ((lambda (_%g190794190871%_ _%g190795190873%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g190795190873%_))
                                 (let* ((_%g190892190909%_
                                         (lambda (_%g190893190905%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g190893190905%_))))
                                        (_%g190891190968%_
                                         (lambda (_%g190893190913%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g190893190913%_))
                                               (let ((_g191819_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g190893190913%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g191820_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g191819_)
                        (##values-length _g191819_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g191820_ 2)))
                 (error "Context expects 2 values" _g191820_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target190895190916%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g191819_
                                                             0)))
                                                         (_%tl190897190919%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g191819_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl190897190919%_))
                                                         (letrec ((_%loop190898190922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd190896190926%_ _%clause190902190929%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd190896190926%_))
                                 (let ((_%e190899190931%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd190896190926%_))))
                                   (let ((_%lp-hd190900190935%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e190899190931%_)))
                                         (_%lp-tl190901190938%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e190899190931%_))))
                                     (_%loop190898190922%_
                                      _%lp-tl190901190938%_
                                      (cons _%lp-hd190900190935%_
                                            _%clause190902190929%_))))
                                 (let ((_%clause190903190941%_
                                        (reverse _%clause190902190929%_)))
                                   ((lambda (_%g190894190944%_)
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
                            (cons _%g190795190873%_
                                  (let ((__tmp191821
                                         (lambda (_%g190959190962%_
                                                  _%g190960190965%_)
                                           (cons _%g190959190962%_
                                                 _%g190960190965%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp191821
                                     '()
                                     _%g190894190944%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause190903190941%_))))))
                   (_%loop190898190922%_ _%target190895190916%_ '()))
                 (_%g190892190909%_ _%g190893190913%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g190892190909%_
                                                _%g190893190913%_)))))
                                   (_%g190891190968%_
                                    (let ((__tmp191824
                                           (lambda (_%clause190972%_)
                                             (let* ((_%__stx191736191737%_
                                                     _%clause190972%_)
                                                    (_%g190976191003%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx191736191737%_)))))
                                               (let ((_%__kont191739191740%_
                                                      (lambda (_%g190978191088%_
                                                               _%g190979191090%_)
                                                        (cons _%g190979191090%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g190978191088%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont191741191742%_
                                                      (lambda (_%g190986191040%_
                                                               _%g190987191042%_
                                                               _%g190988191043%_)
                                                        (cons _%g190988191043%_
                                                              (cons _%g190987191042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g190986191040%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx191736191737%_))
                                                     (let ((_%e190980191068%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx191736191737%_))))
                                                       (let ((_%tl190982191075%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e190980191068%_)))
                     (_%hd190981191072%_
                      (let () (declare (not safe)) (##car _%e190980191068%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl190982191075%_))
                     (let ((_%e190983191078%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl190982191075%_))))
                       (let ((_%tl190985191085%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e190983191078%_)))
                             (_%hd190984191082%_
                              (let ()
                                (declare (not safe))
                                (##car _%e190983191078%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl190985191085%_))
                             (_%__kont191739191740%_
                              _%hd190984191082%_
                              _%hd190981191072%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl190985191085%_))
                                 (let ((_%e190995191030%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl190985191085%_))))
                                   (let ((_%tl190997191037%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e190995191030%_)))
                                         (_%hd190996191034%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e190995191030%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl190997191037%_))
                                         (_%__kont191741191742%_
                                          _%hd190996191034%_
                                          _%hd190984191082%_
                                          _%hd190981191072%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g190976191003%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g190976191003%_))))))
                     (let () (declare (not safe)) (_%g190976191003%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g190976191003%_)))))))
                                          (__tmp191822
                                           (let ((__tmp191823
                                                  (lambda (_%g191106191109%_
                                                           _%g191107191112%_)
                                                    (cons _%g191106191109%_
                                                          _%g191107191112%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp191823
                                              '()
                                              _%g190794190871%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp191824 __tmp191822))))
                                 (_%g190792190816%_ _%g190793190820%_)))
                           _%clause190810190868%_
                           _%hd190800190837%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop190805190849%_
                                                   _%target190802190843%_
                                                   '()))
                                                (_%g190792190816%_
                                                 _%g190793190820%_)))))
                                      (_%g190792190816%_ _%g190793190820%_))))
                              (_%g190792190816%_ _%g190793190820%_))))
                      (_%g190792190816%_ _%g190793190820%_)))))
          (_%g190791191115%_ _%stx190789%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj191786
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
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj191786
           'gxc#symbol-table::t
           '2
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191786 'symbol-table '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj191786
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj191786
           '(gensyms bindings)
           '8
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191786 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191786 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191786 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191786 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191786 ':init! '13 '#f '#f))
        (let ((__tmp191825 |gxc[1]#_g191826_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj191786 __tmp191825 '4 '#f '#f))
        (let ((__tmp191827 |gxc[1]#_g191828_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj191786 __tmp191827 '14 '#f '#f))
        (let ((__tmp191829 |gxc[1]#_g191830_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj191786 __tmp191829 '15 '#f '#f))
        (let ((__tmp191831
               (cons (cons 'gensyms |gxc[1]#_g191832_|)
                     (cons (cons 'bindings |gxc[1]#_g191833_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj191786 __tmp191831 '16 '#f '#f))
        (let ((__tmp191834
               (cons (cons 'gensyms |gxc[1]#_g191835_|)
                     (cons (cons 'bindings |gxc[1]#_g191836_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj191786 __tmp191834 '17 '#f '#f))
        (let ((__tmp191837
               (cons (cons 'gensyms |gxc[1]#_g191838_|)
                     (cons (cons 'bindings |gxc[1]#_g191839_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj191786 __tmp191837 '18 '#f '#f))
        (let ((__tmp191840
               (cons (cons 'gensyms |gxc[1]#_g191841_|)
                     (cons (cons 'bindings |gxc[1]#_g191842_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj191786 __tmp191840 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191786 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191786 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191786 '() '21 '#f '#f))
        __obj191786))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx191121%_)
        (let* ((_%g191125191139%_
                (lambda (_%g191126191135%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191126191135%_))))
               (_%g191124191180%_
                (lambda (_%g191126191143%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191126191143%_))
                      (let ((_%e191128191146%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g191126191143%_))))
                        (let ((_%hd191129191150%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191128191146%_)))
                              (_%tl191130191153%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191128191146%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191130191153%_))
                              (let ((_%e191131191156%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl191130191153%_))))
                                (let ((_%hd191132191160%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191131191156%_)))
                                      (_%tl191133191163%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191131191156%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191133191163%_))
                                      ((lambda (_%g191127191166%_)
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
                         (cons '() (cons _%g191127191166%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd191132191160%_)
                                      (_%g191125191139%_ _%g191126191143%_))))
                              (_%g191125191139%_ _%g191126191143%_))))
                      (_%g191125191139%_ _%g191126191143%_)))))
          (_%g191124191180%_ _%$stx191121%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx191184%_)
        (let* ((_%g191188191202%_
                (lambda (_%g191189191198%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191189191198%_))))
               (_%g191187191243%_
                (lambda (_%g191189191206%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191189191206%_))
                      (let ((_%e191191191209%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g191189191206%_))))
                        (let ((_%hd191192191213%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191191191209%_)))
                              (_%tl191193191216%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191191191209%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191193191216%_))
                              (let ((_%e191194191219%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl191193191216%_))))
                                (let ((_%hd191195191223%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191194191219%_)))
                                      (_%tl191196191226%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191194191219%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191196191226%_))
                                      ((lambda (_%g191190191229%_)
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
                         (cons _%g191190191229%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd191195191223%_)
                                      (_%g191188191202%_ _%g191189191206%_))))
                              (_%g191188191202%_ _%g191189191206%_))))
                      (_%g191188191202%_ _%g191189191206%_)))))
          (_%g191187191243%_ _%$stx191184%_))))))
