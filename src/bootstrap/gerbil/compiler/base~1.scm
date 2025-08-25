(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g142236_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142238_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142240_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142242_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142243_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142245_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142246_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142248_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142249_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142251_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142252_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx141322%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx141322%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx141325%_)
        (let* ((_%g141328141352%_
                (lambda (_%g141329141348%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141329141348%_))))
               (_%g141327141655%_
                (lambda (_%g141329141356%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141329141356%_))
                      (let ((_%e141332141359%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g141329141356%_))))
                        (let ((_%hd141333141363%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141332141359%_)))
                              (_%tl141334141366%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141332141359%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141334141366%_))
                              (let ((_%e141335141369%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl141334141366%_))))
                                (let ((_%hd141336141373%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141335141369%_)))
                                      (_%tl141337141376%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141335141369%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl141337141376%_))
                                      (let ((_g142227_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl141337141376%_
                                                '0))))
                                        (begin
                                          (let ((_g142228_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g142227_)
                                                       (##values-length
                                                        _g142227_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g142228_ 2)))
                                                (error "Context expects 2 values"
                                                       _g142228_)))
                                          (let ((_%target141338141379%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g142227_ 0)))
                                                (_%tl141340141382%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g142227_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141340141382%_))
                                                (letrec ((_%loop141341141385%_
                                                          (lambda (_%hd141339141389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause141345141392%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141339141389%_))
                        (let ((_%e141342141395%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd141339141389%_))))
                          (let ((_%lp-hd141343141399%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141342141395%_)))
                                (_%lp-tl141344141402%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141342141395%_))))
                            (_%loop141341141385%_
                             _%lp-tl141344141402%_
                             (cons _%lp-hd141343141399%_
                                   _%clause141345141392%_))))
                        (let ((_%clause141346141405%_
                               (reverse _%clause141345141392%_)))
                          ((lambda (_%L141409%_ _%L141411%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L141411%_))
                                 (let* ((_%g141430141447%_
                                         (lambda (_%g141431141443%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g141431141443%_))))
                                        (_%g141429141508%_
                                         (lambda (_%g141431141451%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g141431141451%_))
                                               (let ((_g142229_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g141431141451%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g142230_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g142229_)
                        (##values-length _g142229_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g142230_ 2)))
                 (error "Context expects 2 values" _g142230_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target141433141454%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g142229_
                                                             0)))
                                                         (_%tl141435141457%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g142229_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl141435141457%_))
                                                         (letrec ((_%loop141436141460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd141434141464%_ _%clause141440141467%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd141434141464%_))
                                 (let ((_%e141437141470%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd141434141464%_))))
                                   (let ((_%lp-hd141438141474%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e141437141470%_)))
                                         (_%lp-tl141439141477%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e141437141470%_))))
                                     (_%loop141436141460%_
                                      _%lp-tl141439141477%_
                                      (cons _%lp-hd141438141474%_
                                            _%clause141440141467%_))))
                                 (let ((_%clause141441141480%_
                                        (reverse _%clause141440141467%_)))
                                   ((lambda (_%L141484%_)
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
                            (cons _%L141411%_
                                  (let ((__tmp142231
                                         (lambda (_%g141499141502%_
                                                  _%g141500141505%_)
                                           (cons _%g141499141502%_
                                                 _%g141500141505%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp142231 '() _%L141484%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause141441141480%_))))))
                   (_%loop141436141460%_ _%target141433141454%_ '()))
                 (_%g141430141447%_ _%g141431141451%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g141430141447%_
                                                _%g141431141451%_)))))
                                   (_%g141429141508%_
                                    (let ((__tmp142234
                                           (lambda (_%clause141512%_)
                                             (let* ((_%__stx142147142148%_
                                                     _%clause141512%_)
                                                    (_%g141516141543%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx142147142148%_)))))
                                               (let ((_%__kont142150142151%_
                                                      (lambda (_%L141628%_
                                                               _%L141630%_)
                                                        (cons _%L141630%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L141628%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont142152142153%_
                                                      (lambda (_%L141580%_
                                                               _%L141582%_
                                                               _%L141583%_)
                                                        (cons _%L141583%_
                                                              (cons _%L141582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L141580%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx142147142148%_))
                                                     (let ((_%e141520141608%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx142147142148%_))))
                                                       (let ((_%tl141522141615%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e141520141608%_)))
                     (_%hd141521141612%_
                      (let () (declare (not safe)) (##car _%e141520141608%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl141522141615%_))
                     (let ((_%e141523141618%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl141522141615%_))))
                       (let ((_%tl141525141625%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141523141618%_)))
                             (_%hd141524141622%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141523141618%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141525141625%_))
                             (_%__kont142150142151%_
                              _%hd141524141622%_
                              _%hd141521141612%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl141525141625%_))
                                 (let ((_%e141535141570%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl141525141625%_))))
                                   (let ((_%tl141537141577%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e141535141570%_)))
                                         (_%hd141536141574%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e141535141570%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl141537141577%_))
                                         (_%__kont142152142153%_
                                          _%hd141536141574%_
                                          _%hd141524141622%_
                                          _%hd141521141612%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g141516141543%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g141516141543%_))))))
                     (let () (declare (not safe)) (_%g141516141543%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g141516141543%_)))))))
                                          (__tmp142232
                                           (let ((__tmp142233
                                                  (lambda (_%g141646141649%_
                                                           _%g141647141652%_)
                                                    (cons _%g141646141649%_
                                                          _%g141647141652%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp142233
                                              '()
                                              _%L141409%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp142234 __tmp142232))))
                                 (_%g141328141352%_ _%g141329141356%_)))
                           _%clause141346141405%_
                           _%hd141336141373%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop141341141385%_
                                                   _%target141338141379%_
                                                   '()))
                                                (_%g141328141352%_
                                                 _%g141329141356%_)))))
                                      (_%g141328141352%_ _%g141329141356%_))))
                              (_%g141328141352%_ _%g141329141356%_))))
                      (_%g141328141352%_ _%g141329141356%_)))))
          (_%g141327141655%_ _%stx141325%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj142197
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
           __obj142197
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142197 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj142197
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj142197
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142197 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142197 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142197 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142197 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142197 ':init! '11 '#f '#f))
        (let ((__tmp142235 |gxc[1]#_g142236_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj142197 __tmp142235 '12 '#f '#f))
        (let ((__tmp142237 |gxc[1]#_g142238_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj142197 __tmp142237 '13 '#f '#f))
        (let ((__tmp142239 |gxc[1]#_g142240_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj142197 __tmp142239 '14 '#f '#f))
        (let ((__tmp142241
               (cons (cons 'gensyms |gxc[1]#_g142242_|)
                     (cons (cons 'bindings |gxc[1]#_g142243_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj142197 __tmp142241 '15 '#f '#f))
        (let ((__tmp142244
               (cons (cons 'gensyms |gxc[1]#_g142245_|)
                     (cons (cons 'bindings |gxc[1]#_g142246_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj142197 __tmp142244 '16 '#f '#f))
        (let ((__tmp142247
               (cons (cons 'gensyms |gxc[1]#_g142248_|)
                     (cons (cons 'bindings |gxc[1]#_g142249_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj142197 __tmp142247 '17 '#f '#f))
        (let ((__tmp142250
               (cons (cons 'gensyms |gxc[1]#_g142251_|)
                     (cons (cons 'bindings |gxc[1]#_g142252_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj142197 __tmp142250 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142197 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142197 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142197 '() '20 '#f '#f))
        __obj142197))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx141661%_)
        (let* ((_%g141665141679%_
                (lambda (_%g141666141675%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141666141675%_))))
               (_%g141664141720%_
                (lambda (_%g141666141683%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141666141683%_))
                      (let ((_%e141668141686%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g141666141683%_))))
                        (let ((_%hd141669141690%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141668141686%_)))
                              (_%tl141670141693%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141668141686%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141670141693%_))
                              (let ((_%e141671141696%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl141670141693%_))))
                                (let ((_%hd141672141700%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141671141696%_)))
                                      (_%tl141673141703%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141671141696%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl141673141703%_))
                                      ((lambda (_%L141706%_)
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
                         (cons '() (cons _%L141706%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd141672141700%_)
                                      (_%g141665141679%_ _%g141666141683%_))))
                              (_%g141665141679%_ _%g141666141683%_))))
                      (_%g141665141679%_ _%g141666141683%_)))))
          (_%g141664141720%_ _%$stx141661%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx141724%_)
        (let* ((_%g141728141742%_
                (lambda (_%g141729141738%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141729141738%_))))
               (_%g141727141783%_
                (lambda (_%g141729141746%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141729141746%_))
                      (let ((_%e141731141749%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g141729141746%_))))
                        (let ((_%hd141732141753%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141731141749%_)))
                              (_%tl141733141756%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141731141749%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141733141756%_))
                              (let ((_%e141734141759%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl141733141756%_))))
                                (let ((_%hd141735141763%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141734141759%_)))
                                      (_%tl141736141766%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141734141759%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl141736141766%_))
                                      ((lambda (_%L141769%_)
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
                         (cons _%L141769%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd141735141763%_)
                                      (_%g141728141742%_ _%g141729141746%_))))
                              (_%g141728141742%_ _%g141729141746%_))))
                      (_%g141728141742%_ _%g141729141746%_)))))
          (_%g141727141783%_ _%$stx141724%_))))))
