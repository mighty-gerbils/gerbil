(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g129954_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129956_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129958_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129960_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129961_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129963_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129964_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129966_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129967_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129969_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g129970_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx129040%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129040%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx129043%_)
        (let* ((_%g129046129070%_
                (lambda (_%g129047129066%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129047129066%_))))
               (_%g129045129373%_
                (lambda (_%g129047129074%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129047129074%_))
                      (let ((_%e129050129077%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129047129074%_))))
                        (let ((_%hd129051129081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129050129077%_)))
                              (_%tl129052129084%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129050129077%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129052129084%_))
                              (let ((_%e129053129087%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129052129084%_))))
                                (let ((_%hd129054129091%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129053129087%_)))
                                      (_%tl129055129094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129053129087%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl129055129094%_))
                                      (let ((_g129945_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl129055129094%_
                                                '0))))
                                        (begin
                                          (let ((_g129946_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g129945_)
                                                       (##vector-length
                                                        _g129945_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g129946_ 2)))
                                                (error "Context expects 2 values"
                                                       _g129946_)))
                                          (let ((_%target129056129097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g129945_ 0)))
                                                (_%tl129058129100%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g129945_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl129058129100%_))
                                                (letrec ((_%loop129059129103%_
                                                          (lambda (_%hd129057129107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause129063129110%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd129057129107%_))
                        (let ((_%e129060129113%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd129057129107%_))))
                          (let ((_%lp-hd129061129117%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129060129113%_)))
                                (_%lp-tl129062129120%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129060129113%_))))
                            (_%loop129059129103%_
                             _%lp-tl129062129120%_
                             (cons _%lp-hd129061129117%_
                                   _%clause129063129110%_))))
                        (let ((_%clause129064129123%_
                               (reverse _%clause129063129110%_)))
                          ((lambda (_%L129127%_ _%L129129%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L129129%_))
                                 (let* ((_%g129148129165%_
                                         (lambda (_%g129149129161%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g129149129161%_))))
                                        (_%g129147129226%_
                                         (lambda (_%g129149129169%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g129149129169%_))
                                               (let ((_g129947_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g129149129169%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g129948_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g129947_)
                        (##vector-length _g129947_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g129948_ 2)))
                 (error "Context expects 2 values" _g129948_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target129151129172%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g129947_
                                                             0)))
                                                         (_%tl129153129175%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g129947_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl129153129175%_))
                                                         (letrec ((_%loop129154129178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd129152129182%_ _%clause129158129185%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd129152129182%_))
                                 (let ((_%e129155129188%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd129152129182%_))))
                                   (let ((_%lp-hd129156129192%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e129155129188%_)))
                                         (_%lp-tl129157129195%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e129155129188%_))))
                                     (_%loop129154129178%_
                                      _%lp-tl129157129195%_
                                      (cons _%lp-hd129156129192%_
                                            _%clause129158129185%_))))
                                 (let ((_%clause129159129198%_
                                        (reverse _%clause129158129185%_)))
                                   ((lambda (_%L129202%_)
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
                            (cons _%L129129%_
                                  (let ((__tmp129949
                                         (lambda (_%g129217129220%_
                                                  _%g129218129223%_)
                                           (cons _%g129217129220%_
                                                 _%g129218129223%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp129949 '() _%L129202%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause129159129198%_))))))
                   (_%loop129154129178%_ _%target129151129172%_ '()))
                 (_%g129148129165%_ _%g129149129169%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g129148129165%_
                                                _%g129149129169%_)))))
                                   (_%g129147129226%_
                                    (let ((__tmp129952
                                           (lambda (_%clause129230%_)
                                             (let* ((_%__stx129865129866%_
                                                     _%clause129230%_)
                                                    (_%g129234129261%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx129865129866%_)))))
                                               (let ((_%__kont129868129869%_
                                                      (lambda (_%L129346%_
                                                               _%L129348%_)
                                                        (cons _%L129348%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L129346%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont129870129871%_
                                                      (lambda (_%L129298%_
                                                               _%L129300%_
                                                               _%L129301%_)
                                                        (cons _%L129301%_
                                                              (cons _%L129300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L129298%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx129865129866%_))
                                                     (let ((_%e129238129326%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx129865129866%_))))
                                                       (let ((_%tl129240129333%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e129238129326%_)))
                     (_%hd129239129330%_
                      (let () (declare (not safe)) (##car _%e129238129326%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl129240129333%_))
                     (let ((_%e129241129336%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl129240129333%_))))
                       (let ((_%tl129243129343%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e129241129336%_)))
                             (_%hd129242129340%_
                              (let ()
                                (declare (not safe))
                                (##car _%e129241129336%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl129243129343%_))
                             (_%__kont129868129869%_
                              _%hd129242129340%_
                              _%hd129239129330%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl129243129343%_))
                                 (let ((_%e129253129288%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl129243129343%_))))
                                   (let ((_%tl129255129295%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e129253129288%_)))
                                         (_%hd129254129292%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e129253129288%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl129255129295%_))
                                         (_%__kont129870129871%_
                                          _%hd129254129292%_
                                          _%hd129242129340%_
                                          _%hd129239129330%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g129234129261%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g129234129261%_))))))
                     (let () (declare (not safe)) (_%g129234129261%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g129234129261%_)))))))
                                          (__tmp129950
                                           (let ((__tmp129951
                                                  (lambda (_%g129364129367%_
                                                           _%g129365129370%_)
                                                    (cons _%g129364129367%_
                                                          _%g129365129370%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp129951
                                              '()
                                              _%L129127%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp129952 __tmp129950))))
                                 (_%g129046129070%_ _%g129047129074%_)))
                           _%clause129064129123%_
                           _%hd129054129091%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop129059129103%_
                                                   _%target129056129097%_
                                                   '()))
                                                (_%g129046129070%_
                                                 _%g129047129074%_)))))
                                      (_%g129046129070%_ _%g129047129074%_))))
                              (_%g129046129070%_ _%g129047129074%_))))
                      (_%g129046129070%_ _%g129047129074%_)))))
          (_%g129045129373%_ _%stx129043%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj129915
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
           __obj129915
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129915 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129915
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj129915
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129915 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129915 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129915 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129915 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129915 ':init! '11 '#f '#f))
        (let ((__tmp129953 |gxc[1]#_g129954_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj129915 __tmp129953 '12 '#f '#f))
        (let ((__tmp129955 |gxc[1]#_g129956_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj129915 __tmp129955 '13 '#f '#f))
        (let ((__tmp129957 |gxc[1]#_g129958_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj129915 __tmp129957 '14 '#f '#f))
        (let ((__tmp129959
               (cons (cons 'gensyms |gxc[1]#_g129960_|)
                     (cons (cons 'bindings |gxc[1]#_g129961_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129915 __tmp129959 '15 '#f '#f))
        (let ((__tmp129962
               (cons (cons 'gensyms |gxc[1]#_g129963_|)
                     (cons (cons 'bindings |gxc[1]#_g129964_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129915 __tmp129962 '16 '#f '#f))
        (let ((__tmp129965
               (cons (cons 'gensyms |gxc[1]#_g129966_|)
                     (cons (cons 'bindings |gxc[1]#_g129967_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129915 __tmp129965 '17 '#f '#f))
        (let ((__tmp129968
               (cons (cons 'gensyms |gxc[1]#_g129969_|)
                     (cons (cons 'bindings |gxc[1]#_g129970_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129915 __tmp129968 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129915 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129915 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129915 '() '20 '#f '#f))
        __obj129915))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx129379%_)
        (let* ((_%g129383129397%_
                (lambda (_%g129384129393%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129384129393%_))))
               (_%g129382129438%_
                (lambda (_%g129384129401%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129384129401%_))
                      (let ((_%e129386129404%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129384129401%_))))
                        (let ((_%hd129387129408%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129386129404%_)))
                              (_%tl129388129411%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129386129404%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129388129411%_))
                              (let ((_%e129389129414%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129388129411%_))))
                                (let ((_%hd129390129418%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129389129414%_)))
                                      (_%tl129391129421%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129389129414%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl129391129421%_))
                                      ((lambda (_%L129424%_)
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
                         (cons '() (cons _%L129424%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd129390129418%_)
                                      (_%g129383129397%_ _%g129384129401%_))))
                              (_%g129383129397%_ _%g129384129401%_))))
                      (_%g129383129397%_ _%g129384129401%_)))))
          (_%g129382129438%_ _%$stx129379%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx129442%_)
        (let* ((_%g129446129460%_
                (lambda (_%g129447129456%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129447129456%_))))
               (_%g129445129501%_
                (lambda (_%g129447129464%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129447129464%_))
                      (let ((_%e129449129467%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129447129464%_))))
                        (let ((_%hd129450129471%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129449129467%_)))
                              (_%tl129451129474%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129449129467%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129451129474%_))
                              (let ((_%e129452129477%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129451129474%_))))
                                (let ((_%hd129453129481%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129452129477%_)))
                                      (_%tl129454129484%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129452129477%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl129454129484%_))
                                      ((lambda (_%L129487%_)
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
                         (cons _%L129487%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd129453129481%_)
                                      (_%g129446129460%_ _%g129447129464%_))))
                              (_%g129446129460%_ _%g129447129464%_))))
                      (_%g129446129460%_ _%g129447129464%_)))))
          (_%g129445129501%_ _%$stx129442%_))))))
