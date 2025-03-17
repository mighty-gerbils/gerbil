(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g135213_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135215_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135217_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135219_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135220_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135222_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135223_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135225_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135226_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135228_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135229_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx134296%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx134296%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx134299%_)
        (let* ((_%g134302134326%_
                (lambda (_%g134303134322%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134303134322%_))))
               (_%g134301134629%_
                (lambda (_%g134303134330%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134303134330%_))
                      (let ((_%e134306134333%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g134303134330%_))))
                        (let ((_%hd134307134337%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134306134333%_)))
                              (_%tl134308134340%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134306134333%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134308134340%_))
                              (let ((_%e134309134343%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl134308134340%_))))
                                (let ((_%hd134310134347%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134309134343%_)))
                                      (_%tl134311134350%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134309134343%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl134311134350%_))
                                      (let ((_g135204_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl134311134350%_
                                                '0))))
                                        (begin
                                          (let ((_g135205_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g135204_)
                                                       (##values-length
                                                        _g135204_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g135205_ 2)))
                                                (error "Context expects 2 values"
                                                       _g135205_)))
                                          (let ((_%target134312134353%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g135204_ 0)))
                                                (_%tl134314134356%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g135204_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134314134356%_))
                                                (letrec ((_%loop134315134359%_
                                                          (lambda (_%hd134313134363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause134319134366%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd134313134363%_))
                        (let ((_%e134316134369%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd134313134363%_))))
                          (let ((_%lp-hd134317134373%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134316134369%_)))
                                (_%lp-tl134318134376%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134316134369%_))))
                            (_%loop134315134359%_
                             _%lp-tl134318134376%_
                             (cons _%lp-hd134317134373%_
                                   _%clause134319134366%_))))
                        (let ((_%clause134320134379%_
                               (reverse _%clause134319134366%_)))
                          ((lambda (_%L134383%_ _%L134385%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L134385%_))
                                 (let* ((_%g134404134421%_
                                         (lambda (_%g134405134417%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g134405134417%_))))
                                        (_%g134403134482%_
                                         (lambda (_%g134405134425%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g134405134425%_))
                                               (let ((_g135206_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g134405134425%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g135207_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g135206_)
                        (##values-length _g135206_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g135207_ 2)))
                 (error "Context expects 2 values" _g135207_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target134407134428%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g135206_
                                                             0)))
                                                         (_%tl134409134431%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g135206_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl134409134431%_))
                                                         (letrec ((_%loop134410134434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd134408134438%_ _%clause134414134441%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd134408134438%_))
                                 (let ((_%e134411134444%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd134408134438%_))))
                                   (let ((_%lp-hd134412134448%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e134411134444%_)))
                                         (_%lp-tl134413134451%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e134411134444%_))))
                                     (_%loop134410134434%_
                                      _%lp-tl134413134451%_
                                      (cons _%lp-hd134412134448%_
                                            _%clause134414134441%_))))
                                 (let ((_%clause134415134454%_
                                        (reverse _%clause134414134441%_)))
                                   ((lambda (_%L134458%_)
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
                            (cons _%L134385%_
                                  (let ((__tmp135208
                                         (lambda (_%g134473134476%_
                                                  _%g134474134479%_)
                                           (cons _%g134473134476%_
                                                 _%g134474134479%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp135208 '() _%L134458%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause134415134454%_))))))
                   (_%loop134410134434%_ _%target134407134428%_ '()))
                 (_%g134404134421%_ _%g134405134425%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g134404134421%_
                                                _%g134405134425%_)))))
                                   (_%g134403134482%_
                                    (let ((__tmp135211
                                           (lambda (_%clause134486%_)
                                             (let* ((_%__stx135124135125%_
                                                     _%clause134486%_)
                                                    (_%g134490134517%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx135124135125%_)))))
                                               (let ((_%__kont135127135128%_
                                                      (lambda (_%L134602%_
                                                               _%L134604%_)
                                                        (cons _%L134604%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L134602%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont135129135130%_
                                                      (lambda (_%L134554%_
                                                               _%L134556%_
                                                               _%L134557%_)
                                                        (cons _%L134557%_
                                                              (cons _%L134556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L134554%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx135124135125%_))
                                                     (let ((_%e134494134582%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx135124135125%_))))
                                                       (let ((_%tl134496134589%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e134494134582%_)))
                     (_%hd134495134586%_
                      (let () (declare (not safe)) (##car _%e134494134582%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl134496134589%_))
                     (let ((_%e134497134592%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl134496134589%_))))
                       (let ((_%tl134499134599%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e134497134592%_)))
                             (_%hd134498134596%_
                              (let ()
                                (declare (not safe))
                                (##car _%e134497134592%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl134499134599%_))
                             (_%__kont135127135128%_
                              _%hd134498134596%_
                              _%hd134495134586%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl134499134599%_))
                                 (let ((_%e134509134544%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl134499134599%_))))
                                   (let ((_%tl134511134551%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e134509134544%_)))
                                         (_%hd134510134548%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e134509134544%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl134511134551%_))
                                         (_%__kont135129135130%_
                                          _%hd134510134548%_
                                          _%hd134498134596%_
                                          _%hd134495134586%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g134490134517%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g134490134517%_))))))
                     (let () (declare (not safe)) (_%g134490134517%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g134490134517%_)))))))
                                          (__tmp135209
                                           (let ((__tmp135210
                                                  (lambda (_%g134620134623%_
                                                           _%g134621134626%_)
                                                    (cons _%g134620134623%_
                                                          _%g134621134626%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp135210
                                              '()
                                              _%L134383%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp135211 __tmp135209))))
                                 (_%g134302134326%_ _%g134303134330%_)))
                           _%clause134320134379%_
                           _%hd134310134347%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop134315134359%_
                                                   _%target134312134353%_
                                                   '()))
                                                (_%g134302134326%_
                                                 _%g134303134330%_)))))
                                      (_%g134302134326%_ _%g134303134330%_))))
                              (_%g134302134326%_ _%g134303134330%_))))
                      (_%g134302134326%_ _%g134303134330%_)))))
          (_%g134301134629%_ _%stx134299%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj135174
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
           __obj135174
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135174 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135174
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135174
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135174 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135174 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135174 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135174 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135174 ':init! '11 '#f '#f))
        (let ((__tmp135212 |gxc[1]#_g135213_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj135174 __tmp135212 '12 '#f '#f))
        (let ((__tmp135214 |gxc[1]#_g135215_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj135174 __tmp135214 '13 '#f '#f))
        (let ((__tmp135216 |gxc[1]#_g135217_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj135174 __tmp135216 '14 '#f '#f))
        (let ((__tmp135218
               (cons (cons 'gensyms |gxc[1]#_g135219_|)
                     (cons (cons 'bindings |gxc[1]#_g135220_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj135174 __tmp135218 '15 '#f '#f))
        (let ((__tmp135221
               (cons (cons 'gensyms |gxc[1]#_g135222_|)
                     (cons (cons 'bindings |gxc[1]#_g135223_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj135174 __tmp135221 '16 '#f '#f))
        (let ((__tmp135224
               (cons (cons 'gensyms |gxc[1]#_g135225_|)
                     (cons (cons 'bindings |gxc[1]#_g135226_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj135174 __tmp135224 '17 '#f '#f))
        (let ((__tmp135227
               (cons (cons 'gensyms |gxc[1]#_g135228_|)
                     (cons (cons 'bindings |gxc[1]#_g135229_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj135174 __tmp135227 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135174 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135174 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135174 '() '20 '#f '#f))
        __obj135174))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx134636%_)
        (let* ((_%g134640134654%_
                (lambda (_%g134641134650%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134641134650%_))))
               (_%g134639134695%_
                (lambda (_%g134641134658%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134641134658%_))
                      (let ((_%e134643134661%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g134641134658%_))))
                        (let ((_%hd134644134665%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134643134661%_)))
                              (_%tl134645134668%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134643134661%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134645134668%_))
                              (let ((_%e134646134671%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl134645134668%_))))
                                (let ((_%hd134647134675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134646134671%_)))
                                      (_%tl134648134678%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134646134671%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134648134678%_))
                                      ((lambda (_%L134681%_)
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
                         (cons '() (cons _%L134681%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd134647134675%_)
                                      (_%g134640134654%_ _%g134641134658%_))))
                              (_%g134640134654%_ _%g134641134658%_))))
                      (_%g134640134654%_ _%g134641134658%_)))))
          (_%g134639134695%_ _%$stx134636%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx134699%_)
        (let* ((_%g134703134717%_
                (lambda (_%g134704134713%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134704134713%_))))
               (_%g134702134758%_
                (lambda (_%g134704134721%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134704134721%_))
                      (let ((_%e134706134724%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g134704134721%_))))
                        (let ((_%hd134707134728%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134706134724%_)))
                              (_%tl134708134731%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134706134724%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134708134731%_))
                              (let ((_%e134709134734%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl134708134731%_))))
                                (let ((_%hd134710134738%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134709134734%_)))
                                      (_%tl134711134741%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134709134734%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134711134741%_))
                                      ((lambda (_%L134744%_)
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
                         (cons _%L134744%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd134710134738%_)
                                      (_%g134703134717%_ _%g134704134721%_))))
                              (_%g134703134717%_ _%g134704134721%_))))
                      (_%g134703134717%_ _%g134704134721%_)))))
          (_%g134702134758%_ _%$stx134699%_))))))
