(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g135232_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135234_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135236_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135238_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135239_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135241_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135242_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135244_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135245_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135247_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135248_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx134315%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx134315%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx134318%_)
        (let* ((_%g134321134345%_
                (lambda (_%g134322134341%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134322134341%_))))
               (_%g134320134648%_
                (lambda (_%g134322134349%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134322134349%_))
                      (let ((_%e134325134352%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g134322134349%_))))
                        (let ((_%hd134326134356%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134325134352%_)))
                              (_%tl134327134359%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134325134352%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134327134359%_))
                              (let ((_%e134328134362%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl134327134359%_))))
                                (let ((_%hd134329134366%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134328134362%_)))
                                      (_%tl134330134369%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134328134362%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl134330134369%_))
                                      (let ((_g135223_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl134330134369%_
                                                '0))))
                                        (begin
                                          (let ((_g135224_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g135223_)
                                                       (##values-length
                                                        _g135223_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g135224_ 2)))
                                                (error "Context expects 2 values"
                                                       _g135224_)))
                                          (let ((_%target134331134372%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g135223_ 0)))
                                                (_%tl134333134375%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g135223_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134333134375%_))
                                                (letrec ((_%loop134334134378%_
                                                          (lambda (_%hd134332134382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause134338134385%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd134332134382%_))
                        (let ((_%e134335134388%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd134332134382%_))))
                          (let ((_%lp-hd134336134392%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134335134388%_)))
                                (_%lp-tl134337134395%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134335134388%_))))
                            (_%loop134334134378%_
                             _%lp-tl134337134395%_
                             (cons _%lp-hd134336134392%_
                                   _%clause134338134385%_))))
                        (let ((_%clause134339134398%_
                               (reverse _%clause134338134385%_)))
                          ((lambda (_%L134402%_ _%L134404%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L134404%_))
                                 (let* ((_%g134423134440%_
                                         (lambda (_%g134424134436%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g134424134436%_))))
                                        (_%g134422134501%_
                                         (lambda (_%g134424134444%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g134424134444%_))
                                               (let ((_g135225_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g134424134444%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g135226_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g135225_)
                        (##values-length _g135225_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g135226_ 2)))
                 (error "Context expects 2 values" _g135226_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target134426134447%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g135225_
                                                             0)))
                                                         (_%tl134428134450%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g135225_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl134428134450%_))
                                                         (letrec ((_%loop134429134453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd134427134457%_ _%clause134433134460%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd134427134457%_))
                                 (let ((_%e134430134463%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd134427134457%_))))
                                   (let ((_%lp-hd134431134467%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e134430134463%_)))
                                         (_%lp-tl134432134470%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e134430134463%_))))
                                     (_%loop134429134453%_
                                      _%lp-tl134432134470%_
                                      (cons _%lp-hd134431134467%_
                                            _%clause134433134460%_))))
                                 (let ((_%clause134434134473%_
                                        (reverse _%clause134433134460%_)))
                                   ((lambda (_%L134477%_)
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
                            (cons _%L134404%_
                                  (let ((__tmp135227
                                         (lambda (_%g134492134495%_
                                                  _%g134493134498%_)
                                           (cons _%g134492134495%_
                                                 _%g134493134498%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp135227 '() _%L134477%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause134434134473%_))))))
                   (_%loop134429134453%_ _%target134426134447%_ '()))
                 (_%g134423134440%_ _%g134424134444%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g134423134440%_
                                                _%g134424134444%_)))))
                                   (_%g134422134501%_
                                    (let ((__tmp135230
                                           (lambda (_%clause134505%_)
                                             (let* ((_%__stx135143135144%_
                                                     _%clause134505%_)
                                                    (_%g134509134536%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx135143135144%_)))))
                                               (let ((_%__kont135146135147%_
                                                      (lambda (_%L134621%_
                                                               _%L134623%_)
                                                        (cons _%L134623%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L134621%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont135148135149%_
                                                      (lambda (_%L134573%_
                                                               _%L134575%_
                                                               _%L134576%_)
                                                        (cons _%L134576%_
                                                              (cons _%L134575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L134573%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx135143135144%_))
                                                     (let ((_%e134513134601%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx135143135144%_))))
                                                       (let ((_%tl134515134608%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e134513134601%_)))
                     (_%hd134514134605%_
                      (let () (declare (not safe)) (##car _%e134513134601%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl134515134608%_))
                     (let ((_%e134516134611%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl134515134608%_))))
                       (let ((_%tl134518134618%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e134516134611%_)))
                             (_%hd134517134615%_
                              (let ()
                                (declare (not safe))
                                (##car _%e134516134611%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl134518134618%_))
                             (_%__kont135146135147%_
                              _%hd134517134615%_
                              _%hd134514134605%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl134518134618%_))
                                 (let ((_%e134528134563%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl134518134618%_))))
                                   (let ((_%tl134530134570%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e134528134563%_)))
                                         (_%hd134529134567%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e134528134563%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl134530134570%_))
                                         (_%__kont135148135149%_
                                          _%hd134529134567%_
                                          _%hd134517134615%_
                                          _%hd134514134605%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g134509134536%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g134509134536%_))))))
                     (let () (declare (not safe)) (_%g134509134536%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g134509134536%_)))))))
                                          (__tmp135228
                                           (let ((__tmp135229
                                                  (lambda (_%g134639134642%_
                                                           _%g134640134645%_)
                                                    (cons _%g134639134642%_
                                                          _%g134640134645%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp135229
                                              '()
                                              _%L134402%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp135230 __tmp135228))))
                                 (_%g134321134345%_ _%g134322134349%_)))
                           _%clause134339134398%_
                           _%hd134329134366%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop134334134378%_
                                                   _%target134331134372%_
                                                   '()))
                                                (_%g134321134345%_
                                                 _%g134322134349%_)))))
                                      (_%g134321134345%_ _%g134322134349%_))))
                              (_%g134321134345%_ _%g134322134349%_))))
                      (_%g134321134345%_ _%g134322134349%_)))))
          (_%g134320134648%_ _%stx134318%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj135193
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
           __obj135193
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135193 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135193
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135193
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135193 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135193 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135193 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135193 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135193 ':init! '11 '#f '#f))
        (let ((__tmp135231 |gxc[1]#_g135232_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj135193 __tmp135231 '12 '#f '#f))
        (let ((__tmp135233 |gxc[1]#_g135234_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj135193 __tmp135233 '13 '#f '#f))
        (let ((__tmp135235 |gxc[1]#_g135236_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj135193 __tmp135235 '14 '#f '#f))
        (let ((__tmp135237
               (cons (cons 'gensyms |gxc[1]#_g135238_|)
                     (cons (cons 'bindings |gxc[1]#_g135239_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj135193 __tmp135237 '15 '#f '#f))
        (let ((__tmp135240
               (cons (cons 'gensyms |gxc[1]#_g135241_|)
                     (cons (cons 'bindings |gxc[1]#_g135242_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj135193 __tmp135240 '16 '#f '#f))
        (let ((__tmp135243
               (cons (cons 'gensyms |gxc[1]#_g135244_|)
                     (cons (cons 'bindings |gxc[1]#_g135245_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj135193 __tmp135243 '17 '#f '#f))
        (let ((__tmp135246
               (cons (cons 'gensyms |gxc[1]#_g135247_|)
                     (cons (cons 'bindings |gxc[1]#_g135248_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj135193 __tmp135246 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135193 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135193 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj135193 '() '20 '#f '#f))
        __obj135193))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx134655%_)
        (let* ((_%g134659134673%_
                (lambda (_%g134660134669%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134660134669%_))))
               (_%g134658134714%_
                (lambda (_%g134660134677%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134660134677%_))
                      (let ((_%e134662134680%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g134660134677%_))))
                        (let ((_%hd134663134684%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134662134680%_)))
                              (_%tl134664134687%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134662134680%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134664134687%_))
                              (let ((_%e134665134690%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl134664134687%_))))
                                (let ((_%hd134666134694%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134665134690%_)))
                                      (_%tl134667134697%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134665134690%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134667134697%_))
                                      ((lambda (_%L134700%_)
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
                         (cons '() (cons _%L134700%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd134666134694%_)
                                      (_%g134659134673%_ _%g134660134677%_))))
                              (_%g134659134673%_ _%g134660134677%_))))
                      (_%g134659134673%_ _%g134660134677%_)))))
          (_%g134658134714%_ _%$stx134655%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx134718%_)
        (let* ((_%g134722134736%_
                (lambda (_%g134723134732%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134723134732%_))))
               (_%g134721134777%_
                (lambda (_%g134723134740%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134723134740%_))
                      (let ((_%e134725134743%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g134723134740%_))))
                        (let ((_%hd134726134747%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134725134743%_)))
                              (_%tl134727134750%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134725134743%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134727134750%_))
                              (let ((_%e134728134753%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl134727134750%_))))
                                (let ((_%hd134729134757%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134728134753%_)))
                                      (_%tl134730134760%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134728134753%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134730134760%_))
                                      ((lambda (_%L134763%_)
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
                         (cons _%L134763%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd134729134757%_)
                                      (_%g134722134736%_ _%g134723134740%_))))
                              (_%g134722134736%_ _%g134723134740%_))))
                      (_%g134722134736%_ _%g134723134740%_)))))
          (_%g134721134777%_ _%$stx134718%_))))))
