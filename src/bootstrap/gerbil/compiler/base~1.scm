(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g142239_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142241_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142243_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142245_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142246_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142248_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142249_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142251_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142252_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142254_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g142255_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx141325%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx141325%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx141328%_)
        (let* ((_%g141331141355%_
                (lambda (_%g141332141351%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141332141351%_))))
               (_%g141330141658%_
                (lambda (_%g141332141359%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141332141359%_))
                      (let ((_%e141335141362%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g141332141359%_))))
                        (let ((_%hd141336141366%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141335141362%_)))
                              (_%tl141337141369%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141335141362%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141337141369%_))
                              (let ((_%e141338141372%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl141337141369%_))))
                                (let ((_%hd141339141376%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141338141372%_)))
                                      (_%tl141340141379%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141338141372%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl141340141379%_))
                                      (let ((_g142230_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl141340141379%_
                                                '0))))
                                        (begin
                                          (let ((_g142231_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g142230_)
                                                       (##values-length
                                                        _g142230_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g142231_ 2)))
                                                (error "Context expects 2 values"
                                                       _g142231_)))
                                          (let ((_%target141341141382%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g142230_ 0)))
                                                (_%tl141343141385%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g142230_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141343141385%_))
                                                (letrec ((_%loop141344141388%_
                                                          (lambda (_%hd141342141392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause141348141395%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141342141392%_))
                        (let ((_%e141345141398%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd141342141392%_))))
                          (let ((_%lp-hd141346141402%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141345141398%_)))
                                (_%lp-tl141347141405%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141345141398%_))))
                            (_%loop141344141388%_
                             _%lp-tl141347141405%_
                             (cons _%lp-hd141346141402%_
                                   _%clause141348141395%_))))
                        (let ((_%clause141349141408%_
                               (reverse _%clause141348141395%_)))
                          ((lambda (_%L141412%_ _%L141414%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L141414%_))
                                 (let* ((_%g141433141450%_
                                         (lambda (_%g141434141446%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g141434141446%_))))
                                        (_%g141432141511%_
                                         (lambda (_%g141434141454%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g141434141454%_))
                                               (let ((_g142232_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g141434141454%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g142233_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g142232_)
                        (##values-length _g142232_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g142233_ 2)))
                 (error "Context expects 2 values" _g142233_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target141436141457%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g142232_
                                                             0)))
                                                         (_%tl141438141460%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g142232_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl141438141460%_))
                                                         (letrec ((_%loop141439141463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd141437141467%_ _%clause141443141470%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd141437141467%_))
                                 (let ((_%e141440141473%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd141437141467%_))))
                                   (let ((_%lp-hd141441141477%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e141440141473%_)))
                                         (_%lp-tl141442141480%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e141440141473%_))))
                                     (_%loop141439141463%_
                                      _%lp-tl141442141480%_
                                      (cons _%lp-hd141441141477%_
                                            _%clause141443141470%_))))
                                 (let ((_%clause141444141483%_
                                        (reverse _%clause141443141470%_)))
                                   ((lambda (_%L141487%_)
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
                            (cons _%L141414%_
                                  (let ((__tmp142234
                                         (lambda (_%g141502141505%_
                                                  _%g141503141508%_)
                                           (cons _%g141502141505%_
                                                 _%g141503141508%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp142234 '() _%L141487%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause141444141483%_))))))
                   (_%loop141439141463%_ _%target141436141457%_ '()))
                 (_%g141433141450%_ _%g141434141454%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g141433141450%_
                                                _%g141434141454%_)))))
                                   (_%g141432141511%_
                                    (let ((__tmp142237
                                           (lambda (_%clause141515%_)
                                             (let* ((_%__stx142150142151%_
                                                     _%clause141515%_)
                                                    (_%g141519141546%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx142150142151%_)))))
                                               (let ((_%__kont142153142154%_
                                                      (lambda (_%L141631%_
                                                               _%L141633%_)
                                                        (cons _%L141633%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L141631%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont142155142156%_
                                                      (lambda (_%L141583%_
                                                               _%L141585%_
                                                               _%L141586%_)
                                                        (cons _%L141586%_
                                                              (cons _%L141585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L141583%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx142150142151%_))
                                                     (let ((_%e141523141611%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx142150142151%_))))
                                                       (let ((_%tl141525141618%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e141523141611%_)))
                     (_%hd141524141615%_
                      (let () (declare (not safe)) (##car _%e141523141611%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl141525141618%_))
                     (let ((_%e141526141621%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl141525141618%_))))
                       (let ((_%tl141528141628%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141526141621%_)))
                             (_%hd141527141625%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141526141621%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141528141628%_))
                             (_%__kont142153142154%_
                              _%hd141527141625%_
                              _%hd141524141615%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl141528141628%_))
                                 (let ((_%e141538141573%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl141528141628%_))))
                                   (let ((_%tl141540141580%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e141538141573%_)))
                                         (_%hd141539141577%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e141538141573%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl141540141580%_))
                                         (_%__kont142155142156%_
                                          _%hd141539141577%_
                                          _%hd141527141625%_
                                          _%hd141524141615%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g141519141546%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g141519141546%_))))))
                     (let () (declare (not safe)) (_%g141519141546%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g141519141546%_)))))))
                                          (__tmp142235
                                           (let ((__tmp142236
                                                  (lambda (_%g141649141652%_
                                                           _%g141650141655%_)
                                                    (cons _%g141649141652%_
                                                          _%g141650141655%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp142236
                                              '()
                                              _%L141412%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp142237 __tmp142235))))
                                 (_%g141331141355%_ _%g141332141359%_)))
                           _%clause141349141408%_
                           _%hd141339141376%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop141344141388%_
                                                   _%target141341141382%_
                                                   '()))
                                                (_%g141331141355%_
                                                 _%g141332141359%_)))))
                                      (_%g141331141355%_ _%g141332141359%_))))
                              (_%g141331141355%_ _%g141332141359%_))))
                      (_%g141331141355%_ _%g141332141359%_)))))
          (_%g141330141658%_ _%stx141328%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj142200
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
           __obj142200
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142200 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj142200
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj142200
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142200 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142200 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142200 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142200 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142200 ':init! '11 '#f '#f))
        (let ((__tmp142238 |gxc[1]#_g142239_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj142200 __tmp142238 '12 '#f '#f))
        (let ((__tmp142240 |gxc[1]#_g142241_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj142200 __tmp142240 '13 '#f '#f))
        (let ((__tmp142242 |gxc[1]#_g142243_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj142200 __tmp142242 '14 '#f '#f))
        (let ((__tmp142244
               (cons (cons 'gensyms |gxc[1]#_g142245_|)
                     (cons (cons 'bindings |gxc[1]#_g142246_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj142200 __tmp142244 '15 '#f '#f))
        (let ((__tmp142247
               (cons (cons 'gensyms |gxc[1]#_g142248_|)
                     (cons (cons 'bindings |gxc[1]#_g142249_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj142200 __tmp142247 '16 '#f '#f))
        (let ((__tmp142250
               (cons (cons 'gensyms |gxc[1]#_g142251_|)
                     (cons (cons 'bindings |gxc[1]#_g142252_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj142200 __tmp142250 '17 '#f '#f))
        (let ((__tmp142253
               (cons (cons 'gensyms |gxc[1]#_g142254_|)
                     (cons (cons 'bindings |gxc[1]#_g142255_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj142200 __tmp142253 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142200 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142200 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj142200 '() '20 '#f '#f))
        __obj142200))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx141664%_)
        (let* ((_%g141668141682%_
                (lambda (_%g141669141678%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141669141678%_))))
               (_%g141667141723%_
                (lambda (_%g141669141686%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141669141686%_))
                      (let ((_%e141671141689%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g141669141686%_))))
                        (let ((_%hd141672141693%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141671141689%_)))
                              (_%tl141673141696%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141671141689%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141673141696%_))
                              (let ((_%e141674141699%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl141673141696%_))))
                                (let ((_%hd141675141703%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141674141699%_)))
                                      (_%tl141676141706%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141674141699%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl141676141706%_))
                                      ((lambda (_%L141709%_)
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
                         (cons '() (cons _%L141709%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd141675141703%_)
                                      (_%g141668141682%_ _%g141669141686%_))))
                              (_%g141668141682%_ _%g141669141686%_))))
                      (_%g141668141682%_ _%g141669141686%_)))))
          (_%g141667141723%_ _%$stx141664%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx141727%_)
        (let* ((_%g141731141745%_
                (lambda (_%g141732141741%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141732141741%_))))
               (_%g141730141786%_
                (lambda (_%g141732141749%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141732141749%_))
                      (let ((_%e141734141752%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g141732141749%_))))
                        (let ((_%hd141735141756%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141734141752%_)))
                              (_%tl141736141759%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141734141752%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141736141759%_))
                              (let ((_%e141737141762%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl141736141759%_))))
                                (let ((_%hd141738141766%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141737141762%_)))
                                      (_%tl141739141769%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141737141762%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl141739141769%_))
                                      ((lambda (_%L141772%_)
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
                         (cons _%L141772%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd141738141766%_)
                                      (_%g141731141745%_ _%g141732141749%_))))
                              (_%g141731141745%_ _%g141732141749%_))))
                      (_%g141731141745%_ _%g141732141749%_)))))
          (_%g141730141786%_ _%$stx141727%_))))))
