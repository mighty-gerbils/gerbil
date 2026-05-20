(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g192115_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192117_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192119_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192121_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192122_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192124_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192125_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192127_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192128_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192130_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192131_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx191075%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx191075%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx191078%_)
        (let* ((_%g191081191105%_
                (lambda (_%g191082191101%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191082191101%_))))
               (_%g191080191404%_
                (lambda (_%g191082191109%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191082191109%_))
                      (let ((_%e191085191112%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g191082191109%_))))
                        (let ((_%hd191086191116%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191085191112%_)))
                              (_%tl191087191119%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191085191112%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191087191119%_))
                              (let ((_%e191088191122%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl191087191119%_))))
                                (let ((_%hd191089191126%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191088191122%_)))
                                      (_%tl191090191129%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191088191122%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl191090191129%_))
                                      (let ((_g192106_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl191090191129%_
                                                '0))))
                                        (begin
                                          (let ((_g192107_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g192106_)
                                                       (##values-length
                                                        _g192106_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g192107_ 2)))
                                                (error "Context expects 2 values"
                                                       _g192107_)))
                                          (let ((_%target191091191132%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g192106_ 0)))
                                                (_%tl191093191135%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g192106_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl191093191135%_))
                                                (letrec ((_%loop191094191138%_
                                                          (lambda (_%hd191092191142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause191098191145%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd191092191142%_))
                        (let ((_%e191095191147%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd191092191142%_))))
                          (let ((_%lp-hd191096191151%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191095191147%_)))
                                (_%lp-tl191097191154%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191095191147%_))))
                            (_%loop191094191138%_
                             _%lp-tl191097191154%_
                             (cons _%lp-hd191096191151%_
                                   _%clause191098191145%_))))
                        (let ((_%clause191099191157%_
                               (reverse _%clause191098191145%_)))
                          ((lambda (_%g191083191160%_ _%g191084191162%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g191084191162%_))
                                 (let* ((_%g191181191198%_
                                         (lambda (_%g191182191194%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g191182191194%_))))
                                        (_%g191180191257%_
                                         (lambda (_%g191182191202%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g191182191202%_))
                                               (let ((_g192108_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g191182191202%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g192109_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g192108_)
                        (##values-length _g192108_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g192109_ 2)))
                 (error "Context expects 2 values" _g192109_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target191184191205%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g192108_
                                                             0)))
                                                         (_%tl191186191208%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g192108_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl191186191208%_))
                                                         (letrec ((_%loop191187191211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd191185191215%_ _%clause191191191218%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd191185191215%_))
                                 (let ((_%e191188191220%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd191185191215%_))))
                                   (let ((_%lp-hd191189191224%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e191188191220%_)))
                                         (_%lp-tl191190191227%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e191188191220%_))))
                                     (_%loop191187191211%_
                                      _%lp-tl191190191227%_
                                      (cons _%lp-hd191189191224%_
                                            _%clause191191191218%_))))
                                 (let ((_%clause191192191230%_
                                        (reverse _%clause191191191218%_)))
                                   ((lambda (_%g191183191233%_)
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
                            (cons _%g191084191162%_
                                  (let ((__tmp192110
                                         (lambda (_%g191248191251%_
                                                  _%g191249191254%_)
                                           (cons _%g191248191251%_
                                                 _%g191249191254%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp192110
                                     '()
                                     _%g191183191233%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause191192191230%_))))))
                   (_%loop191187191211%_ _%target191184191205%_ '()))
                 (_%g191181191198%_ _%g191182191202%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g191181191198%_
                                                _%g191182191202%_)))))
                                   (_%g191180191257%_
                                    (let ((__tmp192113
                                           (lambda (_%clause191261%_)
                                             (let* ((_%__stx192025192026%_
                                                     _%clause191261%_)
                                                    (_%g191265191292%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx192025192026%_)))))
                                               (let ((_%__kont192028192029%_
                                                      (lambda (_%g191267191377%_
                                                               _%g191268191379%_)
                                                        (cons _%g191268191379%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g191267191377%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont192030192031%_
                                                      (lambda (_%g191275191329%_
                                                               _%g191276191331%_
                                                               _%g191277191332%_)
                                                        (cons _%g191277191332%_
                                                              (cons _%g191276191331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g191275191329%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx192025192026%_))
                                                     (let ((_%e191269191357%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx192025192026%_))))
                                                       (let ((_%tl191271191364%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e191269191357%_)))
                     (_%hd191270191361%_
                      (let () (declare (not safe)) (##car _%e191269191357%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl191271191364%_))
                     (let ((_%e191272191367%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl191271191364%_))))
                       (let ((_%tl191274191374%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e191272191367%_)))
                             (_%hd191273191371%_
                              (let ()
                                (declare (not safe))
                                (##car _%e191272191367%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl191274191374%_))
                             (_%__kont192028192029%_
                              _%hd191273191371%_
                              _%hd191270191361%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl191274191374%_))
                                 (let ((_%e191284191319%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl191274191374%_))))
                                   (let ((_%tl191286191326%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e191284191319%_)))
                                         (_%hd191285191323%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e191284191319%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl191286191326%_))
                                         (_%__kont192030192031%_
                                          _%hd191285191323%_
                                          _%hd191273191371%_
                                          _%hd191270191361%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g191265191292%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g191265191292%_))))))
                     (let () (declare (not safe)) (_%g191265191292%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g191265191292%_)))))))
                                          (__tmp192111
                                           (let ((__tmp192112
                                                  (lambda (_%g191395191398%_
                                                           _%g191396191401%_)
                                                    (cons _%g191395191398%_
                                                          _%g191396191401%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp192112
                                              '()
                                              _%g191083191160%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp192113 __tmp192111))))
                                 (_%g191081191105%_ _%g191082191109%_)))
                           _%clause191099191157%_
                           _%hd191089191126%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop191094191138%_
                                                   _%target191091191132%_
                                                   '()))
                                                (_%g191081191105%_
                                                 _%g191082191109%_)))))
                                      (_%g191081191105%_ _%g191082191109%_))))
                              (_%g191081191105%_ _%g191082191109%_))))
                      (_%g191081191105%_ _%g191082191109%_)))))
          (_%g191080191404%_ _%stx191078%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj192075
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
           __obj192075
           'gxc#symbol-table::t
           '2
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj192075 'symbol-table '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192075
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192075
           '(gensyms bindings)
           '8
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj192075 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj192075 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj192075 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj192075 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj192075 ':init! '13 '#f '#f))
        (let ((__tmp192114 |gxc[1]#_g192115_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj192075 __tmp192114 '4 '#f '#f))
        (let ((__tmp192116 |gxc[1]#_g192117_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj192075 __tmp192116 '14 '#f '#f))
        (let ((__tmp192118 |gxc[1]#_g192119_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj192075 __tmp192118 '15 '#f '#f))
        (let ((__tmp192120
               (cons (cons 'gensyms |gxc[1]#_g192121_|)
                     (cons (cons 'bindings |gxc[1]#_g192122_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj192075 __tmp192120 '16 '#f '#f))
        (let ((__tmp192123
               (cons (cons 'gensyms |gxc[1]#_g192124_|)
                     (cons (cons 'bindings |gxc[1]#_g192125_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj192075 __tmp192123 '17 '#f '#f))
        (let ((__tmp192126
               (cons (cons 'gensyms |gxc[1]#_g192127_|)
                     (cons (cons 'bindings |gxc[1]#_g192128_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj192075 __tmp192126 '18 '#f '#f))
        (let ((__tmp192129
               (cons (cons 'gensyms |gxc[1]#_g192130_|)
                     (cons (cons 'bindings |gxc[1]#_g192131_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj192075 __tmp192129 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj192075 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj192075 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj192075 '() '21 '#f '#f))
        __obj192075))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx191410%_)
        (let* ((_%g191414191428%_
                (lambda (_%g191415191424%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191415191424%_))))
               (_%g191413191469%_
                (lambda (_%g191415191432%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191415191432%_))
                      (let ((_%e191417191435%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g191415191432%_))))
                        (let ((_%hd191418191439%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191417191435%_)))
                              (_%tl191419191442%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191417191435%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191419191442%_))
                              (let ((_%e191420191445%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl191419191442%_))))
                                (let ((_%hd191421191449%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191420191445%_)))
                                      (_%tl191422191452%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191420191445%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191422191452%_))
                                      ((lambda (_%g191416191455%_)
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
                         (cons '() (cons _%g191416191455%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd191421191449%_)
                                      (_%g191414191428%_ _%g191415191432%_))))
                              (_%g191414191428%_ _%g191415191432%_))))
                      (_%g191414191428%_ _%g191415191432%_)))))
          (_%g191413191469%_ _%$stx191410%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx191473%_)
        (let* ((_%g191477191491%_
                (lambda (_%g191478191487%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191478191487%_))))
               (_%g191476191532%_
                (lambda (_%g191478191495%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191478191495%_))
                      (let ((_%e191480191498%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g191478191495%_))))
                        (let ((_%hd191481191502%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191480191498%_)))
                              (_%tl191482191505%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191480191498%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191482191505%_))
                              (let ((_%e191483191508%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl191482191505%_))))
                                (let ((_%hd191484191512%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191483191508%_)))
                                      (_%tl191485191515%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191483191508%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191485191515%_))
                                      ((lambda (_%g191479191518%_)
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
                         (cons _%g191479191518%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd191484191512%_)
                                      (_%g191477191491%_ _%g191478191495%_))))
                              (_%g191477191491%_ _%g191478191495%_))))
                      (_%g191477191491%_ _%g191478191495%_)))))
          (_%g191476191532%_ _%$stx191473%_))))))
