(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g132026_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132028_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132030_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132032_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132033_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132035_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132036_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132038_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132039_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132041_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132042_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx131109%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx131109%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx131112%_)
        (let* ((_%g131115131139%_
                (lambda (_%g131116131135%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131116131135%_))))
               (_%g131114131442%_
                (lambda (_%g131116131143%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131116131143%_))
                      (let ((_%e131119131146%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g131116131143%_))))
                        (let ((_%hd131120131150%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131119131146%_)))
                              (_%tl131121131153%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131119131146%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131121131153%_))
                              (let ((_%e131122131156%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl131121131153%_))))
                                (let ((_%hd131123131160%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131122131156%_)))
                                      (_%tl131124131163%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131122131156%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl131124131163%_))
                                      (let ((_g132017_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl131124131163%_
                                                '0))))
                                        (begin
                                          (let ((_g132018_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g132017_)
                                                       (##vector-length
                                                        _g132017_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g132018_ 2)))
                                                (error "Context expects 2 values"
                                                       _g132018_)))
                                          (let ((_%target131125131166%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g132017_ 0)))
                                                (_%tl131127131169%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g132017_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131127131169%_))
                                                (letrec ((_%loop131128131172%_
                                                          (lambda (_%hd131126131176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause131132131179%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131126131176%_))
                        (let ((_%e131129131182%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd131126131176%_))))
                          (let ((_%lp-hd131130131186%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131129131182%_)))
                                (_%lp-tl131131131189%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131129131182%_))))
                            (_%loop131128131172%_
                             _%lp-tl131131131189%_
                             (cons _%lp-hd131130131186%_
                                   _%clause131132131179%_))))
                        (let ((_%clause131133131192%_
                               (reverse _%clause131132131179%_)))
                          ((lambda (_%L131196%_ _%L131198%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L131198%_))
                                 (let* ((_%g131217131234%_
                                         (lambda (_%g131218131230%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g131218131230%_))))
                                        (_%g131216131295%_
                                         (lambda (_%g131218131238%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g131218131238%_))
                                               (let ((_g132019_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g131218131238%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g132020_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g132019_)
                        (##vector-length _g132019_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g132020_ 2)))
                 (error "Context expects 2 values" _g132020_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target131220131241%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g132019_
                                                             0)))
                                                         (_%tl131222131244%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g132019_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl131222131244%_))
                                                         (letrec ((_%loop131223131247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd131221131251%_ _%clause131227131254%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd131221131251%_))
                                 (let ((_%e131224131257%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd131221131251%_))))
                                   (let ((_%lp-hd131225131261%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e131224131257%_)))
                                         (_%lp-tl131226131264%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e131224131257%_))))
                                     (_%loop131223131247%_
                                      _%lp-tl131226131264%_
                                      (cons _%lp-hd131225131261%_
                                            _%clause131227131254%_))))
                                 (let ((_%clause131228131267%_
                                        (reverse _%clause131227131254%_)))
                                   ((lambda (_%L131271%_)
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
                            (cons _%L131198%_
                                  (let ((__tmp132021
                                         (lambda (_%g131286131289%_
                                                  _%g131287131292%_)
                                           (cons _%g131286131289%_
                                                 _%g131287131292%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp132021 '() _%L131271%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause131228131267%_))))))
                   (_%loop131223131247%_ _%target131220131241%_ '()))
                 (_%g131217131234%_ _%g131218131238%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g131217131234%_
                                                _%g131218131238%_)))))
                                   (_%g131216131295%_
                                    (let ((__tmp132024
                                           (lambda (_%clause131299%_)
                                             (let* ((_%__stx131937131938%_
                                                     _%clause131299%_)
                                                    (_%g131303131330%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx131937131938%_)))))
                                               (let ((_%__kont131940131941%_
                                                      (lambda (_%L131415%_
                                                               _%L131417%_)
                                                        (cons _%L131417%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L131415%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont131942131943%_
                                                      (lambda (_%L131367%_
                                                               _%L131369%_
                                                               _%L131370%_)
                                                        (cons _%L131370%_
                                                              (cons _%L131369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L131367%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx131937131938%_))
                                                     (let ((_%e131307131395%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx131937131938%_))))
                                                       (let ((_%tl131309131402%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e131307131395%_)))
                     (_%hd131308131399%_
                      (let () (declare (not safe)) (##car _%e131307131395%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl131309131402%_))
                     (let ((_%e131310131405%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl131309131402%_))))
                       (let ((_%tl131312131412%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e131310131405%_)))
                             (_%hd131311131409%_
                              (let ()
                                (declare (not safe))
                                (##car _%e131310131405%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl131312131412%_))
                             (_%__kont131940131941%_
                              _%hd131311131409%_
                              _%hd131308131399%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl131312131412%_))
                                 (let ((_%e131322131357%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl131312131412%_))))
                                   (let ((_%tl131324131364%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e131322131357%_)))
                                         (_%hd131323131361%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e131322131357%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl131324131364%_))
                                         (_%__kont131942131943%_
                                          _%hd131323131361%_
                                          _%hd131311131409%_
                                          _%hd131308131399%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g131303131330%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g131303131330%_))))))
                     (let () (declare (not safe)) (_%g131303131330%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g131303131330%_)))))))
                                          (__tmp132022
                                           (let ((__tmp132023
                                                  (lambda (_%g131433131436%_
                                                           _%g131434131439%_)
                                                    (cons _%g131433131436%_
                                                          _%g131434131439%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp132023
                                              '()
                                              _%L131196%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp132024 __tmp132022))))
                                 (_%g131115131139%_ _%g131116131143%_)))
                           _%clause131133131192%_
                           _%hd131123131160%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop131128131172%_
                                                   _%target131125131166%_
                                                   '()))
                                                (_%g131115131139%_
                                                 _%g131116131143%_)))))
                                      (_%g131115131139%_ _%g131116131143%_))))
                              (_%g131115131139%_ _%g131116131143%_))))
                      (_%g131115131139%_ _%g131116131143%_)))))
          (_%g131114131442%_ _%stx131112%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj131987
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
           __obj131987
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131987 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj131987
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj131987
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131987 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131987 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131987 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131987 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131987 ':init! '11 '#f '#f))
        (let ((__tmp132025 |gxc[1]#_g132026_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj131987 __tmp132025 '12 '#f '#f))
        (let ((__tmp132027 |gxc[1]#_g132028_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj131987 __tmp132027 '13 '#f '#f))
        (let ((__tmp132029 |gxc[1]#_g132030_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj131987 __tmp132029 '14 '#f '#f))
        (let ((__tmp132031
               (cons (cons 'gensyms |gxc[1]#_g132032_|)
                     (cons (cons 'bindings |gxc[1]#_g132033_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj131987 __tmp132031 '15 '#f '#f))
        (let ((__tmp132034
               (cons (cons 'gensyms |gxc[1]#_g132035_|)
                     (cons (cons 'bindings |gxc[1]#_g132036_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj131987 __tmp132034 '16 '#f '#f))
        (let ((__tmp132037
               (cons (cons 'gensyms |gxc[1]#_g132038_|)
                     (cons (cons 'bindings |gxc[1]#_g132039_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj131987 __tmp132037 '17 '#f '#f))
        (let ((__tmp132040
               (cons (cons 'gensyms |gxc[1]#_g132041_|)
                     (cons (cons 'bindings |gxc[1]#_g132042_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj131987 __tmp132040 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131987 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131987 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131987 '() '20 '#f '#f))
        __obj131987))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx131449%_)
        (let* ((_%g131453131467%_
                (lambda (_%g131454131463%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131454131463%_))))
               (_%g131452131508%_
                (lambda (_%g131454131471%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131454131471%_))
                      (let ((_%e131456131474%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g131454131471%_))))
                        (let ((_%hd131457131478%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131456131474%_)))
                              (_%tl131458131481%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131456131474%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131458131481%_))
                              (let ((_%e131459131484%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl131458131481%_))))
                                (let ((_%hd131460131488%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131459131484%_)))
                                      (_%tl131461131491%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131459131484%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl131461131491%_))
                                      ((lambda (_%L131494%_)
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
                         (cons '() (cons _%L131494%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd131460131488%_)
                                      (_%g131453131467%_ _%g131454131471%_))))
                              (_%g131453131467%_ _%g131454131471%_))))
                      (_%g131453131467%_ _%g131454131471%_)))))
          (_%g131452131508%_ _%$stx131449%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx131512%_)
        (let* ((_%g131516131530%_
                (lambda (_%g131517131526%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131517131526%_))))
               (_%g131515131571%_
                (lambda (_%g131517131534%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131517131534%_))
                      (let ((_%e131519131537%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g131517131534%_))))
                        (let ((_%hd131520131541%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131519131537%_)))
                              (_%tl131521131544%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131519131537%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131521131544%_))
                              (let ((_%e131522131547%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl131521131544%_))))
                                (let ((_%hd131523131551%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131522131547%_)))
                                      (_%tl131524131554%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131522131547%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl131524131554%_))
                                      ((lambda (_%L131557%_)
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
                         (cons _%L131557%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd131523131551%_)
                                      (_%g131516131530%_ _%g131517131534%_))))
                              (_%g131516131530%_ _%g131517131534%_))))
                      (_%g131516131530%_ _%g131517131534%_)))))
          (_%g131515131571%_ _%$stx131512%_))))))
