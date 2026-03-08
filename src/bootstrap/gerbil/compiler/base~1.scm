(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g191836_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191838_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191840_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191842_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191843_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191845_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191846_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191848_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191849_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191851_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g191852_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx190796%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx190796%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx190799%_)
        (let* ((_%g190802190826%_
                (lambda (_%g190803190822%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190803190822%_))))
               (_%g190801191125%_
                (lambda (_%g190803190830%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190803190830%_))
                      (let ((_%e190806190833%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g190803190830%_))))
                        (let ((_%hd190807190837%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190806190833%_)))
                              (_%tl190808190840%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190806190833%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190808190840%_))
                              (let ((_%e190809190843%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl190808190840%_))))
                                (let ((_%hd190810190847%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190809190843%_)))
                                      (_%tl190811190850%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190809190843%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl190811190850%_))
                                      (let ((_g191827_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl190811190850%_
                                                '0))))
                                        (begin
                                          (let ((_g191828_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g191827_)
                                                       (##values-length
                                                        _g191827_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g191828_ 2)))
                                                (error "Context expects 2 values"
                                                       _g191828_)))
                                          (let ((_%target190812190853%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g191827_ 0)))
                                                (_%tl190814190856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g191827_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl190814190856%_))
                                                (letrec ((_%loop190815190859%_
                                                          (lambda (_%hd190813190863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause190819190866%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd190813190863%_))
                        (let ((_%e190816190868%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd190813190863%_))))
                          (let ((_%lp-hd190817190872%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190816190868%_)))
                                (_%lp-tl190818190875%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190816190868%_))))
                            (_%loop190815190859%_
                             _%lp-tl190818190875%_
                             (cons _%lp-hd190817190872%_
                                   _%clause190819190866%_))))
                        (let ((_%clause190820190878%_
                               (reverse _%clause190819190866%_)))
                          ((lambda (_%g190804190881%_ _%g190805190883%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g190805190883%_))
                                 (let* ((_%g190902190919%_
                                         (lambda (_%g190903190915%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g190903190915%_))))
                                        (_%g190901190978%_
                                         (lambda (_%g190903190923%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g190903190923%_))
                                               (let ((_g191829_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g190903190923%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g191830_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g191829_)
                        (##values-length _g191829_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g191830_ 2)))
                 (error "Context expects 2 values" _g191830_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target190905190926%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g191829_
                                                             0)))
                                                         (_%tl190907190929%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g191829_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl190907190929%_))
                                                         (letrec ((_%loop190908190932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd190906190936%_ _%clause190912190939%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd190906190936%_))
                                 (let ((_%e190909190941%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd190906190936%_))))
                                   (let ((_%lp-hd190910190945%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e190909190941%_)))
                                         (_%lp-tl190911190948%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e190909190941%_))))
                                     (_%loop190908190932%_
                                      _%lp-tl190911190948%_
                                      (cons _%lp-hd190910190945%_
                                            _%clause190912190939%_))))
                                 (let ((_%clause190913190951%_
                                        (reverse _%clause190912190939%_)))
                                   ((lambda (_%g190904190954%_)
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
                            (cons _%g190805190883%_
                                  (let ((__tmp191831
                                         (lambda (_%g190969190972%_
                                                  _%g190970190975%_)
                                           (cons _%g190969190972%_
                                                 _%g190970190975%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp191831
                                     '()
                                     _%g190904190954%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause190913190951%_))))))
                   (_%loop190908190932%_ _%target190905190926%_ '()))
                 (_%g190902190919%_ _%g190903190923%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g190902190919%_
                                                _%g190903190923%_)))))
                                   (_%g190901190978%_
                                    (let ((__tmp191834
                                           (lambda (_%clause190982%_)
                                             (let* ((_%__stx191746191747%_
                                                     _%clause190982%_)
                                                    (_%g190986191013%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx191746191747%_)))))
                                               (let ((_%__kont191749191750%_
                                                      (lambda (_%g190988191098%_
                                                               _%g190989191100%_)
                                                        (cons _%g190989191100%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g190988191098%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont191751191752%_
                                                      (lambda (_%g190996191050%_
                                                               _%g190997191052%_
                                                               _%g190998191053%_)
                                                        (cons _%g190998191053%_
                                                              (cons _%g190997191052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g190996191050%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx191746191747%_))
                                                     (let ((_%e190990191078%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx191746191747%_))))
                                                       (let ((_%tl190992191085%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e190990191078%_)))
                     (_%hd190991191082%_
                      (let () (declare (not safe)) (##car _%e190990191078%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl190992191085%_))
                     (let ((_%e190993191088%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl190992191085%_))))
                       (let ((_%tl190995191095%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e190993191088%_)))
                             (_%hd190994191092%_
                              (let ()
                                (declare (not safe))
                                (##car _%e190993191088%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl190995191095%_))
                             (_%__kont191749191750%_
                              _%hd190994191092%_
                              _%hd190991191082%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl190995191095%_))
                                 (let ((_%e191005191040%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl190995191095%_))))
                                   (let ((_%tl191007191047%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e191005191040%_)))
                                         (_%hd191006191044%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e191005191040%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl191007191047%_))
                                         (_%__kont191751191752%_
                                          _%hd191006191044%_
                                          _%hd190994191092%_
                                          _%hd190991191082%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g190986191013%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g190986191013%_))))))
                     (let () (declare (not safe)) (_%g190986191013%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g190986191013%_)))))))
                                          (__tmp191832
                                           (let ((__tmp191833
                                                  (lambda (_%g191116191119%_
                                                           _%g191117191122%_)
                                                    (cons _%g191116191119%_
                                                          _%g191117191122%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp191833
                                              '()
                                              _%g190804190881%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp191834 __tmp191832))))
                                 (_%g190802190826%_ _%g190803190830%_)))
                           _%clause190820190878%_
                           _%hd190810190847%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop190815190859%_
                                                   _%target190812190853%_
                                                   '()))
                                                (_%g190802190826%_
                                                 _%g190803190830%_)))))
                                      (_%g190802190826%_ _%g190803190830%_))))
                              (_%g190802190826%_ _%g190803190830%_))))
                      (_%g190802190826%_ _%g190803190830%_)))))
          (_%g190801191125%_ _%stx190799%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj191796
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
           __obj191796
           'gxc#symbol-table::t
           '2
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191796 'symbol-table '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj191796
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj191796
           '(gensyms bindings)
           '8
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191796 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191796 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191796 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191796 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191796 ':init! '13 '#f '#f))
        (let ((__tmp191835 |gxc[1]#_g191836_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj191796 __tmp191835 '4 '#f '#f))
        (let ((__tmp191837 |gxc[1]#_g191838_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj191796 __tmp191837 '14 '#f '#f))
        (let ((__tmp191839 |gxc[1]#_g191840_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj191796 __tmp191839 '15 '#f '#f))
        (let ((__tmp191841
               (cons (cons 'gensyms |gxc[1]#_g191842_|)
                     (cons (cons 'bindings |gxc[1]#_g191843_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj191796 __tmp191841 '16 '#f '#f))
        (let ((__tmp191844
               (cons (cons 'gensyms |gxc[1]#_g191845_|)
                     (cons (cons 'bindings |gxc[1]#_g191846_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj191796 __tmp191844 '17 '#f '#f))
        (let ((__tmp191847
               (cons (cons 'gensyms |gxc[1]#_g191848_|)
                     (cons (cons 'bindings |gxc[1]#_g191849_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj191796 __tmp191847 '18 '#f '#f))
        (let ((__tmp191850
               (cons (cons 'gensyms |gxc[1]#_g191851_|)
                     (cons (cons 'bindings |gxc[1]#_g191852_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj191796 __tmp191850 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191796 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191796 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj191796 '() '21 '#f '#f))
        __obj191796))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx191131%_)
        (let* ((_%g191135191149%_
                (lambda (_%g191136191145%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191136191145%_))))
               (_%g191134191190%_
                (lambda (_%g191136191153%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191136191153%_))
                      (let ((_%e191138191156%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g191136191153%_))))
                        (let ((_%hd191139191160%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191138191156%_)))
                              (_%tl191140191163%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191138191156%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191140191163%_))
                              (let ((_%e191141191166%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl191140191163%_))))
                                (let ((_%hd191142191170%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191141191166%_)))
                                      (_%tl191143191173%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191141191166%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191143191173%_))
                                      ((lambda (_%g191137191176%_)
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
                         (cons '() (cons _%g191137191176%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd191142191170%_)
                                      (_%g191135191149%_ _%g191136191153%_))))
                              (_%g191135191149%_ _%g191136191153%_))))
                      (_%g191135191149%_ _%g191136191153%_)))))
          (_%g191134191190%_ _%$stx191131%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx191194%_)
        (let* ((_%g191198191212%_
                (lambda (_%g191199191208%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191199191208%_))))
               (_%g191197191253%_
                (lambda (_%g191199191216%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191199191216%_))
                      (let ((_%e191201191219%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g191199191216%_))))
                        (let ((_%hd191202191223%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191201191219%_)))
                              (_%tl191203191226%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191201191219%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191203191226%_))
                              (let ((_%e191204191229%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl191203191226%_))))
                                (let ((_%hd191205191233%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191204191229%_)))
                                      (_%tl191206191236%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191204191229%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191206191236%_))
                                      ((lambda (_%g191200191239%_)
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
                         (cons _%g191200191239%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd191205191233%_)
                                      (_%g191198191212%_ _%g191199191216%_))))
                              (_%g191198191212%_ _%g191199191216%_))))
                      (_%g191198191212%_ _%g191199191216%_)))))
          (_%g191197191253%_ _%$stx191194%_))))))
