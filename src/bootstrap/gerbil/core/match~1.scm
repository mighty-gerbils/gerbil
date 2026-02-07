(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g40027_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40028_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40029_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40030_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40031_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40032_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40033_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40034_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40035_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40036_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40037_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40038_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40039_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40040_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40041_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40054_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40062_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40063_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40064_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40069_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40070_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40071_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40072_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40073_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/match[1]#match-macro::t|
      (make-class-type
       'gerbil.core#match-macro::t
       'match-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/match[1]#match-macro?|
      (make-class-predicate |gerbil/core/match[1]#match-macro::t|))
    (define |gerbil/core/match[1]#make-match-macro|
      (lambda _%$args35348%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35348%_)))
    (define |gerbil/core/match[1]#match-macro-macro|
      (make-class-slot-accessor |gerbil/core/match[1]#match-macro::t| 'macro))
    (define |gerbil/core/match[1]#match-macro-macro-set!|
      (make-class-slot-mutator |gerbil/core/match[1]#match-macro::t| 'macro))
    (define |gerbil/core/match[1]#&match-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/match[1]#match-macro::t|
       'macro))
    (define |gerbil/core/match[1]#&match-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/match[1]#match-macro::t|
       'macro))
    (define |gerbil/core/match[1]#syntax-local-match-macro?|
      (lambda (_%stx35345%_)
        (if (gx#identifier? _%stx35345%_)
            (let ((__tmp40026 (gx#syntax-local-value _%stx35345%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp40026))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx33647%_ _%match-stx33649%_)
        (letrec ((_%parse133651%_
                  (lambda (_%hd34010%_)
                    (let* ((_%__stx3781437815%_ _%hd34010%_)
                           (_%g3403634178%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3781437815%_))))
                      (let ((_%__kont3781737818%_
                             (lambda (_%g3403835108%_ _%g3403935110%_)
                               (let* ((_%__stx3773437735%_ _%g3403835108%_)
                                      (_%g3512735160%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3773437735%_))))
                                 (let ((_%__kont3773737738%_
                                        (lambda ()
                                          (cons '?:
                                                (cons _%g3403935110%_ '()))))
                                       (_%__kont3773937740%_
                                        (lambda (_%g3512935301%_)
                                          (cons '?:
                                                (cons _%g3403935110%_
                                                      (cons (_%parse133651%_
                                                             _%g3512935301%_)
                                                            '())))))
                                       (_%__kont3774137742%_
                                        (lambda (_%g3513335271%_)
                                          (cons '?:
                                                (cons _%g3403935110%_
                                                      (cons '=>:
                                                            (cons (_%parse133651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g3513335271%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3774337744%_
                                        (lambda (_%g3514035222%_
                                                 _%g3514135224%_)
                                          (cons '?:
                                                (cons _%g3403935110%_
                                                      (cons '::
                                                            (cons _%g3514135224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse133651%_ _%g3514035222%_)
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3774537746%_
                                        (lambda ()
                                          (_%parse-error33658%_ _%hd34010%_))))
                                   (let ((_%g3512335312%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3773437735%_)
                                                (let ((_%e3513035291%_
                                                       (gx#syntax-e
                                                        _%__stx3773437735%_)))
                                                  (let ((_%tl3513235298%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3513035291%_)))
                                                        (_%hd3513135295%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3513035291%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3513235298%_)
                                                        (_%__kont3773937740%_
                                                         _%hd3513135295%_)
                                                        (if (gx#identifier?
                                                             _%hd3513135295%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g40027_|
                         _%hd3513135295%_)
                        (if (gx#stx-pair? _%tl3513235298%_)
                            (let ((_%e3513735261%_
                                   (gx#syntax-e _%tl3513235298%_)))
                              (let ((_%tl3513935268%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3513735261%_)))
                                    (_%hd3513835265%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3513735261%_))))
                                (if (gx#stx-null? _%tl3513935268%_)
                                    (_%__kont3774137742%_ _%hd3513835265%_)
                                    (_%__kont3774537746%_))))
                            (_%__kont3774537746%_))
                        (_%__kont3774537746%_))
                    (if (gx#stx-datum? _%hd3513135295%_)
                        (let ((_%e3514535188%_ (gx#stx-e _%hd3513135295%_)))
                          (if (equal? _%e3514535188%_ '::)
                              (if (gx#stx-pair? _%tl3513235298%_)
                                  (let ((_%e3514635192%_
                                         (gx#syntax-e _%tl3513235298%_)))
                                    (let ((_%tl3514835199%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3514635192%_)))
                                          (_%hd3514735196%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3514635192%_))))
                                      (if (gx#stx-pair? _%tl3514835199%_)
                                          (let ((_%e3514935202%_
                                                 (gx#syntax-e
                                                  _%tl3514835199%_)))
                                            (let ((_%tl3515135209%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3514935202%_)))
                                                  (_%hd3515035206%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3514935202%_))))
                                              (if (gx#identifier?
                                                   _%hd3515035206%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40028_|
                                                       _%hd3515035206%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3515135209%_)
                                                          (let ((_%e3515235212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3515135209%_)))
                    (let ((_%tl3515435219%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3515235212%_)))
                          (_%hd3515335216%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3515235212%_))))
                      (if (gx#stx-null? _%tl3515435219%_)
                          (_%__kont3774337744%_
                           _%hd3515335216%_
                           _%hd3514735196%_)
                          (_%__kont3774537746%_))))
                  (_%__kont3774537746%_))
              (_%__kont3774537746%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3774537746%_))))
                                          (_%__kont3774537746%_))))
                                  (_%__kont3774537746%_))
                              (_%__kont3774537746%_)))
                        (_%__kont3774537746%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3774537746%_)))))
                                     (if (gx#stx-null? _%__stx3773437735%_)
                                         (_%__kont3773737738%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3512335312%_))))))))
                            (_%__kont3781937820%_
                             (lambda (_%g3404635013%_)
                               (let* ((_%__stx3771637717%_ _%g3404635013%_)
                                      (_%g3502535036%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3771637717%_))))
                                 (let ((_%__kont3771937720%_
                                        (lambda (_%g3502735064%_)
                                          (_%parse133651%_ _%g3502735064%_)))
                                       (_%__kont3772137722%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse133651%_
                                                 _%g3404635013%_)))))
                                   (if (gx#stx-pair? _%__stx3771637717%_)
                                       (let ((_%e3502835054%_
                                              (gx#syntax-e
                                               _%__stx3771637717%_)))
                                         (let ((_%tl3503035061%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3502835054%_)))
                                               (_%hd3502935058%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3502835054%_))))
                                           (if (gx#stx-null? _%tl3503035061%_)
                                               (_%__kont3771937720%_
                                                _%hd3502935058%_)
                                               (_%__kont3772137722%_))))
                                       (_%__kont3772137722%_))))))
                            (_%__kont3782137822%_
                             (lambda (_%g3405034928%_)
                               (let* ((_%__stx3769837699%_ _%g3405034928%_)
                                      (_%g3494034951%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3769837699%_))))
                                 (let ((_%__kont3770137702%_
                                        (lambda (_%g3494234979%_)
                                          (_%parse133651%_ _%g3494234979%_)))
                                       (_%__kont3770337704%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse133651%_
                                                 _%g3405034928%_)))))
                                   (if (gx#stx-pair? _%__stx3769837699%_)
                                       (let ((_%e3494334969%_
                                              (gx#syntax-e
                                               _%__stx3769837699%_)))
                                         (let ((_%tl3494534976%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3494334969%_)))
                                               (_%hd3494434973%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3494334969%_))))
                                           (if (gx#stx-null? _%tl3494534976%_)
                                               (_%__kont3770137702%_
                                                _%hd3494434973%_)
                                               (_%__kont3770337704%_))))
                                       (_%__kont3770337704%_))))))
                            (_%__kont3782337824%_
                             (lambda (_%g3405434898%_)
                               (cons 'not:
                                     (cons (_%parse133651%_ _%g3405434898%_)
                                           '()))))
                            (_%__kont3782537826%_
                             (lambda (_%g3406134854%_ _%g3406234856%_)
                               (cons 'cons:
                                     (cons (_%parse133651%_ _%g3406234856%_)
                                           (cons (_%parse133651%_
                                                  _%g3406134854%_)
                                                 '())))))
                            (_%__kont3782737828%_
                             (lambda (_%g3407234798%_
                                      _%g3407334800%_
                                      _%g3407434801%_)
                               (if (gx#stx-null? _%g3407234798%_)
                                   (cons 'cons:
                                         (cons (_%parse133651%_
                                                _%g3407434801%_)
                                               (cons (_%parse133651%_
                                                      _%g3407334800%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse133651%_
                                                _%g3407434801%_)
                                               (cons (_%parse133651%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%g3407334800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g3407234798%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3782937830%_
                             (lambda (_%g3408434750%_)
                               (_%parse-list33653%_ _%g3408434750%_)))
                            (_%__kont3783137832%_
                             (lambda (_%g3408834720%_)
                               (cons 'box:
                                     (cons (_%parse133651%_ _%g3408834720%_)
                                           '()))))
                            (_%__kont3783337834%_
                             (lambda (_%g3409534683%_)
                               (cons 'box:
                                     (cons (_%parse133651%_ _%g3409534683%_)
                                           '()))))
                            (_%__kont3783537836%_
                             (lambda (_%g3409734659%_)
                               (_%parse133651%_ _%g3409734659%_)))
                            (_%__kont3783737838%_
                             (lambda (_%g3410434621%_)
                               (cons 'values:
                                     (cons (_%parse-vector33654%_
                                            _%g3410434621%_)
                                           '()))))
                            (_%__kont3783937840%_
                             (lambda (_%g3410834593%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33654%_
                                            _%g3410834593%_)
                                           '()))))
                            (_%__kont3784137842%_
                             (lambda (_%g3411234554%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33654%_
                                            (foldr (lambda (_%g3456734570%_
                                                            _%g3456834573%_)
                                                     (cons _%g3456734570%_
                                                           _%g3456834573%_))
                                                   '()
                                                   _%g3411234554%_))
                                           '()))))
                            (_%__kont3784537846%_
                             (lambda (_%g3412334502%_ _%g3412434504%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value
                                            _%g3412434504%_)
                                           (cons (_%parse-vector33654%_
                                                  _%g3412334502%_)
                                                 '())))))
                            (_%__kont3784737848%_
                             (lambda (_%g3412834472%_ _%g3412934474%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value
                                            _%g3412934474%_)
                                           (cons (_%parse-class-body33656%_
                                                  _%g3412834472%_)
                                                 '())))))
                            (_%__kont3784937850%_
                             (lambda (_%g3413334432%_ _%g3413434434%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%g3413434434%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%g3413334432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3785137852%_
                             (lambda (_%g3414134392%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g3414134392%_) '()))))
                            (_%__kont3785337854%_
                             (lambda (_%g3414834352%_)
                               (_%parse-qq33657%_ _%g3414834352%_)))
                            (_%__kont3785537856%_
                             (lambda (_%g3415534308%_ _%g3415634310%_)
                               (cons 'apply:
                                     (cons _%g3415634310%_
                                           (cons (_%parse133651%_
                                                  _%g3415534308%_)
                                                 '())))))
                            (_%__kont3785737858%_
                             (lambda (_%g3416634256%_)
                               (_%parse133651%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%g3416634256%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd34010%_)
                                  (let ((_%$e34267%_
                                         (gx#stx-source _%hd34010%_)))
                                    (if _%$e34267%_
                                        _%$e34267%_
                                        (gx#stx-source _%stx33647%_))))))))
                            (_%__kont3785937860%_
                             (lambda (_%g3417034230%_) (cons 'any: '())))
                            (_%__kont3786137862%_
                             (lambda (_%g3417134214%_)
                               (cons 'var: (cons _%g3417134214%_ '()))))
                            (_%__kont3786337864%_
                             (lambda (_%g3417234196%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g3417234196%_) '()))))
                            (_%__kont3786537866%_
                             (lambda () (_%parse-error33658%_ _%hd34010%_))))
                        (let* ((_%g3403434207%_
                                (lambda ()
                                  (let ((_%g3417234196%_ _%__stx3781437815%_))
                                    (if (gx#stx-datum? _%g3417234196%_)
                                        (_%__kont3786337864%_ _%g3417234196%_)
                                        (_%__kont3786537866%_)))))
                               (_%g3403334223%_
                                (lambda ()
                                  (let ((_%g3417134214%_ _%__stx3781437815%_))
                                    (if (and (gx#identifier? _%g3417134214%_)
                                             (not (gx#ellipsis?
                                                   _%g3417134214%_)))
                                        (_%__kont3786137862%_ _%g3417134214%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3403434207%_))))))
                               (_%g3403234239%_
                                (lambda ()
                                  (let ((_%g3417034230%_ _%__stx3781437815%_))
                                    (if (gx#underscore? _%g3417034230%_)
                                        (_%__kont3785937860%_ _%g3417034230%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3403334223%_))))))
                               (_%__match3814138142%_
                                (lambda (_%e3416734246%_
                                         _%hd3416834250%_
                                         _%tl3416934253%_)
                                  (let ((_%g3416634256%_ _%hd3416834250%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%g3416634256%_)
                                        (_%__kont3785737858%_ _%g3416634256%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3403234239%_))))))
                               (_%__match3807538076%_
                                (lambda (_%e3413534412%_
                                         _%hd3413634416%_
                                         _%tl3413734419%_
                                         _%e3413834422%_
                                         _%hd3413934426%_
                                         _%tl3414034429%_)
                                  (let ((_%g3413334432%_ _%hd3413934426%_)
                                        (_%g3413434434%_ _%hd3413634416%_))
                                    (if (and (gx#identifier? _%g3413434434%_)
                                             (or (gx#free-identifier=?
                                                  _%g3413434434%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%g3413434434%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%g3413434434%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3784937850%_
                                         _%g3413334432%_
                                         _%g3413434434%_)
                                        (if (gx#identifier? _%hd3413634416%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g40029_|
                                                 _%hd3413634416%_)
                                                (_%__kont3785137852%_
                                                 _%hd3413934426%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g40030_|
                                                     _%hd3413634416%_)
                                                    (_%__kont3785337854%_
                                                     _%hd3413934426%_)
                                                    (_%__match3814138142%_
                                                     _%e3413534412%_
                                                     _%hd3413634416%_
                                                     _%tl3413734419%_)))
                                            (_%__match3814138142%_
                                             _%e3413534412%_
                                             _%hd3413634416%_
                                             _%tl3413734419%_))))))
                               (_%__match3806138062%_
                                (lambda (_%e3413034462%_
                                         _%hd3413134466%_
                                         _%tl3413234469%_)
                                  (let ((_%g3412834472%_ _%tl3413234469%_)
                                        (_%g3412934474%_ _%hd3413134466%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%g3412934474%_))
                                        (_%__kont3784737848%_
                                         _%g3412834472%_
                                         _%g3412934474%_)
                                        (if (gx#stx-pair? _%tl3413234469%_)
                                            (let ((_%e3413834422%_
                                                   (gx#syntax-e
                                                    _%tl3413234469%_)))
                                              (let ((_%tl3414034429%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3413834422%_)))
                                                    (_%hd3413934426%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3413834422%_))))
                                                (if (gx#stx-null?
                                                     _%tl3414034429%_)
                                                    (_%__match3807538076%_
                                                     _%e3413034462%_
                                                     _%hd3413134466%_
                                                     _%tl3413234469%_
                                                     _%e3413834422%_
                                                     _%hd3413934426%_
                                                     _%tl3414034429%_)
                                                    (if (gx#identifier?
                                                         _%hd3413134466%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g40029_|
                                                             _%hd3413134466%_)
                                                            (_%__match3814138142%_
                                                             _%e3413034462%_
                                                             _%hd3413134466%_
                                                             _%tl3413234469%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g40030_|
                         _%hd3413134466%_)
                        (_%__match3814138142%_
                         _%e3413034462%_
                         _%hd3413134466%_
                         _%tl3413234469%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40031_|
                             _%hd3413134466%_)
                            (if (gx#stx-pair? _%tl3414034429%_)
                                (let ((_%e3416334298%_
                                       (gx#syntax-e _%tl3414034429%_)))
                                  (let ((_%tl3416534305%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3416334298%_)))
                                        (_%hd3416434302%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3416334298%_))))
                                    (if (gx#stx-null? _%tl3416534305%_)
                                        (_%__kont3785537856%_
                                         _%hd3416434302%_
                                         _%hd3413934426%_)
                                        (_%__match3814138142%_
                                         _%e3413034462%_
                                         _%hd3413134466%_
                                         _%tl3413234469%_))))
                                (_%__match3814138142%_
                                 _%e3413034462%_
                                 _%hd3413134466%_
                                 _%tl3413234469%_))
                            (_%__match3814138142%_
                             _%e3413034462%_
                             _%hd3413134466%_
                             _%tl3413234469%_))))
                (_%__match3814138142%_
                 _%e3413034462%_
                 _%hd3413134466%_
                 _%tl3413234469%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3814138142%_
                                             _%e3413034462%_
                                             _%hd3413134466%_
                                             _%tl3413234469%_))))))
                               (_%__match3805538056%_
                                (lambda (_%e3412534492%_
                                         _%hd3412634496%_
                                         _%tl3412734499%_)
                                  (let ((_%g3412334502%_ _%tl3412734499%_)
                                        (_%g3412434504%_ _%hd3412634496%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%g3412434504%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3784537846%_
                                         _%g3412334502%_
                                         _%g3412434504%_)
                                        (_%__match3806138062%_
                                         _%e3412534492%_
                                         _%hd3412634496%_
                                         _%tl3412734499%_)))))
                               (_%__match3804938050%_
                                (lambda (_%e3411334522%_
                                         _%__splice3784337844%_
                                         _%target3411434526%_
                                         _%tl3411634529%_)
                                  (letrec ((_%loop3411734532%_
                                            (lambda (_%hd3411534536%_
                                                     _%body3412134539%_)
                                              (if (gx#stx-pair?
                                                   _%hd3411534536%_)
                                                  (let ((_%e3411834541%_
                                                         (gx#syntax-e
                                                          _%hd3411534536%_)))
                                                    (let ((_%lp-tl3412034548%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3411834541%_)))
                                                          (_%lp-hd3411934545%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3411834541%_))))
                                                      (_%loop3411734532%_
                                                       _%lp-tl3412034548%_
                                                       (cons _%lp-hd3411934545%_
                                                             _%body3412134539%_))))
                                                  (let ((_%body3412234551%_
                                                         (reverse _%body3412134539%_)))
                                                    (_%__kont3784137842%_
                                                     _%body3412234551%_))))))
                                    (_%loop3411734532%_
                                     _%target3411434526%_
                                     '()))))
                               (_%g3402434576%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3781437815%_)
                                      (let ((_%e3411334522%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3781437815%_))))
                                        (if (gx#stx-pair/null? _%e3411334522%_)
                                            (let ((_%__splice3784337844%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e3411334522%_
                                                    '0)))
                                              (let ((_%tl3411634529%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3784337844%_
                                                        '1)))
                                                    (_%target3411434526%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3784337844%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3411634529%_)
                                                    (_%__match3804938050%_
                                                     _%e3411334522%_
                                                     _%__splice3784337844%_
                                                     _%target3411434526%_
                                                     _%tl3411634529%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3403234239%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3403234239%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3403234239%_)))))
                               (_%g3402034693%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3781437815%_)
                                      (let ((_%e3409634679%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3781437815%_))))
                                        (_%__kont3783337834%_ _%e3409634679%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3402434576%_)))))
                               (_%__match3790337904%_
                                (lambda (_%e3405134918%_
                                         _%hd3405234922%_
                                         _%tl3405334925%_)
                                  (let ((_%g3405034928%_ _%tl3405334925%_))
                                    (if (gx#stx-list? _%g3405034928%_)
                                        (_%__kont3782137822%_ _%g3405034928%_)
                                        (_%__match3805538056%_
                                         _%e3405134918%_
                                         _%hd3405234922%_
                                         _%tl3405334925%_)))))
                               (_%__match3789337894%_
                                (lambda (_%e3404735003%_
                                         _%hd3404835007%_
                                         _%tl3404935010%_)
                                  (let ((_%g3404635013%_ _%tl3404935010%_))
                                    (if (gx#stx-list? _%g3404635013%_)
                                        (_%__kont3781937820%_ _%g3404635013%_)
                                        (_%__match3805538056%_
                                         _%e3404735003%_
                                         _%hd3404835007%_
                                         _%tl3404935010%_))))))
                          (if (gx#stx-pair? _%__stx3781437815%_)
                              (let ((_%e3404035088%_
                                     (gx#syntax-e _%__stx3781437815%_)))
                                (let ((_%tl3404235095%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3404035088%_)))
                                      (_%hd3404135092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3404035088%_))))
                                  (if (gx#identifier? _%hd3404135092%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40032_|
                                           _%hd3404135092%_)
                                          (if (gx#stx-pair? _%tl3404235095%_)
                                              (let ((_%e3404335098%_
                                                     (gx#syntax-e
                                                      _%tl3404235095%_)))
                                                (let ((_%tl3404535105%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3404335098%_)))
                                                      (_%hd3404435102%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3404335098%_))))
                                                  (_%__kont3781737818%_
                                                   _%tl3404535105%_
                                                   _%hd3404435102%_)))
                                              (_%__match3805538056%_
                                               _%e3404035088%_
                                               _%hd3404135092%_
                                               _%tl3404235095%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40033_|
                                               _%hd3404135092%_)
                                              (_%__match3789337894%_
                                               _%e3404035088%_
                                               _%hd3404135092%_
                                               _%tl3404235095%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g40034_|
                                                   _%hd3404135092%_)
                                                  (_%__match3790337904%_
                                                   _%e3404035088%_
                                                   _%hd3404135092%_
                                                   _%tl3404235095%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40035_|
                                                       _%hd3404135092%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3404235095%_)
                                                          (let ((_%e3405834888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3404235095%_)))
                    (let ((_%tl3406034895%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3405834888%_)))
                          (_%hd3405934892%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3405834888%_))))
                      (if (gx#stx-null? _%tl3406034895%_)
                          (_%__kont3782337824%_ _%hd3405934892%_)
                          (_%__match3805538056%_
                           _%e3404035088%_
                           _%hd3404135092%_
                           _%tl3404235095%_))))
                  (_%__match3805538056%_
                   _%e3404035088%_
                   _%hd3404135092%_
                   _%tl3404235095%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g40036_|
                   _%hd3404135092%_)
                  (if (gx#stx-pair? _%tl3404235095%_)
                      (let ((_%e3406634834%_ (gx#syntax-e _%tl3404235095%_)))
                        (let ((_%tl3406834841%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3406634834%_)))
                              (_%hd3406734838%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3406634834%_))))
                          (if (gx#stx-pair? _%tl3406834841%_)
                              (let ((_%e3406934844%_
                                     (gx#syntax-e _%tl3406834841%_)))
                                (let ((_%tl3407134851%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3406934844%_)))
                                      (_%hd3407034848%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3406934844%_))))
                                  (if (gx#stx-null? _%tl3407134851%_)
                                      (_%__kont3782537826%_
                                       _%hd3407034848%_
                                       _%hd3406734838%_)
                                      (_%__match3805538056%_
                                       _%e3404035088%_
                                       _%hd3404135092%_
                                       _%tl3404235095%_))))
                              (_%__match3805538056%_
                               _%e3404035088%_
                               _%hd3404135092%_
                               _%tl3404235095%_))))
                      (_%__match3805538056%_
                       _%e3404035088%_
                       _%hd3404135092%_
                       _%tl3404235095%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g40037_|
                       _%hd3404135092%_)
                      (if (gx#stx-pair? _%tl3404235095%_)
                          (let ((_%e3407834778%_
                                 (gx#syntax-e _%tl3404235095%_)))
                            (let ((_%tl3408034785%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3407834778%_)))
                                  (_%hd3407934782%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3407834778%_))))
                              (if (gx#stx-pair? _%tl3408034785%_)
                                  (let ((_%e3408134788%_
                                         (gx#syntax-e _%tl3408034785%_)))
                                    (let ((_%tl3408334795%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3408134788%_)))
                                          (_%hd3408234792%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3408134788%_))))
                                      (_%__kont3782737828%_
                                       _%tl3408334795%_
                                       _%hd3408234792%_
                                       _%hd3407934782%_)))
                                  (_%__match3805538056%_
                                   _%e3404035088%_
                                   _%hd3404135092%_
                                   _%tl3404235095%_))))
                          (_%__match3805538056%_
                           _%e3404035088%_
                           _%hd3404135092%_
                           _%tl3404235095%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g40038_|
                           _%hd3404135092%_)
                          (_%__kont3782937830%_ _%tl3404235095%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40039_|
                               _%hd3404135092%_)
                              (if (gx#stx-pair? _%tl3404235095%_)
                                  (let ((_%e3409234710%_
                                         (gx#syntax-e _%tl3404235095%_)))
                                    (let ((_%tl3409434717%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3409234710%_)))
                                          (_%hd3409334714%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3409234710%_))))
                                      (if (gx#stx-null? _%tl3409434717%_)
                                          (_%__kont3783137832%_
                                           _%hd3409334714%_)
                                          (_%__match3805538056%_
                                           _%e3404035088%_
                                           _%hd3404135092%_
                                           _%tl3404235095%_))))
                                  (_%__match3805538056%_
                                   _%e3404035088%_
                                   _%hd3404135092%_
                                   _%tl3404235095%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40040_|
                                   _%hd3404135092%_)
                                  (if (gx#stx-pair? _%tl3404235095%_)
                                      (let ((_%e3410134649%_
                                             (gx#syntax-e _%tl3404235095%_)))
                                        (let ((_%tl3410334656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3410134649%_)))
                                              (_%hd3410234653%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3410134649%_))))
                                          (if (gx#stx-null? _%tl3410334656%_)
                                              (_%__kont3783537836%_
                                               _%hd3410234653%_)
                                              (_%__kont3783737838%_
                                               _%tl3404235095%_))))
                                      (_%__kont3783737838%_ _%tl3404235095%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40041_|
                                       _%hd3404135092%_)
                                      (_%__kont3783937840%_ _%tl3404235095%_)
                                      (_%__match3805538056%_
                                       _%e3404035088%_
                                       _%hd3404135092%_
                                       _%tl3404235095%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3805538056%_
                                       _%e3404035088%_
                                       _%hd3404135092%_
                                       _%tl3404235095%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3402034693%_))))))))
                 (_%parse-list33653%_
                  (lambda (_%body33833%_)
                    (let* ((_%__stx3814438145%_ _%body33833%_)
                           (_%g3383933868%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3814438145%_))))
                      (let ((_%__kont3814738148%_
                             (lambda (_%g3384133992%_)
                               (_%parse133651%_ _%g3384133992%_)))
                            (_%__kont3814938150%_
                             (lambda (_%g3384933944%_
                                      _%g3385033946%_
                                      _%g3385133947%_)
                               (cons 'splice:
                                     (cons (_%parse133651%_ _%g3385133947%_)
                                           (cons (_%parse-list33653%_
                                                  _%g3384933944%_)
                                                 '())))))
                            (_%__kont3815138152%_
                             (lambda (_%g3385833902%_ _%g3385933904%_)
                               (cons 'cons:
                                     (cons (_%parse133651%_ _%g3385933904%_)
                                           (cons (_%parse-list33653%_
                                                  _%g3385833902%_)
                                                 '())))))
                            (_%__kont3815338154%_
                             (lambda ()
                               (if (gx#stx-null? _%body33833%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body33833%_)
                                       (_%parse-error33658%_ _%body33833%_)
                                       (_%parse133651%_ _%body33833%_))))))
                        (let* ((_%__match3819338194%_
                                (lambda (_%e3386033892%_
                                         _%hd3386133896%_
                                         _%tl3386233899%_)
                                  (let ((_%g3385833902%_ _%tl3386233899%_)
                                        (_%g3385933904%_ _%hd3386133896%_))
                                    (if (gx#ellipsis? _%g3385933904%_)
                                        (_%__kont3815338154%_)
                                        (_%__kont3815138152%_
                                         _%g3385833902%_
                                         _%g3385933904%_)))))
                               (_%__match3818738188%_
                                (lambda (_%e3385233924%_
                                         _%hd3385333928%_
                                         _%tl3385433931%_
                                         _%e3385533934%_
                                         _%hd3385633938%_
                                         _%tl3385733941%_)
                                  (let ((_%g3384933944%_ _%tl3385733941%_)
                                        (_%g3385033946%_ _%hd3385633938%_)
                                        (_%g3385133947%_ _%hd3385333928%_))
                                    (if (gx#ellipsis? _%g3385033946%_)
                                        (_%__kont3814938150%_
                                         _%g3384933944%_
                                         _%g3385033946%_
                                         _%g3385133947%_)
                                        (_%__match3819338194%_
                                         _%e3385233924%_
                                         _%hd3385333928%_
                                         _%tl3385433931%_))))))
                          (if (gx#stx-pair? _%__stx3814438145%_)
                              (let ((_%e3384233968%_
                                     (gx#syntax-e _%__stx3814438145%_)))
                                (let ((_%tl3384433975%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3384233968%_)))
                                      (_%hd3384333972%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3384233968%_))))
                                  (if (gx#stx-datum? _%hd3384333972%_)
                                      (let ((_%e3384533978%_
                                             (gx#stx-e _%hd3384333972%_)))
                                        (if (equal? _%e3384533978%_ '::)
                                            (if (gx#stx-pair? _%tl3384433975%_)
                                                (let ((_%e3384633982%_
                                                       (gx#syntax-e
                                                        _%tl3384433975%_)))
                                                  (let ((_%tl3384833989%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3384633982%_)))
                                                        (_%hd3384733986%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3384633982%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3384833989%_)
                                                        (_%__kont3814738148%_
                                                         _%hd3384733986%_)
                                                        (_%__match3818738188%_
                                                         _%e3384233968%_
                                                         _%hd3384333972%_
                                                         _%tl3384433975%_
                                                         _%e3384633982%_
                                                         _%hd3384733986%_
                                                         _%tl3384833989%_))))
                                                (_%__match3819338194%_
                                                 _%e3384233968%_
                                                 _%hd3384333972%_
                                                 _%tl3384433975%_))
                                            (if (gx#stx-pair? _%tl3384433975%_)
                                                (let ((_%e3385533934%_
                                                       (gx#syntax-e
                                                        _%tl3384433975%_)))
                                                  (let ((_%tl3385733941%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3385533934%_)))
                                                        (_%hd3385633938%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3385533934%_))))
                                                    (_%__match3818738188%_
                                                     _%e3384233968%_
                                                     _%hd3384333972%_
                                                     _%tl3384433975%_
                                                     _%e3385533934%_
                                                     _%hd3385633938%_
                                                     _%tl3385733941%_)))
                                                (_%__match3819338194%_
                                                 _%e3384233968%_
                                                 _%hd3384333972%_
                                                 _%tl3384433975%_))))
                                      (if (gx#stx-pair? _%tl3384433975%_)
                                          (let ((_%e3385533934%_
                                                 (gx#syntax-e
                                                  _%tl3384433975%_)))
                                            (let ((_%tl3385733941%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3385533934%_)))
                                                  (_%hd3385633938%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3385533934%_))))
                                              (_%__match3818738188%_
                                               _%e3384233968%_
                                               _%hd3384333972%_
                                               _%tl3384433975%_
                                               _%e3385533934%_
                                               _%hd3385633938%_
                                               _%tl3385733941%_)))
                                          (_%__match3819338194%_
                                           _%e3384233968%_
                                           _%hd3384333972%_
                                           _%tl3384433975%_)))))
                              (_%__kont3815338154%_)))))))
                 (_%parse-vector33654%_
                  (lambda (_%body33830%_)
                    (if (_%simple-vector?33655%_ _%body33830%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse133651%_ _%body33830%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list33653%_ _%body33830%_)
                                    '())))))
                 (_%simple-vector?33655%_
                  (lambda (_%body33767%_)
                    (let* ((_%__stx3819638197%_ _%body33767%_)
                           (_%g3377133783%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3819638197%_))))
                      (let ((_%__kont3819938200%_
                             (lambda (_%g3377333811%_ _%g3377433813%_)
                               (if (gx#ellipsis? _%g3377433813%_)
                                   '#f
                                   (_%simple-vector?33655%_ _%g3377333811%_))))
                            (_%__kont3820138202%_
                             (lambda () (gx#stx-null? _%body33767%_))))
                        (if (gx#stx-pair? _%__stx3819638197%_)
                            (let ((_%e3377533801%_
                                   (gx#syntax-e _%__stx3819638197%_)))
                              (let ((_%tl3377733808%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3377533801%_)))
                                    (_%hd3377633805%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3377533801%_))))
                                (_%__kont3819938200%_
                                 _%tl3377733808%_
                                 _%hd3377633805%_)))
                            (_%__kont3820138202%_))))))
                 (_%parse-class-body33656%_
                  (lambda (_%body33676%_)
                    (let _%recur33679%_ ((_%rest33682%_ _%body33676%_))
                      (let* ((_%__stx3821238213%_ _%rest33682%_)
                             (_%g3368633702%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3821238213%_))))
                        (let ((_%__kont3821538216%_
                               (lambda (_%g3368833740%_
                                        _%g3368933742%_
                                        _%g3369033743%_)
                                 (cons _%g3369033743%_
                                       (cons (_%parse133651%_ _%g3368933742%_)
                                             (_%recur33679%_
                                              _%g3368833740%_)))))
                              (_%__kont3821738218%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest33682%_)
                                     '()
                                     (_%parse-error33658%_ _%rest33682%_)))))
                          (let ((_%__match3823138232%_
                                 (lambda (_%e3369133720%_
                                          _%hd3369233724%_
                                          _%tl3369333727%_
                                          _%e3369433730%_
                                          _%hd3369533734%_
                                          _%tl3369633737%_)
                                   (let ((_%g3368833740%_ _%tl3369633737%_)
                                         (_%g3368933742%_ _%hd3369533734%_)
                                         (_%g3369033743%_ _%hd3369233724%_))
                                     (if (gx#stx-keyword? _%g3369033743%_)
                                         (_%__kont3821538216%_
                                          _%g3368833740%_
                                          _%g3368933742%_
                                          _%g3369033743%_)
                                         (_%__kont3821738218%_))))))
                            (if (gx#stx-pair? _%__stx3821238213%_)
                                (let ((_%e3369133720%_
                                       (gx#syntax-e _%__stx3821238213%_)))
                                  (let ((_%tl3369333727%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3369133720%_)))
                                        (_%hd3369233724%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3369133720%_))))
                                    (if (gx#stx-pair? _%tl3369333727%_)
                                        (let ((_%e3369433730%_
                                               (gx#syntax-e _%tl3369333727%_)))
                                          (let ((_%tl3369633737%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3369433730%_)))
                                                (_%hd3369533734%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3369433730%_))))
                                            (_%__match3823138232%_
                                             _%e3369133720%_
                                             _%hd3369233724%_
                                             _%tl3369333727%_
                                             _%e3369433730%_
                                             _%hd3369533734%_
                                             _%tl3369633737%_)))
                                        (_%__kont3821738218%_))))
                                (_%__kont3821738218%_))))))))
                 (_%parse-qq33657%_
                  (lambda (_%hd33663%_)
                    (let ((_%g3366533672%_
                           (lambda (_%g3366633668%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3366633668%_))))
                      (_%g3366533672%_ _%hd33663%_))))
                 (_%parse-error33658%_
                  (lambda (_%hd33660%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx33649%_
                               (cons _%match-stx33649%_
                                     (cons _%stx33647%_
                                           (cons _%hd33660%_ '())))
                               (cons _%stx33647%_ (cons _%hd33660%_ '())))))))
          (_%parse133651%_ _%stx33647%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35335%_)
        (let ((_%match-stx35338%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35335%_
           _%match-stx35338%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g40042_
        (let ((_g40043_ (let () (declare (not safe)) (##length _g40042_))))
          (cond ((let () (declare (not safe)) (##fx= _g40043_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g40042_))
                ((let () (declare (not safe)) (##fx= _g40043_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g40042_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g40042_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx33632%_)
        (let ((__tmp40044
               (lambda (_%E33635%_)
                 (with-exception-handler
                  (let ((_%E!33638%_ (current-exception-handler)))
                    (lambda (_%e33641%_)
                      (if (syntax-error? _%e33641%_)
                          (_%E33635%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!33638%_ _%e33641%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx33632%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp40044))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32367%_)
        (letrec ((_%loop32370%_
                  (lambda (_%ptree32657%_ _%vars32659%_ _%K32660%_)
                    (let* ((_%__stx3833038331%_ _%ptree32657%_)
                           (_%g3267332783%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3833038331%_))))
                      (let ((_%__kont3833338334%_
                             (lambda (_%g3267533413%_)
                               (let* ((_%__stx3825038251%_ _%g3267533413%_)
                                      (_%g3343033464%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3825038251%_))))
                                 (let ((_%__kont3825338254%_
                                        (lambda (_%g3343233613%_)
                                          (_%loop32370%_
                                           _%g3343233613%_
                                           _%vars32659%_
                                           _%K32660%_)))
                                       (_%__kont3825538256%_
                                        (lambda (_%g3343633582%_)
                                          (_%loop32370%_
                                           _%g3343633582%_
                                           _%vars32659%_
                                           _%K32660%_)))
                                       (_%__kont3825738258%_
                                        (lambda (_%g3344433530%_)
                                          (_%loop32370%_
                                           _%g3344433530%_
                                           _%vars32659%_
                                           _%K32660%_)))
                                       (_%__kont3825938260%_
                                        (lambda ()
                                          (_%K32660%_ _%vars32659%_))))
                                   (if (gx#stx-pair? _%__stx3825038251%_)
                                       (let ((_%e3343333603%_
                                              (gx#syntax-e
                                               _%__stx3825038251%_)))
                                         (let ((_%tl3343533610%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3343333603%_)))
                                               (_%hd3343433607%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3343333603%_))))
                                           (if (gx#stx-null? _%tl3343533610%_)
                                               (_%__kont3825338254%_
                                                _%hd3343433607%_)
                                               (if (gx#stx-datum?
                                                    _%hd3343433607%_)
                                                   (let ((_%e3344033568%_
                                                          (gx#stx-e
                                                           _%hd3343433607%_)))
                                                     (if (equal? _%e3344033568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3343533610%_)
                     (let ((_%e3344133572%_ (gx#syntax-e _%tl3343533610%_)))
                       (let ((_%tl3344333579%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3344133572%_)))
                             (_%hd3344233576%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3344133572%_))))
                         (if (gx#stx-null? _%tl3344333579%_)
                             (_%__kont3825538256%_ _%hd3344233576%_)
                             (_%__kont3825938260%_))))
                     (_%__kont3825938260%_))
                 (if (equal? _%e3344033568%_ '::)
                     (if (gx#stx-pair? _%tl3343533610%_)
                         (let ((_%e3344933496%_
                                (gx#syntax-e _%tl3343533610%_)))
                           (let ((_%tl3345133503%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3344933496%_)))
                                 (_%hd3345033500%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3344933496%_))))
                             (if (gx#stx-pair? _%tl3345133503%_)
                                 (let ((_%e3345233506%_
                                        (gx#syntax-e _%tl3345133503%_)))
                                   (let ((_%tl3345433513%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3345233506%_)))
                                         (_%hd3345333510%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3345233506%_))))
                                     (if (gx#stx-datum? _%hd3345333510%_)
                                         (let ((_%e3345533516%_
                                                (gx#stx-e _%hd3345333510%_)))
                                           (if (equal? _%e3345533516%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3345433513%_)
                                                   (let ((_%e3345633520%_
                                                          (gx#syntax-e
                                                           _%tl3345433513%_)))
                                                     (let ((_%tl3345833527%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3345633520%_)))
                                                           (_%hd3345733524%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3345633520%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3345833527%_)
                                                           (_%__kont3825738258%_
                                                            _%hd3345733524%_)
                                                           (_%__kont3825938260%_))))
                                                   (_%__kont3825938260%_))
                                               (_%__kont3825938260%_)))
                                         (_%__kont3825938260%_))))
                                 (_%__kont3825938260%_))))
                         (_%__kont3825938260%_))
                     (_%__kont3825938260%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3825938260%_)))))
                                       (_%__kont3825938260%_))))))
                            (_%__kont3833538336%_
                             (lambda (_%g3268333300%_ _%g3268433302%_)
                               (let* ((_%__stx3823438235%_ _%g3268333300%_)
                                      (_%g3331833330%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3823438235%_))))
                                 (let ((_%__kont3823738238%_
                                        (lambda (_%g3332033358%_
                                                 _%g3332133360%_)
                                          (_%loop32370%_
                                           _%g3332133360%_
                                           _%vars32659%_
                                           (lambda (_%g3337233374%_)
                                             (_%loop32370%_
                                              (cons _%g3268433302%_
                                                    _%g3332033358%_)
                                              _%g3337233374%_
                                              _%K32660%_)))))
                                       (_%__kont3823938240%_
                                        (lambda ()
                                          (_%K32660%_ _%vars32659%_))))
                                   (if (gx#stx-pair? _%__stx3823438235%_)
                                       (let ((_%e3332233348%_
                                              (gx#syntax-e
                                               _%__stx3823438235%_)))
                                         (let ((_%tl3332433355%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3332233348%_)))
                                               (_%hd3332333352%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3332233348%_))))
                                           (_%__kont3823738238%_
                                            _%tl3332433355%_
                                            _%hd3332333352%_)))
                                       (_%__kont3823938240%_))))))
                            (_%__kont3833738338%_
                             (lambda (_%g3268833269%_)
                               (_%loop32370%_
                                _%g3268833269%_
                                _%vars32659%_
                                _%K32660%_)))
                            (_%__kont3833938340%_
                             (lambda (_%g3269633215%_ _%g3269733217%_)
                               (_%loop32370%_
                                _%g3269733217%_
                                _%vars32659%_
                                (lambda (_%g3323233234%_)
                                  (_%loop32370%_
                                   _%g3269633215%_
                                   _%g3323233234%_
                                   _%K32660%_)))))
                            (_%__kont3834138342%_
                             (lambda (_%g3270833151%_ _%g3270933153%_)
                               (_%loop32370%_
                                _%g3270933153%_
                                _%vars32659%_
                                (lambda (_%g3316833170%_)
                                  (_%loop32370%_
                                   _%g3270833151%_
                                   _%g3316833170%_
                                   _%K32660%_)))))
                            (_%__kont3834338344%_
                             (lambda (_%g3272033096%_)
                               (_%loop32370%_
                                _%g3272033096%_
                                _%vars32659%_
                                _%K32660%_)))
                            (_%__kont3834538346%_
                             (lambda (_%g3272833046%_ _%g3272933048%_)
                               (_%loop-vector32372%_
                                _%g3272833046%_
                                _%vars32659%_
                                _%K32660%_)))
                            (_%__kont3834738348%_
                             (lambda (_%g3273633003%_)
                               (_%loop-vector32372%_
                                _%g3273633003%_
                                _%vars32659%_
                                _%K32660%_)))
                            (_%__kont3834938350%_
                             (lambda (_%g3274732946%_)
                               (_%loop-class-list32374%_
                                _%g3274732946%_
                                _%vars32659%_
                                _%K32660%_)))
                            (_%__kont3835138352%_
                             (lambda (_%g3275832887%_ _%g3275932889%_)
                               (_%loop32370%_
                                _%g3275832887%_
                                _%vars32659%_
                                _%K32660%_)))
                            (_%__kont3835338354%_
                             (lambda (_%g3277032825%_)
                               (if (find (lambda (_%g3284032842%_)
                                           (gx#bound-identifier=?
                                            _%g3284032842%_
                                            _%g3277032825%_))
                                         _%vars32659%_)
                                   (_%K32660%_ _%vars32659%_)
                                   (_%K32660%_
                                    (cons _%g3277032825%_ _%vars32659%_)))))
                            (_%__kont3835538356%_
                             (lambda () (_%K32660%_ _%vars32659%_))))
                        (let* ((_%__match3848738488%_
                                (lambda (_%e3273033026%_
                                         _%hd3273133030%_
                                         _%tl3273233033%_
                                         _%e3273333036%_
                                         _%hd3273433040%_
                                         _%tl3273533043%_)
                                  (let ((_%g3272833046%_ _%hd3273433040%_)
                                        (_%g3272933048%_ _%hd3273133030%_))
                                    (if (or (gx#stx-eq?
                                             'values:
                                             _%g3272933048%_)
                                            (gx#stx-eq?
                                             'vector:
                                             _%g3272933048%_))
                                        (_%__kont3834538346%_
                                         _%g3272833046%_
                                         _%g3272933048%_)
                                        (if (gx#stx-datum? _%hd3273133030%_)
                                            (let ((_%e3274032979%_
                                                   (gx#stx-e
                                                    _%hd3273133030%_)))
                                              (if (equal? _%e3274032979%_
                                                          'struct:)
                                                  (_%__kont3835538356%_)
                                                  (if (equal? _%e3274032979%_
                                                              'class:)
                                                      (_%__kont3835538356%_)
                                                      (if (equal? _%e3274032979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3835538356%_)
                  (if (equal? _%e3274032979%_ 'var:)
                      (_%__kont3835338354%_ _%hd3273433040%_)
                      (_%__kont3835538356%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3835538356%_))))))
                               (_%__match3838138382%_
                                (lambda (_%e3268533290%_
                                         _%hd3268633294%_
                                         _%tl3268733297%_)
                                  (let ((_%g3268333300%_ _%tl3268733297%_)
                                        (_%g3268433302%_ _%hd3268633294%_))
                                    (if (or (gx#stx-eq? 'and: _%g3268433302%_)
                                            (gx#stx-eq? 'or: _%g3268433302%_))
                                        (_%__kont3833538336%_
                                         _%g3268333300%_
                                         _%g3268433302%_)
                                        (if (gx#stx-datum? _%hd3268633294%_)
                                            (let ((_%e3269233255%_
                                                   (gx#stx-e
                                                    _%hd3268633294%_)))
                                              (if (equal? _%e3269233255%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3268733297%_)
                                                      (let ((_%e3269333259%_
                                                             (gx#syntax-e
                                                              _%tl3268733297%_)))
                                                        (let ((_%tl3269533266%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3269333259%_)))
                      (_%hd3269433263%_
                       (let () (declare (not safe)) (##car _%e3269333259%_))))
                  (if (gx#stx-null? _%tl3269533266%_)
                      (_%__kont3833738338%_ _%hd3269433263%_)
                      (_%__kont3835538356%_))))
              (_%__kont3835538356%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3269233255%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3268733297%_)
                                                          (let ((_%e3270233195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3268733297%_)))
                    (let ((_%tl3270433202%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3270233195%_)))
                          (_%hd3270333199%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3270233195%_))))
                      (if (gx#stx-pair? _%tl3270433202%_)
                          (let ((_%e3270533205%_
                                 (gx#syntax-e _%tl3270433202%_)))
                            (let ((_%tl3270733212%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3270533205%_)))
                                  (_%hd3270633209%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3270533205%_))))
                              (if (gx#stx-null? _%tl3270733212%_)
                                  (_%__kont3833938340%_
                                   _%hd3270633209%_
                                   _%hd3270333199%_)
                                  (_%__kont3835538356%_))))
                          (if (gx#stx-null? _%tl3270433202%_)
                              (_%__match3848738488%_
                               _%e3268533290%_
                               _%hd3268633294%_
                               _%tl3268733297%_
                               _%e3270233195%_
                               _%hd3270333199%_
                               _%tl3270433202%_)
                              (_%__kont3835538356%_)))))
                  (_%__kont3835538356%_))
              (if (equal? _%e3269233255%_ 'splice:)
                  (if (gx#stx-pair? _%tl3268733297%_)
                      (let ((_%e3271433131%_ (gx#syntax-e _%tl3268733297%_)))
                        (let ((_%tl3271633138%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3271433131%_)))
                              (_%hd3271533135%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3271433131%_))))
                          (if (gx#stx-pair? _%tl3271633138%_)
                              (let ((_%e3271733141%_
                                     (gx#syntax-e _%tl3271633138%_)))
                                (let ((_%tl3271933148%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3271733141%_)))
                                      (_%hd3271833145%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3271733141%_))))
                                  (if (gx#stx-null? _%tl3271933148%_)
                                      (_%__kont3834138342%_
                                       _%hd3271833145%_
                                       _%hd3271533135%_)
                                      (_%__kont3835538356%_))))
                              (if (gx#stx-null? _%tl3271633138%_)
                                  (_%__match3848738488%_
                                   _%e3268533290%_
                                   _%hd3268633294%_
                                   _%tl3268733297%_
                                   _%e3271433131%_
                                   _%hd3271533135%_
                                   _%tl3271633138%_)
                                  (_%__kont3835538356%_)))))
                      (_%__kont3835538356%_))
                  (if (equal? _%e3269233255%_ 'box:)
                      (if (gx#stx-pair? _%tl3268733297%_)
                          (let ((_%e3272533086%_
                                 (gx#syntax-e _%tl3268733297%_)))
                            (let ((_%tl3272733093%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3272533086%_)))
                                  (_%hd3272633090%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3272533086%_))))
                              (if (gx#stx-null? _%tl3272733093%_)
                                  (_%__kont3834338344%_ _%hd3272633090%_)
                                  (_%__kont3835538356%_))))
                          (_%__kont3835538356%_))
                      (if (gx#stx-pair? _%tl3268733297%_)
                          (let ((_%e3273333036%_
                                 (gx#syntax-e _%tl3268733297%_)))
                            (let ((_%tl3273533043%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3273333036%_)))
                                  (_%hd3273433040%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3273333036%_))))
                              (if (gx#stx-null? _%tl3273533043%_)
                                  (_%__match3848738488%_
                                   _%e3268533290%_
                                   _%hd3268633294%_
                                   _%tl3268733297%_
                                   _%e3273333036%_
                                   _%hd3273433040%_
                                   _%tl3273533043%_)
                                  (if (equal? _%e3269233255%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3273533043%_)
                                          (let ((_%e3274432993%_
                                                 (gx#syntax-e
                                                  _%tl3273533043%_)))
                                            (let ((_%tl3274633000%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3274432993%_)))
                                                  (_%hd3274532997%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3274432993%_))))
                                              (if (gx#stx-null?
                                                   _%tl3274633000%_)
                                                  (_%__kont3834738348%_
                                                   _%hd3274532997%_)
                                                  (_%__kont3835538356%_))))
                                          (_%__kont3835538356%_))
                                      (if (equal? _%e3269233255%_ 'class:)
                                          (if (gx#stx-pair? _%tl3273533043%_)
                                              (let ((_%e3275532936%_
                                                     (gx#syntax-e
                                                      _%tl3273533043%_)))
                                                (let ((_%tl3275732943%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3275532936%_)))
                                                      (_%hd3275632940%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3275532936%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3275732943%_)
                                                      (_%__kont3834938350%_
                                                       _%hd3275632940%_)
                                                      (_%__kont3835538356%_))))
                                              (_%__kont3835538356%_))
                                          (if (equal? _%e3269233255%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3273533043%_)
                                                  (let ((_%e3276732877%_
                                                         (gx#syntax-e
                                                          _%tl3273533043%_)))
                                                    (let ((_%tl3276932884%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3276732877%_)))
                                                          (_%hd3276832881%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3276732877%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3276932884%_)
                                                          (_%__kont3835138352%_
                                                           _%hd3276832881%_
                                                           _%hd3273433040%_)
                                                          (_%__kont3835538356%_))))
                                                  (_%__kont3835538356%_))
                                              (_%__kont3835538356%_)))))))
                          (_%__kont3835538356%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3268733297%_)
                                                (let ((_%e3273333036%_
                                                       (gx#syntax-e
                                                        _%tl3268733297%_)))
                                                  (let ((_%tl3273533043%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3273333036%_)))
                                                        (_%hd3273433040%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3273333036%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3273533043%_)
                                                        (_%__match3848738488%_
                                                         _%e3268533290%_
                                                         _%hd3268633294%_
                                                         _%tl3268733297%_
                                                         _%e3273333036%_
                                                         _%hd3273433040%_
                                                         _%tl3273533043%_)
                                                        (_%__kont3835538356%_))))
                                                (_%__kont3835538356%_))))))))
                          (if (gx#stx-pair? _%__stx3833038331%_)
                              (let ((_%e3267633389%_
                                     (gx#syntax-e _%__stx3833038331%_)))
                                (let ((_%tl3267833396%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3267633389%_)))
                                      (_%hd3267733393%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3267633389%_))))
                                  (if (gx#stx-datum? _%hd3267733393%_)
                                      (let ((_%e3267933399%_
                                             (gx#stx-e _%hd3267733393%_)))
                                        (if (equal? _%e3267933399%_ '?:)
                                            (if (gx#stx-pair? _%tl3267833396%_)
                                                (let ((_%e3268033403%_
                                                       (gx#syntax-e
                                                        _%tl3267833396%_)))
                                                  (let ((_%tl3268233410%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3268033403%_)))
                                                        (_%hd3268133407%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3268033403%_))))
                                                    (_%__kont3833338334%_
                                                     _%tl3268233410%_)))
                                                (_%__match3838138382%_
                                                 _%e3267633389%_
                                                 _%hd3267733393%_
                                                 _%tl3267833396%_))
                                            (_%__match3838138382%_
                                             _%e3267633389%_
                                             _%hd3267733393%_
                                             _%tl3267833396%_)))
                                      (_%__match3838138382%_
                                       _%e3267633389%_
                                       _%hd3267733393%_
                                       _%tl3267833396%_))))
                              (_%__kont3835538356%_)))))))
                 (_%loop-vector32372%_
                  (lambda (_%body32533%_ _%vars32535%_ _%K32536%_)
                    (let* ((_%__stx3858838589%_ _%body32533%_)
                           (_%g3253932562%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3858838589%_))))
                      (let ((_%__kont3859138592%_
                             (lambda (_%g3254132639%_)
                               (_%loop-list32373%_
                                _%g3254132639%_
                                _%vars32535%_
                                _%K32536%_)))
                            (_%__kont3859338594%_
                             (lambda (_%g3254932593%_)
                               (_%loop32370%_
                                _%g3254932593%_
                                _%vars32535%_
                                _%K32536%_))))
                        (if (gx#stx-pair? _%__stx3858838589%_)
                            (let ((_%e3254232615%_
                                   (gx#syntax-e _%__stx3858838589%_)))
                              (let ((_%tl3254432622%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3254232615%_)))
                                    (_%hd3254332619%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3254232615%_))))
                                (if (gx#stx-datum? _%hd3254332619%_)
                                    (let ((_%e3254532625%_
                                           (gx#stx-e _%hd3254332619%_)))
                                      (if (equal? _%e3254532625%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3254432622%_)
                                              (let ((_%e3254632629%_
                                                     (gx#syntax-e
                                                      _%tl3254432622%_)))
                                                (let ((_%tl3254832636%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3254632629%_)))
                                                      (_%hd3254732633%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3254632629%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3254832636%_)
                                                      (_%__kont3859138592%_
                                                       _%hd3254732633%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3253932562%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3253932562%_)))
                                          (if (equal? _%e3254532625%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3254432622%_)
                                                  (let ((_%e3255432583%_
                                                         (gx#syntax-e
                                                          _%tl3254432622%_)))
                                                    (let ((_%tl3255632590%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3255432583%_)))
                                                          (_%hd3255532587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3255432583%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3255632590%_)
                                                          (_%__kont3859338594%_
                                                           _%hd3255532587%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3253932562%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3253932562%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3253932562%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3253932562%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3253932562%_)))))))
                 (_%loop-list32373%_
                  (lambda (_%rest32463%_ _%vars32465%_ _%K32466%_)
                    (let* ((_%__stx3863838639%_ _%rest32463%_)
                           (_%g3246932481%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3863838639%_))))
                      (let ((_%__kont3864138642%_
                             (lambda (_%g3247132509%_ _%g3247232511%_)
                               (_%loop32370%_
                                _%g3247232511%_
                                _%vars32465%_
                                (lambda (_%g3252332525%_)
                                  (_%loop-list32373%_
                                   _%g3247132509%_
                                   _%g3252332525%_
                                   _%K32466%_)))))
                            (_%__kont3864338644%_
                             (lambda () (_%K32466%_ _%vars32465%_))))
                        (if (gx#stx-pair? _%__stx3863838639%_)
                            (let ((_%e3247332499%_
                                   (gx#syntax-e _%__stx3863838639%_)))
                              (let ((_%tl3247532506%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3247332499%_)))
                                    (_%hd3247432503%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3247332499%_))))
                                (_%__kont3864138642%_
                                 _%tl3247532506%_
                                 _%hd3247432503%_)))
                            (_%__kont3864338644%_))))))
                 (_%loop-class-list32374%_
                  (lambda (_%rest32376%_ _%vars32378%_ _%K32379%_)
                    (let* ((_%__stx3865438655%_ _%rest32376%_)
                           (_%g3238232397%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3865438655%_))))
                      (let ((_%__kont3865738658%_
                             (lambda (_%g3238432435%_ _%g3238532437%_)
                               (_%loop32370%_
                                _%g3238532437%_
                                _%vars32378%_
                                (lambda (_%g3245332455%_)
                                  (_%loop-class-list32374%_
                                   _%g3238432435%_
                                   _%g3245332455%_
                                   _%K32379%_)))))
                            (_%__kont3865938660%_
                             (lambda () (_%K32379%_ _%vars32378%_))))
                        (if (gx#stx-pair? _%__stx3865438655%_)
                            (let ((_%e3238632415%_
                                   (gx#syntax-e _%__stx3865438655%_)))
                              (let ((_%tl3238832422%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3238632415%_)))
                                    (_%hd3238732419%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3238632415%_))))
                                (if (gx#stx-pair? _%tl3238832422%_)
                                    (let ((_%e3238932425%_
                                           (gx#syntax-e _%tl3238832422%_)))
                                      (let ((_%tl3239132432%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3238932425%_)))
                                            (_%hd3239032429%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3238932425%_))))
                                        (_%__kont3865738658%_
                                         _%tl3239132432%_
                                         _%hd3239032429%_)))
                                    (_%__kont3865938660%_))))
                            (_%__kont3865938660%_)))))))
          (_%loop32370%_ _%ptree32367%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29299%_ _%tgt29301%_ _%ptree29302%_ _%K29303%_ _%E29304%_)
        (letrec ((_%generate129306%_
                  (lambda (_%tgt30566%_ _%ptree30568%_ _%K30569%_ _%E30570%_)
                    (let* ((_%g3057230580%_
                            (lambda (_%g3057330576%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3057330576%_)))
                           (_%g3057132363%_
                            (lambda (_%g3057330584%_)
                              ((lambda (_%g3057430587%_)
                                 (let* ((_%__stx3889038891%_ _%ptree30568%_)
                                        (_%g3061430756%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3889038891%_))))
                                   (let ((_%__kont3889338894%_
                                          (lambda (_%g3061632078%_
                                                   _%g3061732080%_)
                                            (let* ((_%__stx3880838809%_
                                                    _%g3061632078%_)
                                                   (_%g3209732132%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3880838809%_))))
                                              (let ((_%__kont3881138812%_
                                                     (lambda ()
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%g3061732080%_
                                       (cons _%g3057430587%_ '())))
                           (cons _%K30569%_ (cons _%E30570%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3881338814%_
                                                     (lambda (_%g3209932333%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%g3061732080%_
                                       (cons _%g3057430587%_ '())))
                           (cons (_%generate129306%_
                                  _%tgt30566%_
                                  _%g3209932333%_
                                  _%K30569%_
                                  _%E30570%_)
                                 (cons _%E30570%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3881538816%_
                                                     (lambda (_%g3210332271%_)
                                                       (let* ((_%g3228532293%_
                                                               (lambda (_%g3228632289%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3228632289%_)))
                      (_%g3228432312%_
                       (lambda (_%g3228632297%_)
                         ((lambda (_%g3228732300%_)
                            (cons 'let
                                  (cons (cons (cons _%g3228732300%_
                                                    (cons (cons _%g3061732080%_
                                                                (cons _%g3057430587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons 'if
                                                    (cons _%g3228732300%_
                                                          (cons (_%generate129306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3228732300%_
                         _%g3210332271%_
                         _%K30569%_
                         _%E30570%_)
                        (cons _%E30570%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _%g3228632297%_))))
                 (_%g3228432312%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3881738818%_
                                                     (lambda (_%g3211132187%_
                                                              _%g3211232189%_)
                                                       (let* ((_%g3220932217%_
                                                               (lambda (_%g3221032213%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3221032213%_)))
                      (_%g3220832236%_
                       (lambda (_%g3221032221%_)
                         ((lambda (_%g3221132224%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '?)
                                              (cons _%g3061732080%_
                                                    (cons _%g3057430587%_
                                                          '())))
                                        (cons (cons 'let
                                                    (cons (cons (cons _%g3221132224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons _%g3211232189%_
                                          (cons _%g3057430587%_ '()))
                                    '()))
                        '())
                  (cons (_%generate129306%_
                         _%g3221132224%_
                         _%g3211132187%_
                         _%K30569%_
                         _%E30570%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30570%_ '())))))
                          _%g3221032221%_))))
                 (_%g3220832236%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%g3209432344%_
                                                       (lambda ()
                                                         (if (gx#stx-pair?
                                                              _%__stx3880838809%_)
                                                             (let ((_%e3210032323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%__stx3880838809%_)))
                       (let ((_%tl3210232330%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3210032323%_)))
                             (_%hd3210132327%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3210032323%_))))
                         (if (gx#stx-null? _%tl3210232330%_)
                             (_%__kont3881338814%_ _%hd3210132327%_)
                             (if (gx#stx-datum? _%hd3210132327%_)
                                 (let ((_%e3210732257%_
                                        (gx#stx-e _%hd3210132327%_)))
                                   (if (equal? _%e3210732257%_ '=>:)
                                       (if (gx#stx-pair? _%tl3210232330%_)
                                           (let ((_%e3210832261%_
                                                  (gx#syntax-e
                                                   _%tl3210232330%_)))
                                             (let ((_%tl3211032268%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3210832261%_)))
                                                   (_%hd3210932265%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3210832261%_))))
                                               (if (gx#stx-null?
                                                    _%tl3211032268%_)
                                                   (_%__kont3881538816%_
                                                    _%hd3210932265%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3209732132%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3209732132%_)))
                                       (if (equal? _%e3210732257%_ '::)
                                           (if (gx#stx-pair? _%tl3210232330%_)
                                               (let ((_%e3211732153%_
                                                      (gx#syntax-e
                                                       _%tl3210232330%_)))
                                                 (let ((_%tl3211932160%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3211732153%_)))
                                                       (_%hd3211832157%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3211732153%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3211932160%_)
                                                       (let ((_%e3212032163%_
                                                              (gx#syntax-e
                                                               _%tl3211932160%_)))
                                                         (let ((_%tl3212232170%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3212032163%_)))
                       (_%hd3212132167%_
                        (let () (declare (not safe)) (##car _%e3212032163%_))))
                   (if (gx#stx-datum? _%hd3212132167%_)
                       (let ((_%e3212332173%_ (gx#stx-e _%hd3212132167%_)))
                         (if (equal? _%e3212332173%_ '=>:)
                             (if (gx#stx-pair? _%tl3212232170%_)
                                 (let ((_%e3212432177%_
                                        (gx#syntax-e _%tl3212232170%_)))
                                   (let ((_%tl3212632184%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3212432177%_)))
                                         (_%hd3212532181%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3212432177%_))))
                                     (if (gx#stx-null? _%tl3212632184%_)
                                         (_%__kont3881738818%_
                                          _%hd3212532181%_
                                          _%hd3211832157%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3209732132%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3209732132%_)))
                             (let () (declare (not safe)) (_%g3209732132%_))))
                       (let () (declare (not safe)) (_%g3209732132%_)))))
               (let () (declare (not safe)) (_%g3209732132%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3209732132%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3209732132%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3209732132%_))))))
                     (let () (declare (not safe)) (_%g3209732132%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%__stx3880838809%_)
                                                      (_%__kont3881138812%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3209432344%_))))))))
                                         (_%__kont3889538896%_
                                          (lambda (_%g3062531975%_)
                                            (let* ((_%__stx3879238793%_
                                                    _%g3062531975%_)
                                                   (_%g3198832000%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3879238793%_))))
                                              (let ((_%__kont3879538796%_
                                                     (lambda (_%g3199032028%_
                                                              _%g3199132030%_)
                                                       (_%generate129306%_
                                                        _%tgt30566%_
                                                        _%g3199132030%_
                                                        (_%generate129306%_
                                                         _%tgt30566%_
                                                         (cons 'and:
                                                               _%g3199032028%_)
                                                         _%K30569%_
                                                         _%E30570%_)
                                                        _%E30570%_)))
                                                    (_%__kont3879738798%_
                                                     (lambda () _%K30569%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3879238793%_)
                                                    (let ((_%e3199232018%_
                                                           (gx#syntax-e
                                                            _%__stx3879238793%_)))
                                                      (let ((_%tl3199432025%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3199232018%_)))
                    (_%hd3199332022%_
                     (let () (declare (not safe)) (##car _%e3199232018%_))))
                (_%__kont3879538796%_ _%tl3199432025%_ _%hd3199332022%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3879738798%_))))))
                                         (_%__kont3889738898%_
                                          (lambda (_%g3063031882%_)
                                            (let* ((_%__stx3877638777%_
                                                    _%g3063031882%_)
                                                   (_%g3189531907%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3877638777%_))))
                                              (let ((_%__kont3877938780%_
                                                     (lambda (_%g3189731935%_
                                                              _%g3189831937%_)
                                                       (_%generate129306%_
                                                        _%tgt30566%_
                                                        _%g3189831937%_
                                                        _%K30569%_
                                                        (_%generate129306%_
                                                         _%tgt30566%_
                                                         (cons 'or:
                                                               _%g3189731935%_)
                                                         _%K30569%_
                                                         _%E30570%_))))
                                                    (_%__kont3878138782%_
                                                     (lambda () _%E30570%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3877638777%_)
                                                    (let ((_%e3189931925%_
                                                           (gx#syntax-e
                                                            _%__stx3877638777%_)))
                                                      (let ((_%tl3190131932%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3189931925%_)))
                    (_%hd3190031929%_
                     (let () (declare (not safe)) (##car _%e3189931925%_))))
                (_%__kont3877938780%_ _%tl3190131932%_ _%hd3190031929%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3878138782%_))))))
                                         (_%__kont3889938900%_
                                          (lambda (_%g3063531847%_)
                                            (_%generate129306%_
                                             _%tgt30566%_
                                             _%g3063531847%_
                                             _%E30570%_
                                             _%K30569%_)))
                                         (_%__kont3890138902%_
                                          (lambda (_%g3064331721%_
                                                   _%g3064431723%_)
                                            (let* ((_%g3174031755%_
                                                    (lambda (_%g3174131751%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3174131751%_)))
                                                   (_%g3173931812%_
                                                    (lambda (_%g3174131759%_)
                                                      (if (gx#stx-pair?
                                                           _%g3174131759%_)
                                                          (let ((_%e3174431762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%g3174131759%_)))
                    (let ((_%hd3174531766%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3174431762%_)))
                          (_%tl3174631769%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3174431762%_))))
                      (if (gx#stx-pair? _%tl3174631769%_)
                          (let ((_%e3174731772%_
                                 (gx#syntax-e _%tl3174631769%_)))
                            (let ((_%hd3174831776%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3174731772%_)))
                                  (_%tl3174931779%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3174731772%_))))
                              (if (gx#stx-null? _%tl3174931779%_)
                                  ((lambda (_%g3174231782%_ _%g3174331784%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'pair?)
                                                       (cons _%g3057430587%_
                                                             '()))
                                                 (cons (let ((_%hd-pat31800%_
                                                              (gx#stx-e
                                                               _%g3064431723%_))
                                                             (_%tl-pat31802%_
                                                              (gx#stx-e
                                                               _%g3064331721%_)))
                                                         (if (and (equal? _%hd-pat31800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat31802%_ '(any:)))
                     _%K30569%_
                     (if (equal? _%tl-pat31802%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%g3174331784%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%g3057430587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate129306%_
                                            _%g3174331784%_
                                            _%g3064431723%_
                                            _%K30569%_
                                            _%E30570%_)
                                           '())))
                         (if (equal? _%hd-pat31800%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%g3174231782%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%g3057430587%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate129306%_
                                                _%g3174231782%_
                                                _%g3064331721%_
                                                _%K30569%_
                                                _%E30570%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%g3174331784%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%g3057430587%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%g3174231782%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%g3057430587%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate129306%_
                                                _%g3174331784%_
                                                _%g3064431723%_
                                                (_%generate129306%_
                                                 _%g3174231782%_
                                                 _%g3064331721%_
                                                 _%K30569%_
                                                 _%E30570%_)
                                                _%E30570%_)
                                               '())))))))
               (cons _%E30570%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd3174831776%_
                                   _%hd3174531766%_)
                                  (_%g3174031755%_ _%g3174131759%_))))
                          (_%g3174031755%_ _%g3174131759%_))))
                  (_%g3174031755%_ _%g3174131759%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3173931812%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl))))))
                                         (_%__kont3890338904%_
                                          (lambda ()
                                            (cons 'if
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'null?)
                                                              (cons _%g3057430587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%K30569%_ (cons _%E30570%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3890538906%_
                                          (lambda (_%g3065931637%_
                                                   _%g3066031639%_)
                                            (_%generate-splice29308%_
                                             _%tgt30566%_
                                             _%g3066031639%_
                                             _%g3065931637%_
                                             _%K30569%_
                                             _%E30570%_)))
                                         (_%__kont3890738908%_
                                          (lambda (_%g3067131551%_)
                                            (let* ((_%g3156531573%_
                                                    (lambda (_%g3156631569%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3156631569%_)))
                                                   (_%g3156431592%_
                                                    (lambda (_%g3156631577%_)
                                                      ((lambda (_%g3156731580%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'box?)
                                   (cons _%g3057430587%_ '()))
                             (cons (cons 'let
                                         (cons (cons (cons _%g3156731580%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##unbox)
                               (cons _%g3057430587%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (_%generate129306%_
                                                      _%g3156731580%_
                                                      _%g3067131551%_
                                                      _%K30569%_
                                                      _%E30570%_)
                                                     '())))
                                   (cons _%E30570%_ '())))))
               _%g3156631577%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3156431592%_
                                               (gx#genident 'e)))))
                                         (_%__kont3890938910%_
                                          (lambda (_%g3067931356%_)
                                            (let* ((_%__stx3872638727%_
                                                    _%g3067931356%_)
                                                   (_%g3137131394%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3872638727%_))))
                                              (let ((_%__kont3872938730%_
                                                     (lambda (_%g3137331471%_)
                                                       (let* ((_%g3148531493%_
                                                               (lambda (_%g3148631489%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3148631489%_)))
                      (_%g3148431512%_
                       (lambda (_%g3148631497%_)
                         ((lambda (_%g3148731500%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'values-count)
                                                          (cons _%g3057430587%_
                                                                '()))
                                                    (cons _%g3148731500%_
                                                          '())))
                                        (cons (_%generate-simple-vector29309%_
                                               _%tgt30566%_
                                               _%g3137331471%_
                                               '0
                                               '##values-ref
                                               _%K30569%_
                                               _%E30570%_)
                                              (cons _%E30570%_ '())))))
                          _%g3148631497%_))))
                 (_%g3148431512%_ (gx#stx-length _%g3137331471%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3873138732%_
                                                     (lambda (_%g3138131425%_)
                                                       (_%generate-list-vector29310%_
                                                        _%tgt30566%_
                                                        _%g3138131425%_
                                                        'values->list
                                                        _%K30569%_
                                                        _%E30570%_))))
                                                (if (gx#stx-pair?
                                                     _%__stx3872638727%_)
                                                    (let ((_%e3137431447%_
                                                           (gx#syntax-e
                                                            _%__stx3872638727%_)))
                                                      (let ((_%tl3137631454%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3137431447%_)))
                    (_%hd3137531451%_
                     (let () (declare (not safe)) (##car _%e3137431447%_))))
                (if (gx#stx-datum? _%hd3137531451%_)
                    (let ((_%e3137731457%_ (gx#stx-e _%hd3137531451%_)))
                      (if (equal? _%e3137731457%_ 'simple:)
                          (if (gx#stx-pair? _%tl3137631454%_)
                              (let ((_%e3137831461%_
                                     (gx#syntax-e _%tl3137631454%_)))
                                (let ((_%tl3138031468%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3137831461%_)))
                                      (_%hd3137931465%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3137831461%_))))
                                  (if (gx#stx-null? _%tl3138031468%_)
                                      (_%__kont3872938730%_ _%hd3137931465%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3137131394%_)))))
                              (let () (declare (not safe)) (_%g3137131394%_)))
                          (if (equal? _%e3137731457%_ 'list:)
                              (if (gx#stx-pair? _%tl3137631454%_)
                                  (let ((_%e3138631415%_
                                         (gx#syntax-e _%tl3137631454%_)))
                                    (let ((_%tl3138831422%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3138631415%_)))
                                          (_%hd3138731419%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3138631415%_))))
                                      (if (gx#stx-null? _%tl3138831422%_)
                                          (_%__kont3873138732%_
                                           _%hd3138731419%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3137131394%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3137131394%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3137131394%_)))))
                    (let () (declare (not safe)) (_%g3137131394%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3137131394%_)))))))
                                         (_%__kont3891138912%_
                                          (lambda (_%g3068731161%_)
                                            (let* ((_%__stx3867638677%_
                                                    _%g3068731161%_)
                                                   (_%g3117631199%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3867638677%_))))
                                              (let ((_%__kont3867938680%_
                                                     (lambda (_%g3117831276%_)
                                                       (let* ((_%g3129031298%_
                                                               (lambda (_%g3129131294%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3129131294%_)))
                      (_%g3128931317%_
                       (lambda (_%g3129131302%_)
                         ((lambda (_%g3129231305%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f 'vector?)
                                              (cons _%g3057430587%_ '()))
                                        (cons (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _%g3057430587%_ '()))
                              (cons _%g3129231305%_ '())))
                  (cons (_%generate-simple-vector29309%_
                         _%tgt30566%_
                         _%g3117831276%_
                         '0
                         '##vector-ref
                         _%K30569%_
                         _%E30570%_)
                        (cons _%E30570%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30570%_ '())))))
                          _%g3129131302%_))))
                 (_%g3128931317%_ (gx#stx-length _%g3117831276%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3868138682%_
                                                     (lambda (_%g3118631230%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'vector?)
                                 (cons _%g3057430587%_ '()))
                           (cons (_%generate-list-vector29310%_
                                  _%tgt30566%_
                                  _%g3118631230%_
                                  'vector->list
                                  _%K30569%_
                                  _%E30570%_)
                                 (cons _%E30570%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx3867638677%_)
                                                    (let ((_%e3117931252%_
                                                           (gx#syntax-e
                                                            _%__stx3867638677%_)))
                                                      (let ((_%tl3118131259%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3117931252%_)))
                    (_%hd3118031256%_
                     (let () (declare (not safe)) (##car _%e3117931252%_))))
                (if (gx#stx-datum? _%hd3118031256%_)
                    (let ((_%e3118231262%_ (gx#stx-e _%hd3118031256%_)))
                      (if (equal? _%e3118231262%_ 'simple:)
                          (if (gx#stx-pair? _%tl3118131259%_)
                              (let ((_%e3118331266%_
                                     (gx#syntax-e _%tl3118131259%_)))
                                (let ((_%tl3118531273%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3118331266%_)))
                                      (_%hd3118431270%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3118331266%_))))
                                  (if (gx#stx-null? _%tl3118531273%_)
                                      (_%__kont3867938680%_ _%hd3118431270%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3117631199%_)))))
                              (let () (declare (not safe)) (_%g3117631199%_)))
                          (if (equal? _%e3118231262%_ 'list:)
                              (if (gx#stx-pair? _%tl3118131259%_)
                                  (let ((_%e3119131220%_
                                         (gx#syntax-e _%tl3118131259%_)))
                                    (let ((_%tl3119331227%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3119131220%_)))
                                          (_%hd3119231224%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3119131220%_))))
                                      (if (gx#stx-null? _%tl3119331227%_)
                                          (_%__kont3868138682%_
                                           _%hd3119231224%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3117631199%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3117631199%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3117631199%_)))))
                    (let () (declare (not safe)) (_%g3117631199%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3117631199%_)))))))
                                         (_%__kont3891338914%_
                                          (lambda (_%g3069531112%_
                                                   _%g3069631114%_)
                                            (_%generate-struct29311%_
                                             (gx#stx-e _%g3069631114%_)
                                             _%tgt30566%_
                                             _%g3069531112%_
                                             _%K30569%_
                                             _%E30570%_)))
                                         (_%__kont3891538916%_
                                          (lambda (_%g3070731053%_
                                                   _%g3070831055%_)
                                            (_%generate-class29314%_
                                             (gx#stx-e _%g3070831055%_)
                                             _%tgt30566%_
                                             _%g3070731053%_
                                             _%K30569%_
                                             _%E30570%_)))
                                         (_%__kont3891738918%_
                                          (lambda (_%g3071930950%_)
                                            (let* ((_%g3096430972%_
                                                    (lambda (_%g3096530968%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3096530968%_)))
                                                   (_%g3096330991%_
                                                    (lambda (_%g3096530976%_)
                                                      ((lambda (_%g3096630979%_)
                                                         (cons 'if
                                                               (cons (cons _%g3096630979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%g3057430587%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g3071930950%_
                                                           '()))
                                               '())))
                             (cons _%K30569%_ (cons _%E30570%_ '())))))
               _%g3096530976%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3096330991%_
                                               (let ((_%e30995%_
                                                      (gx#stx-e
                                                       _%g3071930950%_)))
                                                 (if (or (symbol? _%e30995%_)
                                                         (keyword? _%e30995%_)
                                                         (immediate?
                                                          _%e30995%_))
                                                     '##eq?
                                                     (if (number? _%e30995%_)
                                                         'eqv?
                                                         'equal?)))))))
                                         (_%__kont3891938920%_
                                          (lambda (_%g3072730870%_
                                                   _%g3072830872%_)
                                            (let* ((_%g3088830896%_
                                                    (lambda (_%g3088930892%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3088930892%_)))
                                                   (_%g3088730915%_
                                                    (lambda (_%g3088930900%_)
                                                      ((lambda (_%g3089030903%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%g3089030903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%g3072830872%_
                                                     (cons _%g3057430587%_
                                                           '()))
                                               '()))
                                   '())
                             (cons (_%generate129306%_
                                    _%g3089030903%_
                                    _%g3072730870%_
                                    _%K30569%_
                                    _%E30570%_)
                                   '()))))
               _%g3088930900%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3088730915%_
                                               (gx#genident 'e)))))
                                         (_%__kont3892138922%_
                                          (lambda (_%g3073930812%_)
                                            (cons 'let
                                                  (cons (cons (cons _%g3073930812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g3057430587%_ '()))
                      '())
                (cons _%K30569%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3892338924%_
                                          (lambda () _%K30569%_)))
                                     (if (gx#stx-pair? _%__stx3889038891%_)
                                         (let ((_%e3061832054%_
                                                (gx#syntax-e
                                                 _%__stx3889038891%_)))
                                           (let ((_%tl3062032061%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e3061832054%_)))
                                                 (_%hd3061932058%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e3061832054%_))))
                                             (if (gx#stx-datum?
                                                  _%hd3061932058%_)
                                                 (let ((_%e3062132064%_
                                                        (gx#stx-e
                                                         _%hd3061932058%_)))
                                                   (if (equal? _%e3062132064%_
                                                               '?:)
                                                       (if (gx#stx-pair?
                                                            _%tl3062032061%_)
                                                           (let ((_%e3062232068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3062032061%_)))
                     (let ((_%tl3062432075%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3062232068%_)))
                           (_%hd3062332072%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3062232068%_))))
                       (_%__kont3889338894%_
                        _%tl3062432075%_
                        _%hd3062332072%_)))
                   (let () (declare (not safe)) (_%g3061430756%_)))
               (if (equal? _%e3062132064%_ 'and:)
                   (_%__kont3889538896%_ _%tl3062032061%_)
                   (if (equal? _%e3062132064%_ 'or:)
                       (_%__kont3889738898%_ _%tl3062032061%_)
                       (if (equal? _%e3062132064%_ 'not:)
                           (if (gx#stx-pair? _%tl3062032061%_)
                               (let ((_%e3064031837%_
                                      (gx#syntax-e _%tl3062032061%_)))
                                 (let ((_%tl3064231844%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3064031837%_)))
                                       (_%hd3064131841%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3064031837%_))))
                                   (if (gx#stx-null? _%tl3064231844%_)
                                       (_%__kont3889938900%_ _%hd3064131841%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3061430756%_)))))
                               (let () (declare (not safe)) (_%g3061430756%_)))
                           (if (equal? _%e3062132064%_ 'cons:)
                               (if (gx#stx-pair? _%tl3062032061%_)
                                   (let ((_%e3064931701%_
                                          (gx#syntax-e _%tl3062032061%_)))
                                     (let ((_%tl3065131708%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3064931701%_)))
                                           (_%hd3065031705%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3064931701%_))))
                                       (if (gx#stx-pair? _%tl3065131708%_)
                                           (let ((_%e3065231711%_
                                                  (gx#syntax-e
                                                   _%tl3065131708%_)))
                                             (let ((_%tl3065431718%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3065231711%_)))
                                                   (_%hd3065331715%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3065231711%_))))
                                               (if (gx#stx-null?
                                                    _%tl3065431718%_)
                                                   (_%__kont3890138902%_
                                                    _%hd3065331715%_
                                                    _%hd3065031705%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3061430756%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3061430756%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3061430756%_)))
                               (if (equal? _%e3062132064%_ 'null:)
                                   (if (gx#stx-null? _%tl3062032061%_)
                                       (_%__kont3890338904%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3061430756%_)))
                                   (if (equal? _%e3062132064%_ 'splice:)
                                       (if (gx#stx-pair? _%tl3062032061%_)
                                           (let ((_%e3066531617%_
                                                  (gx#syntax-e
                                                   _%tl3062032061%_)))
                                             (let ((_%tl3066731624%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3066531617%_)))
                                                   (_%hd3066631621%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3066531617%_))))
                                               (if (gx#stx-pair?
                                                    _%tl3066731624%_)
                                                   (let ((_%e3066831627%_
                                                          (gx#syntax-e
                                                           _%tl3066731624%_)))
                                                     (let ((_%tl3067031634%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3066831627%_)))
                                                           (_%hd3066931631%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3066831627%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3067031634%_)
                                                           (_%__kont3890538906%_
                                                            _%hd3066931631%_
                                                            _%hd3066631621%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3061430756%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3061430756%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3061430756%_)))
                                       (if (equal? _%e3062132064%_ 'box:)
                                           (if (gx#stx-pair? _%tl3062032061%_)
                                               (let ((_%e3067631541%_
                                                      (gx#syntax-e
                                                       _%tl3062032061%_)))
                                                 (let ((_%tl3067831548%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3067631541%_)))
                                                       (_%hd3067731545%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3067631541%_))))
                                                   (if (gx#stx-null?
                                                        _%tl3067831548%_)
                                                       (_%__kont3890738908%_
                                                        _%hd3067731545%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g3061430756%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3061430756%_)))
                                           (if (equal? _%e3062132064%_
                                                       'values:)
                                               (if (gx#stx-pair?
                                                    _%tl3062032061%_)
                                                   (let ((_%e3068431346%_
                                                          (gx#syntax-e
                                                           _%tl3062032061%_)))
                                                     (let ((_%tl3068631353%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3068431346%_)))
                                                           (_%hd3068531350%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3068431346%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3068631353%_)
                                                           (_%__kont3890938910%_
                                                            _%hd3068531350%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3061430756%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3061430756%_)))
                                               (if (equal? _%e3062132064%_
                                                           'vector:)
                                                   (if (gx#stx-pair?
                                                        _%tl3062032061%_)
                                                       (let ((_%e3069231151%_
                                                              (gx#syntax-e
                                                               _%tl3062032061%_)))
                                                         (let ((_%tl3069431158%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3069231151%_)))
                       (_%hd3069331155%_
                        (let () (declare (not safe)) (##car _%e3069231151%_))))
                   (if (gx#stx-null? _%tl3069431158%_)
                       (_%__kont3891138912%_ _%hd3069331155%_)
                       (let () (declare (not safe)) (_%g3061430756%_)))))
               (let () (declare (not safe)) (_%g3061430756%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (equal? _%e3062132064%_
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _%tl3062032061%_)
                                                           (let ((_%e3070131092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3062032061%_)))
                     (let ((_%tl3070331099%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3070131092%_)))
                           (_%hd3070231096%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3070131092%_))))
                       (if (gx#stx-pair? _%tl3070331099%_)
                           (let ((_%e3070431102%_
                                  (gx#syntax-e _%tl3070331099%_)))
                             (let ((_%tl3070631109%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3070431102%_)))
                                   (_%hd3070531106%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3070431102%_))))
                               (if (gx#stx-null? _%tl3070631109%_)
                                   (_%__kont3891338914%_
                                    _%hd3070531106%_
                                    _%hd3070231096%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3061430756%_)))))
                           (let () (declare (not safe)) (_%g3061430756%_)))))
                   (let () (declare (not safe)) (_%g3061430756%_)))
               (if (equal? _%e3062132064%_ 'class:)
                   (if (gx#stx-pair? _%tl3062032061%_)
                       (let ((_%e3071331033%_ (gx#syntax-e _%tl3062032061%_)))
                         (let ((_%tl3071531040%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3071331033%_)))
                               (_%hd3071431037%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3071331033%_))))
                           (if (gx#stx-pair? _%tl3071531040%_)
                               (let ((_%e3071631043%_
                                      (gx#syntax-e _%tl3071531040%_)))
                                 (let ((_%tl3071831050%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3071631043%_)))
                                       (_%hd3071731047%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3071631043%_))))
                                   (if (gx#stx-null? _%tl3071831050%_)
                                       (_%__kont3891538916%_
                                        _%hd3071731047%_
                                        _%hd3071431037%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3061430756%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g3061430756%_)))))
                       (let () (declare (not safe)) (_%g3061430756%_)))
                   (if (equal? _%e3062132064%_ 'datum:)
                       (if (gx#stx-pair? _%tl3062032061%_)
                           (let ((_%e3072430940%_
                                  (gx#syntax-e _%tl3062032061%_)))
                             (let ((_%tl3072630947%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3072430940%_)))
                                   (_%hd3072530944%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3072430940%_))))
                               (if (gx#stx-null? _%tl3072630947%_)
                                   (_%__kont3891738918%_ _%hd3072530944%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3061430756%_)))))
                           (let () (declare (not safe)) (_%g3061430756%_)))
                       (if (equal? _%e3062132064%_ 'apply:)
                           (if (gx#stx-pair? _%tl3062032061%_)
                               (let ((_%e3073330850%_
                                      (gx#syntax-e _%tl3062032061%_)))
                                 (let ((_%tl3073530857%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3073330850%_)))
                                       (_%hd3073430854%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3073330850%_))))
                                   (if (gx#stx-pair? _%tl3073530857%_)
                                       (let ((_%e3073630860%_
                                              (gx#syntax-e _%tl3073530857%_)))
                                         (let ((_%tl3073830867%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3073630860%_)))
                                               (_%hd3073730864%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3073630860%_))))
                                           (if (gx#stx-null? _%tl3073830867%_)
                                               (_%__kont3891938920%_
                                                _%hd3073730864%_
                                                _%hd3073430854%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3061430756%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g3061430756%_)))))
                               (let () (declare (not safe)) (_%g3061430756%_)))
                           (if (equal? _%e3062132064%_ 'var:)
                               (if (gx#stx-pair? _%tl3062032061%_)
                                   (let ((_%e3074430802%_
                                          (gx#syntax-e _%tl3062032061%_)))
                                     (let ((_%tl3074630809%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3074430802%_)))
                                           (_%hd3074530806%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3074430802%_))))
                                       (if (gx#stx-null? _%tl3074630809%_)
                                           (_%__kont3892138922%_
                                            _%hd3074530806%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g3061430756%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3061430756%_)))
                               (if (equal? _%e3062132064%_ 'any:)
                                   (if (gx#stx-null? _%tl3062032061%_)
                                       (_%__kont3892338924%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3061430756%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3061430756%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3061430756%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3061430756%_))))))
                               _%g3057330584%_))))
                      (_%g3057132363%_ _%tgt30566%_))))
                 (_%generate-splice29308%_
                  (lambda (_%tgt29944%_
                           _%hd29946%_
                           _%rest29947%_
                           _%K29948%_
                           _%E29949%_)
                    (let* ((_%g2995129968%_
                            (lambda (_%g2995229964%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2995229964%_)))
                           (_%g2995030562%_
                            (lambda (_%g2995229972%_)
                              (if (gx#stx-pair/null? _%g2995229972%_)
                                  (let ((_g40045_
                                         (gx#syntax-split-splice
                                          _%g2995229972%_
                                          '0)))
                                    (begin
                                      (let ((_g40046_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g40045_)
                                                   (##values-length _g40045_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g40046_ 2)))
                                            (error "Context expects 2 values"
                                                   _g40046_)))
                                      (let ((_%target2995429975%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40045_ 0)))
                                            (_%tl2995629978%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40045_ 1))))
                                        (if (gx#stx-null? _%tl2995629978%_)
                                            (letrec ((_%loop2995729981%_
                                                      (lambda (_%hd2995529985%_
                                                               _%var2996129988%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2995529985%_)
                                                            (let ((_%e2995829990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2995529985%_)))
                      (let ((_%lp-hd2995929994%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2995829990%_)))
                            (_%lp-tl2996029997%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2995829990%_))))
                        (_%loop2995729981%_
                         _%lp-tl2996029997%_
                         (cons _%lp-hd2995929994%_ _%var2996129988%_))))
                    (let ((_%var2996230000%_ (reverse _%var2996129988%_)))
                      ((lambda (_%g2995330003%_)
                         (let* ((_%g3001930036%_
                                 (lambda (_%g3002030032%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g3002030032%_)))
                                (_%g3001830550%_
                                 (lambda (_%g3002030040%_)
                                   (if (gx#stx-pair/null? _%g3002030040%_)
                                       (let ((_g40047_
                                              (gx#syntax-split-splice
                                               _%g3002030040%_
                                               '0)))
                                         (begin
                                           (let ((_g40048_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g40047_)
                                                        (##values-length
                                                         _g40047_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g40048_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g40048_)))
                                           (let ((_%target3002230043%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g40047_ 0)))
                                                 (_%tl3002430046%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g40047_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl3002430046%_)
                                                 (letrec ((_%loop3002530049%_
                                                           (lambda (_%hd3002330053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%var-r3002930056%_)
                     (if (gx#stx-pair? _%hd3002330053%_)
                         (let ((_%e3002630058%_
                                (gx#syntax-e _%hd3002330053%_)))
                           (let ((_%lp-hd3002730062%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3002630058%_)))
                                 (_%lp-tl3002830065%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3002630058%_))))
                             (_%loop3002530049%_
                              _%lp-tl3002830065%_
                              (cons _%lp-hd3002730062%_ _%var-r3002930056%_))))
                         (let ((_%var-r3003030068%_
                                (reverse _%var-r3002930056%_)))
                           ((lambda (_%g3002130071%_)
                              (let* ((_%g3008830105%_
                                      (lambda (_%g3008930101%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g3008930101%_)))
                                     (_%g3008730538%_
                                      (lambda (_%g3008930109%_)
                                        (if (gx#stx-pair/null? _%g3008930109%_)
                                            (let ((_g40049_
                                                   (gx#syntax-split-splice
                                                    _%g3008930109%_
                                                    '0)))
                                              (begin
                                                (let ((_g40050_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g40049_)
                                                             (##values-length
                                                              _g40049_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g40050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g40050_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target3009130112%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40049_
                                                          0)))
                                                      (_%tl3009330115%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40049_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl3009330115%_)
                                                      (letrec ((_%loop3009430118%_
                                                                (lambda (_%hd3009230122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%init3009830125%_)
                          (if (gx#stx-pair? _%hd3009230122%_)
                              (let ((_%e3009530127%_
                                     (gx#syntax-e _%hd3009230122%_)))
                                (let ((_%lp-hd3009630131%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3009530127%_)))
                                      (_%lp-tl3009730134%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3009530127%_))))
                                  (_%loop3009430118%_
                                   _%lp-tl3009730134%_
                                   (cons _%lp-hd3009630131%_
                                         _%init3009830125%_))))
                              (let ((_%init3009930137%_
                                     (reverse _%init3009830125%_)))
                                ((lambda (_%g3009030140%_)
                                   (let* ((_%g3015730165%_
                                           (lambda (_%g3015830161%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g3015830161%_)))
                                          (_%g3015630534%_
                                           (lambda (_%g3015830169%_)
                                             ((lambda (_%g3015930172%_)
                                                (let* ((_%g3018530193%_
                                                        (lambda (_%g3018630189%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g3018630189%_)))
                                                       (_%g3018430530%_
                                                        (lambda (_%g3018630197%_)
                                                          ((lambda (_%g3018730200%_)
                                                             (let* ((_%g3021330221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g3021430217%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g3021430217%_)))
                            (_%g3021230526%_
                             (lambda (_%g3021430225%_)
                               ((lambda (_%g3021530228%_)
                                  (let* ((_%g3024130249%_
                                          (lambda (_%g3024230245%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3024230245%_)))
                                         (_%g3024030522%_
                                          (lambda (_%g3024230253%_)
                                            ((lambda (_%g3024330256%_)
                                               (let* ((_%g3026930277%_
                                                       (lambda (_%g3027030273%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g3027030273%_)))
                                                      (_%g3026830518%_
                                                       (lambda (_%g3027030281%_)
                                                         ((lambda (_%g3027130284%_)
                                                            (let* ((_%g3029730305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3029830301%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3029830301%_)))
                           (_%g3029630514%_
                            (lambda (_%g3029830309%_)
                              ((lambda (_%g3029930312%_)
                                 (let* ((_%g3032530333%_
                                         (lambda (_%g3032630329%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3032630329%_)))
                                        (_%g3032430510%_
                                         (lambda (_%g3032630337%_)
                                           ((lambda (_%g3032730340%_)
                                              (let* ((_%g3035330361%_
                                                      (lambda (_%g3035430357%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3035430357%_)))
                                                     (_%g3035230495%_
                                                      (lambda (_%g3035430365%_)
                                                        ((lambda (_%g3035530368%_)
                                                           (let* ((_%g3038130389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g3038230385%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3038230385%_)))
                          (_%g3038030483%_
                           (lambda (_%g3038230393%_)
                             ((lambda (_%g3038330396%_)
                                (let* ((_%g3040930417%_
                                        (lambda (_%g3041030413%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3041030413%_)))
                                       (_%g3040830479%_
                                        (lambda (_%g3041030421%_)
                                          ((lambda (_%g3041130424%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%g3018730200%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%g3029930312%_
                                                     (foldr (lambda (_%g3043830449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g3043930452%_)
                      (cons _%g3043830449%_ _%g3043930452%_))
                    '()
                    _%g2995330003%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%g3032730340%_ '())))
                                   '()))
                       (cons (cons _%g3024330256%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%g3027130284%_
                                                           (cons _%g3029930312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3044030455%_ _%g3044130458%_)
                                  (cons _%g3044030455%_ _%g3044130458%_))
                                '()
                                _%g3002130071%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%g3041130424%_
                                                           '())))
                                         '()))
                             (cons (cons _%g3021530228%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%g3029930312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3044230461%_ _%g3044330464%_)
                                  (cons _%g3044230461%_ _%g3044330464%_))
                                '()
                                _%g3002130071%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%g3029930312%_ '()))
                                     (cons (cons _%g3024330256%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%g3029930312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%g3029930312%_
                     (foldr (lambda (_%g3044430467%_ _%g3044530470%_)
                              (cons _%g3044430467%_ _%g3044530470%_))
                            '()
                            _%g3002130071%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%g3038330396%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%g3021530228%_
                             (cons _%g3015930172%_
                                   (foldr (lambda (_%g3044630473%_
                                                   _%g3044730476%_)
                                            (cons _%g3044630473%_
                                                  _%g3044730476%_))
                                          '()
                                          _%g3009030140%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3041030421%_))))
                                  (_%g3040830479%_
                                   (_%generate129306%_
                                    _%g3027130284%_
                                    _%hd29946%_
                                    _%g3035530368%_
                                    _%g3038330396%_))))
                              _%g3038230393%_))))
                     (_%g3038030483%_
                      (cons _%g3018730200%_
                            (cons _%g3029930312%_
                                  (foldr (lambda (_%g3048630489%_
                                                  _%g3048730492%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%g3048630489%_
                                                             '()))
                                                 _%g3048730492%_))
                                         '()
                                         _%g3002130071%_))))))
                 _%g3035430365%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3035230495%_
                                                 (cons _%g3021530228%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%g3029930312%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets
                        _%g3002130071%_
                        _%g2995330003%_)
                       (foldr (lambda (_%g3049830502%_
                                       _%g3049930505%_
                                       _%g3050030507%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%g3049930505%_
                                                  (cons _%g3049830502%_ '())))
                                      _%g3050030507%_))
                              '()
                              _%g3002130071%_
                              _%g2995330003%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g3032630337%_))))
                                   (_%g3032430510%_
                                    (_%generate129306%_
                                     _%g3029930312%_
                                     _%rest29947%_
                                     _%K29948%_
                                     _%E29949%_))))
                               _%g3029830309%_))))
                      (_%g3029630514%_ (gx#genident 'rest))))
                  _%g3027030281%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3026830518%_
                                                  (gx#genident 'hd))))
                                             _%g3024230253%_))))
                                    (_%g3024030522%_
                                     (gx#genident 'splice-try))))
                                _%g3021430225%_))))
                       (_%g3021230526%_ (gx#genident 'splice-loop))))
                   _%g3018630197%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g3018430530%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%g3015830169%_))))
                                     (_%g3015630534%_ _%tgt29944%_)))
                                 _%init3009930137%_))))))
                (_%loop3009430118%_ _%target3009130112%_ '()))
              (_%g3008830105%_ _%g3008930109%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g3008830105%_
                                             _%g3008930109%_)))))
                                (_%g3008730538%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%g3054130544%_
                                                   _%g3054230547%_)
                                            (cons _%g3054130544%_
                                                  _%g3054230547%_))
                                          '()
                                          _%g2995330003%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%var-r3003030068%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop3002530049%_
                                                    _%target3002230043%_
                                                    '()))
                                                 (_%g3001930036%_
                                                  _%g3002030040%_)))))
                                       (_%g3001930036%_ _%g3002030040%_)))))
                           (_%g3001830550%_
                            (gx#gentemps
                             (foldr (lambda (_%g3055330556%_ _%g3055430559%_)
                                      (cons _%g3055330556%_ _%g3055430559%_))
                                    '()
                                    _%g2995330003%_)))))
                       _%var2996230000%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2995729981%_
                                               _%target2995429975%_
                                               '()))
                                            (_%g2995129968%_
                                             _%g2995229972%_)))))
                                  (_%g2995129968%_ _%g2995229972%_)))))
                      (_%g2995030562%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd29946%_)))))
                 (_%generate-simple-vector29309%_
                  (lambda (_%tgt29767%_
                           _%body29769%_
                           _%start29770%_
                           _%ref29771%_
                           _%K29772%_
                           _%E29773%_)
                    (let _%recur29775%_ ((_%rest29778%_ _%body29769%_)
                                         (_%off29780%_ _%start29770%_))
                      (let* ((_%__stx3924839249%_ _%rest29778%_)
                             (_%g2978329795%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3924839249%_))))
                        (let ((_%__kont3925139252%_
                               (lambda (_%g2978529823%_ _%g2978629825%_)
                                 (let* ((_%g2984029863%_
                                         (lambda (_%g2984129859%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2984129859%_)))
                                        (_%g2983929936%_
                                         (lambda (_%g2984129867%_)
                                           (if (gx#stx-pair? _%g2984129867%_)
                                               (let ((_%e2984629870%_
                                                      (gx#syntax-e
                                                       _%g2984129867%_)))
                                                 (let ((_%hd2984729874%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2984629870%_)))
                                                       (_%tl2984829877%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2984629870%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2984829877%_)
                                                       (let ((_%e2984929880%_
                                                              (gx#syntax-e
                                                               _%tl2984829877%_)))
                                                         (let ((_%hd2985029884%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2984929880%_)))
                       (_%tl2985129887%_
                        (let () (declare (not safe)) (##cdr _%e2984929880%_))))
                   (if (gx#stx-pair? _%tl2985129887%_)
                       (let ((_%e2985229890%_ (gx#syntax-e _%tl2985129887%_)))
                         (let ((_%hd2985329894%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e2985229890%_)))
                               (_%tl2985429897%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e2985229890%_))))
                           (if (gx#stx-pair? _%tl2985429897%_)
                               (let ((_%e2985529900%_
                                      (gx#syntax-e _%tl2985429897%_)))
                                 (let ((_%hd2985629904%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2985529900%_)))
                                       (_%tl2985729907%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2985529900%_))))
                                   (if (gx#stx-null? _%tl2985729907%_)
                                       ((lambda (_%g2984229910%_
                                                 _%g2984329912%_
                                                 _%g2984429913%_
                                                 _%g2984529914%_)
                                          (cons 'let
                                                (cons (cons (cons _%g2984529914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _%g2984229910%_
                                      (cons _%g2984429913%_
                                            (cons _%g2984329912%_ '())))
                                '()))
                    '())
              (cons (_%generate129306%_
                     _%g2984529914%_
                     _%g2978629825%_
                     (_%recur29775%_ _%g2978529823%_ (fx1+ _%off29780%_))
                     _%E29773%_)
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%hd2985629904%_
                                        _%hd2985329894%_
                                        _%hd2985029884%_
                                        _%hd2984729874%_)
                                       (_%g2984029863%_ _%g2984129867%_))))
                               (_%g2984029863%_ _%g2984129867%_))))
                       (_%g2984029863%_ _%g2984129867%_))))
               (_%g2984029863%_ _%g2984129867%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2984029863%_
                                                _%g2984129867%_)))))
                                   (_%g2983929936%_
                                    (list (gx#genident 'e)
                                          _%tgt29767%_
                                          _%off29780%_
                                          _%ref29771%_)))))
                              (_%__kont3925339254%_ (lambda () _%K29772%_)))
                          (if (gx#stx-pair? _%__stx3924839249%_)
                              (let ((_%e2978729813%_
                                     (gx#syntax-e _%__stx3924839249%_)))
                                (let ((_%tl2978929820%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2978729813%_)))
                                      (_%hd2978829817%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2978729813%_))))
                                  (_%__kont3925139252%_
                                   _%tl2978929820%_
                                   _%hd2978829817%_)))
                              (_%__kont3925339254%_)))))))
                 (_%generate-list-vector29310%_
                  (lambda (_%tgt29659%_
                           _%body29661%_
                           _%->list29662%_
                           _%K29663%_
                           _%E29664%_)
                    (let* ((_%g2966629674%_
                            (lambda (_%g2966729670%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2966729670%_)))
                           (_%g2966529763%_
                            (lambda (_%g2966729678%_)
                              ((lambda (_%g2966829681%_)
                                 (let* ((_%g2969329701%_
                                         (lambda (_%g2969429697%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2969429697%_)))
                                        (_%g2969229759%_
                                         (lambda (_%g2969429705%_)
                                           ((lambda (_%g2969529708%_)
                                              (let* ((_%g2972129729%_
                                                      (lambda (_%g2972229725%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2972229725%_)))
                                                     (_%g2972029751%_
                                                      (lambda (_%g2972229733%_)
                                                        ((lambda (_%g2972329736%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%g2966829681%_
                                           (cons _%g2972329736%_ '()))
                                     '())
                               (cons (_%generate129306%_
                                      _%g2966829681%_
                                      _%body29661%_
                                      _%K29663%_
                                      _%E29664%_)
                                     '()))))
                 _%g2972229733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2972029751%_
                                                 (let ((_%$e29755%_
                                                        _%->list29662%_))
                                                   (if (eq? 'values->list
                                                            _%$e29755%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%g2969529708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e29755%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%g2969529708%_ '()))
                   (if (eq? 'struct->list _%$e29755%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax '#f 'struct->list)
                                         (cons _%g2969529708%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx29299%_
                        _%->list29662%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2969429705%_))))
                                   (_%g2969229759%_ _%tgt29659%_)))
                               _%g2966729678%_))))
                      (_%g2966529763%_ (gx#genident 'e)))))
                 (_%generate-struct29311%_
                  (lambda (_%info29530%_
                           _%tgt29532%_
                           _%body29533%_
                           _%K29534%_
                           _%E29535%_)
                    (let* ((_%__stx3926439265%_ _%body29533%_)
                           (_%g2953829561%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3926439265%_))))
                      (let ((_%__kont3926739268%_
                             (lambda (_%g2954029638%_)
                               (let ((_%fields29652%_
                                      (_%struct-field-accessors29313%_
                                       _%info29530%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj40018
                                                          _%info29530%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj40018
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj40018
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj40018
                                                          'predicate)))
                                                   (cons _%tgt29532%_ '()))
                                             (cons (_%generate-simple-struct-body29312%_
                                                    _%info29530%_
                                                    _%tgt29532%_
                                                    _%g2954029638%_
                                                    _%K29534%_
                                                    _%E29535%_)
                                                   (cons _%E29535%_ '())))))))
                            (_%__kont3926939270%_
                             (lambda (_%g2954829592%_)
                               (cons 'if
                                     (cons (cons (let ((__obj40019
                                                        _%info29530%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj40019
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj40019
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj40019
                                                        'predicate)))
                                                 (cons _%tgt29532%_ '()))
                                           (cons (_%generate-list-vector29310%_
                                                  _%tgt29532%_
                                                  _%g2954829592%_
                                                  'struct->list
                                                  _%K29534%_
                                                  _%E29535%_)
                                                 (cons _%E29535%_ '())))))))
                        (if (gx#stx-pair? _%__stx3926439265%_)
                            (let ((_%e2954129614%_
                                   (gx#syntax-e _%__stx3926439265%_)))
                              (let ((_%tl2954329621%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2954129614%_)))
                                    (_%hd2954229618%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2954129614%_))))
                                (if (gx#stx-datum? _%hd2954229618%_)
                                    (let ((_%e2954429624%_
                                           (gx#stx-e _%hd2954229618%_)))
                                      (if (equal? _%e2954429624%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2954329621%_)
                                              (let ((_%e2954529628%_
                                                     (gx#syntax-e
                                                      _%tl2954329621%_)))
                                                (let ((_%tl2954729635%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2954529628%_)))
                                                      (_%hd2954629632%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2954529628%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2954729635%_)
                                                      (_%__kont3926739268%_
                                                       _%hd2954629632%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2953829561%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2953829561%_)))
                                          (if (equal? _%e2954429624%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2954329621%_)
                                                  (let ((_%e2955329582%_
                                                         (gx#syntax-e
                                                          _%tl2954329621%_)))
                                                    (let ((_%tl2955529589%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2955329582%_)))
                                                          (_%hd2955429586%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2955329582%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2955529589%_)
                                                          (_%__kont3926939270%_
                                                           _%hd2955429586%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2953829561%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2953829561%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2953829561%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2953829561%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2953829561%_)))))))
                 (_%generate-simple-struct-body29312%_
                  (lambda (_%info29450%_
                           _%tgt29452%_
                           _%body29453%_
                           _%K29454%_
                           _%E29455%_)
                    (let _%recur29457%_ ((_%rest29460%_ _%body29453%_)
                                         (_%fields29462%_
                                          (_%struct-field-accessors29313%_
                                           _%info29450%_)))
                      (let* ((_%__stx3931439315%_ _%rest29460%_)
                             (_%g2946529477%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3931439315%_))))
                        (let ((_%__kont3931739318%_
                               (lambda (_%g2946729505%_ _%g2946829507%_)
                                 (if (null? _%fields29462%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29299%_
                                      _%info29450%_
                                      (let ((__obj40020 _%info29450%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj40020
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj40020
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj40020
                                             'name))))
                                     (let ((_%$tgt29522%_ (gx#genident 'e))
                                           (_%getf29524%_
                                            (car _%fields29462%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29522%_
                                                               (cons (cons _%getf29524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29452%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129306%_
                                                          _%$tgt29522%_
                                                          _%g2946829507%_
                                                          (_%recur29457%_
                                                           _%g2946729505%_
                                                           (cdr _%fields29462%_))
                                                          _%E29455%_)
                                                         '())))))))
                              (_%__kont3931939320%_ (lambda () _%K29454%_)))
                          (if (gx#stx-pair? _%__stx3931439315%_)
                              (let ((_%e2946929495%_
                                     (gx#syntax-e _%__stx3931439315%_)))
                                (let ((_%tl2947129502%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2946929495%_)))
                                      (_%hd2947029499%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2946929495%_))))
                                  (_%__kont3931739318%_
                                   _%tl2947129502%_
                                   _%hd2947029499%_)))
                              (_%__kont3931939320%_)))))))
                 (_%struct-field-accessors29313%_
                  (lambda (_%info29431%_)
                    (let _%recur29434%_ ((_%next29437%_
                                          (cons _%info29431%_ '())))
                      (if (null? _%next29437%_)
                          '()
                          (let ((_%ti29440%_ (car _%next29437%_)))
                            (let ((__tmp40052
                                   (_%recur29434%_
                                    (map gx#syntax-local-value
                                         (let ((__obj40021 _%ti29440%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj40021
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj40021
                                                  '4
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj40021
                                                'super))))))
                                  (__tmp40051
                                   (map (lambda (_%slot29443%_)
                                          (let ((_%$e29446%_
                                                 (agetq _%slot29443%_
                                                        (let ((__obj40022
                                                               _%ti29440%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj40022
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj40022 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj40022
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29446%_
                                                _%$e29446%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29299%_
                                                 _%info29431%_
                                                 _%slot29443%_))))
                                        (let ((__obj40023 _%ti29440%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj40023
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj40023
                                                 '5
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj40023
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp40052 __tmp40051)))))))
                 (_%generate-class29314%_
                  (lambda (_%info29424%_
                           _%tgt29426%_
                           _%body29427%_
                           _%K29428%_
                           _%E29429%_)
                    (cons 'if
                          (cons (cons (let ((__obj40024 _%info29424%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj40024
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj40024
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj40024
                                             'predicate)))
                                      (cons _%tgt29426%_ '()))
                                (cons (_%generate-class-body29315%_
                                       _%info29424%_
                                       _%tgt29426%_
                                       _%body29427%_
                                       _%K29428%_
                                       _%E29429%_)
                                      (cons _%E29429%_ '()))))))
                 (_%generate-class-body29315%_
                  (lambda (_%info29317%_
                           _%tgt29319%_
                           _%body29320%_
                           _%K29321%_
                           _%E29322%_)
                    (let _%recur29324%_ ((_%rest29327%_ _%body29320%_))
                      (let* ((_%__stx3933039331%_ _%rest29327%_)
                             (_%g2933129347%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3933039331%_))))
                        (let ((_%__kont3933339334%_
                               (lambda (_%g2933329385%_
                                        _%g2933429387%_
                                        _%g2933529388%_)
                                 (let ((_%$e29408%_
                                        (agetq (let ((__tmp40053
                                                      (keyword->string
                                                       (gx#stx-e
                                                        _%g2933529388%_))))
                                                 (declare (not safe))
                                                 (##string->symbol __tmp40053))
                                               (let ((__obj40025
                                                      _%info29317%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj40025
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj40025
                                                        '17
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj40025
                                                      'unchecked-accessors))))))
                                   (if _%$e29408%_
                                       ((lambda (_%getf29412%_)
                                          (let ((_%$tgt29415%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt29415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf29412%_ (cons _%tgt29319%_ '()))
                                  '()))
                      '())
                (cons (_%generate129306%_
                       _%$tgt29415%_
                       _%g2933429387%_
                       (_%recur29324%_ _%g2933329385%_)
                       _%E29322%_)
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e29408%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx29299%_
                                        _%info29317%_
                                        _%g2933529388%_)))))
                              (_%__kont3933539336%_ (lambda () _%K29321%_)))
                          (if (gx#stx-pair? _%__stx3933039331%_)
                              (let ((_%e2933629365%_
                                     (gx#syntax-e _%__stx3933039331%_)))
                                (let ((_%tl2933829372%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2933629365%_)))
                                      (_%hd2933729369%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2933629365%_))))
                                  (if (gx#stx-pair? _%tl2933829372%_)
                                      (let ((_%e2933929375%_
                                             (gx#syntax-e _%tl2933829372%_)))
                                        (let ((_%tl2934129382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2933929375%_)))
                                              (_%hd2934029379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2933929375%_))))
                                          (_%__kont3933339334%_
                                           _%tl2934129382%_
                                           _%hd2934029379%_
                                           _%hd2933729369%_)))
                                      (_%__kont3933539336%_))))
                              (_%__kont3933539336%_))))))))
          (_%generate129306%_
           _%tgt29301%_
           _%ptree29302%_
           _%K29303%_
           _%E29304%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx28118%_ _%tgt-lst28120%_ _%clauses28121%_)
        (letrec ((_%parse-body28123%_
                  (lambda (_%hd-len29121%_)
                    (let _%lp29124%_ ((_%rest29127%_ _%clauses28121%_)
                                      (_%r29129%_ '()))
                      (let* ((_%__stx3938039381%_ _%rest29127%_)
                             (_%g2913229144%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3938039381%_))))
                        (let ((_%__kont3938339384%_
                               (lambda (_%g2913429172%_ _%g2913529174%_)
                                 (let* ((_%__stx3935239353%_ _%g2913529174%_)
                                        (_%g2919129207%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3935239353%_))))
                                   (let ((_%__kont3935539356%_
                                          (lambda (_%g2919329276%_)
                                            (if (gx#stx-null? _%g2913429172%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%g2919329276%_)
                                 (let ((_%$e29287%_
                                        (gx#stx-source _%g2913529174%_)))
                                   (if _%$e29287%_
                                       _%$e29287%_
                                       (gx#stx-source _%stx28118%_))))
                                '())))
              _%r29129%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx28118%_
                                                 _%g2913529174%_))))
                                         (_%__kont3935739358%_
                                          (lambda (_%g2919729235%_
                                                   _%g2919829237%_)
                                            (_%lp29124%_
                                             _%g2913429172%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g2924929251%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g2924929251%_
                           _%stx28118%_))
                        _%g2919829237%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin)
                                    _%g2919729235%_)
                              (let ((_%$e29255%_
                                     (gx#stx-source _%g2913529174%_)))
                                (if _%$e29255%_
                                    _%$e29255%_
                                    (gx#stx-source _%stx28118%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r29129%_))))
                                         (_%__kont3935939360%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx28118%_
                                             _%g2913529174%_))))
                                     (let* ((_%__match3937739378%_
                                             (lambda (_%e2919929225%_
                                                      _%hd2920029229%_
                                                      _%tl2920129232%_)
                                               (let ((_%g2919729235%_
                                                      _%tl2920129232%_)
                                                     (_%g2919829237%_
                                                      _%hd2920029229%_))
                                                 (if (and (gx#stx-list?
                                                           _%g2919829237%_)
                                                          (fx= (gx#stx-length
                                                                _%g2919829237%_)
                                                               _%hd-len29121%_)
                                                          (gx#stx-list?
                                                           _%g2919729235%_)
                                                          (not (gx#stx-null?
                                                                _%g2919729235%_)))
                                                     (_%__kont3935739358%_
                                                      _%g2919729235%_
                                                      _%g2919829237%_)
                                                     (_%__kont3935939360%_)))))
                                            (_%__match3937139372%_
                                             (lambda (_%e2919429266%_
                                                      _%hd2919529270%_
                                                      _%tl2919629273%_)
                                               (let ((_%g2919329276%_
                                                      _%tl2919629273%_))
                                                 (if (and (gx#stx-list?
                                                           _%g2919329276%_)
                                                          (not (gx#stx-null?
                                                                _%g2919329276%_)))
                                                     (_%__kont3935539356%_
                                                      _%g2919329276%_)
                                                     (_%__match3937739378%_
                                                      _%e2919429266%_
                                                      _%hd2919529270%_
                                                      _%tl2919629273%_))))))
                                       (if (gx#stx-pair? _%__stx3935239353%_)
                                           (let ((_%e2919429266%_
                                                  (gx#syntax-e
                                                   _%__stx3935239353%_)))
                                             (let ((_%tl2919629273%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2919429266%_)))
                                                   (_%hd2919529270%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2919429266%_))))
                                               (if (gx#identifier?
                                                    _%hd2919529270%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g40054_|
                                                        _%hd2919529270%_)
                                                       (_%__match3937139372%_
                                                        _%e2919429266%_
                                                        _%hd2919529270%_
                                                        _%tl2919629273%_)
                                                       (_%__match3937739378%_
                                                        _%e2919429266%_
                                                        _%hd2919529270%_
                                                        _%tl2919629273%_))
                                                   (_%__match3937739378%_
                                                    _%e2919429266%_
                                                    _%hd2919529270%_
                                                    _%tl2919629273%_))))
                                           (_%__kont3935939360%_)))))))
                              (_%__kont3938539386%_ (lambda () _%r29129%_)))
                          (if (gx#stx-pair? _%__stx3938039381%_)
                              (let ((_%e2913629162%_
                                     (gx#syntax-e _%__stx3938039381%_)))
                                (let ((_%tl2913829169%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2913629162%_)))
                                      (_%hd2913729166%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2913629162%_))))
                                  (_%__kont3938339384%_
                                   _%tl2913829169%_
                                   _%hd2913729166%_)))
                              (_%__kont3938539386%_)))))))
                 (_%generate-body28125%_
                  (lambda (_%body28827%_)
                    (let* ((_%g2883028838%_
                            (lambda (_%g2883128834%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2883128834%_)))
                           (_%g2882929117%_
                            (lambda (_%g2883128842%_)
                              ((lambda (_%g2883228845%_)
                                 (let* ((_%g2885728874%_
                                         (lambda (_%g2885828870%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2885828870%_)))
                                        (_%g2885629113%_
                                         (lambda (_%g2885828878%_)
                                           (if (gx#stx-pair/null?
                                                _%g2885828878%_)
                                               (let ((_g40055_
                                                      (gx#syntax-split-splice
                                                       _%g2885828878%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g40056_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g40055_)
                        (##values-length _g40055_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g40056_ 2)))
                 (error "Context expects 2 values" _g40056_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target2886028881%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40055_
                                                             0)))
                                                         (_%tl2886228884%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40055_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl2886228884%_)
                                                         (letrec ((_%loop2886328887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd2886128891%_ _%target2886728894%_)
                             (if (gx#stx-pair? _%hd2886128891%_)
                                 (let ((_%e2886428896%_
                                        (gx#syntax-e _%hd2886128891%_)))
                                   (let ((_%lp-hd2886528900%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2886428896%_)))
                                         (_%lp-tl2886628903%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2886428896%_))))
                                     (_%loop2886328887%_
                                      _%lp-tl2886628903%_
                                      (cons _%lp-hd2886528900%_
                                            _%target2886728894%_))))
                                 (let ((_%target2886828906%_
                                        (reverse _%target2886728894%_)))
                                   ((lambda (_%g2885928909%_)
                                      (let* ((_%g2892628943%_
                                              (lambda (_%g2892728939%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2892728939%_)))
                                             (_%g2892529109%_
                                              (lambda (_%g2892728947%_)
                                                (if (gx#stx-pair/null?
                                                     _%g2892728947%_)
                                                    (let ((_g40057_
                                                           (gx#syntax-split-splice
                                                            _%g2892728947%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g40058_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g40057_)
                             (##values-length _g40057_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g40058_ 2)))
                      (error "Context expects 2 values" _g40058_)))
                (let ((_%target2892928950%_
                       (let () (declare (not safe)) (##values-ref _g40057_ 0)))
                      (_%tl2893128953%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g40057_ 1))))
                  (if (gx#stx-null? _%tl2893128953%_)
                      (letrec ((_%loop2893228956%_
                                (lambda (_%hd2893028960%_
                                         _%fail-diagnostic2893628963%_)
                                  (if (gx#stx-pair? _%hd2893028960%_)
                                      (let ((_%e2893328965%_
                                             (gx#syntax-e _%hd2893028960%_)))
                                        (let ((_%lp-hd2893428969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2893328965%_)))
                                              (_%lp-tl2893528972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2893328965%_))))
                                          (_%loop2893228956%_
                                           _%lp-tl2893528972%_
                                           (cons _%lp-hd2893428969%_
                                                 _%fail-diagnostic2893628963%_))))
                                      (let ((_%fail-diagnostic2893728975%_
                                             (reverse _%fail-diagnostic2893628963%_)))
                                        ((lambda (_%g2892828978%_)
                                           (let* ((_%g2899529003%_
                                                   (lambda (_%g2899628999%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2899628999%_)))
                                                  (_%g2899429089%_
                                                   (lambda (_%g2899629007%_)
                                                     ((lambda (_%g2899729010%_)
                                                        (let* ((_%g2902329031%_
                                                                (lambda (_%g2902429027%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2902429027%_)))
                       (_%g2902229085%_
                        (lambda (_%g2902429035%_)
                          ((lambda (_%g2902529038%_)
                             (let* ((_%g2905129059%_
                                     (lambda (_%g2905229055%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2905229055%_)))
                                    (_%g2905029081%_
                                     (lambda (_%g2905229063%_)
                                       ((lambda (_%g2905329066%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%g2905329066%_
                                                            '()))))
                                        _%g2905229063%_))))
                               (_%g2905029081%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%g2883228845%_
                                                         (cons _%g2899729010%_
                                                               '()))
                                                   '())
                                             (cons _%g2902529038%_ '())))
                                 (gx#stx-source _%stx28118%_)))))
                           _%g2902429035%_))))
                  (_%g2902229085%_
                   (_%generate-clauses28126%_
                    _%body28827%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%g2883228845%_ '()) '())))))))
              _%g2899629007%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2899429089%_
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'error)
                               (cons '"No clause matching"
                                     (foldr (lambda (_%g2909229097%_
                                                     _%g2909329100%_)
                                              (cons _%g2909229097%_
                                                    _%g2909329100%_))
                                            (foldr (lambda (_%g2909429103%_
                                                            _%g2909529106%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g2909429103%_ '()))
                   _%g2909529106%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%g2892828978%_)
                                            _%g2885928909%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx28118%_)))))
                                         _%fail-diagnostic2893728975%_))))))
                        (_%loop2893228956%_ _%target2892928950%_ '()))
                      (_%g2892628943%_ _%g2892728947%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2892628943%_
                                                     _%g2892728947%_)))))
                                        (_%g2892529109%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses28121%_))))
                                    _%target2886828906%_))))))
                   (_%loop2886328887%_ _%target2886028881%_ '()))
                 (_%g2885728874%_ _%g2885828878%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2885728874%_
                                                _%g2885828878%_)))))
                                   (_%g2885629113%_ _%tgt-lst28120%_)))
                               _%g2883128842%_))))
                      (_%g2882929117%_ (gx#genident 'E)))))
                 (_%generate-clauses28126%_
                  (lambda (_%rest28479%_ _%E28481%_)
                    (let* ((_%__stx3939639397%_ _%rest28479%_)
                           (_%g2848528501%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3939639397%_))))
                      (let ((_%__kont3939939400%_
                             (lambda (_%g2848728735%_)
                               (let* ((_%g2874628764%_
                                       (lambda (_%g2874728760%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2874728760%_)))
                                      (_%g2874528819%_
                                       (lambda (_%g2874728768%_)
                                         (if (gx#stx-pair? _%g2874728768%_)
                                             (let ((_%e2875028771%_
                                                    (gx#syntax-e
                                                     _%g2874728768%_)))
                                               (let ((_%hd2875128775%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2875028771%_)))
                                                     (_%tl2875228778%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2875028771%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2875228778%_)
                                                     (let ((_%e2875328781%_
                                                            (gx#syntax-e
                                                             _%tl2875228778%_)))
                                                       (let ((_%hd2875428785%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2875328781%_)))
                     (_%tl2875528788%_
                      (let () (declare (not safe)) (##cdr _%e2875328781%_))))
                 (if (gx#stx-pair? _%tl2875528788%_)
                     (let ((_%e2875628791%_ (gx#syntax-e _%tl2875528788%_)))
                       (let ((_%hd2875728795%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2875628791%_)))
                             (_%tl2875828798%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2875628791%_))))
                         (if (gx#stx-null? _%tl2875828798%_)
                             ((lambda (_%g2874828801%_ _%g2874928803%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e
                                                       _%g2874928803%_)
                                                      (_%generate128127%_
                                                       _%g2874928803%_
                                                       _%g2874828801%_
                                                       _%E28481%_)
                                                      _%g2874828801%_)
                                                  '()))))
                              _%hd2875728795%_
                              _%hd2875428785%_)
                             (_%g2874628764%_ _%g2874728768%_))))
                     (_%g2874628764%_ _%g2874728768%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2874628764%_
                                                      _%g2874728768%_))))
                                             (_%g2874628764%_
                                              _%g2874728768%_)))))
                                 (_%g2874528819%_ _%g2848728735%_))))
                            (_%__kont3940139402%_
                             (lambda (_%g2849128529%_ _%g2849228531%_)
                               (let* ((_%g2854428563%_
                                       (lambda (_%g2854528559%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2854528559%_)))
                                      (_%g2854328714%_
                                       (lambda (_%g2854528567%_)
                                         (if (gx#stx-pair? _%g2854528567%_)
                                             (let ((_%e2854928570%_
                                                    (gx#syntax-e
                                                     _%g2854528567%_)))
                                               (let ((_%hd2855028574%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2854928570%_)))
                                                     (_%tl2855128577%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2854928570%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2855128577%_)
                                                     (let ((_%e2855228580%_
                                                            (gx#syntax-e
                                                             _%tl2855128577%_)))
                                                       (let ((_%hd2855328584%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2855228580%_)))
                     (_%tl2855428587%_
                      (let () (declare (not safe)) (##cdr _%e2855228580%_))))
                 (if (gx#stx-pair? _%tl2855428587%_)
                     (let ((_%e2855528590%_ (gx#syntax-e _%tl2855428587%_)))
                       (let ((_%hd2855628594%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2855528590%_)))
                             (_%tl2855728597%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2855528590%_))))
                         (if (gx#stx-null? _%tl2855728597%_)
                             ((lambda (_%g2854628600%_
                                       _%g2854728602%_
                                       _%g2854828603%_)
                                (if (gx#stx-e _%g2854728602%_)
                                    (let* ((_%g2862028635%_
                                            (lambda (_%g2862128631%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2862128631%_)))
                                           (_%g2861928680%_
                                            (lambda (_%g2862128639%_)
                                              (if (gx#stx-pair?
                                                   _%g2862128639%_)
                                                  (let ((_%e2862428642%_
                                                         (gx#syntax-e
                                                          _%g2862128639%_)))
                                                    (let ((_%hd2862528646%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2862428642%_)))
                                                          (_%tl2862628649%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2862428642%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl2862628649%_)
                                                          (let ((_%e2862728652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2862628649%_)))
                    (let ((_%hd2862828656%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2862728652%_)))
                          (_%tl2862928659%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2862728652%_))))
                      (if (gx#stx-null? _%tl2862928659%_)
                          ((lambda (_%g2862228662%_ _%g2862328664%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _%g2854828603%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%g2862328664%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%g2862228662%_ '()))))
                           _%hd2862828656%_
                           _%hd2862528646%_)
                          (_%g2862028635%_ _%g2862128639%_))))
                  (_%g2862028635%_ _%g2862128639%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2862028635%_
                                                   _%g2862128639%_)))))
                                      (_%g2861928680%_
                                       (list (_%generate128127%_
                                              _%g2854728602%_
                                              _%g2854628600%_
                                              _%E28481%_)
                                             (_%generate-clauses28126%_
                                              _%g2849128529%_
                                              (cons _%g2854828603%_ '())))))
                                    (let* ((_%g2868428692%_
                                            (lambda (_%g2868528688%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2868528688%_)))
                                           (_%g2868328710%_
                                            (lambda (_%g2868528696%_)
                                              ((lambda (_%g2868628699%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g2854828603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'begin-annotation)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    '@match-else)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%g2854628600%_ '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons _%g2868628699%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2868528696%_))))
                                      (_%g2868328710%_
                                       (_%generate-clauses28126%_
                                        _%g2849128529%_
                                        (cons _%g2854828603%_ '()))))))
                              _%hd2855628594%_
                              _%hd2855328584%_
                              _%hd2855028574%_)
                             (_%g2854428563%_ _%g2854528567%_))))
                     (_%g2854428563%_ _%g2854528567%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2854428563%_
                                                      _%g2854528567%_))))
                                             (_%g2854428563%_
                                              _%g2854528567%_)))))
                                 (_%g2854328714%_ _%g2849228531%_))))
                            (_%__kont3940339404%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28481%_ '()))))))
                        (if (gx#stx-pair? _%__stx3939639397%_)
                            (let ((_%e2848828725%_
                                   (gx#syntax-e _%__stx3939639397%_)))
                              (let ((_%tl2849028732%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2848828725%_)))
                                    (_%hd2848928729%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2848828725%_))))
                                (if (gx#stx-null? _%tl2849028732%_)
                                    (_%__kont3939939400%_ _%hd2848928729%_)
                                    (_%__kont3940139402%_
                                     _%tl2849028732%_
                                     _%hd2848928729%_))))
                            (_%__kont3940339404%_))))))
                 (_%generate128127%_
                  (lambda (_%clause28129%_ _%body28131%_ _%E28132%_)
                    (let* ((_%g2813428158%_
                            (lambda (_%g2813528154%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2813528154%_)))
                           (_%g2813328475%_
                            (lambda (_%g2813528162%_)
                              (if (gx#stx-pair? _%g2813528162%_)
                                  (let ((_%e2813828165%_
                                         (gx#syntax-e _%g2813528162%_)))
                                    (let ((_%hd2813928169%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2813828165%_)))
                                          (_%tl2814028172%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2813828165%_))))
                                      (if (gx#stx-pair? _%tl2814028172%_)
                                          (let ((_%e2814128175%_
                                                 (gx#syntax-e
                                                  _%tl2814028172%_)))
                                            (let ((_%hd2814228179%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2814128175%_)))
                                                  (_%tl2814328182%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2814128175%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2814228179%_)
                                                  (let ((_g40059_
                                                         (gx#syntax-split-splice
                                                          _%hd2814228179%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g40060_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g40059_)
                           (##values-length _g40059_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g40060_ 2)))
                    (error "Context expects 2 values" _g40060_)))
              (let ((_%target2814428185%_
                     (let () (declare (not safe)) (##values-ref _g40059_ 0)))
                    (_%tl2814628188%_
                     (let () (declare (not safe)) (##values-ref _g40059_ 1))))
                (if (gx#stx-null? _%tl2814628188%_)
                    (letrec ((_%loop2814728191%_
                              (lambda (_%hd2814528195%_ _%var2815128198%_)
                                (if (gx#stx-pair? _%hd2814528195%_)
                                    (let ((_%e2814828200%_
                                           (gx#syntax-e _%hd2814528195%_)))
                                      (let ((_%lp-hd2814928204%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2814828200%_)))
                                            (_%lp-tl2815028207%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2814828200%_))))
                                        (_%loop2814728191%_
                                         _%lp-tl2815028207%_
                                         (cons _%lp-hd2814928204%_
                                               _%var2815128198%_))))
                                    (let ((_%var2815228210%_
                                           (reverse _%var2815128198%_)))
                                      (if (gx#stx-null? _%tl2814328182%_)
                                          ((lambda (_%g2813628213%_
                                                    _%g2813728215%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g2823628239%_
                                                                _%g2823728242%_)
                                                         (cons _%g2823628239%_
                                                               _%g2823728242%_))
                                                       '()
                                                       _%g2813628213%_)
                                                _%stx28118%_)
                                               (let* ((_%g2824528253%_
                                                       (lambda (_%g2824628249%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2824628249%_)))
                                                      (_%g2824428347%_
                                                       (lambda (_%g2824628257%_)
                                                         ((lambda (_%g2824728260%_)
                                                            (let* ((_%g2827328281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2827428277%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2827428277%_)))
                           (_%g2827228343%_
                            (lambda (_%g2827428285%_)
                              ((lambda (_%g2827528288%_)
                                 (let* ((_%g2830128309%_
                                         (lambda (_%g2830228305%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2830228305%_)))
                                        (_%g2830028331%_
                                         (lambda (_%g2830228313%_)
                                           ((lambda (_%g2830328316%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%g2813728215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g2830328316%_ '()))
                   (cons _%g2824728260%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx28118%_)))
                                            _%g2830228313%_))))
                                   (_%g2830028331%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%g2833428337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2833528340%_)
                  (cons _%g2833428337%_ _%g2833528340%_))
                '()
                _%g2813628213%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g2827528288%_ '())))
                                     (gx#stx-source _%stx28118%_)))))
                               _%g2827428285%_))))
                      (_%g2827228343%_ _%body28131%_)))
                  _%g2824628257%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2824428347%_
                                                  (let _%recur28351%_ ((_%rest28354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%clause28129%_)
                               (_%rest-targets28356%_ _%tgt-lst28120%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%__stx3942239423%_
                                                            _%rest28354%_)
                                                           (_%g2835928371%_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx3942239423%_))))
                                                      (let ((_%__kont3942539426%_
                                                             (lambda (_%g2836128407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2836228409%_)
                       (let* ((_%g2842428436%_
                               (lambda (_%g2842528432%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2842528432%_)))
                              (_%g2842328467%_
                               (lambda (_%g2842528440%_)
                                 (if (gx#stx-pair? _%g2842528440%_)
                                     (let ((_%e2842828443%_
                                            (gx#syntax-e _%g2842528440%_)))
                                       (let ((_%hd2842928447%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2842828443%_)))
                                             (_%tl2843028450%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2842828443%_))))
                                         ((lambda (_%g2842628453%_
                                                   _%g2842728455%_)
                                            (|gerbil/core/match[1]#generate-match1|
                                             _%stx28118%_
                                             _%g2842728455%_
                                             _%g2836228409%_
                                             (_%recur28351%_
                                              _%g2836128407%_
                                              _%g2842628453%_)
                                             _%E28132%_))
                                          _%tl2843028450%_
                                          _%hd2842928447%_)))
                                     (_%g2842428436%_ _%g2842528440%_)))))
                         (_%g2842328467%_ _%rest-targets28356%_))))
                    (_%__kont3942739428%_
                     (lambda ()
                       (cons _%g2813728215%_
                             (foldr (lambda (_%g2838128384%_ _%g2838228387%_)
                                      (cons _%g2838128384%_ _%g2838228387%_))
                                    '()
                                    _%g2813628213%_)))))
                (if (gx#stx-pair? _%__stx3942239423%_)
                    (let ((_%e2836328397%_ (gx#syntax-e _%__stx3942239423%_)))
                      (let ((_%tl2836528404%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2836328397%_)))
                            (_%hd2836428401%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2836328397%_))))
                        (_%__kont3942539426%_
                         _%tl2836528404%_
                         _%hd2836428401%_)))
                    (_%__kont3942739428%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%var2815228210%_
                                           _%hd2813928169%_)
                                          (_%g2813428158%_
                                           _%g2813528162%_)))))))
                      (_%loop2814728191%_ _%target2814428185%_ '()))
                    (_%g2813428158%_ _%g2813528162%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2813428158%_
                                                   _%g2813528162%_))))
                                          (_%g2813428158%_ _%g2813528162%_))))
                                  (_%g2813428158%_ _%g2813528162%_)))))
                      (_%g2813328475%_
                       (list (gx#genident 'K)
                             (let ((__tmp40061
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause28129%_)))
                               (declare (not safe))
                               (##apply append __tmp40061))))))))
          (_%generate-body28125%_
           (_%parse-body28123%_ (gx#stx-length _%tgt-lst28120%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx28020%_ _%tgt28022%_ _%clauses28023%_)
        (letrec ((_%reclause28025%_
                  (lambda (_%clause28028%_)
                    (let* ((_%__stx3943839439%_ _%clause28028%_)
                           (_%g2803328048%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3943839439%_))))
                      (let ((_%__kont3944139442%_ (lambda () _%clause28028%_))
                            (_%__kont3944339444%_
                             (lambda (_%g2803828076%_ _%g2803928078%_)
                               (gx#stx-wrap-source
                                (cons (cons _%g2803928078%_ '())
                                      _%g2803828076%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3944539446%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx28020%_
                                _%clause28028%_))))
                        (if (gx#stx-pair? _%__stx3943839439%_)
                            (let ((_%e2803528100%_
                                   (gx#syntax-e _%__stx3943839439%_)))
                              (let ((_%tl2803728107%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2803528100%_)))
                                    (_%hd2803628104%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2803528100%_))))
                                (if (gx#identifier? _%hd2803628104%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40062_|
                                         _%hd2803628104%_)
                                        (_%__kont3944139442%_)
                                        (_%__kont3944339444%_
                                         _%tl2803728107%_
                                         _%hd2803628104%_))
                                    (_%__kont3944339444%_
                                     _%tl2803728107%_
                                     _%hd2803628104%_))))
                            (_%__kont3944539446%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx28020%_
           (cons _%tgt28022%_ '())
           (gx#stx-map _%reclause28025%_ _%clauses28023%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35361%_)
        (let* ((_%__stx3946639467%_ _%stx35361%_)
               (_%g3536635395%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3946639467%_))))
          (let ((_%__kont3946939470%_
                 (lambda (_%g3536835635%_)
                   (let* ((_%g3564835656%_
                           (lambda (_%g3564935652%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3564935652%_)))
                          (_%g3564735709%_
                           (lambda (_%g3564935660%_)
                             ((lambda (_%g3565035663%_)
                                (let* ((_%g3567535683%_
                                        (lambda (_%g3567635679%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3567635679%_)))
                                       (_%g3567435705%_
                                        (lambda (_%g3567635687%_)
                                          ((lambda (_%g3567735690%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%g3565035663%_
                                                               '())
                                                         (cons _%g3567735690%_
                                                               '()))))
                                           _%g3567635687%_))))
                                  (_%g3567435705%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%g3565035663%_
                                                _%g3536835635%_))
                                    (gx#stx-source _%stx35361%_)))))
                              _%g3564935660%_))))
                     (_%g3564735709%_ (gx#genident 'e)))))
                (_%__kont3947139472%_
                 (lambda (_%g3537535530%_)
                   (let* ((_%g3554335551%_
                           (lambda (_%g3554435547%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3554435547%_)))
                          (_%g3554235604%_
                           (lambda (_%g3554435555%_)
                             ((lambda (_%g3554535558%_)
                                (let* ((_%g3557035578%_
                                        (lambda (_%g3557135574%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3557135574%_)))
                                       (_%g3556935600%_
                                        (lambda (_%g3557135582%_)
                                          ((lambda (_%g3557235585%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%g3554535558%_
                                                         (cons _%g3557235585%_
                                                               '()))))
                                           _%g3557135582%_))))
                                  (_%g3556935600%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%g3554535558%_
                                                _%g3537535530%_))
                                    (gx#stx-source _%stx35361%_)))))
                              _%g3554435555%_))))
                     (_%g3554235604%_ (gx#genident 'args)))))
                (_%__kont3947339474%_
                 (lambda (_%g3538235422%_ _%g3538335424%_)
                   (let* ((_%g3543835446%_
                           (lambda (_%g3543935442%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3543935442%_)))
                          (_%g3543735499%_
                           (lambda (_%g3543935450%_)
                             ((lambda (_%g3544035453%_)
                                (let* ((_%g3546535473%_
                                        (lambda (_%g3546635469%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3546635469%_)))
                                       (_%g3546435495%_
                                        (lambda (_%g3546635477%_)
                                          ((lambda (_%g3546735480%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%g3544035453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%g3538335424%_ '()))
                       '())
                 (cons _%g3546735480%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3546635477%_))))
                                  (_%g3546435495%_
                                   (|gerbil/core/match[1]#generate-match|
                                    _%stx35361%_
                                    _%g3544035453%_
                                    _%g3538235422%_))))
                              _%g3543935450%_))))
                     (_%g3543735499%_ (gx#genident _%g3538335424%_))))))
            (let* ((_%__match3951939520%_
                    (lambda (_%e3538435402%_
                             _%hd3538535406%_
                             _%tl3538635409%_
                             _%e3538735412%_
                             _%hd3538835416%_
                             _%tl3538935419%_)
                      (let ((_%g3538235422%_ _%tl3538935419%_)
                            (_%g3538335424%_ _%hd3538835416%_))
                        (if (gx#stx-list? _%g3538235422%_)
                            (_%__kont3947339474%_
                             _%g3538235422%_
                             _%g3538335424%_)
                            (let () (declare (not safe)) (_%g3536635395%_))))))
                   (_%__match3950739508%_
                    (lambda (_%e3537635510%_
                             _%hd3537735514%_
                             _%tl3537835517%_
                             _%e3537935520%_
                             _%hd3538035524%_
                             _%tl3538135527%_)
                      (let ((_%g3537535530%_ _%tl3538135527%_))
                        (if (gx#stx-list? _%g3537535530%_)
                            (_%__kont3947139472%_ _%g3537535530%_)
                            (_%__match3951939520%_
                             _%e3537635510%_
                             _%hd3537735514%_
                             _%tl3537835517%_
                             _%e3537935520%_
                             _%hd3538035524%_
                             _%tl3538135527%_)))))
                   (_%__match3949139492%_
                    (lambda (_%e3536935615%_
                             _%hd3537035619%_
                             _%tl3537135622%_
                             _%e3537235625%_
                             _%hd3537335629%_
                             _%tl3537435632%_)
                      (let ((_%g3536835635%_ _%tl3537435632%_))
                        (if (gx#stx-list? _%g3536835635%_)
                            (_%__kont3946939470%_ _%g3536835635%_)
                            (_%__match3951939520%_
                             _%e3536935615%_
                             _%hd3537035619%_
                             _%tl3537135622%_
                             _%e3537235625%_
                             _%hd3537335629%_
                             _%tl3537435632%_))))))
              (if (gx#stx-pair? _%__stx3946639467%_)
                  (let ((_%e3536935615%_ (gx#syntax-e _%__stx3946639467%_)))
                    (let ((_%tl3537135622%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3536935615%_)))
                          (_%hd3537035619%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3536935615%_))))
                      (if (gx#stx-pair? _%tl3537135622%_)
                          (let ((_%e3537235625%_
                                 (gx#syntax-e _%tl3537135622%_)))
                            (let ((_%tl3537435632%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3537235625%_)))
                                  (_%hd3537335629%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3537235625%_))))
                              (if (gx#identifier? _%hd3537335629%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40063_|
                                       _%hd3537335629%_)
                                      (_%__match3949139492%_
                                       _%e3536935615%_
                                       _%hd3537035619%_
                                       _%tl3537135622%_
                                       _%e3537235625%_
                                       _%hd3537335629%_
                                       _%tl3537435632%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40064_|
                                           _%hd3537335629%_)
                                          (_%__match3950739508%_
                                           _%e3536935615%_
                                           _%hd3537035619%_
                                           _%tl3537135622%_
                                           _%e3537235625%_
                                           _%hd3537335629%_
                                           _%tl3537435632%_)
                                          (_%__match3951939520%_
                                           _%e3536935615%_
                                           _%hd3537035619%_
                                           _%tl3537135622%_
                                           _%e3537235625%_
                                           _%hd3537335629%_
                                           _%tl3537435632%_)))
                                  (_%__match3951939520%_
                                   _%e3536935615%_
                                   _%hd3537035619%_
                                   _%tl3537135622%_
                                   _%e3537235625%_
                                   _%hd3537335629%_
                                   _%tl3537435632%_))))
                          (let () (declare (not safe)) (_%g3536635395%_)))))
                  (let () (declare (not safe)) (_%g3536635395%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx35717%_)
        (let* ((_%g3572035744%_
                (lambda (_%g3572135740%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3572135740%_)))
               (_%g3571935952%_
                (lambda (_%g3572135748%_)
                  (if (gx#stx-pair? _%g3572135748%_)
                      (let ((_%e3572435751%_ (gx#syntax-e _%g3572135748%_)))
                        (let ((_%hd3572535755%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3572435751%_)))
                              (_%tl3572635758%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3572435751%_))))
                          (if (gx#stx-pair? _%tl3572635758%_)
                              (let ((_%e3572735761%_
                                     (gx#syntax-e _%tl3572635758%_)))
                                (let ((_%hd3572835765%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3572735761%_)))
                                      (_%tl3572935768%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3572735761%_))))
                                  (if (gx#stx-pair/null? _%hd3572835765%_)
                                      (let ((_g40065_
                                             (gx#syntax-split-splice
                                              _%hd3572835765%_
                                              '0)))
                                        (begin
                                          (let ((_g40066_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g40065_)
                                                       (##values-length
                                                        _g40065_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g40066_ 2)))
                                                (error "Context expects 2 values"
                                                       _g40066_)))
                                          (let ((_%target3573035771%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g40065_ 0)))
                                                (_%tl3573235774%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g40065_ 1))))
                                            (if (gx#stx-null? _%tl3573235774%_)
                                                (letrec ((_%loop3573335777%_
                                                          (lambda (_%hd3573135781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3573735784%_)
                    (if (gx#stx-pair? _%hd3573135781%_)
                        (let ((_%e3573435786%_ (gx#syntax-e _%hd3573135781%_)))
                          (let ((_%lp-hd3573535790%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3573435786%_)))
                                (_%lp-tl3573635793%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3573435786%_))))
                            (_%loop3573335777%_
                             _%lp-tl3573635793%_
                             (cons _%lp-hd3573535790%_ _%e3573735784%_))))
                        (let ((_%e3573835796%_ (reverse _%e3573735784%_)))
                          ((lambda (_%g3572235799%_ _%g3572335801%_)
                             (if (gx#stx-list? _%g3572235799%_)
                                 (let* ((_%g3581935836%_
                                         (lambda (_%g3582035832%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3582035832%_)))
                                        (_%g3581835940%_
                                         (lambda (_%g3582035840%_)
                                           (if (gx#stx-pair/null?
                                                _%g3582035840%_)
                                               (let ((_g40067_
                                                      (gx#syntax-split-splice
                                                       _%g3582035840%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g40068_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g40067_)
                        (##values-length _g40067_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g40068_ 2)))
                 (error "Context expects 2 values" _g40068_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3582235843%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40067_
                                                             0)))
                                                         (_%tl3582435846%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40067_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3582435846%_)
                                                         (letrec ((_%loop3582535849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3582335853%_ _%$e3582935856%_)
                             (if (gx#stx-pair? _%hd3582335853%_)
                                 (let ((_%e3582635858%_
                                        (gx#syntax-e _%hd3582335853%_)))
                                   (let ((_%lp-hd3582735862%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3582635858%_)))
                                         (_%lp-tl3582835865%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3582635858%_))))
                                     (_%loop3582535849%_
                                      _%lp-tl3582835865%_
                                      (cons _%lp-hd3582735862%_
                                            _%$e3582935856%_))))
                                 (let ((_%$e3583035868%_
                                        (reverse _%$e3582935856%_)))
                                   ((lambda (_%g3582135871%_)
                                      (let* ((_%g3588735895%_
                                              (lambda (_%g3588835891%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g3588835891%_)))
                                             (_%g3588635928%_
                                              (lambda (_%g3588835899%_)
                                                ((lambda (_%g3588935902%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets
                          _%g3572335801%_
                          _%g3582135871%_)
                         (foldr (lambda (_%g3591635920%_
                                         _%g3591735923%_
                                         _%g3591835925%_)
                                  (cons (cons _%g3591735923%_
                                              (cons _%g3591635920%_ '()))
                                        _%g3591835925%_))
                                '()
                                _%g3572335801%_
                                _%g3582135871%_))
                       (cons _%g3588935902%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g3588835899%_))))
                                        (_%g3588635928%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx35717%_
                                          (foldr (lambda (_%g3593135934%_
                                                          _%g3593235937%_)
                                                   (cons _%g3593135934%_
                                                         _%g3593235937%_))
                                                 '()
                                                 _%g3582135871%_)
                                          _%g3572235799%_))))
                                    _%$e3583035868%_))))))
                   (_%loop3582535849%_ _%target3582235843%_ '()))
                 (_%g3581935836%_ _%g3582035840%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3581935836%_
                                                _%g3582035840%_)))))
                                   (_%g3581835940%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g3594335946%_
                                                     _%g3594435949%_)
                                              (cons _%g3594335946%_
                                                    _%g3594435949%_))
                                            '()
                                            _%g3572335801%_))))
                                 (_%g3572035744%_ _%g3572135748%_)))
                           _%tl3572935768%_
                           _%e3573835796%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3573335777%_
                                                   _%target3573035771%_
                                                   '()))
                                                (_%g3572035744%_
                                                 _%g3572135748%_)))))
                                      (_%g3572035744%_ _%g3572135748%_))))
                              (_%g3572035744%_ _%g3572135748%_))))
                      (_%g3572035744%_ _%g3572135748%_)))))
          (_%g3571935952%_ _%stx35717%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx35958%_)
        (let* ((_%__stx3952239523%_ _%$stx35958%_)
               (_%g3596436047%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3952239523%_))))
          (let ((_%__kont3952539526%_
                 (lambda (_%g3596636367%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3638336386%_ _%g3638436389%_)
                                        (cons _%g3638336386%_ _%g3638436389%_))
                                      '()
                                      _%g3596636367%_)))))
                (_%__kont3952939530%_
                 (lambda (_%g3598236277%_
                          _%g3598336279%_
                          _%g3598436280%_
                          _%g3598536281%_)
                   (cons _%g3598536281%_
                         (cons (cons (cons _%g3598436280%_
                                           (cons _%g3598336279%_ '()))
                                     '())
                               (foldr (lambda (_%g3630336306%_ _%g3630436309%_)
                                        (cons _%g3630336306%_ _%g3630436309%_))
                                      '()
                                      _%g3598236277%_)))))
                (_%__kont3953339534%_
                 (lambda (_%g3600736152%_ _%g3600836154%_ _%g3600936155%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3617736184%_ _%g3617836187%_)
                                        (cons _%g3617736184%_ _%g3617836187%_))
                                      '()
                                      _%g3600836154%_)
                               (cons (cons (foldr (lambda (_%g3617936190%_
                                                           _%g3618036193%_)
                                                    (cons _%g3617936190%_
                                                          _%g3618036193%_))
                                                  '()
                                                  _%g3600936155%_)
                                           (foldr (lambda (_%g3618136196%_
                                                           _%g3618236199%_)
                                                    (cons _%g3618136196%_
                                                          _%g3618236199%_))
                                                  '()
                                                  _%g3600736152%_))
                                     '()))))))
            (let* ((_%__match3961539616%_
                    (lambda (_%e3601036054%_
                             _%hd3601136058%_
                             _%tl3601236061%_
                             _%e3601336064%_
                             _%hd3601436068%_
                             _%tl3601536071%_
                             _%__splice3953539536%_
                             _%target3601636074%_
                             _%tl3601836077%_)
                      (letrec ((_%loop3601936080%_
                                (lambda (_%hd3601736084%_
                                         _%expr3602336087%_
                                         _%hd3602436088%_)
                                  (if (gx#stx-pair? _%hd3601736084%_)
                                      (let ((_%e3602036090%_
                                             (gx#syntax-e _%hd3601736084%_)))
                                        (let ((_%lp-tl3602236097%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3602036090%_)))
                                              (_%lp-hd3602136094%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3602036090%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3602136094%_)
                                              (let ((_%e3602736100%_
                                                     (gx#syntax-e
                                                      _%lp-hd3602136094%_)))
                                                (let ((_%tl3602936107%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3602736100%_)))
                                                      (_%hd3602836104%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3602736100%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3602936107%_)
                                                      (let ((_%e3603036110%_
                                                             (gx#syntax-e
                                                              _%tl3602936107%_)))
                                                        (let ((_%tl3603236117%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3603036110%_)))
                      (_%hd3603136114%_
                       (let () (declare (not safe)) (##car _%e3603036110%_))))
                  (if (gx#stx-null? _%tl3603236117%_)
                      (_%loop3601936080%_
                       _%lp-tl3602236097%_
                       (cons _%hd3603136114%_ _%expr3602336087%_)
                       (cons _%hd3602836104%_ _%hd3602436088%_))
                      (let () (declare (not safe)) (_%g3596436047%_)))))
              (let () (declare (not safe)) (_%g3596436047%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3596436047%_)))))
                                      (let ((_%hd3602636122%_
                                             (reverse _%hd3602436088%_))
                                            (_%expr3602536120%_
                                             (reverse _%expr3602336087%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3601536071%_)
                                            (let ((_%__splice3953739538%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl3601536071%_
                                                    '0)))
                                              (let ((_%tl3603536127%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3953739538%_
                                                        '1)))
                                                    (_%target3603336124%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3953739538%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3603536127%_)
                                                    (letrec ((_%loop3603636130%_
                                                              (lambda (_%hd3603436134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3604036137%_)
                        (if (gx#stx-pair? _%hd3603436134%_)
                            (let ((_%e3603736139%_
                                   (gx#syntax-e _%hd3603436134%_)))
                              (let ((_%lp-tl3603936146%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3603736139%_)))
                                    (_%lp-hd3603836143%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3603736139%_))))
                                (_%loop3603636130%_
                                 _%lp-tl3603936146%_
                                 (cons _%lp-hd3603836143%_
                                       _%body3604036137%_))))
                            (let ((_%body3604136149%_
                                   (reverse _%body3604036137%_)))
                              (_%__kont3953339534%_
                               _%body3604136149%_
                               _%expr3602536120%_
                               _%hd3602636122%_))))))
              (_%loop3603636130%_ _%target3603336124%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3596436047%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3596436047%_))))))))
                        (_%loop3601936080%_ _%target3601636074%_ '() '()))))
                   (_%__match3960739608%_
                    (lambda (_%e3601036054%_
                             _%hd3601136058%_
                             _%tl3601236061%_
                             _%e3601336064%_
                             _%hd3601436068%_
                             _%tl3601536071%_)
                      (if (gx#stx-pair/null? _%hd3601436068%_)
                          (let ((_%__splice3953539536%_
                                 (gx#syntax-split-splice->vector
                                  _%hd3601436068%_
                                  '0)))
                            (let ((_%tl3601836077%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3953539536%_ '1)))
                                  (_%target3601636074%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3953539536%_
                                      '0))))
                              (if (gx#stx-null? _%tl3601836077%_)
                                  (_%__match3961539616%_
                                   _%e3601036054%_
                                   _%hd3601136058%_
                                   _%tl3601236061%_
                                   _%e3601336064%_
                                   _%hd3601436068%_
                                   _%tl3601536071%_
                                   _%__splice3953539536%_
                                   _%target3601636074%_
                                   _%tl3601836077%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3596436047%_)))))
                          (let () (declare (not safe)) (_%g3596436047%_)))))
                   (_%__match3959539596%_
                    (lambda (_%e3598636209%_
                             _%hd3598736213%_
                             _%tl3598836216%_
                             _%e3598936219%_
                             _%hd3599036223%_
                             _%tl3599136226%_
                             _%e3599236229%_
                             _%hd3599336233%_
                             _%tl3599436236%_
                             _%e3599536239%_
                             _%hd3599636243%_
                             _%tl3599736246%_
                             _%__splice3953139532%_
                             _%target3599836249%_
                             _%tl3600036252%_)
                      (letrec ((_%loop3600136255%_
                                (lambda (_%hd3599936259%_ _%body3600536262%_)
                                  (if (gx#stx-pair? _%hd3599936259%_)
                                      (let ((_%e3600236264%_
                                             (gx#syntax-e _%hd3599936259%_)))
                                        (let ((_%lp-tl3600436271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3600236264%_)))
                                              (_%lp-hd3600336268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3600236264%_))))
                                          (_%loop3600136255%_
                                           _%lp-tl3600436271%_
                                           (cons _%lp-hd3600336268%_
                                                 _%body3600536262%_))))
                                      (let ((_%body3600636274%_
                                             (reverse _%body3600536262%_)))
                                        (let ((_%g3598236277%_
                                               _%body3600636274%_)
                                              (_%g3598336279%_
                                               _%hd3599636243%_)
                                              (_%g3598436280%_
                                               _%hd3599336233%_)
                                              (_%g3598536281%_
                                               _%hd3598736213%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%g3598436280%_)
                                              (_%__kont3952939530%_
                                               _%g3598236277%_
                                               _%g3598336279%_
                                               _%g3598436280%_
                                               _%g3598536281%_)
                                              (_%__match3960739608%_
                                               _%e3598636209%_
                                               _%hd3598736213%_
                                               _%tl3598836216%_
                                               _%e3598936219%_
                                               _%hd3599036223%_
                                               _%tl3599136226%_))))))))
                        (_%loop3600136255%_ _%target3599836249%_ '()))))
                   (_%__match3956139562%_
                    (lambda (_%e3596736319%_
                             _%hd3596836323%_
                             _%tl3596936326%_
                             _%e3597036329%_
                             _%hd3597136333%_
                             _%tl3597236336%_
                             _%__splice3952739528%_
                             _%target3597336339%_
                             _%tl3597536342%_)
                      (letrec ((_%loop3597636345%_
                                (lambda (_%hd3597436349%_ _%body3598036352%_)
                                  (if (gx#stx-pair? _%hd3597436349%_)
                                      (let ((_%e3597736354%_
                                             (gx#syntax-e _%hd3597436349%_)))
                                        (let ((_%lp-tl3597936361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3597736354%_)))
                                              (_%lp-hd3597836358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3597736354%_))))
                                          (_%loop3597636345%_
                                           _%lp-tl3597936361%_
                                           (cons _%lp-hd3597836358%_
                                                 _%body3598036352%_))))
                                      (let ((_%body3598136364%_
                                             (reverse _%body3598036352%_)))
                                        (_%__kont3952539526%_
                                         _%body3598136364%_))))))
                        (_%loop3597636345%_ _%target3597336339%_ '())))))
              (if (gx#stx-pair? _%__stx3952239523%_)
                  (let ((_%e3596736319%_ (gx#syntax-e _%__stx3952239523%_)))
                    (let ((_%tl3596936326%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3596736319%_)))
                          (_%hd3596836323%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3596736319%_))))
                      (if (gx#stx-pair? _%tl3596936326%_)
                          (let ((_%e3597036329%_
                                 (gx#syntax-e _%tl3596936326%_)))
                            (let ((_%tl3597236336%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3597036329%_)))
                                  (_%hd3597136333%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3597036329%_))))
                              (if (gx#stx-null? _%hd3597136333%_)
                                  (if (gx#stx-pair/null? _%tl3597236336%_)
                                      (let ((_%__splice3952739528%_
                                             (gx#syntax-split-splice->vector
                                              _%tl3597236336%_
                                              '0)))
                                        (let ((_%tl3597536342%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3952739528%_
                                                  '1)))
                                              (_%target3597336339%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3952739528%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3597536342%_)
                                              (_%__match3956139562%_
                                               _%e3596736319%_
                                               _%hd3596836323%_
                                               _%tl3596936326%_
                                               _%e3597036329%_
                                               _%hd3597136333%_
                                               _%tl3597236336%_
                                               _%__splice3952739528%_
                                               _%target3597336339%_
                                               _%tl3597536342%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3597136333%_)
                                                  (let ((_%__splice3953539536%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3597136333%_
                                                          '0)))
                                                    (let ((_%tl3601836077%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3953539536%_
                                                              '1)))
                                                          (_%target3601636074%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3953539536%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3601836077%_)
                                                          (_%__match3961539616%_
                                                           _%e3596736319%_
                                                           _%hd3596836323%_
                                                           _%tl3596936326%_
                                                           _%e3597036329%_
                                                           _%hd3597136333%_
                                                           _%tl3597236336%_
                                                           _%__splice3953539536%_
                                                           _%target3601636074%_
                                                           _%tl3601836077%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3596436047%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3596436047%_))))))
                                      (if (gx#stx-pair/null? _%hd3597136333%_)
                                          (let ((_%__splice3953539536%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3597136333%_
                                                  '0)))
                                            (let ((_%tl3601836077%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3953539536%_
                                                      '1)))
                                                  (_%target3601636074%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3953539536%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3601836077%_)
                                                  (_%__match3961539616%_
                                                   _%e3596736319%_
                                                   _%hd3596836323%_
                                                   _%tl3596936326%_
                                                   _%e3597036329%_
                                                   _%hd3597136333%_
                                                   _%tl3597236336%_
                                                   _%__splice3953539536%_
                                                   _%target3601636074%_
                                                   _%tl3601836077%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3596436047%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3596436047%_))))
                                  (if (gx#stx-pair? _%hd3597136333%_)
                                      (let ((_%e3599236229%_
                                             (gx#syntax-e _%hd3597136333%_)))
                                        (let ((_%tl3599436236%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3599236229%_)))
                                              (_%hd3599336233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3599236229%_))))
                                          (if (gx#stx-pair? _%tl3599436236%_)
                                              (let ((_%e3599536239%_
                                                     (gx#syntax-e
                                                      _%tl3599436236%_)))
                                                (let ((_%tl3599736246%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3599536239%_)))
                                                      (_%hd3599636243%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3599536239%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3599736246%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3597236336%_)
                                                          (let ((_%__splice3953139532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl3597236336%_ '0)))
                    (let ((_%tl3600036252%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3953139532%_ '1)))
                          (_%target3599836249%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3953139532%_ '0))))
                      (if (gx#stx-null? _%tl3600036252%_)
                          (_%__match3959539596%_
                           _%e3596736319%_
                           _%hd3596836323%_
                           _%tl3596936326%_
                           _%e3597036329%_
                           _%hd3597136333%_
                           _%tl3597236336%_
                           _%e3599236229%_
                           _%hd3599336233%_
                           _%tl3599436236%_
                           _%e3599536239%_
                           _%hd3599636243%_
                           _%tl3599736246%_
                           _%__splice3953139532%_
                           _%target3599836249%_
                           _%tl3600036252%_)
                          (if (gx#stx-pair/null? _%hd3597136333%_)
                              (let ((_%__splice3953539536%_
                                     (gx#syntax-split-splice->vector
                                      _%hd3597136333%_
                                      '0)))
                                (let ((_%tl3601836077%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3953539536%_
                                          '1)))
                                      (_%target3601636074%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3953539536%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3601836077%_)
                                      (_%__match3961539616%_
                                       _%e3596736319%_
                                       _%hd3596836323%_
                                       _%tl3596936326%_
                                       _%e3597036329%_
                                       _%hd3597136333%_
                                       _%tl3597236336%_
                                       _%__splice3953539536%_
                                       _%target3601636074%_
                                       _%tl3601836077%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3596436047%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3596436047%_))))))
                  (if (gx#stx-pair/null? _%hd3597136333%_)
                      (let ((_%__splice3953539536%_
                             (gx#syntax-split-splice->vector
                              _%hd3597136333%_
                              '0)))
                        (let ((_%tl3601836077%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3953539536%_ '1)))
                              (_%target3601636074%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3953539536%_ '0))))
                          (if (gx#stx-null? _%tl3601836077%_)
                              (_%__match3961539616%_
                               _%e3596736319%_
                               _%hd3596836323%_
                               _%tl3596936326%_
                               _%e3597036329%_
                               _%hd3597136333%_
                               _%tl3597236336%_
                               _%__splice3953539536%_
                               _%target3601636074%_
                               _%tl3601836077%_)
                              (let ()
                                (declare (not safe))
                                (_%g3596436047%_)))))
                      (let () (declare (not safe)) (_%g3596436047%_))))
              (if (gx#stx-pair/null? _%hd3597136333%_)
                  (let ((_%__splice3953539536%_
                         (gx#syntax-split-splice->vector _%hd3597136333%_ '0)))
                    (let ((_%tl3601836077%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3953539536%_ '1)))
                          (_%target3601636074%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3953539536%_ '0))))
                      (if (gx#stx-null? _%tl3601836077%_)
                          (_%__match3961539616%_
                           _%e3596736319%_
                           _%hd3596836323%_
                           _%tl3596936326%_
                           _%e3597036329%_
                           _%hd3597136333%_
                           _%tl3597236336%_
                           _%__splice3953539536%_
                           _%target3601636074%_
                           _%tl3601836077%_)
                          (let () (declare (not safe)) (_%g3596436047%_)))))
                  (let () (declare (not safe)) (_%g3596436047%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3597136333%_)
                                                  (let ((_%__splice3953539536%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3597136333%_
                                                          '0)))
                                                    (let ((_%tl3601836077%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3953539536%_
                                                              '1)))
                                                          (_%target3601636074%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3953539536%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3601836077%_)
                                                          (_%__match3961539616%_
                                                           _%e3596736319%_
                                                           _%hd3596836323%_
                                                           _%tl3596936326%_
                                                           _%e3597036329%_
                                                           _%hd3597136333%_
                                                           _%tl3597236336%_
                                                           _%__splice3953539536%_
                                                           _%target3601636074%_
                                                           _%tl3601836077%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3596436047%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3596436047%_))))))
                                      (if (gx#stx-pair/null? _%hd3597136333%_)
                                          (let ((_%__splice3953539536%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3597136333%_
                                                  '0)))
                                            (let ((_%tl3601836077%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3953539536%_
                                                      '1)))
                                                  (_%target3601636074%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3953539536%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3601836077%_)
                                                  (_%__match3961539616%_
                                                   _%e3596736319%_
                                                   _%hd3596836323%_
                                                   _%tl3596936326%_
                                                   _%e3597036329%_
                                                   _%hd3597136333%_
                                                   _%tl3597236336%_
                                                   _%__splice3953539536%_
                                                   _%target3601636074%_
                                                   _%tl3601836077%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3596436047%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3596436047%_)))))))
                          (let () (declare (not safe)) (_%g3596436047%_)))))
                  (let () (declare (not safe)) (_%g3596436047%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36400%_)
        (let* ((_%__stx3961839619%_ _%$stx36400%_)
               (_%g3640536457%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3961839619%_))))
          (let ((_%__kont3962139622%_
                 (lambda (_%g3640736623%_
                          _%g3640836625%_
                          _%g3640936626%_
                          _%g3641036627%_
                          _%g3641136628%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%g3641036627%_
                                           (cons _%g3640936626%_ '()))
                                     '())
                               (cons (cons _%g3641136628%_
                                           (cons _%g3640836625%_
                                                 (foldr (lambda (_%g3665336656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3665436659%_)
                  (cons _%g3665336656%_ _%g3665436659%_))
                '()
                _%g3640736623%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3962539626%_
                 (lambda (_%g3643636512%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3652936532%_ _%g3653036535%_)
                                        (cons _%g3652936532%_ _%g3653036535%_))
                                      '()
                                      _%g3643636512%_))))))
            (let* ((_%__match3969139692%_
                    (lambda (_%e3643736464%_
                             _%hd3643836468%_
                             _%tl3643936471%_
                             _%e3644036474%_
                             _%hd3644136478%_
                             _%tl3644236481%_
                             _%__splice3962739628%_
                             _%target3644336484%_
                             _%tl3644536487%_)
                      (letrec ((_%loop3644636490%_
                                (lambda (_%hd3644436494%_ _%body3645036497%_)
                                  (if (gx#stx-pair? _%hd3644436494%_)
                                      (let ((_%e3644736499%_
                                             (gx#syntax-e _%hd3644436494%_)))
                                        (let ((_%lp-tl3644936506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3644736499%_)))
                                              (_%lp-hd3644836503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3644736499%_))))
                                          (_%loop3644636490%_
                                           _%lp-tl3644936506%_
                                           (cons _%lp-hd3644836503%_
                                                 _%body3645036497%_))))
                                      (let ((_%body3645136509%_
                                             (reverse _%body3645036497%_)))
                                        (_%__kont3962539626%_
                                         _%body3645136509%_))))))
                        (_%loop3644636490%_ _%target3644336484%_ '()))))
                   (_%__match3966939670%_
                    (lambda (_%e3641236545%_
                             _%hd3641336549%_
                             _%tl3641436552%_
                             _%e3641536555%_
                             _%hd3641636559%_
                             _%tl3641736562%_
                             _%e3641836565%_
                             _%hd3641936569%_
                             _%tl3642036572%_
                             _%e3642136575%_
                             _%hd3642236579%_
                             _%tl3642336582%_
                             _%e3642436585%_
                             _%hd3642536589%_
                             _%tl3642636592%_
                             _%__splice3962339624%_
                             _%target3642736595%_
                             _%tl3642936598%_)
                      (letrec ((_%loop3643036601%_
                                (lambda (_%hd3642836605%_ _%body3643436608%_)
                                  (if (gx#stx-pair? _%hd3642836605%_)
                                      (let ((_%e3643136610%_
                                             (gx#syntax-e _%hd3642836605%_)))
                                        (let ((_%lp-tl3643336617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3643136610%_)))
                                              (_%lp-hd3643236614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3643136610%_))))
                                          (_%loop3643036601%_
                                           _%lp-tl3643336617%_
                                           (cons _%lp-hd3643236614%_
                                                 _%body3643436608%_))))
                                      (let ((_%body3643536620%_
                                             (reverse _%body3643436608%_)))
                                        (_%__kont3962139622%_
                                         _%body3643536620%_
                                         _%tl3642036572%_
                                         _%hd3642536589%_
                                         _%hd3642236579%_
                                         _%hd3641336549%_))))))
                        (_%loop3643036601%_ _%target3642736595%_ '())))))
              (if (gx#stx-pair? _%__stx3961839619%_)
                  (let ((_%e3641236545%_ (gx#syntax-e _%__stx3961839619%_)))
                    (let ((_%tl3641436552%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3641236545%_)))
                          (_%hd3641336549%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3641236545%_))))
                      (if (gx#stx-pair? _%tl3641436552%_)
                          (let ((_%e3641536555%_
                                 (gx#syntax-e _%tl3641436552%_)))
                            (let ((_%tl3641736562%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3641536555%_)))
                                  (_%hd3641636559%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3641536555%_))))
                              (if (gx#stx-pair? _%hd3641636559%_)
                                  (let ((_%e3641836565%_
                                         (gx#syntax-e _%hd3641636559%_)))
                                    (let ((_%tl3642036572%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3641836565%_)))
                                          (_%hd3641936569%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3641836565%_))))
                                      (if (gx#stx-pair? _%hd3641936569%_)
                                          (let ((_%e3642136575%_
                                                 (gx#syntax-e
                                                  _%hd3641936569%_)))
                                            (let ((_%tl3642336582%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3642136575%_)))
                                                  (_%hd3642236579%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3642136575%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3642336582%_)
                                                  (let ((_%e3642436585%_
                                                         (gx#syntax-e
                                                          _%tl3642336582%_)))
                                                    (let ((_%tl3642636592%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3642436585%_)))
                                                          (_%hd3642536589%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3642436585%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3642636592%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3641736562%_)
                                                              (let ((_%__splice3962339624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl3641736562%_
                              '0)))
                        (let ((_%tl3642936598%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3962339624%_ '1)))
                              (_%target3642736595%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3962339624%_ '0))))
                          (if (gx#stx-null? _%tl3642936598%_)
                              (_%__match3966939670%_
                               _%e3641236545%_
                               _%hd3641336549%_
                               _%tl3641436552%_
                               _%e3641536555%_
                               _%hd3641636559%_
                               _%tl3641736562%_
                               _%e3641836565%_
                               _%hd3641936569%_
                               _%tl3642036572%_
                               _%e3642136575%_
                               _%hd3642236579%_
                               _%tl3642336582%_
                               _%e3642436585%_
                               _%hd3642536589%_
                               _%tl3642636592%_
                               _%__splice3962339624%_
                               _%target3642736595%_
                               _%tl3642936598%_)
                              (let ()
                                (declare (not safe))
                                (_%g3640536457%_)))))
                      (let () (declare (not safe)) (_%g3640536457%_)))
                  (let () (declare (not safe)) (_%g3640536457%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3640536457%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3640536457%_)))))
                                  (if (gx#stx-null? _%hd3641636559%_)
                                      (if (gx#stx-pair/null? _%tl3641736562%_)
                                          (let ((_%__splice3962739628%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl3641736562%_
                                                  '0)))
                                            (let ((_%tl3644536487%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3962739628%_
                                                      '1)))
                                                  (_%target3644336484%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3962739628%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3644536487%_)
                                                  (_%__match3969139692%_
                                                   _%e3641236545%_
                                                   _%hd3641336549%_
                                                   _%tl3641436552%_
                                                   _%e3641536555%_
                                                   _%hd3641636559%_
                                                   _%tl3641736562%_
                                                   _%__splice3962739628%_
                                                   _%target3644336484%_
                                                   _%tl3644536487%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3640536457%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3640536457%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3640536457%_))))))
                          (let () (declare (not safe)) (_%g3640536457%_)))))
                  (let () (declare (not safe)) (_%g3640536457%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx36668%_)
        (let* ((_%__stx3969439695%_ _%$stx36668%_)
               (_%g3667936825%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3969439695%_))))
          (let ((_%__kont3969739698%_
                 (lambda (_%g3668137425%_ _%g3668237427%_ _%g3668337428%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3744937452%_ _%g3745037455%_)
                                  (cons (cons _%g3668337428%_
                                              (cons _%g3744937452%_
                                                    (cons _%g3668137425%_
                                                          '())))
                                        _%g3745037455%_))
                                '()
                                _%g3668237427%_))))
                (_%__kont3970139702%_
                 (lambda (_%g3670537317%_ _%g3670637319%_ _%g3670737320%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3734137344%_ _%g3734237347%_)
                                  (cons (cons _%g3670737320%_
                                              (cons _%g3734137344%_
                                                    (cons _%g3670537317%_
                                                          '())))
                                        _%g3734237347%_))
                                '()
                                _%g3670637319%_))))
                (_%__kont3970539706%_
                 (lambda (_%g3672937219%_ _%g3673037221%_ _%g3673137222%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%g3673137222%_
                                     (cons _%g3673037221%_
                                           (cons _%g3672937219%_ '())))
                               '()))))
                (_%__kont3970739708%_
                 (lambda (_%g3674737145%_ _%g3674837147%_)
                   (cons _%g3674837147%_ (cons _%g3674737145%_ '()))))
                (_%__kont3970939710%_
                 (lambda (_%g3675837093%_ _%g3675937095%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%g3675937095%_
                                           (cons _%g3675837093%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont3971139712%_
                 (lambda (_%g3676637045%_ _%g3676737047%_ _%g3676837048%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%g3676837048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g3676737047%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3676637045%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3971339714%_
                 (lambda (_%g3678136976%_ _%g3678236978%_ _%g3678336979%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g3678336979%_
                                                       (cons _%g3678236978%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3678136976%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3971539716%_
                 (lambda (_%g3679736896%_
                          _%g3679836898%_
                          _%g3679936899%_
                          _%g3680036900%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g3680036900%_
                                                       (cons _%g3679936899%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3679736896%_
                                                             (cons (cons _%g3679836898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match3986739868%_
                    (lambda (_%e3676937005%_
                             _%hd3677037009%_
                             _%tl3677137012%_
                             _%e3677237015%_
                             _%hd3677337019%_
                             _%tl3677437022%_
                             _%e3677537025%_
                             _%hd3677637029%_
                             _%tl3677737032%_)
                      (if (gx#identifier? _%hd3677637029%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40069_|
                               _%hd3677637029%_)
                              (if (gx#stx-pair? _%tl3677737032%_)
                                  (let ((_%e3677837035%_
                                         (gx#syntax-e _%tl3677737032%_)))
                                    (let ((_%tl3678037042%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3677837035%_)))
                                          (_%hd3677937039%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3677837035%_))))
                                      (if (gx#stx-null? _%tl3678037042%_)
                                          (_%__kont3971139712%_
                                           _%hd3677937039%_
                                           _%hd3677337019%_
                                           _%hd3677037009%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3667936825%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3667936825%_)))
                              (let () (declare (not safe)) (_%g3667936825%_)))
                          (if (gx#stx-datum? _%hd3677637029%_)
                              (let ((_%e3679336962%_
                                     (gx#stx-e _%hd3677637029%_)))
                                (if (equal? _%e3679336962%_ '::)
                                    (if (gx#stx-pair? _%tl3677737032%_)
                                        (let ((_%e3679436966%_
                                               (gx#syntax-e _%tl3677737032%_)))
                                          (let ((_%tl3679636973%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3679436966%_)))
                                                (_%hd3679536970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3679436966%_))))
                                            (if (gx#stx-null? _%tl3679636973%_)
                                                (_%__kont3971339714%_
                                                 _%hd3679536970%_
                                                 _%hd3677337019%_
                                                 _%hd3677037009%_)
                                                (if (gx#stx-pair?
                                                     _%tl3679636973%_)
                                                    (let ((_%e3681436876%_
                                                           (gx#syntax-e
                                                            _%tl3679636973%_)))
                                                      (let ((_%tl3681636883%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3681436876%_)))
                    (_%hd3681536880%_
                     (let () (declare (not safe)) (##car _%e3681436876%_))))
                (if (gx#identifier? _%hd3681536880%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g40070_|
                         _%hd3681536880%_)
                        (if (gx#stx-pair? _%tl3681636883%_)
                            (let ((_%e3681736886%_
                                   (gx#syntax-e _%tl3681636883%_)))
                              (let ((_%tl3681936893%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3681736886%_)))
                                    (_%hd3681836890%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3681736886%_))))
                                (if (gx#stx-null? _%tl3681936893%_)
                                    (_%__kont3971539716%_
                                     _%hd3681836890%_
                                     _%hd3679536970%_
                                     _%hd3677337019%_
                                     _%hd3677037009%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3667936825%_)))))
                            (let () (declare (not safe)) (_%g3667936825%_)))
                        (let () (declare (not safe)) (_%g3667936825%_)))
                    (let () (declare (not safe)) (_%g3667936825%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3667936825%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3667936825%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3667936825%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3667936825%_))))))
                   (_%__match3984739848%_
                    (lambda (_%e3676037073%_
                             _%hd3676137077%_
                             _%tl3676237080%_
                             _%e3676337083%_
                             _%hd3676437087%_
                             _%tl3676537090%_)
                      (if (gx#stx-null? _%tl3676537090%_)
                          (_%__kont3970939710%_
                           _%hd3676437087%_
                           _%hd3676137077%_)
                          (if (gx#stx-pair? _%tl3676537090%_)
                              (let ((_%e3677537025%_
                                     (gx#syntax-e _%tl3676537090%_)))
                                (let ((_%tl3677737032%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3677537025%_)))
                                      (_%hd3677637029%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3677537025%_))))
                                  (if (gx#identifier? _%hd3677637029%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40069_|
                                           _%hd3677637029%_)
                                          (if (gx#stx-pair? _%tl3677737032%_)
                                              (let ((_%e3677837035%_
                                                     (gx#syntax-e
                                                      _%tl3677737032%_)))
                                                (let ((_%tl3678037042%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3677837035%_)))
                                                      (_%hd3677937039%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3677837035%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3678037042%_)
                                                      (_%__kont3971139712%_
                                                       _%hd3677937039%_
                                                       _%hd3676437087%_
                                                       _%hd3676137077%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3667936825%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3667936825%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3667936825%_)))
                                      (if (gx#stx-datum? _%hd3677637029%_)
                                          (let ((_%e3679336962%_
                                                 (gx#stx-e _%hd3677637029%_)))
                                            (if (equal? _%e3679336962%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3677737032%_)
                                                    (let ((_%e3679436966%_
                                                           (gx#syntax-e
                                                            _%tl3677737032%_)))
                                                      (let ((_%tl3679636973%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3679436966%_)))
                    (_%hd3679536970%_
                     (let () (declare (not safe)) (##car _%e3679436966%_))))
                (if (gx#stx-null? _%tl3679636973%_)
                    (_%__kont3971339714%_
                     _%hd3679536970%_
                     _%hd3676437087%_
                     _%hd3676137077%_)
                    (if (gx#stx-pair? _%tl3679636973%_)
                        (let ((_%e3681436876%_ (gx#syntax-e _%tl3679636973%_)))
                          (let ((_%tl3681636883%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3681436876%_)))
                                (_%hd3681536880%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3681436876%_))))
                            (if (gx#identifier? _%hd3681536880%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g40070_|
                                     _%hd3681536880%_)
                                    (if (gx#stx-pair? _%tl3681636883%_)
                                        (let ((_%e3681736886%_
                                               (gx#syntax-e _%tl3681636883%_)))
                                          (let ((_%tl3681936893%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3681736886%_)))
                                                (_%hd3681836890%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3681736886%_))))
                                            (if (gx#stx-null? _%tl3681936893%_)
                                                (_%__kont3971539716%_
                                                 _%hd3681836890%_
                                                 _%hd3679536970%_
                                                 _%hd3676437087%_
                                                 _%hd3676137077%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3667936825%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3667936825%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3667936825%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3667936825%_)))))
                        (let () (declare (not safe)) (_%g3667936825%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3667936825%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3667936825%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3667936825%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3667936825%_))))))
                   (_%__match3977739778%_
                    (lambda (_%e3670837249%_
                             _%hd3670937253%_
                             _%tl3671037256%_
                             _%e3671137259%_
                             _%hd3671237263%_
                             _%tl3671337266%_
                             _%e3671437269%_
                             _%hd3671537273%_
                             _%tl3671637276%_
                             _%__splice3970339704%_
                             _%target3671737279%_
                             _%tl3671937282%_)
                      (letrec ((_%loop3672037285%_
                                (lambda (_%hd3671837289%_ _%pred3672437292%_)
                                  (if (gx#stx-pair? _%hd3671837289%_)
                                      (let ((_%e3672137294%_
                                             (gx#syntax-e _%hd3671837289%_)))
                                        (let ((_%lp-tl3672337301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3672137294%_)))
                                              (_%lp-hd3672237298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3672137294%_))))
                                          (_%loop3672037285%_
                                           _%lp-tl3672337301%_
                                           (cons _%lp-hd3672237298%_
                                                 _%pred3672437292%_))))
                                      (let ((_%pred3672537304%_
                                             (reverse _%pred3672437292%_)))
                                        (if (gx#stx-pair? _%tl3671337266%_)
                                            (let ((_%e3672637307%_
                                                   (gx#syntax-e
                                                    _%tl3671337266%_)))
                                              (let ((_%tl3672837314%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3672637307%_)))
                                                    (_%hd3672737311%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3672637307%_))))
                                                (if (gx#stx-null?
                                                     _%tl3672837314%_)
                                                    (_%__kont3970139702%_
                                                     _%hd3672737311%_
                                                     _%pred3672537304%_
                                                     _%hd3670937253%_)
                                                    (_%__match3986739868%_
                                                     _%e3670837249%_
                                                     _%hd3670937253%_
                                                     _%tl3671037256%_
                                                     _%e3671137259%_
                                                     _%hd3671237263%_
                                                     _%tl3671337266%_
                                                     _%e3672637307%_
                                                     _%hd3672737311%_
                                                     _%tl3672837314%_))))
                                            (_%__match3984739848%_
                                             _%e3670837249%_
                                             _%hd3670937253%_
                                             _%tl3671037256%_
                                             _%e3671137259%_
                                             _%hd3671237263%_
                                             _%tl3671337266%_)))))))
                        (_%loop3672037285%_ _%target3671737279%_ '()))))
                   (_%__match3974739748%_
                    (lambda (_%e3668437357%_
                             _%hd3668537361%_
                             _%tl3668637364%_
                             _%e3668737367%_
                             _%hd3668837371%_
                             _%tl3668937374%_
                             _%e3669037377%_
                             _%hd3669137381%_
                             _%tl3669237384%_
                             _%__splice3969939700%_
                             _%target3669337387%_
                             _%tl3669537390%_)
                      (letrec ((_%loop3669637393%_
                                (lambda (_%hd3669437397%_ _%pred3670037400%_)
                                  (if (gx#stx-pair? _%hd3669437397%_)
                                      (let ((_%e3669737402%_
                                             (gx#syntax-e _%hd3669437397%_)))
                                        (let ((_%lp-tl3669937409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3669737402%_)))
                                              (_%lp-hd3669837406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3669737402%_))))
                                          (_%loop3669637393%_
                                           _%lp-tl3669937409%_
                                           (cons _%lp-hd3669837406%_
                                                 _%pred3670037400%_))))
                                      (let ((_%pred3670137412%_
                                             (reverse _%pred3670037400%_)))
                                        (if (gx#stx-pair? _%tl3668937374%_)
                                            (let ((_%e3670237415%_
                                                   (gx#syntax-e
                                                    _%tl3668937374%_)))
                                              (let ((_%tl3670437422%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3670237415%_)))
                                                    (_%hd3670337419%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3670237415%_))))
                                                (if (gx#stx-null?
                                                     _%tl3670437422%_)
                                                    (_%__kont3969739698%_
                                                     _%hd3670337419%_
                                                     _%pred3670137412%_
                                                     _%hd3668537361%_)
                                                    (_%__match3986739868%_
                                                     _%e3668437357%_
                                                     _%hd3668537361%_
                                                     _%tl3668637364%_
                                                     _%e3668737367%_
                                                     _%hd3668837371%_
                                                     _%tl3668937374%_
                                                     _%e3670237415%_
                                                     _%hd3670337419%_
                                                     _%tl3670437422%_))))
                                            (_%__match3984739848%_
                                             _%e3668437357%_
                                             _%hd3668537361%_
                                             _%tl3668637364%_
                                             _%e3668737367%_
                                             _%hd3668837371%_
                                             _%tl3668937374%_)))))))
                        (_%loop3669637393%_ _%target3669337387%_ '())))))
              (if (gx#stx-pair? _%__stx3969439695%_)
                  (let ((_%e3668437357%_ (gx#syntax-e _%__stx3969439695%_)))
                    (let ((_%tl3668637364%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3668437357%_)))
                          (_%hd3668537361%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3668437357%_))))
                      (if (gx#stx-pair? _%tl3668637364%_)
                          (let ((_%e3668737367%_
                                 (gx#syntax-e _%tl3668637364%_)))
                            (let ((_%tl3668937374%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3668737367%_)))
                                  (_%hd3668837371%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3668737367%_))))
                              (if (gx#stx-pair? _%hd3668837371%_)
                                  (let ((_%e3669037377%_
                                         (gx#syntax-e _%hd3668837371%_)))
                                    (let ((_%tl3669237384%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3669037377%_)))
                                          (_%hd3669137381%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3669037377%_))))
                                      (if (gx#identifier? _%hd3669137381%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40071_|
                                               _%hd3669137381%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3669237384%_)
                                                  (let ((_%__splice3969939700%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl3669237384%_
                                                          '0)))
                                                    (let ((_%tl3669537390%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3969939700%_
                                                              '1)))
                                                          (_%target3669337387%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3969939700%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3669537390%_)
                                                          (_%__match3974739748%_
                                                           _%e3668437357%_
                                                           _%hd3668537361%_
                                                           _%tl3668637364%_
                                                           _%e3668737367%_
                                                           _%hd3668837371%_
                                                           _%tl3668937374%_
                                                           _%e3669037377%_
                                                           _%hd3669137381%_
                                                           _%tl3669237384%_
                                                           _%__splice3969939700%_
                                                           _%target3669337387%_
                                                           _%tl3669537390%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3668937374%_)
                                                              (let ((_%e3675537135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3668937374%_)))
                        (let ((_%tl3675737142%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3675537135%_)))
                              (_%hd3675637139%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3675537135%_))))
                          (if (gx#stx-null? _%tl3675737142%_)
                              (_%__kont3970739708%_
                               _%hd3675637139%_
                               _%hd3668837371%_)
                              (if (gx#identifier? _%hd3675637139%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40069_|
                                       _%hd3675637139%_)
                                      (if (gx#stx-pair? _%tl3675737142%_)
                                          (let ((_%e3677837035%_
                                                 (gx#syntax-e
                                                  _%tl3675737142%_)))
                                            (let ((_%tl3678037042%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3677837035%_)))
                                                  (_%hd3677937039%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3677837035%_))))
                                              (if (gx#stx-null?
                                                   _%tl3678037042%_)
                                                  (_%__kont3971139712%_
                                                   _%hd3677937039%_
                                                   _%hd3668837371%_
                                                   _%hd3668537361%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3667936825%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3667936825%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3667936825%_)))
                                  (if (gx#stx-datum? _%hd3675637139%_)
                                      (let ((_%e3679336962%_
                                             (gx#stx-e _%hd3675637139%_)))
                                        (if (equal? _%e3679336962%_ '::)
                                            (if (gx#stx-pair? _%tl3675737142%_)
                                                (let ((_%e3679436966%_
                                                       (gx#syntax-e
                                                        _%tl3675737142%_)))
                                                  (let ((_%tl3679636973%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3679436966%_)))
                                                        (_%hd3679536970%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3679436966%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3679636973%_)
                                                        (_%__kont3971339714%_
                                                         _%hd3679536970%_
                                                         _%hd3668837371%_
                                                         _%hd3668537361%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3679636973%_)
                                                            (let ((_%e3681436876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3679636973%_)))
                      (let ((_%tl3681636883%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3681436876%_)))
                            (_%hd3681536880%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3681436876%_))))
                        (if (gx#identifier? _%hd3681536880%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g40070_|
                                 _%hd3681536880%_)
                                (if (gx#stx-pair? _%tl3681636883%_)
                                    (let ((_%e3681736886%_
                                           (gx#syntax-e _%tl3681636883%_)))
                                      (let ((_%tl3681936893%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3681736886%_)))
                                            (_%hd3681836890%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3681736886%_))))
                                        (if (gx#stx-null? _%tl3681936893%_)
                                            (_%__kont3971539716%_
                                             _%hd3681836890%_
                                             _%hd3679536970%_
                                             _%hd3668837371%_
                                             _%hd3668537361%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3667936825%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3667936825%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3667936825%_)))
                            (let () (declare (not safe)) (_%g3667936825%_)))))
                    (let () (declare (not safe)) (_%g3667936825%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3667936825%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3667936825%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3667936825%_)))))))
                      (if (gx#stx-null? _%tl3668937374%_)
                          (_%__kont3970939710%_
                           _%hd3668837371%_
                           _%hd3668537361%_)
                          (let () (declare (not safe)) (_%g3667936825%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3668937374%_)
                                                      (let ((_%e3675537135%_
                                                             (gx#syntax-e
                                                              _%tl3668937374%_)))
                                                        (let ((_%tl3675737142%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3675537135%_)))
                      (_%hd3675637139%_
                       (let () (declare (not safe)) (##car _%e3675537135%_))))
                  (if (gx#stx-null? _%tl3675737142%_)
                      (_%__kont3970739708%_ _%hd3675637139%_ _%hd3668837371%_)
                      (if (gx#identifier? _%hd3675637139%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40069_|
                               _%hd3675637139%_)
                              (if (gx#stx-pair? _%tl3675737142%_)
                                  (let ((_%e3677837035%_
                                         (gx#syntax-e _%tl3675737142%_)))
                                    (let ((_%tl3678037042%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3677837035%_)))
                                          (_%hd3677937039%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3677837035%_))))
                                      (if (gx#stx-null? _%tl3678037042%_)
                                          (_%__kont3971139712%_
                                           _%hd3677937039%_
                                           _%hd3668837371%_
                                           _%hd3668537361%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3667936825%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3667936825%_)))
                              (let () (declare (not safe)) (_%g3667936825%_)))
                          (if (gx#stx-datum? _%hd3675637139%_)
                              (let ((_%e3679336962%_
                                     (gx#stx-e _%hd3675637139%_)))
                                (if (equal? _%e3679336962%_ '::)
                                    (if (gx#stx-pair? _%tl3675737142%_)
                                        (let ((_%e3679436966%_
                                               (gx#syntax-e _%tl3675737142%_)))
                                          (let ((_%tl3679636973%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3679436966%_)))
                                                (_%hd3679536970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3679436966%_))))
                                            (if (gx#stx-null? _%tl3679636973%_)
                                                (_%__kont3971339714%_
                                                 _%hd3679536970%_
                                                 _%hd3668837371%_
                                                 _%hd3668537361%_)
                                                (if (gx#stx-pair?
                                                     _%tl3679636973%_)
                                                    (let ((_%e3681436876%_
                                                           (gx#syntax-e
                                                            _%tl3679636973%_)))
                                                      (let ((_%tl3681636883%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3681436876%_)))
                    (_%hd3681536880%_
                     (let () (declare (not safe)) (##car _%e3681436876%_))))
                (if (gx#identifier? _%hd3681536880%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g40070_|
                         _%hd3681536880%_)
                        (if (gx#stx-pair? _%tl3681636883%_)
                            (let ((_%e3681736886%_
                                   (gx#syntax-e _%tl3681636883%_)))
                              (let ((_%tl3681936893%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3681736886%_)))
                                    (_%hd3681836890%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3681736886%_))))
                                (if (gx#stx-null? _%tl3681936893%_)
                                    (_%__kont3971539716%_
                                     _%hd3681836890%_
                                     _%hd3679536970%_
                                     _%hd3668837371%_
                                     _%hd3668537361%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3667936825%_)))))
                            (let () (declare (not safe)) (_%g3667936825%_)))
                        (let () (declare (not safe)) (_%g3667936825%_)))
                    (let () (declare (not safe)) (_%g3667936825%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3667936825%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3667936825%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3667936825%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3667936825%_)))))))
              (if (gx#stx-null? _%tl3668937374%_)
                  (_%__kont3970939710%_ _%hd3668837371%_ _%hd3668537361%_)
                  (let () (declare (not safe)) (_%g3667936825%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g40072_|
                                                   _%hd3669137381%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3669237384%_)
                                                      (let ((_%__splice3970339704%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl3669237384%_
                                                              '0)))
                                                        (let ((_%tl3671937282%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice3970339704%_ '1)))
                      (_%target3671737279%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice3970339704%_ '0))))
                  (if (gx#stx-null? _%tl3671937282%_)
                      (_%__match3977739778%_
                       _%e3668437357%_
                       _%hd3668537361%_
                       _%tl3668637364%_
                       _%e3668737367%_
                       _%hd3668837371%_
                       _%tl3668937374%_
                       _%e3669037377%_
                       _%hd3669137381%_
                       _%tl3669237384%_
                       _%__splice3970339704%_
                       _%target3671737279%_
                       _%tl3671937282%_)
                      (if (gx#stx-pair? _%tl3668937374%_)
                          (let ((_%e3675537135%_
                                 (gx#syntax-e _%tl3668937374%_)))
                            (let ((_%tl3675737142%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3675537135%_)))
                                  (_%hd3675637139%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3675537135%_))))
                              (if (gx#stx-null? _%tl3675737142%_)
                                  (_%__kont3970739708%_
                                   _%hd3675637139%_
                                   _%hd3668837371%_)
                                  (if (gx#identifier? _%hd3675637139%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40069_|
                                           _%hd3675637139%_)
                                          (if (gx#stx-pair? _%tl3675737142%_)
                                              (let ((_%e3677837035%_
                                                     (gx#syntax-e
                                                      _%tl3675737142%_)))
                                                (let ((_%tl3678037042%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3677837035%_)))
                                                      (_%hd3677937039%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3677837035%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3678037042%_)
                                                      (_%__kont3971139712%_
                                                       _%hd3677937039%_
                                                       _%hd3668837371%_
                                                       _%hd3668537361%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3667936825%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3667936825%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3667936825%_)))
                                      (if (gx#stx-datum? _%hd3675637139%_)
                                          (let ((_%e3679336962%_
                                                 (gx#stx-e _%hd3675637139%_)))
                                            (if (equal? _%e3679336962%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3675737142%_)
                                                    (let ((_%e3679436966%_
                                                           (gx#syntax-e
                                                            _%tl3675737142%_)))
                                                      (let ((_%tl3679636973%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3679436966%_)))
                    (_%hd3679536970%_
                     (let () (declare (not safe)) (##car _%e3679436966%_))))
                (if (gx#stx-null? _%tl3679636973%_)
                    (_%__kont3971339714%_
                     _%hd3679536970%_
                     _%hd3668837371%_
                     _%hd3668537361%_)
                    (if (gx#stx-pair? _%tl3679636973%_)
                        (let ((_%e3681436876%_ (gx#syntax-e _%tl3679636973%_)))
                          (let ((_%tl3681636883%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3681436876%_)))
                                (_%hd3681536880%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3681436876%_))))
                            (if (gx#identifier? _%hd3681536880%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g40070_|
                                     _%hd3681536880%_)
                                    (if (gx#stx-pair? _%tl3681636883%_)
                                        (let ((_%e3681736886%_
                                               (gx#syntax-e _%tl3681636883%_)))
                                          (let ((_%tl3681936893%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3681736886%_)))
                                                (_%hd3681836890%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3681736886%_))))
                                            (if (gx#stx-null? _%tl3681936893%_)
                                                (_%__kont3971539716%_
                                                 _%hd3681836890%_
                                                 _%hd3679536970%_
                                                 _%hd3668837371%_
                                                 _%hd3668537361%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3667936825%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3667936825%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3667936825%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3667936825%_)))))
                        (let () (declare (not safe)) (_%g3667936825%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3667936825%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3667936825%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3667936825%_)))))))
                          (if (gx#stx-null? _%tl3668937374%_)
                              (_%__kont3970939710%_
                               _%hd3668837371%_
                               _%hd3668537361%_)
                              (let ()
                                (declare (not safe))
                                (_%g3667936825%_)))))))
              (if (gx#stx-pair? _%tl3668937374%_)
                  (let ((_%e3675537135%_ (gx#syntax-e _%tl3668937374%_)))
                    (let ((_%tl3675737142%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3675537135%_)))
                          (_%hd3675637139%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3675537135%_))))
                      (if (gx#stx-null? _%tl3675737142%_)
                          (_%__kont3970739708%_
                           _%hd3675637139%_
                           _%hd3668837371%_)
                          (if (gx#identifier? _%hd3675637139%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40069_|
                                   _%hd3675637139%_)
                                  (if (gx#stx-pair? _%tl3675737142%_)
                                      (let ((_%e3677837035%_
                                             (gx#syntax-e _%tl3675737142%_)))
                                        (let ((_%tl3678037042%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3677837035%_)))
                                              (_%hd3677937039%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3677837035%_))))
                                          (if (gx#stx-null? _%tl3678037042%_)
                                              (_%__kont3971139712%_
                                               _%hd3677937039%_
                                               _%hd3668837371%_
                                               _%hd3668537361%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3667936825%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3667936825%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3667936825%_)))
                              (if (gx#stx-datum? _%hd3675637139%_)
                                  (let ((_%e3679336962%_
                                         (gx#stx-e _%hd3675637139%_)))
                                    (if (equal? _%e3679336962%_ '::)
                                        (if (gx#stx-pair? _%tl3675737142%_)
                                            (let ((_%e3679436966%_
                                                   (gx#syntax-e
                                                    _%tl3675737142%_)))
                                              (let ((_%tl3679636973%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3679436966%_)))
                                                    (_%hd3679536970%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3679436966%_))))
                                                (if (gx#stx-null?
                                                     _%tl3679636973%_)
                                                    (_%__kont3971339714%_
                                                     _%hd3679536970%_
                                                     _%hd3668837371%_
                                                     _%hd3668537361%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3679636973%_)
                                                        (let ((_%e3681436876%_
                                                               (gx#syntax-e
                                                                _%tl3679636973%_)))
                                                          (let ((_%tl3681636883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3681436876%_)))
                        (_%hd3681536880%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3681436876%_))))
                    (if (gx#identifier? _%hd3681536880%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40070_|
                             _%hd3681536880%_)
                            (if (gx#stx-pair? _%tl3681636883%_)
                                (let ((_%e3681736886%_
                                       (gx#syntax-e _%tl3681636883%_)))
                                  (let ((_%tl3681936893%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3681736886%_)))
                                        (_%hd3681836890%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3681736886%_))))
                                    (if (gx#stx-null? _%tl3681936893%_)
                                        (_%__kont3971539716%_
                                         _%hd3681836890%_
                                         _%hd3679536970%_
                                         _%hd3668837371%_
                                         _%hd3668537361%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3667936825%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3667936825%_)))
                            (let () (declare (not safe)) (_%g3667936825%_)))
                        (let () (declare (not safe)) (_%g3667936825%_)))))
                (let () (declare (not safe)) (_%g3667936825%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3667936825%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3667936825%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3667936825%_)))))))
                  (if (gx#stx-null? _%tl3668937374%_)
                      (_%__kont3970939710%_ _%hd3668837371%_ _%hd3668537361%_)
                      (let () (declare (not safe)) (_%g3667936825%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40073_|
                                                       _%hd3669137381%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3669237384%_)
                                                          (let ((_%e3674137199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3669237384%_)))
                    (let ((_%tl3674337206%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3674137199%_)))
                          (_%hd3674237203%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3674137199%_))))
                      (if (gx#stx-null? _%tl3674337206%_)
                          (if (gx#stx-pair? _%tl3668937374%_)
                              (let ((_%e3674437209%_
                                     (gx#syntax-e _%tl3668937374%_)))
                                (let ((_%tl3674637216%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3674437209%_)))
                                      (_%hd3674537213%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3674437209%_))))
                                  (if (gx#stx-null? _%tl3674637216%_)
                                      (_%__kont3970539706%_
                                       _%hd3674537213%_
                                       _%hd3674237203%_
                                       _%hd3668537361%_)
                                      (if (gx#identifier? _%hd3674537213%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40069_|
                                               _%hd3674537213%_)
                                              (if (gx#stx-pair?
                                                   _%tl3674637216%_)
                                                  (let ((_%e3677837035%_
                                                         (gx#syntax-e
                                                          _%tl3674637216%_)))
                                                    (let ((_%tl3678037042%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3677837035%_)))
                                                          (_%hd3677937039%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3677837035%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3678037042%_)
                                                          (_%__kont3971139712%_
                                                           _%hd3677937039%_
                                                           _%hd3668837371%_
                                                           _%hd3668537361%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3667936825%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3667936825%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3667936825%_)))
                                          (if (gx#stx-datum? _%hd3674537213%_)
                                              (let ((_%e3679336962%_
                                                     (gx#stx-e
                                                      _%hd3674537213%_)))
                                                (if (equal? _%e3679336962%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3674637216%_)
                                                        (let ((_%e3679436966%_
                                                               (gx#syntax-e
                                                                _%tl3674637216%_)))
                                                          (let ((_%tl3679636973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3679436966%_)))
                        (_%hd3679536970%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3679436966%_))))
                    (if (gx#stx-null? _%tl3679636973%_)
                        (_%__kont3971339714%_
                         _%hd3679536970%_
                         _%hd3668837371%_
                         _%hd3668537361%_)
                        (if (gx#stx-pair? _%tl3679636973%_)
                            (let ((_%e3681436876%_
                                   (gx#syntax-e _%tl3679636973%_)))
                              (let ((_%tl3681636883%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3681436876%_)))
                                    (_%hd3681536880%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3681436876%_))))
                                (if (gx#identifier? _%hd3681536880%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40070_|
                                         _%hd3681536880%_)
                                        (if (gx#stx-pair? _%tl3681636883%_)
                                            (let ((_%e3681736886%_
                                                   (gx#syntax-e
                                                    _%tl3681636883%_)))
                                              (let ((_%tl3681936893%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3681736886%_)))
                                                    (_%hd3681836890%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3681736886%_))))
                                                (if (gx#stx-null?
                                                     _%tl3681936893%_)
                                                    (_%__kont3971539716%_
                                                     _%hd3681836890%_
                                                     _%hd3679536970%_
                                                     _%hd3668837371%_
                                                     _%hd3668537361%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3667936825%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3667936825%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3667936825%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3667936825%_)))))
                            (let () (declare (not safe)) (_%g3667936825%_))))))
                (let () (declare (not safe)) (_%g3667936825%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3667936825%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3667936825%_)))))))
                              (if (gx#stx-null? _%tl3668937374%_)
                                  (_%__kont3970939710%_
                                   _%hd3668837371%_
                                   _%hd3668537361%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3667936825%_))))
                          (if (gx#stx-pair? _%tl3668937374%_)
                              (let ((_%e3675537135%_
                                     (gx#syntax-e _%tl3668937374%_)))
                                (let ((_%tl3675737142%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3675537135%_)))
                                      (_%hd3675637139%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3675537135%_))))
                                  (if (gx#stx-null? _%tl3675737142%_)
                                      (_%__kont3970739708%_
                                       _%hd3675637139%_
                                       _%hd3668837371%_)
                                      (if (gx#identifier? _%hd3675637139%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40069_|
                                               _%hd3675637139%_)
                                              (if (gx#stx-pair?
                                                   _%tl3675737142%_)
                                                  (let ((_%e3677837035%_
                                                         (gx#syntax-e
                                                          _%tl3675737142%_)))
                                                    (let ((_%tl3678037042%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3677837035%_)))
                                                          (_%hd3677937039%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3677837035%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3678037042%_)
                                                          (_%__kont3971139712%_
                                                           _%hd3677937039%_
                                                           _%hd3668837371%_
                                                           _%hd3668537361%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3667936825%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3667936825%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3667936825%_)))
                                          (if (gx#stx-datum? _%hd3675637139%_)
                                              (let ((_%e3679336962%_
                                                     (gx#stx-e
                                                      _%hd3675637139%_)))
                                                (if (equal? _%e3679336962%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3675737142%_)
                                                        (let ((_%e3679436966%_
                                                               (gx#syntax-e
                                                                _%tl3675737142%_)))
                                                          (let ((_%tl3679636973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3679436966%_)))
                        (_%hd3679536970%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3679436966%_))))
                    (if (gx#stx-null? _%tl3679636973%_)
                        (_%__kont3971339714%_
                         _%hd3679536970%_
                         _%hd3668837371%_
                         _%hd3668537361%_)
                        (if (gx#stx-pair? _%tl3679636973%_)
                            (let ((_%e3681436876%_
                                   (gx#syntax-e _%tl3679636973%_)))
                              (let ((_%tl3681636883%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3681436876%_)))
                                    (_%hd3681536880%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3681436876%_))))
                                (if (gx#identifier? _%hd3681536880%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40070_|
                                         _%hd3681536880%_)
                                        (if (gx#stx-pair? _%tl3681636883%_)
                                            (let ((_%e3681736886%_
                                                   (gx#syntax-e
                                                    _%tl3681636883%_)))
                                              (let ((_%tl3681936893%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3681736886%_)))
                                                    (_%hd3681836890%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3681736886%_))))
                                                (if (gx#stx-null?
                                                     _%tl3681936893%_)
                                                    (_%__kont3971539716%_
                                                     _%hd3681836890%_
                                                     _%hd3679536970%_
                                                     _%hd3668837371%_
                                                     _%hd3668537361%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3667936825%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3667936825%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3667936825%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3667936825%_)))))
                            (let () (declare (not safe)) (_%g3667936825%_))))))
                (let () (declare (not safe)) (_%g3667936825%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3667936825%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3667936825%_)))))))
                              (if (gx#stx-null? _%tl3668937374%_)
                                  (_%__kont3970939710%_
                                   _%hd3668837371%_
                                   _%hd3668537361%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3667936825%_)))))))
                  (if (gx#stx-pair? _%tl3668937374%_)
                      (let ((_%e3675537135%_ (gx#syntax-e _%tl3668937374%_)))
                        (let ((_%tl3675737142%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3675537135%_)))
                              (_%hd3675637139%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3675537135%_))))
                          (if (gx#stx-null? _%tl3675737142%_)
                              (_%__kont3970739708%_
                               _%hd3675637139%_
                               _%hd3668837371%_)
                              (if (gx#identifier? _%hd3675637139%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40069_|
                                       _%hd3675637139%_)
                                      (if (gx#stx-pair? _%tl3675737142%_)
                                          (let ((_%e3677837035%_
                                                 (gx#syntax-e
                                                  _%tl3675737142%_)))
                                            (let ((_%tl3678037042%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3677837035%_)))
                                                  (_%hd3677937039%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3677837035%_))))
                                              (if (gx#stx-null?
                                                   _%tl3678037042%_)
                                                  (_%__kont3971139712%_
                                                   _%hd3677937039%_
                                                   _%hd3668837371%_
                                                   _%hd3668537361%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3667936825%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3667936825%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3667936825%_)))
                                  (if (gx#stx-datum? _%hd3675637139%_)
                                      (let ((_%e3679336962%_
                                             (gx#stx-e _%hd3675637139%_)))
                                        (if (equal? _%e3679336962%_ '::)
                                            (if (gx#stx-pair? _%tl3675737142%_)
                                                (let ((_%e3679436966%_
                                                       (gx#syntax-e
                                                        _%tl3675737142%_)))
                                                  (let ((_%tl3679636973%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3679436966%_)))
                                                        (_%hd3679536970%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3679436966%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3679636973%_)
                                                        (_%__kont3971339714%_
                                                         _%hd3679536970%_
                                                         _%hd3668837371%_
                                                         _%hd3668537361%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3679636973%_)
                                                            (let ((_%e3681436876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3679636973%_)))
                      (let ((_%tl3681636883%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3681436876%_)))
                            (_%hd3681536880%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3681436876%_))))
                        (if (gx#identifier? _%hd3681536880%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g40070_|
                                 _%hd3681536880%_)
                                (if (gx#stx-pair? _%tl3681636883%_)
                                    (let ((_%e3681736886%_
                                           (gx#syntax-e _%tl3681636883%_)))
                                      (let ((_%tl3681936893%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3681736886%_)))
                                            (_%hd3681836890%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3681736886%_))))
                                        (if (gx#stx-null? _%tl3681936893%_)
                                            (_%__kont3971539716%_
                                             _%hd3681836890%_
                                             _%hd3679536970%_
                                             _%hd3668837371%_
                                             _%hd3668537361%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3667936825%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3667936825%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3667936825%_)))
                            (let () (declare (not safe)) (_%g3667936825%_)))))
                    (let () (declare (not safe)) (_%g3667936825%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3667936825%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3667936825%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3667936825%_)))))))
                      (if (gx#stx-null? _%tl3668937374%_)
                          (_%__kont3970939710%_
                           _%hd3668837371%_
                           _%hd3668537361%_)
                          (let () (declare (not safe)) (_%g3667936825%_)))))
              (if (gx#stx-pair? _%tl3668937374%_)
                  (let ((_%e3675537135%_ (gx#syntax-e _%tl3668937374%_)))
                    (let ((_%tl3675737142%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3675537135%_)))
                          (_%hd3675637139%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3675537135%_))))
                      (if (gx#stx-null? _%tl3675737142%_)
                          (_%__kont3970739708%_
                           _%hd3675637139%_
                           _%hd3668837371%_)
                          (if (gx#identifier? _%hd3675637139%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40069_|
                                   _%hd3675637139%_)
                                  (if (gx#stx-pair? _%tl3675737142%_)
                                      (let ((_%e3677837035%_
                                             (gx#syntax-e _%tl3675737142%_)))
                                        (let ((_%tl3678037042%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3677837035%_)))
                                              (_%hd3677937039%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3677837035%_))))
                                          (if (gx#stx-null? _%tl3678037042%_)
                                              (_%__kont3971139712%_
                                               _%hd3677937039%_
                                               _%hd3668837371%_
                                               _%hd3668537361%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3667936825%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3667936825%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3667936825%_)))
                              (if (gx#stx-datum? _%hd3675637139%_)
                                  (let ((_%e3679336962%_
                                         (gx#stx-e _%hd3675637139%_)))
                                    (if (equal? _%e3679336962%_ '::)
                                        (if (gx#stx-pair? _%tl3675737142%_)
                                            (let ((_%e3679436966%_
                                                   (gx#syntax-e
                                                    _%tl3675737142%_)))
                                              (let ((_%tl3679636973%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3679436966%_)))
                                                    (_%hd3679536970%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3679436966%_))))
                                                (if (gx#stx-null?
                                                     _%tl3679636973%_)
                                                    (_%__kont3971339714%_
                                                     _%hd3679536970%_
                                                     _%hd3668837371%_
                                                     _%hd3668537361%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3679636973%_)
                                                        (let ((_%e3681436876%_
                                                               (gx#syntax-e
                                                                _%tl3679636973%_)))
                                                          (let ((_%tl3681636883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3681436876%_)))
                        (_%hd3681536880%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3681436876%_))))
                    (if (gx#identifier? _%hd3681536880%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40070_|
                             _%hd3681536880%_)
                            (if (gx#stx-pair? _%tl3681636883%_)
                                (let ((_%e3681736886%_
                                       (gx#syntax-e _%tl3681636883%_)))
                                  (let ((_%tl3681936893%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3681736886%_)))
                                        (_%hd3681836890%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3681736886%_))))
                                    (if (gx#stx-null? _%tl3681936893%_)
                                        (_%__kont3971539716%_
                                         _%hd3681836890%_
                                         _%hd3679536970%_
                                         _%hd3668837371%_
                                         _%hd3668537361%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3667936825%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3667936825%_)))
                            (let () (declare (not safe)) (_%g3667936825%_)))
                        (let () (declare (not safe)) (_%g3667936825%_)))))
                (let () (declare (not safe)) (_%g3667936825%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3667936825%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3667936825%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3667936825%_)))))))
                  (if (gx#stx-null? _%tl3668937374%_)
                      (_%__kont3970939710%_ _%hd3668837371%_ _%hd3668537361%_)
                      (let () (declare (not safe)) (_%g3667936825%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3668937374%_)
                                              (let ((_%e3675537135%_
                                                     (gx#syntax-e
                                                      _%tl3668937374%_)))
                                                (let ((_%tl3675737142%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3675537135%_)))
                                                      (_%hd3675637139%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3675537135%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3675737142%_)
                                                      (_%__kont3970739708%_
                                                       _%hd3675637139%_
                                                       _%hd3668837371%_)
                                                      (if (gx#identifier?
                                                           _%hd3675637139%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g40069_|
                                                               _%hd3675637139%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3675737142%_)
                          (let ((_%e3677837035%_
                                 (gx#syntax-e _%tl3675737142%_)))
                            (let ((_%tl3678037042%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3677837035%_)))
                                  (_%hd3677937039%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3677837035%_))))
                              (if (gx#stx-null? _%tl3678037042%_)
                                  (_%__kont3971139712%_
                                   _%hd3677937039%_
                                   _%hd3668837371%_
                                   _%hd3668537361%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3667936825%_)))))
                          (let () (declare (not safe)) (_%g3667936825%_)))
                      (let () (declare (not safe)) (_%g3667936825%_)))
                  (if (gx#stx-datum? _%hd3675637139%_)
                      (let ((_%e3679336962%_ (gx#stx-e _%hd3675637139%_)))
                        (if (equal? _%e3679336962%_ '::)
                            (if (gx#stx-pair? _%tl3675737142%_)
                                (let ((_%e3679436966%_
                                       (gx#syntax-e _%tl3675737142%_)))
                                  (let ((_%tl3679636973%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3679436966%_)))
                                        (_%hd3679536970%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3679436966%_))))
                                    (if (gx#stx-null? _%tl3679636973%_)
                                        (_%__kont3971339714%_
                                         _%hd3679536970%_
                                         _%hd3668837371%_
                                         _%hd3668537361%_)
                                        (if (gx#stx-pair? _%tl3679636973%_)
                                            (let ((_%e3681436876%_
                                                   (gx#syntax-e
                                                    _%tl3679636973%_)))
                                              (let ((_%tl3681636883%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3681436876%_)))
                                                    (_%hd3681536880%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3681436876%_))))
                                                (if (gx#identifier?
                                                     _%hd3681536880%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g40070_|
                                                         _%hd3681536880%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3681636883%_)
                                                            (let ((_%e3681736886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3681636883%_)))
                      (let ((_%tl3681936893%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3681736886%_)))
                            (_%hd3681836890%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3681736886%_))))
                        (if (gx#stx-null? _%tl3681936893%_)
                            (_%__kont3971539716%_
                             _%hd3681836890%_
                             _%hd3679536970%_
                             _%hd3668837371%_
                             _%hd3668537361%_)
                            (let () (declare (not safe)) (_%g3667936825%_)))))
                    (let () (declare (not safe)) (_%g3667936825%_)))
                (let () (declare (not safe)) (_%g3667936825%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3667936825%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3667936825%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3667936825%_)))
                            (let () (declare (not safe)) (_%g3667936825%_))))
                      (let () (declare (not safe)) (_%g3667936825%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3668937374%_)
                                                  (_%__kont3970939710%_
                                                   _%hd3668837371%_
                                                   _%hd3668537361%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3667936825%_)))))))
                                  (if (gx#stx-pair? _%tl3668937374%_)
                                      (let ((_%e3675537135%_
                                             (gx#syntax-e _%tl3668937374%_)))
                                        (let ((_%tl3675737142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3675537135%_)))
                                              (_%hd3675637139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3675537135%_))))
                                          (if (gx#stx-null? _%tl3675737142%_)
                                              (_%__kont3970739708%_
                                               _%hd3675637139%_
                                               _%hd3668837371%_)
                                              (if (gx#identifier?
                                                   _%hd3675637139%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40069_|
                                                       _%hd3675637139%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3675737142%_)
                                                          (let ((_%e3677837035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3675737142%_)))
                    (let ((_%tl3678037042%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3677837035%_)))
                          (_%hd3677937039%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3677837035%_))))
                      (if (gx#stx-null? _%tl3678037042%_)
                          (_%__kont3971139712%_
                           _%hd3677937039%_
                           _%hd3668837371%_
                           _%hd3668537361%_)
                          (let () (declare (not safe)) (_%g3667936825%_)))))
                  (let () (declare (not safe)) (_%g3667936825%_)))
              (let () (declare (not safe)) (_%g3667936825%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3675637139%_)
                                                      (let ((_%e3679336962%_
                                                             (gx#stx-e
                                                              _%hd3675637139%_)))
                                                        (if (equal? _%e3679336962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3675737142%_)
                        (let ((_%e3679436966%_ (gx#syntax-e _%tl3675737142%_)))
                          (let ((_%tl3679636973%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3679436966%_)))
                                (_%hd3679536970%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3679436966%_))))
                            (if (gx#stx-null? _%tl3679636973%_)
                                (_%__kont3971339714%_
                                 _%hd3679536970%_
                                 _%hd3668837371%_
                                 _%hd3668537361%_)
                                (if (gx#stx-pair? _%tl3679636973%_)
                                    (let ((_%e3681436876%_
                                           (gx#syntax-e _%tl3679636973%_)))
                                      (let ((_%tl3681636883%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3681436876%_)))
                                            (_%hd3681536880%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3681436876%_))))
                                        (if (gx#identifier? _%hd3681536880%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g40070_|
                                                 _%hd3681536880%_)
                                                (if (gx#stx-pair?
                                                     _%tl3681636883%_)
                                                    (let ((_%e3681736886%_
                                                           (gx#syntax-e
                                                            _%tl3681636883%_)))
                                                      (let ((_%tl3681936893%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3681736886%_)))
                    (_%hd3681836890%_
                     (let () (declare (not safe)) (##car _%e3681736886%_))))
                (if (gx#stx-null? _%tl3681936893%_)
                    (_%__kont3971539716%_
                     _%hd3681836890%_
                     _%hd3679536970%_
                     _%hd3668837371%_
                     _%hd3668537361%_)
                    (let () (declare (not safe)) (_%g3667936825%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3667936825%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3667936825%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3667936825%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3667936825%_))))))
                        (let () (declare (not safe)) (_%g3667936825%_)))
                    (let () (declare (not safe)) (_%g3667936825%_))))
              (let () (declare (not safe)) (_%g3667936825%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3668937374%_)
                                          (_%__kont3970939710%_
                                           _%hd3668837371%_
                                           _%hd3668537361%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3667936825%_)))))))
                          (let () (declare (not safe)) (_%g3667936825%_)))))
                  (let () (declare (not safe)) (_%g3667936825%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37464%_)
        (let* ((_%__stx3996239963%_ _%$stx37464%_)
               (_%g3746937503%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3996239963%_))))
          (let ((_%__kont3996539966%_
                 (lambda (_%g3747137607%_ _%g3747237609%_ _%g3747337610%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%g3747337610%_
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'make-match-macro)
                                           (cons 'macro:
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '#f
                                        '$match-e)
                                       (cons _%g3747237609%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%g3747137607%_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'lambda)
                                       (cons (cons (gx#datum->syntax '#f '$stx)
                                                   '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'syntax-case)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '$stx)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (cons 'match:
                                               (gx#datum->syntax '#f 'body))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'core-apply-expander)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$match-e)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-wrap-source)
                               (cons (cons (gx#datum->syntax '#f 'syntax)
                                           (cons (gx#datum->syntax '#f 'body)
                                                 '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'stx-source)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$stx)
                                                       '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f '_)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'core-apply-expander)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '$macro-e)
                         (cons (gx#datum->syntax '#f '$stx) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3996739968%_
                 (lambda (_%g3748637540%_ _%g3748737542%_ _%g3748837543%_)
                   (cons _%g3748837543%_
                         (cons _%g3748737542%_
                               (cons _%g3748637540%_
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$stx)
                                                             '())
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'raise-syntax-error)
                           (cons '#f
                                 (cons '"bad syntax; no macro definition for defsyntax-for-match"
                                       (cons (gx#datum->syntax '#f '$stx)
                                             '()))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let ((_%__match3999539996%_
                   (lambda (_%e3747437567%_
                            _%hd3747537571%_
                            _%tl3747637574%_
                            _%e3747737577%_
                            _%hd3747837581%_
                            _%tl3747937584%_
                            _%e3748037587%_
                            _%hd3748137591%_
                            _%tl3748237594%_
                            _%e3748337597%_
                            _%hd3748437601%_
                            _%tl3748537604%_)
                     (let ((_%g3747137607%_ _%hd3748437601%_)
                           (_%g3747237609%_ _%hd3748137591%_)
                           (_%g3747337610%_ _%hd3747837581%_))
                       (if (gx#identifier? _%g3747337610%_)
                           (_%__kont3996539966%_
                            _%g3747137607%_
                            _%g3747237609%_
                            _%g3747337610%_)
                           (let () (declare (not safe)) (_%g3746937503%_)))))))
              (if (gx#stx-pair? _%__stx3996239963%_)
                  (let ((_%e3747437567%_ (gx#syntax-e _%__stx3996239963%_)))
                    (let ((_%tl3747637574%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3747437567%_)))
                          (_%hd3747537571%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3747437567%_))))
                      (if (gx#stx-pair? _%tl3747637574%_)
                          (let ((_%e3747737577%_
                                 (gx#syntax-e _%tl3747637574%_)))
                            (let ((_%tl3747937584%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3747737577%_)))
                                  (_%hd3747837581%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3747737577%_))))
                              (if (gx#stx-pair? _%tl3747937584%_)
                                  (let ((_%e3748037587%_
                                         (gx#syntax-e _%tl3747937584%_)))
                                    (let ((_%tl3748237594%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3748037587%_)))
                                          (_%hd3748137591%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3748037587%_))))
                                      (if (gx#stx-pair? _%tl3748237594%_)
                                          (let ((_%e3748337597%_
                                                 (gx#syntax-e
                                                  _%tl3748237594%_)))
                                            (let ((_%tl3748537604%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3748337597%_)))
                                                  (_%hd3748437601%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3748337597%_))))
                                              (if (gx#stx-null?
                                                   _%tl3748537604%_)
                                                  (_%__match3999539996%_
                                                   _%e3747437567%_
                                                   _%hd3747537571%_
                                                   _%tl3747637574%_
                                                   _%e3747737577%_
                                                   _%hd3747837581%_
                                                   _%tl3747937584%_
                                                   _%e3748037587%_
                                                   _%hd3748137591%_
                                                   _%tl3748237594%_
                                                   _%e3748337597%_
                                                   _%hd3748437601%_
                                                   _%tl3748537604%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3746937503%_)))))
                                          (if (gx#stx-null? _%tl3748237594%_)
                                              (_%__kont3996739968%_
                                               _%hd3748137591%_
                                               _%hd3747837581%_
                                               _%hd3747537571%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3746937503%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3746937503%_)))))
                          (let () (declare (not safe)) (_%g3746937503%_)))))
                  (let () (declare (not safe)) (_%g3746937503%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx37632%_)
        (let* ((_%g3763637651%_
                (lambda (_%g3763737647%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3763737647%_)))
               (_%g3763537694%_
                (lambda (_%g3763737655%_)
                  (if (gx#stx-pair? _%g3763737655%_)
                      (let ((_%e3764037658%_ (gx#syntax-e _%g3763737655%_)))
                        (let ((_%hd3764137662%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3764037658%_)))
                              (_%tl3764237665%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3764037658%_))))
                          (if (gx#stx-pair? _%tl3764237665%_)
                              (let ((_%e3764337668%_
                                     (gx#syntax-e _%tl3764237665%_)))
                                (let ((_%hd3764437672%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3764337668%_)))
                                      (_%tl3764537675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3764337668%_))))
                                  ((lambda (_%g3763837678%_ _%g3763937680%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%g3763937680%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%g3763837678%_)
                                                       '()))))
                                   _%tl3764537675%_
                                   _%hd3764437672%_)))
                              (_%g3763637651%_ _%g3763737655%_))))
                      (_%g3763637651%_ _%g3763737655%_)))))
          (_%g3763537694%_ _%$stx37632%_))))))
