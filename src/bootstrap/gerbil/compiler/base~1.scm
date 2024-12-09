(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g133995_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g133997_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g133999_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134001_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134002_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134004_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134005_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134007_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134008_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134010_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g134011_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx133078%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx133078%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx133081%_)
        (let* ((_%g133084133108%_
                (lambda (_%g133085133104%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133085133104%_))))
               (_%g133083133411%_
                (lambda (_%g133085133112%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133085133112%_))
                      (let ((_%e133088133115%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g133085133112%_))))
                        (let ((_%hd133089133119%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133088133115%_)))
                              (_%tl133090133122%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133088133115%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133090133122%_))
                              (let ((_%e133091133125%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl133090133122%_))))
                                (let ((_%hd133092133129%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133091133125%_)))
                                      (_%tl133093133132%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133091133125%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl133093133132%_))
                                      (let ((_g133986_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl133093133132%_
                                                '0))))
                                        (begin
                                          (let ((_g133987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133986_)
                                                       (##vector-length
                                                        _g133986_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133987_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133987_)))
                                          (let ((_%target133094133135%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133986_ 0)))
                                                (_%tl133096133138%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133986_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133096133138%_))
                                                (letrec ((_%loop133097133141%_
                                                          (lambda (_%hd133095133145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause133101133148%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd133095133145%_))
                        (let ((_%e133098133151%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd133095133145%_))))
                          (let ((_%lp-hd133099133155%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133098133151%_)))
                                (_%lp-tl133100133158%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133098133151%_))))
                            (_%loop133097133141%_
                             _%lp-tl133100133158%_
                             (cons _%lp-hd133099133155%_
                                   _%clause133101133148%_))))
                        (let ((_%clause133102133161%_
                               (reverse _%clause133101133148%_)))
                          ((lambda (_%L133165%_ _%L133167%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L133167%_))
                                 (let* ((_%g133186133203%_
                                         (lambda (_%g133187133199%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g133187133199%_))))
                                        (_%g133185133264%_
                                         (lambda (_%g133187133207%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g133187133207%_))
                                               (let ((_g133988_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g133187133207%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g133989_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g133988_)
                        (##vector-length _g133988_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g133989_ 2)))
                 (error "Context expects 2 values" _g133989_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target133189133210%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g133988_
                                                             0)))
                                                         (_%tl133191133213%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g133988_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl133191133213%_))
                                                         (letrec ((_%loop133192133216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd133190133220%_ _%clause133196133223%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd133190133220%_))
                                 (let ((_%e133193133226%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd133190133220%_))))
                                   (let ((_%lp-hd133194133230%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e133193133226%_)))
                                         (_%lp-tl133195133233%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e133193133226%_))))
                                     (_%loop133192133216%_
                                      _%lp-tl133195133233%_
                                      (cons _%lp-hd133194133230%_
                                            _%clause133196133223%_))))
                                 (let ((_%clause133197133236%_
                                        (reverse _%clause133196133223%_)))
                                   ((lambda (_%L133240%_)
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
                            (cons _%L133167%_
                                  (let ((__tmp133990
                                         (lambda (_%g133255133258%_
                                                  _%g133256133261%_)
                                           (cons _%g133255133258%_
                                                 _%g133256133261%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp133990 '() _%L133240%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause133197133236%_))))))
                   (_%loop133192133216%_ _%target133189133210%_ '()))
                 (_%g133186133203%_ _%g133187133207%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g133186133203%_
                                                _%g133187133207%_)))))
                                   (_%g133185133264%_
                                    (let ((__tmp133993
                                           (lambda (_%clause133268%_)
                                             (let* ((_%__stx133906133907%_
                                                     _%clause133268%_)
                                                    (_%g133272133299%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx133906133907%_)))))
                                               (let ((_%__kont133909133910%_
                                                      (lambda (_%L133384%_
                                                               _%L133386%_)
                                                        (cons _%L133386%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L133384%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont133911133912%_
                                                      (lambda (_%L133336%_
                                                               _%L133338%_
                                                               _%L133339%_)
                                                        (cons _%L133339%_
                                                              (cons _%L133338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L133336%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx133906133907%_))
                                                     (let ((_%e133276133364%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx133906133907%_))))
                                                       (let ((_%tl133278133371%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e133276133364%_)))
                     (_%hd133277133368%_
                      (let () (declare (not safe)) (##car _%e133276133364%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl133278133371%_))
                     (let ((_%e133279133374%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl133278133371%_))))
                       (let ((_%tl133281133381%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e133279133374%_)))
                             (_%hd133280133378%_
                              (let ()
                                (declare (not safe))
                                (##car _%e133279133374%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl133281133381%_))
                             (_%__kont133909133910%_
                              _%hd133280133378%_
                              _%hd133277133368%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl133281133381%_))
                                 (let ((_%e133291133326%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl133281133381%_))))
                                   (let ((_%tl133293133333%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e133291133326%_)))
                                         (_%hd133292133330%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e133291133326%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl133293133333%_))
                                         (_%__kont133911133912%_
                                          _%hd133292133330%_
                                          _%hd133280133378%_
                                          _%hd133277133368%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g133272133299%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g133272133299%_))))))
                     (let () (declare (not safe)) (_%g133272133299%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g133272133299%_)))))))
                                          (__tmp133991
                                           (let ((__tmp133992
                                                  (lambda (_%g133402133405%_
                                                           _%g133403133408%_)
                                                    (cons _%g133402133405%_
                                                          _%g133403133408%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp133992
                                              '()
                                              _%L133165%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp133993 __tmp133991))))
                                 (_%g133084133108%_ _%g133085133112%_)))
                           _%clause133102133161%_
                           _%hd133092133129%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop133097133141%_
                                                   _%target133094133135%_
                                                   '()))
                                                (_%g133084133108%_
                                                 _%g133085133112%_)))))
                                      (_%g133084133108%_ _%g133085133112%_))))
                              (_%g133084133108%_ _%g133085133112%_))))
                      (_%g133084133108%_ _%g133085133112%_)))))
          (_%g133083133411%_ _%stx133081%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj133956
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
           __obj133956
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133956 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj133956
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj133956
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133956 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133956 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133956 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133956 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133956 ':init! '11 '#f '#f))
        (let ((__tmp133994 |gxc[1]#_g133995_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj133956 __tmp133994 '12 '#f '#f))
        (let ((__tmp133996 |gxc[1]#_g133997_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj133956 __tmp133996 '13 '#f '#f))
        (let ((__tmp133998 |gxc[1]#_g133999_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj133956 __tmp133998 '14 '#f '#f))
        (let ((__tmp134000
               (cons (cons 'gensyms |gxc[1]#_g134001_|)
                     (cons (cons 'bindings |gxc[1]#_g134002_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj133956 __tmp134000 '15 '#f '#f))
        (let ((__tmp134003
               (cons (cons 'gensyms |gxc[1]#_g134004_|)
                     (cons (cons 'bindings |gxc[1]#_g134005_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj133956 __tmp134003 '16 '#f '#f))
        (let ((__tmp134006
               (cons (cons 'gensyms |gxc[1]#_g134007_|)
                     (cons (cons 'bindings |gxc[1]#_g134008_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj133956 __tmp134006 '17 '#f '#f))
        (let ((__tmp134009
               (cons (cons 'gensyms |gxc[1]#_g134010_|)
                     (cons (cons 'bindings |gxc[1]#_g134011_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj133956 __tmp134009 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133956 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133956 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133956 '() '20 '#f '#f))
        __obj133956))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx133418%_)
        (let* ((_%g133422133436%_
                (lambda (_%g133423133432%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133423133432%_))))
               (_%g133421133477%_
                (lambda (_%g133423133440%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133423133440%_))
                      (let ((_%e133425133443%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g133423133440%_))))
                        (let ((_%hd133426133447%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133425133443%_)))
                              (_%tl133427133450%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133425133443%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133427133450%_))
                              (let ((_%e133428133453%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl133427133450%_))))
                                (let ((_%hd133429133457%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133428133453%_)))
                                      (_%tl133430133460%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133428133453%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl133430133460%_))
                                      ((lambda (_%L133463%_)
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
                         (cons '() (cons _%L133463%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd133429133457%_)
                                      (_%g133422133436%_ _%g133423133440%_))))
                              (_%g133422133436%_ _%g133423133440%_))))
                      (_%g133422133436%_ _%g133423133440%_)))))
          (_%g133421133477%_ _%$stx133418%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx133481%_)
        (let* ((_%g133485133499%_
                (lambda (_%g133486133495%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133486133495%_))))
               (_%g133484133540%_
                (lambda (_%g133486133503%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133486133503%_))
                      (let ((_%e133488133506%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g133486133503%_))))
                        (let ((_%hd133489133510%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133488133506%_)))
                              (_%tl133490133513%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133488133506%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133490133513%_))
                              (let ((_%e133491133516%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl133490133513%_))))
                                (let ((_%hd133492133520%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133491133516%_)))
                                      (_%tl133493133523%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133491133516%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl133493133523%_))
                                      ((lambda (_%L133526%_)
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
                         (cons _%L133526%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd133492133520%_)
                                      (_%g133485133499%_ _%g133486133503%_))))
                              (_%g133485133499%_ _%g133486133503%_))))
                      (_%g133485133499%_ _%g133486133503%_)))))
          (_%g133484133540%_ _%$stx133481%_))))))
