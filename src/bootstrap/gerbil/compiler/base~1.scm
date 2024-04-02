(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g129984_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129986_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129988_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129990_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129991_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129993_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129994_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129996_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129997_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129999_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130000_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx129179%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129179%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx129182%_)
        (let* ((_%g129185129209%_
                (lambda (_%g129186129205%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129186129205%_))))
               (_%g129184129512%_
                (lambda (_%g129186129213%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129186129213%_))
                      (let ((_%e129191129216%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129186129213%_))))
                        (let ((_%hd129190129220%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129191129216%_)))
                              (_%tl129189129223%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129191129216%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129189129223%_))
                              (let ((_%e129194129226%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129189129223%_))))
                                (let ((_%hd129193129230%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129194129226%_)))
                                      (_%tl129192129233%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129194129226%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl129192129233%_))
                                      (let ((_g129975_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl129192129233%_
                                                '0))))
                                        (begin
                                          (let ((_g129976_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g129975_)
                                                       (##vector-length
                                                        _g129975_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g129976_ 2)))
                                                (error "Context expects 2 values"
                                                       _g129976_)))
                                          (let ((_%target129195129236%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g129975_ 0)))
                                                (_%tl129197129239%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g129975_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl129197129239%_))
                                                (letrec ((_%loop129198129242%_
                                                          (lambda (_%hd129196129246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause129202129249%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd129196129246%_))
                        (let ((_%e129199129252%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd129196129246%_))))
                          (let ((_%lp-hd129200129256%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129199129252%_)))
                                (_%lp-tl129201129259%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129199129252%_))))
                            (_%loop129198129242%_
                             _%lp-tl129201129259%_
                             (cons _%lp-hd129200129256%_
                                   _%clause129202129249%_))))
                        (let ((_%clause129203129262%_
                               (reverse _%clause129202129249%_)))
                          ((lambda (_%L129266%_ _%L129268%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L129268%_))
                                 (let* ((_%g129287129304%_
                                         (lambda (_%g129288129300%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g129288129300%_))))
                                        (_%g129286129365%_
                                         (lambda (_%g129288129308%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g129288129308%_))
                                               (let ((_g129977_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g129288129308%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g129978_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g129977_)
                        (##vector-length _g129977_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g129978_ 2)))
                 (error "Context expects 2 values" _g129978_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target129290129311%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g129977_
                                                             0)))
                                                         (_%tl129292129314%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g129977_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl129292129314%_))
                                                         (letrec ((_%loop129293129317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd129291129321%_ _%clause129297129324%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd129291129321%_))
                                 (let ((_%e129294129327%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd129291129321%_))))
                                   (let ((_%lp-hd129295129331%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e129294129327%_)))
                                         (_%lp-tl129296129334%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e129294129327%_))))
                                     (_%loop129293129317%_
                                      _%lp-tl129296129334%_
                                      (cons _%lp-hd129295129331%_
                                            _%clause129297129324%_))))
                                 (let ((_%clause129298129337%_
                                        (reverse _%clause129297129324%_)))
                                   ((lambda (_%L129341%_)
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
                              (cons _%L129268%_
                                    (let ((__tmp129979
                                           (lambda (_%g129356129359%_
                                                    _%g129357129362%_)
                                             (cons _%g129356129359%_
                                                   _%g129357129362%_))))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp129979
                                       '()
                                       _%L129341%_)))))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause129298129337%_))))))
                   (_%loop129293129317%_ _%target129290129311%_ '()))
                 (_%g129287129304%_ _%g129288129308%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g129287129304%_
                                                _%g129288129308%_)))))
                                   (_%g129286129365%_
                                    (let ((__tmp129982
                                           (lambda (_%clause129369%_)
                                             (let* ((_%__stx129901129902%_
                                                     _%clause129369%_)
                                                    (_%g129373129400%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx129901129902%_)))))
                                               (let ((_%__kont129904129905%_
                                                      (lambda (_%L129485%_
                                                               _%L129487%_)
                                                        (cons _%L129487%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L129485%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont129906129907%_
                                                      (lambda (_%L129437%_
                                                               _%L129439%_
                                                               _%L129440%_)
                                                        (cons _%L129440%_
                                                              (cons _%L129439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L129437%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx129901129902%_))
                                                     (let ((_%e129379129465%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx129901129902%_))))
                                                       (let ((_%tl129377129472%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e129379129465%_)))
                     (_%hd129378129469%_
                      (let () (declare (not safe)) (##car _%e129379129465%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl129377129472%_))
                     (let ((_%e129382129475%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl129377129472%_))))
                       (let ((_%tl129380129482%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e129382129475%_)))
                             (_%hd129381129479%_
                              (let ()
                                (declare (not safe))
                                (##car _%e129382129475%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl129380129482%_))
                             (_%__kont129904129905%_
                              _%hd129381129479%_
                              _%hd129378129469%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl129380129482%_))
                                 (let ((_%e129394129427%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl129380129482%_))))
                                   (let ((_%tl129392129434%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e129394129427%_)))
                                         (_%hd129393129431%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e129394129427%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl129392129434%_))
                                         (_%__kont129906129907%_
                                          _%hd129393129431%_
                                          _%hd129381129479%_
                                          _%hd129378129469%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g129373129400%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g129373129400%_))))))
                     (let () (declare (not safe)) (_%g129373129400%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g129373129400%_)))))))
                                          (__tmp129980
                                           (let ((__tmp129981
                                                  (lambda (_%g129503129506%_
                                                           _%g129504129509%_)
                                                    (cons _%g129503129506%_
                                                          _%g129504129509%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp129981
                                              '()
                                              _%L129266%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp129982 __tmp129980))))
                                 (_%g129185129209%_ _%g129186129213%_)))
                           _%clause129203129262%_
                           _%hd129193129230%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop129198129242%_
                                                   _%target129195129236%_
                                                   '()))
                                                (_%g129185129209%_
                                                 _%g129186129213%_)))))
                                      (_%g129185129209%_ _%g129186129213%_))))
                              (_%g129185129209%_ _%g129186129213%_))))
                      (_%g129185129209%_ _%g129186129213%_)))))
          (_%g129184129512%_ _%stx129182%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj129951
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
           __obj129951
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129951 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129951
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129951
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129951 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129951 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129951 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129951 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129951 ':init! '11 '#f '#f))
        (let ((__tmp129983 |gxc[1]#_g129984_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj129951 __tmp129983 '12 '#f '#f))
        (let ((__tmp129985 |gxc[1]#_g129986_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj129951 __tmp129985 '13 '#f '#f))
        (let ((__tmp129987 |gxc[1]#_g129988_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj129951 __tmp129987 '14 '#f '#f))
        (let ((__tmp129989
               (cons (cons 'gensyms |gxc[1]#_g129990_|)
                     (cons (cons 'bindings |gxc[1]#_g129991_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129951 __tmp129989 '15 '#f '#f))
        (let ((__tmp129992
               (cons (cons 'gensyms |gxc[1]#_g129993_|)
                     (cons (cons 'bindings |gxc[1]#_g129994_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129951 __tmp129992 '16 '#f '#f))
        (let ((__tmp129995
               (cons (cons 'gensyms |gxc[1]#_g129996_|)
                     (cons (cons 'bindings |gxc[1]#_g129997_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129951 __tmp129995 '17 '#f '#f))
        (let ((__tmp129998
               (cons (cons 'gensyms |gxc[1]#_g129999_|)
                     (cons (cons 'bindings |gxc[1]#_g130000_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129951 __tmp129998 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129951 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129951 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129951 '() '20 '#f '#f))
        __obj129951))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx129518%_)
        (let* ((_%g129522129536%_
                (lambda (_%g129523129532%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129523129532%_))))
               (_%g129521129577%_
                (lambda (_%g129523129540%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129523129540%_))
                      (let ((_%e129527129543%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129523129540%_))))
                        (let ((_%hd129526129547%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129527129543%_)))
                              (_%tl129525129550%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129527129543%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129525129550%_))
                              (let ((_%e129530129553%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129525129550%_))))
                                (let ((_%hd129529129557%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129530129553%_)))
                                      (_%tl129528129560%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129530129553%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl129528129560%_))
                                      ((lambda (_%L129563%_)
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
                         (cons '() (cons _%L129563%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd129529129557%_)
                                      (_%g129522129536%_ _%g129523129540%_))))
                              (_%g129522129536%_ _%g129523129540%_))))
                      (_%g129522129536%_ _%g129523129540%_)))))
          (_%g129521129577%_ _%$stx129518%_))))))
