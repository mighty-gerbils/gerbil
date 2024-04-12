(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g132084_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132086_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132088_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132090_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132091_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132093_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132094_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132096_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132097_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132099_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132100_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx131167%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx131167%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx131170%_)
        (let* ((_%g131173131197%_
                (lambda (_%g131174131193%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131174131193%_))))
               (_%g131172131500%_
                (lambda (_%g131174131201%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131174131201%_))
                      (let ((_%e131177131204%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g131174131201%_))))
                        (let ((_%hd131178131208%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131177131204%_)))
                              (_%tl131179131211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131177131204%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131179131211%_))
                              (let ((_%e131180131214%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl131179131211%_))))
                                (let ((_%hd131181131218%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131180131214%_)))
                                      (_%tl131182131221%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131180131214%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl131182131221%_))
                                      (let ((_g132075_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl131182131221%_
                                                '0))))
                                        (begin
                                          (let ((_g132076_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g132075_)
                                                       (##vector-length
                                                        _g132075_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g132076_ 2)))
                                                (error "Context expects 2 values"
                                                       _g132076_)))
                                          (let ((_%target131183131224%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g132075_ 0)))
                                                (_%tl131185131227%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g132075_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131185131227%_))
                                                (letrec ((_%loop131186131230%_
                                                          (lambda (_%hd131184131234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause131190131237%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131184131234%_))
                        (let ((_%e131187131240%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd131184131234%_))))
                          (let ((_%lp-hd131188131244%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131187131240%_)))
                                (_%lp-tl131189131247%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131187131240%_))))
                            (_%loop131186131230%_
                             _%lp-tl131189131247%_
                             (cons _%lp-hd131188131244%_
                                   _%clause131190131237%_))))
                        (let ((_%clause131191131250%_
                               (reverse _%clause131190131237%_)))
                          ((lambda (_%L131254%_ _%L131256%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L131256%_))
                                 (let* ((_%g131275131292%_
                                         (lambda (_%g131276131288%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g131276131288%_))))
                                        (_%g131274131353%_
                                         (lambda (_%g131276131296%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g131276131296%_))
                                               (let ((_g132077_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g131276131296%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g132078_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g132077_)
                        (##vector-length _g132077_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g132078_ 2)))
                 (error "Context expects 2 values" _g132078_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target131278131299%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g132077_
                                                             0)))
                                                         (_%tl131280131302%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g132077_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl131280131302%_))
                                                         (letrec ((_%loop131281131305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd131279131309%_ _%clause131285131312%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd131279131309%_))
                                 (let ((_%e131282131315%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd131279131309%_))))
                                   (let ((_%lp-hd131283131319%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e131282131315%_)))
                                         (_%lp-tl131284131322%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e131282131315%_))))
                                     (_%loop131281131305%_
                                      _%lp-tl131284131322%_
                                      (cons _%lp-hd131283131319%_
                                            _%clause131285131312%_))))
                                 (let ((_%clause131286131325%_
                                        (reverse _%clause131285131312%_)))
                                   ((lambda (_%L131329%_)
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
                            (cons _%L131256%_
                                  (let ((__tmp132079
                                         (lambda (_%g131344131347%_
                                                  _%g131345131350%_)
                                           (cons _%g131344131347%_
                                                 _%g131345131350%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp132079 '() _%L131329%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause131286131325%_))))))
                   (_%loop131281131305%_ _%target131278131299%_ '()))
                 (_%g131275131292%_ _%g131276131296%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g131275131292%_
                                                _%g131276131296%_)))))
                                   (_%g131274131353%_
                                    (let ((__tmp132082
                                           (lambda (_%clause131357%_)
                                             (let* ((_%__stx131995131996%_
                                                     _%clause131357%_)
                                                    (_%g131361131388%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx131995131996%_)))))
                                               (let ((_%__kont131998131999%_
                                                      (lambda (_%L131473%_
                                                               _%L131475%_)
                                                        (cons _%L131475%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L131473%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont132000132001%_
                                                      (lambda (_%L131425%_
                                                               _%L131427%_
                                                               _%L131428%_)
                                                        (cons _%L131428%_
                                                              (cons _%L131427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L131425%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx131995131996%_))
                                                     (let ((_%e131365131453%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx131995131996%_))))
                                                       (let ((_%tl131367131460%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e131365131453%_)))
                     (_%hd131366131457%_
                      (let () (declare (not safe)) (##car _%e131365131453%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl131367131460%_))
                     (let ((_%e131368131463%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl131367131460%_))))
                       (let ((_%tl131370131470%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e131368131463%_)))
                             (_%hd131369131467%_
                              (let ()
                                (declare (not safe))
                                (##car _%e131368131463%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl131370131470%_))
                             (_%__kont131998131999%_
                              _%hd131369131467%_
                              _%hd131366131457%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl131370131470%_))
                                 (let ((_%e131380131415%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl131370131470%_))))
                                   (let ((_%tl131382131422%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e131380131415%_)))
                                         (_%hd131381131419%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e131380131415%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl131382131422%_))
                                         (_%__kont132000132001%_
                                          _%hd131381131419%_
                                          _%hd131369131467%_
                                          _%hd131366131457%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g131361131388%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g131361131388%_))))))
                     (let () (declare (not safe)) (_%g131361131388%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g131361131388%_)))))))
                                          (__tmp132080
                                           (let ((__tmp132081
                                                  (lambda (_%g131491131494%_
                                                           _%g131492131497%_)
                                                    (cons _%g131491131494%_
                                                          _%g131492131497%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp132081
                                              '()
                                              _%L131254%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp132082 __tmp132080))))
                                 (_%g131173131197%_ _%g131174131201%_)))
                           _%clause131191131250%_
                           _%hd131181131218%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop131186131230%_
                                                   _%target131183131224%_
                                                   '()))
                                                (_%g131173131197%_
                                                 _%g131174131201%_)))))
                                      (_%g131173131197%_ _%g131174131201%_))))
                              (_%g131173131197%_ _%g131174131201%_))))
                      (_%g131173131197%_ _%g131174131201%_)))))
          (_%g131172131500%_ _%stx131170%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj132045
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
           __obj132045
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132045 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj132045
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj132045
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132045 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132045 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132045 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132045 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132045 ':init! '11 '#f '#f))
        (let ((__tmp132083 |gxc[1]#_g132084_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj132045 __tmp132083 '12 '#f '#f))
        (let ((__tmp132085 |gxc[1]#_g132086_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj132045 __tmp132085 '13 '#f '#f))
        (let ((__tmp132087 |gxc[1]#_g132088_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj132045 __tmp132087 '14 '#f '#f))
        (let ((__tmp132089
               (cons (cons 'gensyms |gxc[1]#_g132090_|)
                     (cons (cons 'bindings |gxc[1]#_g132091_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj132045 __tmp132089 '15 '#f '#f))
        (let ((__tmp132092
               (cons (cons 'gensyms |gxc[1]#_g132093_|)
                     (cons (cons 'bindings |gxc[1]#_g132094_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj132045 __tmp132092 '16 '#f '#f))
        (let ((__tmp132095
               (cons (cons 'gensyms |gxc[1]#_g132096_|)
                     (cons (cons 'bindings |gxc[1]#_g132097_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj132045 __tmp132095 '17 '#f '#f))
        (let ((__tmp132098
               (cons (cons 'gensyms |gxc[1]#_g132099_|)
                     (cons (cons 'bindings |gxc[1]#_g132100_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj132045 __tmp132098 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132045 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132045 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132045 '() '20 '#f '#f))
        __obj132045))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx131507%_)
        (let* ((_%g131511131525%_
                (lambda (_%g131512131521%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131512131521%_))))
               (_%g131510131566%_
                (lambda (_%g131512131529%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131512131529%_))
                      (let ((_%e131514131532%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g131512131529%_))))
                        (let ((_%hd131515131536%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131514131532%_)))
                              (_%tl131516131539%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131514131532%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131516131539%_))
                              (let ((_%e131517131542%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl131516131539%_))))
                                (let ((_%hd131518131546%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131517131542%_)))
                                      (_%tl131519131549%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131517131542%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl131519131549%_))
                                      ((lambda (_%L131552%_)
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
                         (cons '() (cons _%L131552%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd131518131546%_)
                                      (_%g131511131525%_ _%g131512131529%_))))
                              (_%g131511131525%_ _%g131512131529%_))))
                      (_%g131511131525%_ _%g131512131529%_)))))
          (_%g131510131566%_ _%$stx131507%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx131570%_)
        (let* ((_%g131574131588%_
                (lambda (_%g131575131584%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131575131584%_))))
               (_%g131573131629%_
                (lambda (_%g131575131592%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131575131592%_))
                      (let ((_%e131577131595%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g131575131592%_))))
                        (let ((_%hd131578131599%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131577131595%_)))
                              (_%tl131579131602%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131577131595%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131579131602%_))
                              (let ((_%e131580131605%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl131579131602%_))))
                                (let ((_%hd131581131609%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131580131605%_)))
                                      (_%tl131582131612%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131580131605%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl131582131612%_))
                                      ((lambda (_%L131615%_)
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
                         (cons _%L131615%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd131581131609%_)
                                      (_%g131574131588%_ _%g131575131592%_))))
                              (_%g131574131588%_ _%g131575131592%_))))
                      (_%g131574131588%_ _%g131575131592%_)))))
          (_%g131573131629%_ _%$stx131570%_))))))
