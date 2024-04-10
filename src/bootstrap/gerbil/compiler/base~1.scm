(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g130870_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130872_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130874_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130876_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130877_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130879_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130880_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130882_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130883_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130885_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130886_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx129953%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129953%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx129956%_)
        (let* ((_%g129959129983%_
                (lambda (_%g129960129979%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129960129979%_))))
               (_%g129958130286%_
                (lambda (_%g129960129987%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129960129987%_))
                      (let ((_%e129963129990%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129960129987%_))))
                        (let ((_%hd129964129994%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129963129990%_)))
                              (_%tl129965129997%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129963129990%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129965129997%_))
                              (let ((_%e129966130000%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129965129997%_))))
                                (let ((_%hd129967130004%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129966130000%_)))
                                      (_%tl129968130007%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129966130000%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl129968130007%_))
                                      (let ((_g130861_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl129968130007%_
                                                '0))))
                                        (begin
                                          (let ((_g130862_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g130861_)
                                                       (##vector-length
                                                        _g130861_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g130862_ 2)))
                                                (error "Context expects 2 values"
                                                       _g130862_)))
                                          (let ((_%target129969130010%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g130861_ 0)))
                                                (_%tl129971130013%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g130861_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl129971130013%_))
                                                (letrec ((_%loop129972130016%_
                                                          (lambda (_%hd129970130020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause129976130023%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd129970130020%_))
                        (let ((_%e129973130026%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd129970130020%_))))
                          (let ((_%lp-hd129974130030%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129973130026%_)))
                                (_%lp-tl129975130033%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129973130026%_))))
                            (_%loop129972130016%_
                             _%lp-tl129975130033%_
                             (cons _%lp-hd129974130030%_
                                   _%clause129976130023%_))))
                        (let ((_%clause129977130036%_
                               (reverse _%clause129976130023%_)))
                          ((lambda (_%L130040%_ _%L130042%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L130042%_))
                                 (let* ((_%g130061130078%_
                                         (lambda (_%g130062130074%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g130062130074%_))))
                                        (_%g130060130139%_
                                         (lambda (_%g130062130082%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g130062130082%_))
                                               (let ((_g130863_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g130062130082%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g130864_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g130863_)
                        (##vector-length _g130863_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g130864_ 2)))
                 (error "Context expects 2 values" _g130864_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target130064130085%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130863_
                                                             0)))
                                                         (_%tl130066130088%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130863_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl130066130088%_))
                                                         (letrec ((_%loop130067130091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd130065130095%_ _%clause130071130098%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd130065130095%_))
                                 (let ((_%e130068130101%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd130065130095%_))))
                                   (let ((_%lp-hd130069130105%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e130068130101%_)))
                                         (_%lp-tl130070130108%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e130068130101%_))))
                                     (_%loop130067130091%_
                                      _%lp-tl130070130108%_
                                      (cons _%lp-hd130069130105%_
                                            _%clause130071130098%_))))
                                 (let ((_%clause130072130111%_
                                        (reverse _%clause130071130098%_)))
                                   ((lambda (_%L130115%_)
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
                            (cons _%L130042%_
                                  (let ((__tmp130865
                                         (lambda (_%g130130130133%_
                                                  _%g130131130136%_)
                                           (cons _%g130130130133%_
                                                 _%g130131130136%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp130865 '() _%L130115%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause130072130111%_))))))
                   (_%loop130067130091%_ _%target130064130085%_ '()))
                 (_%g130061130078%_ _%g130062130082%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g130061130078%_
                                                _%g130062130082%_)))))
                                   (_%g130060130139%_
                                    (let ((__tmp130868
                                           (lambda (_%clause130143%_)
                                             (let* ((_%__stx130781130782%_
                                                     _%clause130143%_)
                                                    (_%g130147130174%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx130781130782%_)))))
                                               (let ((_%__kont130784130785%_
                                                      (lambda (_%L130259%_
                                                               _%L130261%_)
                                                        (cons _%L130261%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L130259%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont130786130787%_
                                                      (lambda (_%L130211%_
                                                               _%L130213%_
                                                               _%L130214%_)
                                                        (cons _%L130214%_
                                                              (cons _%L130213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L130211%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx130781130782%_))
                                                     (let ((_%e130151130239%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx130781130782%_))))
                                                       (let ((_%tl130153130246%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e130151130239%_)))
                     (_%hd130152130243%_
                      (let () (declare (not safe)) (##car _%e130151130239%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl130153130246%_))
                     (let ((_%e130154130249%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl130153130246%_))))
                       (let ((_%tl130156130256%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e130154130249%_)))
                             (_%hd130155130253%_
                              (let ()
                                (declare (not safe))
                                (##car _%e130154130249%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl130156130256%_))
                             (_%__kont130784130785%_
                              _%hd130155130253%_
                              _%hd130152130243%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl130156130256%_))
                                 (let ((_%e130166130201%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl130156130256%_))))
                                   (let ((_%tl130168130208%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e130166130201%_)))
                                         (_%hd130167130205%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e130166130201%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl130168130208%_))
                                         (_%__kont130786130787%_
                                          _%hd130167130205%_
                                          _%hd130155130253%_
                                          _%hd130152130243%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g130147130174%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g130147130174%_))))))
                     (let () (declare (not safe)) (_%g130147130174%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g130147130174%_)))))))
                                          (__tmp130866
                                           (let ((__tmp130867
                                                  (lambda (_%g130277130280%_
                                                           _%g130278130283%_)
                                                    (cons _%g130277130280%_
                                                          _%g130278130283%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp130867
                                              '()
                                              _%L130040%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp130868 __tmp130866))))
                                 (_%g129959129983%_ _%g129960129987%_)))
                           _%clause129977130036%_
                           _%hd129967130004%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop129972130016%_
                                                   _%target129969130010%_
                                                   '()))
                                                (_%g129959129983%_
                                                 _%g129960129987%_)))))
                                      (_%g129959129983%_ _%g129960129987%_))))
                              (_%g129959129983%_ _%g129960129987%_))))
                      (_%g129959129983%_ _%g129960129987%_)))))
          (_%g129958130286%_ _%stx129956%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj130831
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
           __obj130831
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130831 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130831
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130831
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130831 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130831 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130831 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130831 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130831 ':init! '11 '#f '#f))
        (let ((__tmp130869 |gxc[1]#_g130870_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130831 __tmp130869 '12 '#f '#f))
        (let ((__tmp130871 |gxc[1]#_g130872_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130831 __tmp130871 '13 '#f '#f))
        (let ((__tmp130873 |gxc[1]#_g130874_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130831 __tmp130873 '14 '#f '#f))
        (let ((__tmp130875
               (cons (cons 'gensyms |gxc[1]#_g130876_|)
                     (cons (cons 'bindings |gxc[1]#_g130877_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130831 __tmp130875 '15 '#f '#f))
        (let ((__tmp130878
               (cons (cons 'gensyms |gxc[1]#_g130879_|)
                     (cons (cons 'bindings |gxc[1]#_g130880_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130831 __tmp130878 '16 '#f '#f))
        (let ((__tmp130881
               (cons (cons 'gensyms |gxc[1]#_g130882_|)
                     (cons (cons 'bindings |gxc[1]#_g130883_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130831 __tmp130881 '17 '#f '#f))
        (let ((__tmp130884
               (cons (cons 'gensyms |gxc[1]#_g130885_|)
                     (cons (cons 'bindings |gxc[1]#_g130886_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130831 __tmp130884 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130831 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130831 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130831 '() '20 '#f '#f))
        __obj130831))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx130293%_)
        (let* ((_%g130297130311%_
                (lambda (_%g130298130307%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g130298130307%_))))
               (_%g130296130352%_
                (lambda (_%g130298130315%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g130298130315%_))
                      (let ((_%e130300130318%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g130298130315%_))))
                        (let ((_%hd130301130322%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130300130318%_)))
                              (_%tl130302130325%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130300130318%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl130302130325%_))
                              (let ((_%e130303130328%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl130302130325%_))))
                                (let ((_%hd130304130332%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e130303130328%_)))
                                      (_%tl130305130335%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e130303130328%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl130305130335%_))
                                      ((lambda (_%L130338%_)
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
                         (cons '() (cons _%L130338%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd130304130332%_)
                                      (_%g130297130311%_ _%g130298130315%_))))
                              (_%g130297130311%_ _%g130298130315%_))))
                      (_%g130297130311%_ _%g130298130315%_)))))
          (_%g130296130352%_ _%$stx130293%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx130356%_)
        (let* ((_%g130360130374%_
                (lambda (_%g130361130370%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g130361130370%_))))
               (_%g130359130415%_
                (lambda (_%g130361130378%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g130361130378%_))
                      (let ((_%e130363130381%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g130361130378%_))))
                        (let ((_%hd130364130385%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130363130381%_)))
                              (_%tl130365130388%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130363130381%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl130365130388%_))
                              (let ((_%e130366130391%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl130365130388%_))))
                                (let ((_%hd130367130395%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e130366130391%_)))
                                      (_%tl130368130398%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e130366130391%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl130368130398%_))
                                      ((lambda (_%L130401%_)
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
                         (cons _%L130401%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd130367130395%_)
                                      (_%g130360130374%_ _%g130361130378%_))))
                              (_%g130360130374%_ _%g130361130378%_))))
                      (_%g130360130374%_ _%g130361130378%_)))))
          (_%g130359130415%_ _%$stx130356%_))))))
