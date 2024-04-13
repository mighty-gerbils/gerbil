(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g133398_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g133400_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g133402_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g133404_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g133405_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g133407_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g133408_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g133410_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g133411_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g133413_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g133414_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx132481%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx132481%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx132484%_)
        (let* ((_%g132487132511%_
                (lambda (_%g132488132507%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132488132507%_))))
               (_%g132486132814%_
                (lambda (_%g132488132515%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132488132515%_))
                      (let ((_%e132491132518%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g132488132515%_))))
                        (let ((_%hd132492132522%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132491132518%_)))
                              (_%tl132493132525%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132491132518%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132493132525%_))
                              (let ((_%e132494132528%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl132493132525%_))))
                                (let ((_%hd132495132532%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132494132528%_)))
                                      (_%tl132496132535%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132494132528%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl132496132535%_))
                                      (let ((_g133389_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl132496132535%_
                                                '0))))
                                        (begin
                                          (let ((_g133390_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133389_)
                                                       (##vector-length
                                                        _g133389_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133390_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133390_)))
                                          (let ((_%target132497132538%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133389_ 0)))
                                                (_%tl132499132541%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133389_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132499132541%_))
                                                (letrec ((_%loop132500132544%_
                                                          (lambda (_%hd132498132548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause132504132551%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132498132548%_))
                        (let ((_%e132501132554%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd132498132548%_))))
                          (let ((_%lp-hd132502132558%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132501132554%_)))
                                (_%lp-tl132503132561%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132501132554%_))))
                            (_%loop132500132544%_
                             _%lp-tl132503132561%_
                             (cons _%lp-hd132502132558%_
                                   _%clause132504132551%_))))
                        (let ((_%clause132505132564%_
                               (reverse _%clause132504132551%_)))
                          ((lambda (_%L132568%_ _%L132570%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L132570%_))
                                 (let* ((_%g132589132606%_
                                         (lambda (_%g132590132602%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g132590132602%_))))
                                        (_%g132588132667%_
                                         (lambda (_%g132590132610%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g132590132610%_))
                                               (let ((_g133391_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g132590132610%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g133392_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g133391_)
                        (##vector-length _g133391_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g133392_ 2)))
                 (error "Context expects 2 values" _g133392_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target132592132613%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g133391_
                                                             0)))
                                                         (_%tl132594132616%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g133391_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl132594132616%_))
                                                         (letrec ((_%loop132595132619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd132593132623%_ _%clause132599132626%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd132593132623%_))
                                 (let ((_%e132596132629%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd132593132623%_))))
                                   (let ((_%lp-hd132597132633%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e132596132629%_)))
                                         (_%lp-tl132598132636%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e132596132629%_))))
                                     (_%loop132595132619%_
                                      _%lp-tl132598132636%_
                                      (cons _%lp-hd132597132633%_
                                            _%clause132599132626%_))))
                                 (let ((_%clause132600132639%_
                                        (reverse _%clause132599132626%_)))
                                   ((lambda (_%L132643%_)
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
                            (cons _%L132570%_
                                  (let ((__tmp133393
                                         (lambda (_%g132658132661%_
                                                  _%g132659132664%_)
                                           (cons _%g132658132661%_
                                                 _%g132659132664%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp133393 '() _%L132643%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause132600132639%_))))))
                   (_%loop132595132619%_ _%target132592132613%_ '()))
                 (_%g132589132606%_ _%g132590132610%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g132589132606%_
                                                _%g132590132610%_)))))
                                   (_%g132588132667%_
                                    (let ((__tmp133396
                                           (lambda (_%clause132671%_)
                                             (let* ((_%__stx133309133310%_
                                                     _%clause132671%_)
                                                    (_%g132675132702%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx133309133310%_)))))
                                               (let ((_%__kont133312133313%_
                                                      (lambda (_%L132787%_
                                                               _%L132789%_)
                                                        (cons _%L132789%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L132787%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont133314133315%_
                                                      (lambda (_%L132739%_
                                                               _%L132741%_
                                                               _%L132742%_)
                                                        (cons _%L132742%_
                                                              (cons _%L132741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L132739%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx133309133310%_))
                                                     (let ((_%e132679132767%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx133309133310%_))))
                                                       (let ((_%tl132681132774%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e132679132767%_)))
                     (_%hd132680132771%_
                      (let () (declare (not safe)) (##car _%e132679132767%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl132681132774%_))
                     (let ((_%e132682132777%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl132681132774%_))))
                       (let ((_%tl132684132784%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e132682132777%_)))
                             (_%hd132683132781%_
                              (let ()
                                (declare (not safe))
                                (##car _%e132682132777%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl132684132784%_))
                             (_%__kont133312133313%_
                              _%hd132683132781%_
                              _%hd132680132771%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl132684132784%_))
                                 (let ((_%e132694132729%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl132684132784%_))))
                                   (let ((_%tl132696132736%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e132694132729%_)))
                                         (_%hd132695132733%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e132694132729%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl132696132736%_))
                                         (_%__kont133314133315%_
                                          _%hd132695132733%_
                                          _%hd132683132781%_
                                          _%hd132680132771%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g132675132702%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g132675132702%_))))))
                     (let () (declare (not safe)) (_%g132675132702%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g132675132702%_)))))))
                                          (__tmp133394
                                           (let ((__tmp133395
                                                  (lambda (_%g132805132808%_
                                                           _%g132806132811%_)
                                                    (cons _%g132805132808%_
                                                          _%g132806132811%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp133395
                                              '()
                                              _%L132568%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp133396 __tmp133394))))
                                 (_%g132487132511%_ _%g132488132515%_)))
                           _%clause132505132564%_
                           _%hd132495132532%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop132500132544%_
                                                   _%target132497132538%_
                                                   '()))
                                                (_%g132487132511%_
                                                 _%g132488132515%_)))))
                                      (_%g132487132511%_ _%g132488132515%_))))
                              (_%g132487132511%_ _%g132488132515%_))))
                      (_%g132487132511%_ _%g132488132515%_)))))
          (_%g132486132814%_ _%stx132484%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj133359
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
           __obj133359
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133359 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj133359
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj133359
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133359 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133359 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133359 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133359 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133359 ':init! '11 '#f '#f))
        (let ((__tmp133397 |gxc[1]#_g133398_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj133359 __tmp133397 '12 '#f '#f))
        (let ((__tmp133399 |gxc[1]#_g133400_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj133359 __tmp133399 '13 '#f '#f))
        (let ((__tmp133401 |gxc[1]#_g133402_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj133359 __tmp133401 '14 '#f '#f))
        (let ((__tmp133403
               (cons (cons 'gensyms |gxc[1]#_g133404_|)
                     (cons (cons 'bindings |gxc[1]#_g133405_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj133359 __tmp133403 '15 '#f '#f))
        (let ((__tmp133406
               (cons (cons 'gensyms |gxc[1]#_g133407_|)
                     (cons (cons 'bindings |gxc[1]#_g133408_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj133359 __tmp133406 '16 '#f '#f))
        (let ((__tmp133409
               (cons (cons 'gensyms |gxc[1]#_g133410_|)
                     (cons (cons 'bindings |gxc[1]#_g133411_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj133359 __tmp133409 '17 '#f '#f))
        (let ((__tmp133412
               (cons (cons 'gensyms |gxc[1]#_g133413_|)
                     (cons (cons 'bindings |gxc[1]#_g133414_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj133359 __tmp133412 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133359 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133359 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj133359 '() '20 '#f '#f))
        __obj133359))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx132821%_)
        (let* ((_%g132825132839%_
                (lambda (_%g132826132835%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132826132835%_))))
               (_%g132824132880%_
                (lambda (_%g132826132843%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132826132843%_))
                      (let ((_%e132828132846%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g132826132843%_))))
                        (let ((_%hd132829132850%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132828132846%_)))
                              (_%tl132830132853%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132828132846%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132830132853%_))
                              (let ((_%e132831132856%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl132830132853%_))))
                                (let ((_%hd132832132860%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132831132856%_)))
                                      (_%tl132833132863%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132831132856%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl132833132863%_))
                                      ((lambda (_%L132866%_)
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
                         (cons '() (cons _%L132866%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd132832132860%_)
                                      (_%g132825132839%_ _%g132826132843%_))))
                              (_%g132825132839%_ _%g132826132843%_))))
                      (_%g132825132839%_ _%g132826132843%_)))))
          (_%g132824132880%_ _%$stx132821%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx132884%_)
        (let* ((_%g132888132902%_
                (lambda (_%g132889132898%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132889132898%_))))
               (_%g132887132943%_
                (lambda (_%g132889132906%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132889132906%_))
                      (let ((_%e132891132909%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g132889132906%_))))
                        (let ((_%hd132892132913%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132891132909%_)))
                              (_%tl132893132916%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132891132909%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132893132916%_))
                              (let ((_%e132894132919%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl132893132916%_))))
                                (let ((_%hd132895132923%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132894132919%_)))
                                      (_%tl132896132926%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132894132919%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl132896132926%_))
                                      ((lambda (_%L132929%_)
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
                         (cons _%L132929%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd132895132923%_)
                                      (_%g132888132902%_ _%g132889132906%_))))
                              (_%g132888132902%_ _%g132889132906%_))))
                      (_%g132888132902%_ _%g132889132906%_)))))
          (_%g132887132943%_ _%$stx132884%_))))))
