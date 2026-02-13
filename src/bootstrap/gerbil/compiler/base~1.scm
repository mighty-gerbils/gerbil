(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g190167_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190169_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190171_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190173_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190174_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190176_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190177_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190179_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190180_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190182_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190183_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx189127%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx189127%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx189130%_)
        (let* ((_%g189133189157%_
                (lambda (_%g189134189153%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189134189153%_))))
               (_%g189132189456%_
                (lambda (_%g189134189161%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189134189161%_))
                      (let ((_%e189137189164%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g189134189161%_))))
                        (let ((_%hd189138189168%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189137189164%_)))
                              (_%tl189139189171%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189137189164%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl189139189171%_))
                              (let ((_%e189140189174%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl189139189171%_))))
                                (let ((_%hd189141189178%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e189140189174%_)))
                                      (_%tl189142189181%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e189140189174%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl189142189181%_))
                                      (let ((_g190158_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl189142189181%_
                                                '0))))
                                        (begin
                                          (let ((_g190159_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g190158_)
                                                       (##values-length
                                                        _g190158_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g190159_ 2)))
                                                (error "Context expects 2 values"
                                                       _g190159_)))
                                          (let ((_%target189143189184%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g190158_ 0)))
                                                (_%tl189145189187%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g190158_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl189145189187%_))
                                                (letrec ((_%loop189146189190%_
                                                          (lambda (_%hd189144189194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause189150189197%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd189144189194%_))
                        (let ((_%e189147189199%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd189144189194%_))))
                          (let ((_%lp-hd189148189203%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189147189199%_)))
                                (_%lp-tl189149189206%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189147189199%_))))
                            (_%loop189146189190%_
                             _%lp-tl189149189206%_
                             (cons _%lp-hd189148189203%_
                                   _%clause189150189197%_))))
                        (let ((_%clause189151189209%_
                               (reverse _%clause189150189197%_)))
                          ((lambda (_%g189135189212%_ _%g189136189214%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g189136189214%_))
                                 (let* ((_%g189233189250%_
                                         (lambda (_%g189234189246%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g189234189246%_))))
                                        (_%g189232189309%_
                                         (lambda (_%g189234189254%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g189234189254%_))
                                               (let ((_g190160_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g189234189254%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g190161_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g190160_)
                        (##values-length _g190160_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g190161_ 2)))
                 (error "Context expects 2 values" _g190161_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target189236189257%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g190160_
                                                             0)))
                                                         (_%tl189238189260%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g190160_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl189238189260%_))
                                                         (letrec ((_%loop189239189263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd189237189267%_ _%clause189243189270%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd189237189267%_))
                                 (let ((_%e189240189272%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd189237189267%_))))
                                   (let ((_%lp-hd189241189276%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e189240189272%_)))
                                         (_%lp-tl189242189279%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e189240189272%_))))
                                     (_%loop189239189263%_
                                      _%lp-tl189242189279%_
                                      (cons _%lp-hd189241189276%_
                                            _%clause189243189270%_))))
                                 (let ((_%clause189244189282%_
                                        (reverse _%clause189243189270%_)))
                                   ((lambda (_%g189235189285%_)
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
                            (cons _%g189136189214%_
                                  (let ((__tmp190162
                                         (lambda (_%g189300189303%_
                                                  _%g189301189306%_)
                                           (cons _%g189300189303%_
                                                 _%g189301189306%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp190162
                                     '()
                                     _%g189235189285%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause189244189282%_))))))
                   (_%loop189239189263%_ _%target189236189257%_ '()))
                 (_%g189233189250%_ _%g189234189254%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g189233189250%_
                                                _%g189234189254%_)))))
                                   (_%g189232189309%_
                                    (let ((__tmp190165
                                           (lambda (_%clause189313%_)
                                             (let* ((_%__stx190077190078%_
                                                     _%clause189313%_)
                                                    (_%g189317189344%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx190077190078%_)))))
                                               (let ((_%__kont190080190081%_
                                                      (lambda (_%g189319189429%_
                                                               _%g189320189431%_)
                                                        (cons _%g189320189431%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g189319189429%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont190082190083%_
                                                      (lambda (_%g189327189381%_
                                                               _%g189328189383%_
                                                               _%g189329189384%_)
                                                        (cons _%g189329189384%_
                                                              (cons _%g189328189383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g189327189381%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx190077190078%_))
                                                     (let ((_%e189321189409%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx190077190078%_))))
                                                       (let ((_%tl189323189416%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e189321189409%_)))
                     (_%hd189322189413%_
                      (let () (declare (not safe)) (##car _%e189321189409%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl189323189416%_))
                     (let ((_%e189324189419%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl189323189416%_))))
                       (let ((_%tl189326189426%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e189324189419%_)))
                             (_%hd189325189423%_
                              (let ()
                                (declare (not safe))
                                (##car _%e189324189419%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl189326189426%_))
                             (_%__kont190080190081%_
                              _%hd189325189423%_
                              _%hd189322189413%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl189326189426%_))
                                 (let ((_%e189336189371%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl189326189426%_))))
                                   (let ((_%tl189338189378%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e189336189371%_)))
                                         (_%hd189337189375%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e189336189371%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl189338189378%_))
                                         (_%__kont190082190083%_
                                          _%hd189337189375%_
                                          _%hd189325189423%_
                                          _%hd189322189413%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g189317189344%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g189317189344%_))))))
                     (let () (declare (not safe)) (_%g189317189344%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g189317189344%_)))))))
                                          (__tmp190163
                                           (let ((__tmp190164
                                                  (lambda (_%g189447189450%_
                                                           _%g189448189453%_)
                                                    (cons _%g189447189450%_
                                                          _%g189448189453%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp190164
                                              '()
                                              _%g189135189212%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp190165 __tmp190163))))
                                 (_%g189133189157%_ _%g189134189161%_)))
                           _%clause189151189209%_
                           _%hd189141189178%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop189146189190%_
                                                   _%target189143189184%_
                                                   '()))
                                                (_%g189133189157%_
                                                 _%g189134189161%_)))))
                                      (_%g189133189157%_ _%g189134189161%_))))
                              (_%g189133189157%_ _%g189134189161%_))))
                      (_%g189133189157%_ _%g189134189161%_)))))
          (_%g189132189456%_ _%stx189130%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj190127
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
           __obj190127
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190127 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj190127
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj190127
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190127 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190127 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190127 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190127 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190127 ':init! '12 '#f '#f))
        (let ((__tmp190166 |gxc[1]#_g190167_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj190127 __tmp190166 '3 '#f '#f))
        (let ((__tmp190168 |gxc[1]#_g190169_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj190127 __tmp190168 '13 '#f '#f))
        (let ((__tmp190170 |gxc[1]#_g190171_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj190127 __tmp190170 '14 '#f '#f))
        (let ((__tmp190172
               (cons (cons 'gensyms |gxc[1]#_g190173_|)
                     (cons (cons 'bindings |gxc[1]#_g190174_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj190127 __tmp190172 '15 '#f '#f))
        (let ((__tmp190175
               (cons (cons 'gensyms |gxc[1]#_g190176_|)
                     (cons (cons 'bindings |gxc[1]#_g190177_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj190127 __tmp190175 '16 '#f '#f))
        (let ((__tmp190178
               (cons (cons 'gensyms |gxc[1]#_g190179_|)
                     (cons (cons 'bindings |gxc[1]#_g190180_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj190127 __tmp190178 '17 '#f '#f))
        (let ((__tmp190181
               (cons (cons 'gensyms |gxc[1]#_g190182_|)
                     (cons (cons 'bindings |gxc[1]#_g190183_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj190127 __tmp190181 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190127 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190127 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190127 '() '20 '#f '#f))
        __obj190127))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx189462%_)
        (let* ((_%g189466189480%_
                (lambda (_%g189467189476%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189467189476%_))))
               (_%g189465189521%_
                (lambda (_%g189467189484%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189467189484%_))
                      (let ((_%e189469189487%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g189467189484%_))))
                        (let ((_%hd189470189491%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189469189487%_)))
                              (_%tl189471189494%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189469189487%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl189471189494%_))
                              (let ((_%e189472189497%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl189471189494%_))))
                                (let ((_%hd189473189501%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e189472189497%_)))
                                      (_%tl189474189504%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e189472189497%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl189474189504%_))
                                      ((lambda (_%g189468189507%_)
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
                         (cons '() (cons _%g189468189507%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd189473189501%_)
                                      (_%g189466189480%_ _%g189467189484%_))))
                              (_%g189466189480%_ _%g189467189484%_))))
                      (_%g189466189480%_ _%g189467189484%_)))))
          (_%g189465189521%_ _%$stx189462%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx189525%_)
        (let* ((_%g189529189543%_
                (lambda (_%g189530189539%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189530189539%_))))
               (_%g189528189584%_
                (lambda (_%g189530189547%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189530189547%_))
                      (let ((_%e189532189550%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g189530189547%_))))
                        (let ((_%hd189533189554%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189532189550%_)))
                              (_%tl189534189557%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189532189550%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl189534189557%_))
                              (let ((_%e189535189560%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl189534189557%_))))
                                (let ((_%hd189536189564%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e189535189560%_)))
                                      (_%tl189537189567%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e189535189560%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl189537189567%_))
                                      ((lambda (_%g189531189570%_)
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
                         (cons _%g189531189570%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd189536189564%_)
                                      (_%g189529189543%_ _%g189530189547%_))))
                              (_%g189529189543%_ _%g189530189547%_))))
                      (_%g189529189543%_ _%g189530189547%_)))))
          (_%g189528189584%_ _%$stx189525%_))))))
