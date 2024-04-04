(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g130723_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130725_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130727_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130729_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130730_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130732_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130733_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130735_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130736_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130738_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130739_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx129918%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129918%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx129921%_)
        (let* ((_%g129924129948%_
                (lambda (_%g129925129944%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129925129944%_))))
               (_%g129923130251%_
                (lambda (_%g129925129952%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129925129952%_))
                      (let ((_%e129930129955%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129925129952%_))))
                        (let ((_%hd129929129959%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129930129955%_)))
                              (_%tl129928129962%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129930129955%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129928129962%_))
                              (let ((_%e129933129965%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129928129962%_))))
                                (let ((_%hd129932129969%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129933129965%_)))
                                      (_%tl129931129972%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129933129965%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl129931129972%_))
                                      (let ((_g130714_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl129931129972%_
                                                '0))))
                                        (begin
                                          (let ((_g130715_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g130714_)
                                                       (##vector-length
                                                        _g130714_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g130715_ 2)))
                                                (error "Context expects 2 values"
                                                       _g130715_)))
                                          (let ((_%target129934129975%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g130714_ 0)))
                                                (_%tl129936129978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g130714_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl129936129978%_))
                                                (letrec ((_%loop129937129981%_
                                                          (lambda (_%hd129935129985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause129941129988%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd129935129985%_))
                        (let ((_%e129938129991%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd129935129985%_))))
                          (let ((_%lp-hd129939129995%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129938129991%_)))
                                (_%lp-tl129940129998%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129938129991%_))))
                            (_%loop129937129981%_
                             _%lp-tl129940129998%_
                             (cons _%lp-hd129939129995%_
                                   _%clause129941129988%_))))
                        (let ((_%clause129942130001%_
                               (reverse _%clause129941129988%_)))
                          ((lambda (_%L130005%_ _%L130007%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L130007%_))
                                 (let* ((_%g130026130043%_
                                         (lambda (_%g130027130039%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g130027130039%_))))
                                        (_%g130025130104%_
                                         (lambda (_%g130027130047%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g130027130047%_))
                                               (let ((_g130716_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g130027130047%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g130717_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g130716_)
                        (##vector-length _g130716_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g130717_ 2)))
                 (error "Context expects 2 values" _g130717_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target130029130050%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130716_
                                                             0)))
                                                         (_%tl130031130053%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130716_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl130031130053%_))
                                                         (letrec ((_%loop130032130056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd130030130060%_ _%clause130036130063%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd130030130060%_))
                                 (let ((_%e130033130066%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd130030130060%_))))
                                   (let ((_%lp-hd130034130070%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e130033130066%_)))
                                         (_%lp-tl130035130073%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e130033130066%_))))
                                     (_%loop130032130056%_
                                      _%lp-tl130035130073%_
                                      (cons _%lp-hd130034130070%_
                                            _%clause130036130063%_))))
                                 (let ((_%clause130037130076%_
                                        (reverse _%clause130036130063%_)))
                                   ((lambda (_%L130080%_)
                                      (let ()
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'lambda))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '$stx))
                                                          '())
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'ast-case))
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '$stx))
                              (cons _%L130007%_
                                    (let ((__tmp130718
                                           (lambda (_%g130095130098%_
                                                    _%g130096130101%_)
                                             (cons _%g130095130098%_
                                                   _%g130096130101%_))))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp130718
                                       '()
                                       _%L130080%_)))))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause130037130076%_))))))
                   (_%loop130032130056%_ _%target130029130050%_ '()))
                 (_%g130026130043%_ _%g130027130047%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g130026130043%_
                                                _%g130027130047%_)))))
                                   (_%g130025130104%_
                                    (let ((__tmp130721
                                           (lambda (_%clause130108%_)
                                             (let* ((_%__stx130640130641%_
                                                     _%clause130108%_)
                                                    (_%g130112130139%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx130640130641%_)))))
                                               (let ((_%__kont130643130644%_
                                                      (lambda (_%L130224%_
                                                               _%L130226%_)
                                                        (cons _%L130226%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L130224%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont130645130646%_
                                                      (lambda (_%L130176%_
                                                               _%L130178%_
                                                               _%L130179%_)
                                                        (cons _%L130179%_
                                                              (cons _%L130178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L130176%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx130640130641%_))
                                                     (let ((_%e130118130204%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx130640130641%_))))
                                                       (let ((_%tl130116130211%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e130118130204%_)))
                     (_%hd130117130208%_
                      (let () (declare (not safe)) (##car _%e130118130204%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl130116130211%_))
                     (let ((_%e130121130214%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl130116130211%_))))
                       (let ((_%tl130119130221%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e130121130214%_)))
                             (_%hd130120130218%_
                              (let ()
                                (declare (not safe))
                                (##car _%e130121130214%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl130119130221%_))
                             (_%__kont130643130644%_
                              _%hd130120130218%_
                              _%hd130117130208%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl130119130221%_))
                                 (let ((_%e130133130166%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl130119130221%_))))
                                   (let ((_%tl130131130173%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e130133130166%_)))
                                         (_%hd130132130170%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e130133130166%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl130131130173%_))
                                         (_%__kont130645130646%_
                                          _%hd130132130170%_
                                          _%hd130120130218%_
                                          _%hd130117130208%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g130112130139%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g130112130139%_))))))
                     (let () (declare (not safe)) (_%g130112130139%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g130112130139%_)))))))
                                          (__tmp130719
                                           (let ((__tmp130720
                                                  (lambda (_%g130242130245%_
                                                           _%g130243130248%_)
                                                    (cons _%g130242130245%_
                                                          _%g130243130248%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp130720
                                              '()
                                              _%L130005%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp130721 __tmp130719))))
                                 (_%g129924129948%_ _%g129925129952%_)))
                           _%clause129942130001%_
                           _%hd129932129969%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop129937129981%_
                                                   _%target129934129975%_
                                                   '()))
                                                (_%g129924129948%_
                                                 _%g129925129952%_)))))
                                      (_%g129924129948%_ _%g129925129952%_))))
                              (_%g129924129948%_ _%g129925129952%_))))
                      (_%g129924129948%_ _%g129925129952%_)))))
          (_%g129923130251%_ _%stx129921%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj130690
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
           __obj130690
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130690 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130690
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130690
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130690 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130690 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130690 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130690 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130690 ':init! '11 '#f '#f))
        (let ((__tmp130722 |gxc[1]#_g130723_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130690 __tmp130722 '12 '#f '#f))
        (let ((__tmp130724 |gxc[1]#_g130725_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130690 __tmp130724 '13 '#f '#f))
        (let ((__tmp130726 |gxc[1]#_g130727_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130690 __tmp130726 '14 '#f '#f))
        (let ((__tmp130728
               (cons (cons 'gensyms |gxc[1]#_g130729_|)
                     (cons (cons 'bindings |gxc[1]#_g130730_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130690 __tmp130728 '15 '#f '#f))
        (let ((__tmp130731
               (cons (cons 'gensyms |gxc[1]#_g130732_|)
                     (cons (cons 'bindings |gxc[1]#_g130733_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130690 __tmp130731 '16 '#f '#f))
        (let ((__tmp130734
               (cons (cons 'gensyms |gxc[1]#_g130735_|)
                     (cons (cons 'bindings |gxc[1]#_g130736_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130690 __tmp130734 '17 '#f '#f))
        (let ((__tmp130737
               (cons (cons 'gensyms |gxc[1]#_g130738_|)
                     (cons (cons 'bindings |gxc[1]#_g130739_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130690 __tmp130737 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130690 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130690 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130690 '() '20 '#f '#f))
        __obj130690))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx130257%_)
        (let* ((_%g130261130275%_
                (lambda (_%g130262130271%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g130262130271%_))))
               (_%g130260130316%_
                (lambda (_%g130262130279%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g130262130279%_))
                      (let ((_%e130266130282%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g130262130279%_))))
                        (let ((_%hd130265130286%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130266130282%_)))
                              (_%tl130264130289%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130266130282%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl130264130289%_))
                              (let ((_%e130269130292%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl130264130289%_))))
                                (let ((_%hd130268130296%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e130269130292%_)))
                                      (_%tl130267130299%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e130269130292%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl130267130299%_))
                                      ((lambda (_%L130302%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'with-lock))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+verbose-mutex+))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'lambda))
                         (cons '() (cons _%L130302%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd130268130296%_)
                                      (_%g130261130275%_ _%g130262130279%_))))
                              (_%g130261130275%_ _%g130262130279%_))))
                      (_%g130261130275%_ _%g130262130279%_)))))
          (_%g130260130316%_ _%$stx130257%_))))))
