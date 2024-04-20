(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g133836_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g133838_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g133840_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g133842_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g133843_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g133845_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g133846_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g133848_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g133849_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g133851_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g133852_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx132919%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx132919%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx132922%_)
        (let* ((_%g132925132949%_
                (lambda (_%g132926132945%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132926132945%_))))
               (_%g132924133252%_
                (lambda (_%g132926132953%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132926132953%_))
                      (let ((_%e132929132956%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g132926132953%_))))
                        (let ((_%hd132930132960%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132929132956%_)))
                              (_%tl132931132963%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132929132956%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132931132963%_))
                              (let ((_%e132932132966%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl132931132963%_))))
                                (let ((_%hd132933132970%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132932132966%_)))
                                      (_%tl132934132973%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132932132966%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl132934132973%_))
                                      (let ((_g133827_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl132934132973%_
                                                '0))))
                                        (begin
                                          (let ((_g133828_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133827_)
                                                       (##vector-length
                                                        _g133827_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133828_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133828_)))
                                          (let ((_%target132935132976%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133827_ 0)))
                                                (_%tl132937132979%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133827_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132937132979%_))
                                                (letrec ((_%loop132938132982%_
                                                          (lambda (_%hd132936132986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause132942132989%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132936132986%_))
                        (let ((_%e132939132992%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd132936132986%_))))
                          (let ((_%lp-hd132940132996%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132939132992%_)))
                                (_%lp-tl132941132999%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132939132992%_))))
                            (_%loop132938132982%_
                             _%lp-tl132941132999%_
                             (cons _%lp-hd132940132996%_
                                   _%clause132942132989%_))))
                        (let ((_%clause132943133002%_
                               (reverse _%clause132942132989%_)))
                          ((lambda (_%L133006%_ _%L133008%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L133008%_))
                                 (let* ((_%g133027133044%_
                                         (lambda (_%g133028133040%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g133028133040%_))))
                                        (_%g133026133105%_
                                         (lambda (_%g133028133048%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g133028133048%_))
                                               (let ((_g133829_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g133028133048%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g133830_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g133829_)
                        (##vector-length _g133829_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g133830_ 2)))
                 (error "Context expects 2 values" _g133830_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target133030133051%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g133829_
                                                             0)))
                                                         (_%tl133032133054%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g133829_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl133032133054%_))
                                                         (letrec ((_%loop133033133057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd133031133061%_ _%clause133037133064%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd133031133061%_))
                                 (let ((_%e133034133067%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd133031133061%_))))
                                   (let ((_%lp-hd133035133071%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e133034133067%_)))
                                         (_%lp-tl133036133074%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e133034133067%_))))
                                     (_%loop133033133057%_
                                      _%lp-tl133036133074%_
                                      (cons _%lp-hd133035133071%_
                                            _%clause133037133064%_))))
                                 (let ((_%clause133038133077%_
                                        (reverse _%clause133037133064%_)))
                                   ((lambda (_%L133081%_)
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
                            (cons _%L133008%_
                                  (let ((__tmp133831
                                         (lambda (_%g133096133099%_
                                                  _%g133097133102%_)
                                           (cons _%g133096133099%_
                                                 _%g133097133102%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp133831 '() _%L133081%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause133038133077%_))))))
                   (_%loop133033133057%_ _%target133030133051%_ '()))
                 (_%g133027133044%_ _%g133028133048%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g133027133044%_
                                                _%g133028133048%_)))))
                                   (_%g133026133105%_
                                    (let ((__tmp133834
                                           (lambda (_%clause133109%_)
                                             (let* ((_%__stx133747133748%_
                                                     _%clause133109%_)
                                                    (_%g133113133140%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx133747133748%_)))))
                                               (let ((_%__kont133750133751%_
                                                      (lambda (_%L133225%_
                                                               _%L133227%_)
                                                        (cons _%L133227%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L133225%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont133752133753%_
                                                      (lambda (_%L133177%_
                                                               _%L133179%_
                                                               _%L133180%_)
                                                        (cons _%L133180%_
                                                              (cons _%L133179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L133177%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx133747133748%_))
                                                     (let ((_%e133117133205%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx133747133748%_))))
                                                       (let ((_%tl133119133212%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e133117133205%_)))
                     (_%hd133118133209%_
                      (let () (declare (not safe)) (##car _%e133117133205%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl133119133212%_))
                     (let ((_%e133120133215%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl133119133212%_))))
                       (let ((_%tl133122133222%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e133120133215%_)))
                             (_%hd133121133219%_
                              (let ()
                                (declare (not safe))
                                (##car _%e133120133215%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl133122133222%_))
                             (_%__kont133750133751%_
                              _%hd133121133219%_
                              _%hd133118133209%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl133122133222%_))
                                 (let ((_%e133132133167%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl133122133222%_))))
                                   (let ((_%tl133134133174%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e133132133167%_)))
                                         (_%hd133133133171%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e133132133167%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl133134133174%_))
                                         (_%__kont133752133753%_
                                          _%hd133133133171%_
                                          _%hd133121133219%_
                                          _%hd133118133209%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g133113133140%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g133113133140%_))))))
                     (let () (declare (not safe)) (_%g133113133140%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g133113133140%_)))))))
                                          (__tmp133832
                                           (let ((__tmp133833
                                                  (lambda (_%g133243133246%_
                                                           _%g133244133249%_)
                                                    (cons _%g133243133246%_
                                                          _%g133244133249%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp133833
                                              '()
                                              _%L133006%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp133834 __tmp133832))))
                                 (_%g132925132949%_ _%g132926132953%_)))
                           _%clause132943133002%_
                           _%hd132933132970%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop132938132982%_
                                                   _%target132935132976%_
                                                   '()))
                                                (_%g132925132949%_
                                                 _%g132926132953%_)))))
                                      (_%g132925132949%_ _%g132926132953%_))))
                              (_%g132925132949%_ _%g132926132953%_))))
                      (_%g132925132949%_ _%g132926132953%_)))))
          (_%g132924133252%_ _%stx132922%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj133797
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
           __obj133797
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133797 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj133797
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj133797
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133797 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133797 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133797 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133797 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133797 ':init! '11 '#f '#f))
        (let ((__tmp133835 |gxc[1]#_g133836_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj133797 __tmp133835 '12 '#f '#f))
        (let ((__tmp133837 |gxc[1]#_g133838_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj133797 __tmp133837 '13 '#f '#f))
        (let ((__tmp133839 |gxc[1]#_g133840_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj133797 __tmp133839 '14 '#f '#f))
        (let ((__tmp133841
               (cons (cons 'gensyms |gxc[1]#_g133842_|)
                     (cons (cons 'bindings |gxc[1]#_g133843_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj133797 __tmp133841 '15 '#f '#f))
        (let ((__tmp133844
               (cons (cons 'gensyms |gxc[1]#_g133845_|)
                     (cons (cons 'bindings |gxc[1]#_g133846_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj133797 __tmp133844 '16 '#f '#f))
        (let ((__tmp133847
               (cons (cons 'gensyms |gxc[1]#_g133848_|)
                     (cons (cons 'bindings |gxc[1]#_g133849_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj133797 __tmp133847 '17 '#f '#f))
        (let ((__tmp133850
               (cons (cons 'gensyms |gxc[1]#_g133851_|)
                     (cons (cons 'bindings |gxc[1]#_g133852_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj133797 __tmp133850 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133797 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133797 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133797 '() '20 '#f '#f))
        __obj133797))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx133259%_)
        (let* ((_%g133263133277%_
                (lambda (_%g133264133273%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133264133273%_))))
               (_%g133262133318%_
                (lambda (_%g133264133281%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133264133281%_))
                      (let ((_%e133266133284%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g133264133281%_))))
                        (let ((_%hd133267133288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133266133284%_)))
                              (_%tl133268133291%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133266133284%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133268133291%_))
                              (let ((_%e133269133294%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl133268133291%_))))
                                (let ((_%hd133270133298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133269133294%_)))
                                      (_%tl133271133301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133269133294%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl133271133301%_))
                                      ((lambda (_%L133304%_)
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
                         (cons '() (cons _%L133304%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd133270133298%_)
                                      (_%g133263133277%_ _%g133264133281%_))))
                              (_%g133263133277%_ _%g133264133281%_))))
                      (_%g133263133277%_ _%g133264133281%_)))))
          (_%g133262133318%_ _%$stx133259%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx133322%_)
        (let* ((_%g133326133340%_
                (lambda (_%g133327133336%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133327133336%_))))
               (_%g133325133381%_
                (lambda (_%g133327133344%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133327133344%_))
                      (let ((_%e133329133347%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g133327133344%_))))
                        (let ((_%hd133330133351%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133329133347%_)))
                              (_%tl133331133354%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133329133347%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133331133354%_))
                              (let ((_%e133332133357%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl133331133354%_))))
                                (let ((_%hd133333133361%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133332133357%_)))
                                      (_%tl133334133364%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133332133357%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl133334133364%_))
                                      ((lambda (_%L133367%_)
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
                         (cons _%L133367%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd133333133361%_)
                                      (_%g133326133340%_ _%g133327133344%_))))
                              (_%g133326133340%_ _%g133327133344%_))))
                      (_%g133326133340%_ _%g133327133344%_)))))
          (_%g133325133381%_ _%$stx133322%_))))))
