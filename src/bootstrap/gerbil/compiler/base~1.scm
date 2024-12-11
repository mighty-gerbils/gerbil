(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g134032_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134034_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134036_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134038_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134039_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134041_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134042_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134044_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134045_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134047_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134048_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx133115%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx133115%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx133118%_)
        (let* ((_%g133121133145%_
                (lambda (_%g133122133141%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133122133141%_))))
               (_%g133120133448%_
                (lambda (_%g133122133149%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133122133149%_))
                      (let ((_%e133125133152%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g133122133149%_))))
                        (let ((_%hd133126133156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133125133152%_)))
                              (_%tl133127133159%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133125133152%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133127133159%_))
                              (let ((_%e133128133162%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl133127133159%_))))
                                (let ((_%hd133129133166%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133128133162%_)))
                                      (_%tl133130133169%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133128133162%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl133130133169%_))
                                      (let ((_g134023_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl133130133169%_
                                                '0))))
                                        (begin
                                          (let ((_g134024_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134023_)
                                                       (##vector-length
                                                        _g134023_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134024_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134024_)))
                                          (let ((_%target133131133172%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134023_ 0)))
                                                (_%tl133133133175%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134023_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133133133175%_))
                                                (letrec ((_%loop133134133178%_
                                                          (lambda (_%hd133132133182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause133138133185%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd133132133182%_))
                        (let ((_%e133135133188%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd133132133182%_))))
                          (let ((_%lp-hd133136133192%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133135133188%_)))
                                (_%lp-tl133137133195%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133135133188%_))))
                            (_%loop133134133178%_
                             _%lp-tl133137133195%_
                             (cons _%lp-hd133136133192%_
                                   _%clause133138133185%_))))
                        (let ((_%clause133139133198%_
                               (reverse _%clause133138133185%_)))
                          ((lambda (_%L133202%_ _%L133204%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L133204%_))
                                 (let* ((_%g133223133240%_
                                         (lambda (_%g133224133236%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g133224133236%_))))
                                        (_%g133222133301%_
                                         (lambda (_%g133224133244%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g133224133244%_))
                                               (let ((_g134025_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g133224133244%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g134026_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g134025_)
                        (##vector-length _g134025_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g134026_ 2)))
                 (error "Context expects 2 values" _g134026_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target133226133247%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g134025_
                                                             0)))
                                                         (_%tl133228133250%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g134025_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl133228133250%_))
                                                         (letrec ((_%loop133229133253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd133227133257%_ _%clause133233133260%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd133227133257%_))
                                 (let ((_%e133230133263%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd133227133257%_))))
                                   (let ((_%lp-hd133231133267%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e133230133263%_)))
                                         (_%lp-tl133232133270%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e133230133263%_))))
                                     (_%loop133229133253%_
                                      _%lp-tl133232133270%_
                                      (cons _%lp-hd133231133267%_
                                            _%clause133233133260%_))))
                                 (let ((_%clause133234133273%_
                                        (reverse _%clause133233133260%_)))
                                   ((lambda (_%L133277%_)
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
                            (cons _%L133204%_
                                  (let ((__tmp134027
                                         (lambda (_%g133292133295%_
                                                  _%g133293133298%_)
                                           (cons _%g133292133295%_
                                                 _%g133293133298%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp134027 '() _%L133277%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause133234133273%_))))))
                   (_%loop133229133253%_ _%target133226133247%_ '()))
                 (_%g133223133240%_ _%g133224133244%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g133223133240%_
                                                _%g133224133244%_)))))
                                   (_%g133222133301%_
                                    (let ((__tmp134030
                                           (lambda (_%clause133305%_)
                                             (let* ((_%__stx133943133944%_
                                                     _%clause133305%_)
                                                    (_%g133309133336%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx133943133944%_)))))
                                               (let ((_%__kont133946133947%_
                                                      (lambda (_%L133421%_
                                                               _%L133423%_)
                                                        (cons _%L133423%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L133421%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont133948133949%_
                                                      (lambda (_%L133373%_
                                                               _%L133375%_
                                                               _%L133376%_)
                                                        (cons _%L133376%_
                                                              (cons _%L133375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L133373%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx133943133944%_))
                                                     (let ((_%e133313133401%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx133943133944%_))))
                                                       (let ((_%tl133315133408%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e133313133401%_)))
                     (_%hd133314133405%_
                      (let () (declare (not safe)) (##car _%e133313133401%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl133315133408%_))
                     (let ((_%e133316133411%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl133315133408%_))))
                       (let ((_%tl133318133418%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e133316133411%_)))
                             (_%hd133317133415%_
                              (let ()
                                (declare (not safe))
                                (##car _%e133316133411%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl133318133418%_))
                             (_%__kont133946133947%_
                              _%hd133317133415%_
                              _%hd133314133405%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl133318133418%_))
                                 (let ((_%e133328133363%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl133318133418%_))))
                                   (let ((_%tl133330133370%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e133328133363%_)))
                                         (_%hd133329133367%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e133328133363%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl133330133370%_))
                                         (_%__kont133948133949%_
                                          _%hd133329133367%_
                                          _%hd133317133415%_
                                          _%hd133314133405%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g133309133336%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g133309133336%_))))))
                     (let () (declare (not safe)) (_%g133309133336%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g133309133336%_)))))))
                                          (__tmp134028
                                           (let ((__tmp134029
                                                  (lambda (_%g133439133442%_
                                                           _%g133440133445%_)
                                                    (cons _%g133439133442%_
                                                          _%g133440133445%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp134029
                                              '()
                                              _%L133202%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp134030 __tmp134028))))
                                 (_%g133121133145%_ _%g133122133149%_)))
                           _%clause133139133198%_
                           _%hd133129133166%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop133134133178%_
                                                   _%target133131133172%_
                                                   '()))
                                                (_%g133121133145%_
                                                 _%g133122133149%_)))))
                                      (_%g133121133145%_ _%g133122133149%_))))
                              (_%g133121133145%_ _%g133122133149%_))))
                      (_%g133121133145%_ _%g133122133149%_)))))
          (_%g133120133448%_ _%stx133118%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj133993
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
           __obj133993
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133993 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj133993
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj133993
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133993 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133993 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133993 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133993 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133993 ':init! '11 '#f '#f))
        (let ((__tmp134031 |gxc[1]#_g134032_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj133993 __tmp134031 '12 '#f '#f))
        (let ((__tmp134033 |gxc[1]#_g134034_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj133993 __tmp134033 '13 '#f '#f))
        (let ((__tmp134035 |gxc[1]#_g134036_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj133993 __tmp134035 '14 '#f '#f))
        (let ((__tmp134037
               (cons (cons 'gensyms |gxc[1]#_g134038_|)
                     (cons (cons 'bindings |gxc[1]#_g134039_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj133993 __tmp134037 '15 '#f '#f))
        (let ((__tmp134040
               (cons (cons 'gensyms |gxc[1]#_g134041_|)
                     (cons (cons 'bindings |gxc[1]#_g134042_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj133993 __tmp134040 '16 '#f '#f))
        (let ((__tmp134043
               (cons (cons 'gensyms |gxc[1]#_g134044_|)
                     (cons (cons 'bindings |gxc[1]#_g134045_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj133993 __tmp134043 '17 '#f '#f))
        (let ((__tmp134046
               (cons (cons 'gensyms |gxc[1]#_g134047_|)
                     (cons (cons 'bindings |gxc[1]#_g134048_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj133993 __tmp134046 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133993 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133993 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133993 '() '20 '#f '#f))
        __obj133993))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx133455%_)
        (let* ((_%g133459133473%_
                (lambda (_%g133460133469%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133460133469%_))))
               (_%g133458133514%_
                (lambda (_%g133460133477%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133460133477%_))
                      (let ((_%e133462133480%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g133460133477%_))))
                        (let ((_%hd133463133484%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133462133480%_)))
                              (_%tl133464133487%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133462133480%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133464133487%_))
                              (let ((_%e133465133490%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl133464133487%_))))
                                (let ((_%hd133466133494%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133465133490%_)))
                                      (_%tl133467133497%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133465133490%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl133467133497%_))
                                      ((lambda (_%L133500%_)
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
                         (cons '() (cons _%L133500%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd133466133494%_)
                                      (_%g133459133473%_ _%g133460133477%_))))
                              (_%g133459133473%_ _%g133460133477%_))))
                      (_%g133459133473%_ _%g133460133477%_)))))
          (_%g133458133514%_ _%$stx133455%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx133518%_)
        (let* ((_%g133522133536%_
                (lambda (_%g133523133532%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133523133532%_))))
               (_%g133521133577%_
                (lambda (_%g133523133540%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133523133540%_))
                      (let ((_%e133525133543%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g133523133540%_))))
                        (let ((_%hd133526133547%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133525133543%_)))
                              (_%tl133527133550%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133525133543%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133527133550%_))
                              (let ((_%e133528133553%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl133527133550%_))))
                                (let ((_%hd133529133557%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133528133553%_)))
                                      (_%tl133530133560%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133528133553%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl133530133560%_))
                                      ((lambda (_%L133563%_)
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
                         (cons _%L133563%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd133529133557%_)
                                      (_%g133522133536%_ _%g133523133540%_))))
                              (_%g133522133536%_ _%g133523133540%_))))
                      (_%g133522133536%_ _%g133523133540%_)))))
          (_%g133521133577%_ _%$stx133518%_))))))
