(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g135123_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135125_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135127_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135129_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135130_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135132_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135133_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135135_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135136_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135138_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135139_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx134206%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx134206%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx134209%_)
        (let* ((_%g134212134236%_
                (lambda (_%g134213134232%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134213134232%_))))
               (_%g134211134539%_
                (lambda (_%g134213134240%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134213134240%_))
                      (let ((_%e134216134243%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g134213134240%_))))
                        (let ((_%hd134217134247%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134216134243%_)))
                              (_%tl134218134250%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134216134243%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134218134250%_))
                              (let ((_%e134219134253%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl134218134250%_))))
                                (let ((_%hd134220134257%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134219134253%_)))
                                      (_%tl134221134260%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134219134253%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl134221134260%_))
                                      (let ((_g135114_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl134221134260%_
                                                '0))))
                                        (begin
                                          (let ((_g135115_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g135114_)
                                                       (##values-length
                                                        _g135114_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g135115_ 2)))
                                                (error "Context expects 2 values"
                                                       _g135115_)))
                                          (let ((_%target134222134263%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g135114_ 0)))
                                                (_%tl134224134266%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g135114_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134224134266%_))
                                                (letrec ((_%loop134225134269%_
                                                          (lambda (_%hd134223134273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause134229134276%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd134223134273%_))
                        (let ((_%e134226134279%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd134223134273%_))))
                          (let ((_%lp-hd134227134283%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134226134279%_)))
                                (_%lp-tl134228134286%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134226134279%_))))
                            (_%loop134225134269%_
                             _%lp-tl134228134286%_
                             (cons _%lp-hd134227134283%_
                                   _%clause134229134276%_))))
                        (let ((_%clause134230134289%_
                               (reverse _%clause134229134276%_)))
                          ((lambda (_%L134293%_ _%L134295%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L134295%_))
                                 (let* ((_%g134314134331%_
                                         (lambda (_%g134315134327%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g134315134327%_))))
                                        (_%g134313134392%_
                                         (lambda (_%g134315134335%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g134315134335%_))
                                               (let ((_g135116_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g134315134335%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g135117_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g135116_)
                        (##values-length _g135116_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g135117_ 2)))
                 (error "Context expects 2 values" _g135117_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target134317134338%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g135116_
                                                             0)))
                                                         (_%tl134319134341%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g135116_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl134319134341%_))
                                                         (letrec ((_%loop134320134344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd134318134348%_ _%clause134324134351%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd134318134348%_))
                                 (let ((_%e134321134354%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd134318134348%_))))
                                   (let ((_%lp-hd134322134358%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e134321134354%_)))
                                         (_%lp-tl134323134361%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e134321134354%_))))
                                     (_%loop134320134344%_
                                      _%lp-tl134323134361%_
                                      (cons _%lp-hd134322134358%_
                                            _%clause134324134351%_))))
                                 (let ((_%clause134325134364%_
                                        (reverse _%clause134324134351%_)))
                                   ((lambda (_%L134368%_)
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
                            (cons _%L134295%_
                                  (let ((__tmp135118
                                         (lambda (_%g134383134386%_
                                                  _%g134384134389%_)
                                           (cons _%g134383134386%_
                                                 _%g134384134389%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp135118 '() _%L134368%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause134325134364%_))))))
                   (_%loop134320134344%_ _%target134317134338%_ '()))
                 (_%g134314134331%_ _%g134315134335%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g134314134331%_
                                                _%g134315134335%_)))))
                                   (_%g134313134392%_
                                    (let ((__tmp135121
                                           (lambda (_%clause134396%_)
                                             (let* ((_%__stx135034135035%_
                                                     _%clause134396%_)
                                                    (_%g134400134427%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx135034135035%_)))))
                                               (let ((_%__kont135037135038%_
                                                      (lambda (_%L134512%_
                                                               _%L134514%_)
                                                        (cons _%L134514%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L134512%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont135039135040%_
                                                      (lambda (_%L134464%_
                                                               _%L134466%_
                                                               _%L134467%_)
                                                        (cons _%L134467%_
                                                              (cons _%L134466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L134464%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx135034135035%_))
                                                     (let ((_%e134404134492%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx135034135035%_))))
                                                       (let ((_%tl134406134499%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e134404134492%_)))
                     (_%hd134405134496%_
                      (let () (declare (not safe)) (##car _%e134404134492%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl134406134499%_))
                     (let ((_%e134407134502%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl134406134499%_))))
                       (let ((_%tl134409134509%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e134407134502%_)))
                             (_%hd134408134506%_
                              (let ()
                                (declare (not safe))
                                (##car _%e134407134502%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl134409134509%_))
                             (_%__kont135037135038%_
                              _%hd134408134506%_
                              _%hd134405134496%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl134409134509%_))
                                 (let ((_%e134419134454%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl134409134509%_))))
                                   (let ((_%tl134421134461%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e134419134454%_)))
                                         (_%hd134420134458%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e134419134454%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl134421134461%_))
                                         (_%__kont135039135040%_
                                          _%hd134420134458%_
                                          _%hd134408134506%_
                                          _%hd134405134496%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g134400134427%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g134400134427%_))))))
                     (let () (declare (not safe)) (_%g134400134427%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g134400134427%_)))))))
                                          (__tmp135119
                                           (let ((__tmp135120
                                                  (lambda (_%g134530134533%_
                                                           _%g134531134536%_)
                                                    (cons _%g134530134533%_
                                                          _%g134531134536%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp135120
                                              '()
                                              _%L134293%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp135121 __tmp135119))))
                                 (_%g134212134236%_ _%g134213134240%_)))
                           _%clause134230134289%_
                           _%hd134220134257%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop134225134269%_
                                                   _%target134222134263%_
                                                   '()))
                                                (_%g134212134236%_
                                                 _%g134213134240%_)))))
                                      (_%g134212134236%_ _%g134213134240%_))))
                              (_%g134212134236%_ _%g134213134240%_))))
                      (_%g134212134236%_ _%g134213134240%_)))))
          (_%g134211134539%_ _%stx134209%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj135084
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
           __obj135084
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135084 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135084
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135084
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135084 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135084 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135084 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135084 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135084 ':init! '11 '#f '#f))
        (let ((__tmp135122 |gxc[1]#_g135123_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj135084 __tmp135122 '12 '#f '#f))
        (let ((__tmp135124 |gxc[1]#_g135125_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj135084 __tmp135124 '13 '#f '#f))
        (let ((__tmp135126 |gxc[1]#_g135127_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj135084 __tmp135126 '14 '#f '#f))
        (let ((__tmp135128
               (cons (cons 'gensyms |gxc[1]#_g135129_|)
                     (cons (cons 'bindings |gxc[1]#_g135130_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj135084 __tmp135128 '15 '#f '#f))
        (let ((__tmp135131
               (cons (cons 'gensyms |gxc[1]#_g135132_|)
                     (cons (cons 'bindings |gxc[1]#_g135133_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj135084 __tmp135131 '16 '#f '#f))
        (let ((__tmp135134
               (cons (cons 'gensyms |gxc[1]#_g135135_|)
                     (cons (cons 'bindings |gxc[1]#_g135136_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj135084 __tmp135134 '17 '#f '#f))
        (let ((__tmp135137
               (cons (cons 'gensyms |gxc[1]#_g135138_|)
                     (cons (cons 'bindings |gxc[1]#_g135139_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj135084 __tmp135137 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135084 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135084 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135084 '() '20 '#f '#f))
        __obj135084))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx134546%_)
        (let* ((_%g134550134564%_
                (lambda (_%g134551134560%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134551134560%_))))
               (_%g134549134605%_
                (lambda (_%g134551134568%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134551134568%_))
                      (let ((_%e134553134571%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g134551134568%_))))
                        (let ((_%hd134554134575%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134553134571%_)))
                              (_%tl134555134578%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134553134571%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134555134578%_))
                              (let ((_%e134556134581%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl134555134578%_))))
                                (let ((_%hd134557134585%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134556134581%_)))
                                      (_%tl134558134588%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134556134581%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134558134588%_))
                                      ((lambda (_%L134591%_)
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
                         (cons '() (cons _%L134591%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd134557134585%_)
                                      (_%g134550134564%_ _%g134551134568%_))))
                              (_%g134550134564%_ _%g134551134568%_))))
                      (_%g134550134564%_ _%g134551134568%_)))))
          (_%g134549134605%_ _%$stx134546%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx134609%_)
        (let* ((_%g134613134627%_
                (lambda (_%g134614134623%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134614134623%_))))
               (_%g134612134668%_
                (lambda (_%g134614134631%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134614134631%_))
                      (let ((_%e134616134634%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g134614134631%_))))
                        (let ((_%hd134617134638%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134616134634%_)))
                              (_%tl134618134641%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134616134634%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134618134641%_))
                              (let ((_%e134619134644%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl134618134641%_))))
                                (let ((_%hd134620134648%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134619134644%_)))
                                      (_%tl134621134651%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134619134644%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134621134651%_))
                                      ((lambda (_%L134654%_)
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
                         (cons _%L134654%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd134620134648%_)
                                      (_%g134613134627%_ _%g134614134631%_))))
                              (_%g134613134627%_ _%g134614134631%_))))
                      (_%g134613134627%_ _%g134614134631%_)))))
          (_%g134612134668%_ _%$stx134609%_))))))
