(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g39840_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39841_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39842_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39843_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39844_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39845_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39846_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39847_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39848_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39849_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39850_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39851_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39852_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39853_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39854_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39867_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39875_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39876_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39877_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39882_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39883_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39884_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39885_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39886_|
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
      (lambda _%$args35139%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35139%_)))
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
      (lambda (_%stx35136%_)
        (if (gx#identifier? _%stx35136%_)
            (let ((__tmp39839 (gx#syntax-local-value _%stx35136%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp39839))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx33436%_ _%match-stx33438%_)
        (letrec ((_%parse133440%_
                  (lambda (_%hd33799%_)
                    (let* ((_%__stx3762737628%_ _%hd33799%_)
                           (_%g3382533967%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3762737628%_))))
                      (let ((_%__kont3763037631%_
                             (lambda (_%L34899%_ _%L34901%_)
                               (let* ((_%__stx3754737548%_ _%L34899%_)
                                      (_%g3491834951%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3754737548%_))))
                                 (let ((_%__kont3755037551%_
                                        (lambda ()
                                          (cons '?: (cons _%L34901%_ '()))))
                                       (_%__kont3755237553%_
                                        (lambda (_%L35092%_)
                                          (cons '?:
                                                (cons _%L34901%_
                                                      (cons (_%parse133440%_
                                                             _%L35092%_)
                                                            '())))))
                                       (_%__kont3755437555%_
                                        (lambda (_%L35062%_)
                                          (cons '?:
                                                (cons _%L34901%_
                                                      (cons '=>:
                                                            (cons (_%parse133440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L35062%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3755637557%_
                                        (lambda (_%L35013%_ _%L35015%_)
                                          (cons '?:
                                                (cons _%L34901%_
                                                      (cons '::
                                                            (cons _%L35015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse133440%_ _%L35013%_) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3755837559%_
                                        (lambda ()
                                          (_%parse-error33447%_ _%hd33799%_))))
                                   (let ((_%g3491435103%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3754737548%_)
                                                (let ((_%e3492135082%_
                                                       (gx#syntax-e
                                                        _%__stx3754737548%_)))
                                                  (let ((_%tl3492335089%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3492135082%_)))
                                                        (_%hd3492235086%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3492135082%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3492335089%_)
                                                        (_%__kont3755237553%_
                                                         _%hd3492235086%_)
                                                        (if (gx#identifier?
                                                             _%hd3492235086%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39840_|
                         _%hd3492235086%_)
                        (if (gx#stx-pair? _%tl3492335089%_)
                            (let ((_%e3492835052%_
                                   (gx#syntax-e _%tl3492335089%_)))
                              (let ((_%tl3493035059%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3492835052%_)))
                                    (_%hd3492935056%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3492835052%_))))
                                (if (gx#stx-null? _%tl3493035059%_)
                                    (_%__kont3755437555%_ _%hd3492935056%_)
                                    (_%__kont3755837559%_))))
                            (_%__kont3755837559%_))
                        (_%__kont3755837559%_))
                    (if (gx#stx-datum? _%hd3492235086%_)
                        (let ((_%e3493634979%_ (gx#stx-e _%hd3492235086%_)))
                          (if (equal? _%e3493634979%_ '::)
                              (if (gx#stx-pair? _%tl3492335089%_)
                                  (let ((_%e3493734983%_
                                         (gx#syntax-e _%tl3492335089%_)))
                                    (let ((_%tl3493934990%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3493734983%_)))
                                          (_%hd3493834987%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3493734983%_))))
                                      (if (gx#stx-pair? _%tl3493934990%_)
                                          (let ((_%e3494034993%_
                                                 (gx#syntax-e
                                                  _%tl3493934990%_)))
                                            (let ((_%tl3494235000%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3494034993%_)))
                                                  (_%hd3494134997%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3494034993%_))))
                                              (if (gx#identifier?
                                                   _%hd3494134997%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39841_|
                                                       _%hd3494134997%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3494235000%_)
                                                          (let ((_%e3494335003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3494235000%_)))
                    (let ((_%tl3494535010%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3494335003%_)))
                          (_%hd3494435007%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3494335003%_))))
                      (if (gx#stx-null? _%tl3494535010%_)
                          (_%__kont3755637557%_
                           _%hd3494435007%_
                           _%hd3493834987%_)
                          (_%__kont3755837559%_))))
                  (_%__kont3755837559%_))
              (_%__kont3755837559%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3755837559%_))))
                                          (_%__kont3755837559%_))))
                                  (_%__kont3755837559%_))
                              (_%__kont3755837559%_)))
                        (_%__kont3755837559%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3755837559%_)))))
                                     (if (gx#stx-null? _%__stx3754737548%_)
                                         (_%__kont3755037551%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3491435103%_))))))))
                            (_%__kont3763237633%_
                             (lambda (_%L34804%_)
                               (let* ((_%__stx3752937530%_ _%L34804%_)
                                      (_%g3481634827%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3752937530%_))))
                                 (let ((_%__kont3753237533%_
                                        (lambda (_%L34855%_)
                                          (_%parse133440%_ _%L34855%_)))
                                       (_%__kont3753437535%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse133440%_
                                                 _%L34804%_)))))
                                   (if (gx#stx-pair? _%__stx3752937530%_)
                                       (let ((_%e3481934845%_
                                              (gx#syntax-e
                                               _%__stx3752937530%_)))
                                         (let ((_%tl3482134852%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3481934845%_)))
                                               (_%hd3482034849%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3481934845%_))))
                                           (if (gx#stx-null? _%tl3482134852%_)
                                               (_%__kont3753237533%_
                                                _%hd3482034849%_)
                                               (_%__kont3753437535%_))))
                                       (_%__kont3753437535%_))))))
                            (_%__kont3763437635%_
                             (lambda (_%L34719%_)
                               (let* ((_%__stx3751137512%_ _%L34719%_)
                                      (_%g3473134742%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3751137512%_))))
                                 (let ((_%__kont3751437515%_
                                        (lambda (_%L34770%_)
                                          (_%parse133440%_ _%L34770%_)))
                                       (_%__kont3751637517%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse133440%_
                                                 _%L34719%_)))))
                                   (if (gx#stx-pair? _%__stx3751137512%_)
                                       (let ((_%e3473434760%_
                                              (gx#syntax-e
                                               _%__stx3751137512%_)))
                                         (let ((_%tl3473634767%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3473434760%_)))
                                               (_%hd3473534764%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3473434760%_))))
                                           (if (gx#stx-null? _%tl3473634767%_)
                                               (_%__kont3751437515%_
                                                _%hd3473534764%_)
                                               (_%__kont3751637517%_))))
                                       (_%__kont3751637517%_))))))
                            (_%__kont3763637637%_
                             (lambda (_%L34689%_)
                               (cons 'not:
                                     (cons (_%parse133440%_ _%L34689%_) '()))))
                            (_%__kont3763837639%_
                             (lambda (_%L34645%_ _%L34647%_)
                               (cons 'cons:
                                     (cons (_%parse133440%_ _%L34647%_)
                                           (cons (_%parse133440%_ _%L34645%_)
                                                 '())))))
                            (_%__kont3764037641%_
                             (lambda (_%L34589%_ _%L34591%_ _%L34592%_)
                               (if (gx#stx-null? _%L34589%_)
                                   (cons 'cons:
                                         (cons (_%parse133440%_ _%L34592%_)
                                               (cons (_%parse133440%_
                                                      _%L34591%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse133440%_ _%L34592%_)
                                               (cons (_%parse133440%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%L34591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L34589%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3764237643%_
                             (lambda (_%L34541%_)
                               (_%parse-list33442%_ _%L34541%_)))
                            (_%__kont3764437645%_
                             (lambda (_%L34511%_)
                               (cons 'box:
                                     (cons (_%parse133440%_ _%L34511%_) '()))))
                            (_%__kont3764637647%_
                             (lambda (_%L34474%_)
                               (cons 'box:
                                     (cons (_%parse133440%_ _%L34474%_) '()))))
                            (_%__kont3764837649%_
                             (lambda (_%L34450%_)
                               (_%parse133440%_ _%L34450%_)))
                            (_%__kont3765037651%_
                             (lambda (_%L34412%_)
                               (cons 'values:
                                     (cons (_%parse-vector33443%_ _%L34412%_)
                                           '()))))
                            (_%__kont3765237653%_
                             (lambda (_%L34384%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33443%_ _%L34384%_)
                                           '()))))
                            (_%__kont3765437655%_
                             (lambda (_%L34345%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33443%_
                                            (foldr (lambda (_%g3435834361%_
                                                            _%g3435934364%_)
                                                     (cons _%g3435834361%_
                                                           _%g3435934364%_))
                                                   '()
                                                   _%L34345%_))
                                           '()))))
                            (_%__kont3765837659%_
                             (lambda (_%L34291%_ _%L34293%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _%L34293%_)
                                           (cons (_%parse-vector33443%_
                                                  _%L34291%_)
                                                 '())))))
                            (_%__kont3766037661%_
                             (lambda (_%L34261%_ _%L34263%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _%L34263%_)
                                           (cons (_%parse-class-body33445%_
                                                  _%L34261%_)
                                                 '())))))
                            (_%__kont3766237663%_
                             (lambda (_%L34221%_ _%L34223%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%L34223%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%L34221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3766437665%_
                             (lambda (_%L34181%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L34181%_) '()))))
                            (_%__kont3766637667%_
                             (lambda (_%L34141%_)
                               (_%parse-qq33446%_ _%L34141%_)))
                            (_%__kont3766837669%_
                             (lambda (_%L34097%_ _%L34099%_)
                               (cons 'apply:
                                     (cons _%L34099%_
                                           (cons (_%parse133440%_ _%L34097%_)
                                                 '())))))
                            (_%__kont3767037671%_
                             (lambda (_%L34045%_)
                               (_%parse133440%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%L34045%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd33799%_)
                                  (let ((_%$e34056%_
                                         (gx#stx-source _%hd33799%_)))
                                    (if _%$e34056%_
                                        _%$e34056%_
                                        (gx#stx-source _%stx33436%_))))))))
                            (_%__kont3767237673%_
                             (lambda (_%L34019%_) (cons 'any: '())))
                            (_%__kont3767437675%_
                             (lambda (_%L34003%_)
                               (cons 'var: (cons _%L34003%_ '()))))
                            (_%__kont3767637677%_
                             (lambda (_%L33985%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L33985%_) '()))))
                            (_%__kont3767837679%_
                             (lambda () (_%parse-error33447%_ _%hd33799%_))))
                        (let* ((_%g3382333996%_
                                (lambda ()
                                  (let ((_%L33985%_ _%__stx3762737628%_))
                                    (if (gx#stx-datum? _%L33985%_)
                                        (_%__kont3767637677%_ _%L33985%_)
                                        (_%__kont3767837679%_)))))
                               (_%g3382234012%_
                                (lambda ()
                                  (let ((_%L34003%_ _%__stx3762737628%_))
                                    (if (and (gx#identifier? _%L34003%_)
                                             (not (gx#ellipsis? _%L34003%_)))
                                        (_%__kont3767437675%_ _%L34003%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3382333996%_))))))
                               (_%g3382134028%_
                                (lambda ()
                                  (let ((_%L34019%_ _%__stx3762737628%_))
                                    (if (gx#underscore? _%L34019%_)
                                        (_%__kont3767237673%_ _%L34019%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3382234012%_))))))
                               (_%__match3795437955%_
                                (lambda (_%e3395634035%_
                                         _%hd3395734039%_
                                         _%tl3395834042%_)
                                  (let ((_%L34045%_ _%hd3395734039%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%L34045%_)
                                        (_%__kont3767037671%_ _%L34045%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3382134028%_))))))
                               (_%__match3788837889%_
                                (lambda (_%e3392434201%_
                                         _%hd3392534205%_
                                         _%tl3392634208%_
                                         _%e3392734211%_
                                         _%hd3392834215%_
                                         _%tl3392934218%_)
                                  (let ((_%L34221%_ _%hd3392834215%_)
                                        (_%L34223%_ _%hd3392534205%_))
                                    (if (and (gx#identifier? _%L34223%_)
                                             (or (gx#free-identifier=?
                                                  _%L34223%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%L34223%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%L34223%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3766237663%_
                                         _%L34221%_
                                         _%L34223%_)
                                        (if (gx#identifier? _%hd3392534205%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39842_|
                                                 _%hd3392534205%_)
                                                (_%__kont3766437665%_
                                                 _%hd3392834215%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g39843_|
                                                     _%hd3392534205%_)
                                                    (_%__kont3766637667%_
                                                     _%hd3392834215%_)
                                                    (_%__match3795437955%_
                                                     _%e3392434201%_
                                                     _%hd3392534205%_
                                                     _%tl3392634208%_)))
                                            (_%__match3795437955%_
                                             _%e3392434201%_
                                             _%hd3392534205%_
                                             _%tl3392634208%_))))))
                               (_%__match3787437875%_
                                (lambda (_%e3391934251%_
                                         _%hd3392034255%_
                                         _%tl3392134258%_)
                                  (let ((_%L34261%_ _%tl3392134258%_)
                                        (_%L34263%_ _%hd3392034255%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%L34263%_))
                                        (_%__kont3766037661%_
                                         _%L34261%_
                                         _%L34263%_)
                                        (if (gx#stx-pair? _%tl3392134258%_)
                                            (let ((_%e3392734211%_
                                                   (gx#syntax-e
                                                    _%tl3392134258%_)))
                                              (let ((_%tl3392934218%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3392734211%_)))
                                                    (_%hd3392834215%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3392734211%_))))
                                                (if (gx#stx-null?
                                                     _%tl3392934218%_)
                                                    (_%__match3788837889%_
                                                     _%e3391934251%_
                                                     _%hd3392034255%_
                                                     _%tl3392134258%_
                                                     _%e3392734211%_
                                                     _%hd3392834215%_
                                                     _%tl3392934218%_)
                                                    (if (gx#identifier?
                                                         _%hd3392034255%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g39842_|
                                                             _%hd3392034255%_)
                                                            (_%__match3795437955%_
                                                             _%e3391934251%_
                                                             _%hd3392034255%_
                                                             _%tl3392134258%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39843_|
                         _%hd3392034255%_)
                        (_%__match3795437955%_
                         _%e3391934251%_
                         _%hd3392034255%_
                         _%tl3392134258%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39844_|
                             _%hd3392034255%_)
                            (if (gx#stx-pair? _%tl3392934218%_)
                                (let ((_%e3395234087%_
                                       (gx#syntax-e _%tl3392934218%_)))
                                  (let ((_%tl3395434094%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3395234087%_)))
                                        (_%hd3395334091%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3395234087%_))))
                                    (if (gx#stx-null? _%tl3395434094%_)
                                        (_%__kont3766837669%_
                                         _%hd3395334091%_
                                         _%hd3392834215%_)
                                        (_%__match3795437955%_
                                         _%e3391934251%_
                                         _%hd3392034255%_
                                         _%tl3392134258%_))))
                                (_%__match3795437955%_
                                 _%e3391934251%_
                                 _%hd3392034255%_
                                 _%tl3392134258%_))
                            (_%__match3795437955%_
                             _%e3391934251%_
                             _%hd3392034255%_
                             _%tl3392134258%_))))
                (_%__match3795437955%_
                 _%e3391934251%_
                 _%hd3392034255%_
                 _%tl3392134258%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3795437955%_
                                             _%e3391934251%_
                                             _%hd3392034255%_
                                             _%tl3392134258%_))))))
                               (_%__match3786837869%_
                                (lambda (_%e3391434281%_
                                         _%hd3391534285%_
                                         _%tl3391634288%_)
                                  (let ((_%L34291%_ _%tl3391634288%_)
                                        (_%L34293%_ _%hd3391534285%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%L34293%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3765837659%_
                                         _%L34291%_
                                         _%L34293%_)
                                        (_%__match3787437875%_
                                         _%e3391434281%_
                                         _%hd3391534285%_
                                         _%tl3391634288%_)))))
                               (_%__match3786237863%_
                                (lambda (_%e3390234311%_
                                         _%__splice3765637657%_
                                         _%target3390334315%_
                                         _%tl3390534318%_)
                                  (letrec ((_%loop3390634321%_
                                            (lambda (_%hd3390434325%_
                                                     _%body3391034328%_)
                                              (if (gx#stx-pair?
                                                   _%hd3390434325%_)
                                                  (let ((_%e3390734331%_
                                                         (gx#syntax-e
                                                          _%hd3390434325%_)))
                                                    (let ((_%lp-tl3390934338%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3390734331%_)))
                                                          (_%lp-hd3390834335%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3390734331%_))))
                                                      (_%loop3390634321%_
                                                       _%lp-tl3390934338%_
                                                       (cons _%lp-hd3390834335%_
                                                             _%body3391034328%_))))
                                                  (let ((_%body3391134341%_
                                                         (reverse _%body3391034328%_)))
                                                    (_%__kont3765437655%_
                                                     _%body3391134341%_))))))
                                    (_%loop3390634321%_
                                     _%target3390334315%_
                                     '()))))
                               (_%g3381334367%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3762737628%_)
                                      (let ((_%e3390234311%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3762737628%_))))
                                        (if (gx#stx-pair/null? _%e3390234311%_)
                                            (let ((_%__splice3765637657%_
                                                   (gx#syntax-split-splice
                                                    _%e3390234311%_
                                                    '0)))
                                              (let ((_%tl3390534318%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3765637657%_
                                                        '1)))
                                                    (_%target3390334315%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3765637657%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3390534318%_)
                                                    (_%__match3786237863%_
                                                     _%e3390234311%_
                                                     _%__splice3765637657%_
                                                     _%target3390334315%_
                                                     _%tl3390534318%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3382134028%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3382134028%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3382134028%_)))))
                               (_%g3380934484%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3762737628%_)
                                      (let ((_%e3388534470%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3762737628%_))))
                                        (_%__kont3764637647%_ _%e3388534470%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3381334367%_)))))
                               (_%__match3771637717%_
                                (lambda (_%e3384034709%_
                                         _%hd3384134713%_
                                         _%tl3384234716%_)
                                  (let ((_%L34719%_ _%tl3384234716%_))
                                    (if (gx#stx-list? _%L34719%_)
                                        (_%__kont3763437635%_ _%L34719%_)
                                        (_%__match3786837869%_
                                         _%e3384034709%_
                                         _%hd3384134713%_
                                         _%tl3384234716%_)))))
                               (_%__match3770637707%_
                                (lambda (_%e3383634794%_
                                         _%hd3383734798%_
                                         _%tl3383834801%_)
                                  (let ((_%L34804%_ _%tl3383834801%_))
                                    (if (gx#stx-list? _%L34804%_)
                                        (_%__kont3763237633%_ _%L34804%_)
                                        (_%__match3786837869%_
                                         _%e3383634794%_
                                         _%hd3383734798%_
                                         _%tl3383834801%_))))))
                          (if (gx#stx-pair? _%__stx3762737628%_)
                              (let ((_%e3382934879%_
                                     (gx#syntax-e _%__stx3762737628%_)))
                                (let ((_%tl3383134886%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3382934879%_)))
                                      (_%hd3383034883%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3382934879%_))))
                                  (if (gx#identifier? _%hd3383034883%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39845_|
                                           _%hd3383034883%_)
                                          (if (gx#stx-pair? _%tl3383134886%_)
                                              (let ((_%e3383234889%_
                                                     (gx#syntax-e
                                                      _%tl3383134886%_)))
                                                (let ((_%tl3383434896%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3383234889%_)))
                                                      (_%hd3383334893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3383234889%_))))
                                                  (_%__kont3763037631%_
                                                   _%tl3383434896%_
                                                   _%hd3383334893%_)))
                                              (_%__match3786837869%_
                                               _%e3382934879%_
                                               _%hd3383034883%_
                                               _%tl3383134886%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39846_|
                                               _%hd3383034883%_)
                                              (_%__match3770637707%_
                                               _%e3382934879%_
                                               _%hd3383034883%_
                                               _%tl3383134886%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39847_|
                                                   _%hd3383034883%_)
                                                  (_%__match3771637717%_
                                                   _%e3382934879%_
                                                   _%hd3383034883%_
                                                   _%tl3383134886%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39848_|
                                                       _%hd3383034883%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3383134886%_)
                                                          (let ((_%e3384734679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3383134886%_)))
                    (let ((_%tl3384934686%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3384734679%_)))
                          (_%hd3384834683%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3384734679%_))))
                      (if (gx#stx-null? _%tl3384934686%_)
                          (_%__kont3763637637%_ _%hd3384834683%_)
                          (_%__match3786837869%_
                           _%e3382934879%_
                           _%hd3383034883%_
                           _%tl3383134886%_))))
                  (_%__match3786837869%_
                   _%e3382934879%_
                   _%hd3383034883%_
                   _%tl3383134886%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g39849_|
                   _%hd3383034883%_)
                  (if (gx#stx-pair? _%tl3383134886%_)
                      (let ((_%e3385534625%_ (gx#syntax-e _%tl3383134886%_)))
                        (let ((_%tl3385734632%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3385534625%_)))
                              (_%hd3385634629%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3385534625%_))))
                          (if (gx#stx-pair? _%tl3385734632%_)
                              (let ((_%e3385834635%_
                                     (gx#syntax-e _%tl3385734632%_)))
                                (let ((_%tl3386034642%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3385834635%_)))
                                      (_%hd3385934639%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3385834635%_))))
                                  (if (gx#stx-null? _%tl3386034642%_)
                                      (_%__kont3763837639%_
                                       _%hd3385934639%_
                                       _%hd3385634629%_)
                                      (_%__match3786837869%_
                                       _%e3382934879%_
                                       _%hd3383034883%_
                                       _%tl3383134886%_))))
                              (_%__match3786837869%_
                               _%e3382934879%_
                               _%hd3383034883%_
                               _%tl3383134886%_))))
                      (_%__match3786837869%_
                       _%e3382934879%_
                       _%hd3383034883%_
                       _%tl3383134886%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g39850_|
                       _%hd3383034883%_)
                      (if (gx#stx-pair? _%tl3383134886%_)
                          (let ((_%e3386734569%_
                                 (gx#syntax-e _%tl3383134886%_)))
                            (let ((_%tl3386934576%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3386734569%_)))
                                  (_%hd3386834573%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3386734569%_))))
                              (if (gx#stx-pair? _%tl3386934576%_)
                                  (let ((_%e3387034579%_
                                         (gx#syntax-e _%tl3386934576%_)))
                                    (let ((_%tl3387234586%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3387034579%_)))
                                          (_%hd3387134583%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3387034579%_))))
                                      (_%__kont3764037641%_
                                       _%tl3387234586%_
                                       _%hd3387134583%_
                                       _%hd3386834573%_)))
                                  (_%__match3786837869%_
                                   _%e3382934879%_
                                   _%hd3383034883%_
                                   _%tl3383134886%_))))
                          (_%__match3786837869%_
                           _%e3382934879%_
                           _%hd3383034883%_
                           _%tl3383134886%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g39851_|
                           _%hd3383034883%_)
                          (_%__kont3764237643%_ _%tl3383134886%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39852_|
                               _%hd3383034883%_)
                              (if (gx#stx-pair? _%tl3383134886%_)
                                  (let ((_%e3388134501%_
                                         (gx#syntax-e _%tl3383134886%_)))
                                    (let ((_%tl3388334508%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3388134501%_)))
                                          (_%hd3388234505%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3388134501%_))))
                                      (if (gx#stx-null? _%tl3388334508%_)
                                          (_%__kont3764437645%_
                                           _%hd3388234505%_)
                                          (_%__match3786837869%_
                                           _%e3382934879%_
                                           _%hd3383034883%_
                                           _%tl3383134886%_))))
                                  (_%__match3786837869%_
                                   _%e3382934879%_
                                   _%hd3383034883%_
                                   _%tl3383134886%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39853_|
                                   _%hd3383034883%_)
                                  (if (gx#stx-pair? _%tl3383134886%_)
                                      (let ((_%e3389034440%_
                                             (gx#syntax-e _%tl3383134886%_)))
                                        (let ((_%tl3389234447%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3389034440%_)))
                                              (_%hd3389134444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3389034440%_))))
                                          (if (gx#stx-null? _%tl3389234447%_)
                                              (_%__kont3764837649%_
                                               _%hd3389134444%_)
                                              (_%__kont3765037651%_
                                               _%tl3383134886%_))))
                                      (_%__kont3765037651%_ _%tl3383134886%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39854_|
                                       _%hd3383034883%_)
                                      (_%__kont3765237653%_ _%tl3383134886%_)
                                      (_%__match3786837869%_
                                       _%e3382934879%_
                                       _%hd3383034883%_
                                       _%tl3383134886%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3786837869%_
                                       _%e3382934879%_
                                       _%hd3383034883%_
                                       _%tl3383134886%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3380934484%_))))))))
                 (_%parse-list33442%_
                  (lambda (_%body33622%_)
                    (let* ((_%__stx3795737958%_ _%body33622%_)
                           (_%g3362833657%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3795737958%_))))
                      (let ((_%__kont3796037961%_
                             (lambda (_%L33781%_)
                               (_%parse133440%_ _%L33781%_)))
                            (_%__kont3796237963%_
                             (lambda (_%L33733%_ _%L33735%_ _%L33736%_)
                               (cons 'splice:
                                     (cons (_%parse133440%_ _%L33736%_)
                                           (cons (_%parse-list33442%_
                                                  _%L33733%_)
                                                 '())))))
                            (_%__kont3796437965%_
                             (lambda (_%L33691%_ _%L33693%_)
                               (cons 'cons:
                                     (cons (_%parse133440%_ _%L33693%_)
                                           (cons (_%parse-list33442%_
                                                  _%L33691%_)
                                                 '())))))
                            (_%__kont3796637967%_
                             (lambda ()
                               (if (gx#stx-null? _%body33622%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body33622%_)
                                       (_%parse-error33447%_ _%body33622%_)
                                       (_%parse133440%_ _%body33622%_))))))
                        (let* ((_%__match3800638007%_
                                (lambda (_%e3364933681%_
                                         _%hd3365033685%_
                                         _%tl3365133688%_)
                                  (let ((_%L33691%_ _%tl3365133688%_)
                                        (_%L33693%_ _%hd3365033685%_))
                                    (if (gx#ellipsis? _%L33693%_)
                                        (_%__kont3796637967%_)
                                        (_%__kont3796437965%_
                                         _%L33691%_
                                         _%L33693%_)))))
                               (_%__match3800038001%_
                                (lambda (_%e3364133713%_
                                         _%hd3364233717%_
                                         _%tl3364333720%_
                                         _%e3364433723%_
                                         _%hd3364533727%_
                                         _%tl3364633730%_)
                                  (let ((_%L33733%_ _%tl3364633730%_)
                                        (_%L33735%_ _%hd3364533727%_)
                                        (_%L33736%_ _%hd3364233717%_))
                                    (if (gx#ellipsis? _%L33735%_)
                                        (_%__kont3796237963%_
                                         _%L33733%_
                                         _%L33735%_
                                         _%L33736%_)
                                        (_%__match3800638007%_
                                         _%e3364133713%_
                                         _%hd3364233717%_
                                         _%tl3364333720%_))))))
                          (if (gx#stx-pair? _%__stx3795737958%_)
                              (let ((_%e3363133757%_
                                     (gx#syntax-e _%__stx3795737958%_)))
                                (let ((_%tl3363333764%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3363133757%_)))
                                      (_%hd3363233761%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3363133757%_))))
                                  (if (gx#stx-datum? _%hd3363233761%_)
                                      (let ((_%e3363433767%_
                                             (gx#stx-e _%hd3363233761%_)))
                                        (if (equal? _%e3363433767%_ '::)
                                            (if (gx#stx-pair? _%tl3363333764%_)
                                                (let ((_%e3363533771%_
                                                       (gx#syntax-e
                                                        _%tl3363333764%_)))
                                                  (let ((_%tl3363733778%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3363533771%_)))
                                                        (_%hd3363633775%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3363533771%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3363733778%_)
                                                        (_%__kont3796037961%_
                                                         _%hd3363633775%_)
                                                        (_%__match3800038001%_
                                                         _%e3363133757%_
                                                         _%hd3363233761%_
                                                         _%tl3363333764%_
                                                         _%e3363533771%_
                                                         _%hd3363633775%_
                                                         _%tl3363733778%_))))
                                                (_%__match3800638007%_
                                                 _%e3363133757%_
                                                 _%hd3363233761%_
                                                 _%tl3363333764%_))
                                            (if (gx#stx-pair? _%tl3363333764%_)
                                                (let ((_%e3364433723%_
                                                       (gx#syntax-e
                                                        _%tl3363333764%_)))
                                                  (let ((_%tl3364633730%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3364433723%_)))
                                                        (_%hd3364533727%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3364433723%_))))
                                                    (_%__match3800038001%_
                                                     _%e3363133757%_
                                                     _%hd3363233761%_
                                                     _%tl3363333764%_
                                                     _%e3364433723%_
                                                     _%hd3364533727%_
                                                     _%tl3364633730%_)))
                                                (_%__match3800638007%_
                                                 _%e3363133757%_
                                                 _%hd3363233761%_
                                                 _%tl3363333764%_))))
                                      (if (gx#stx-pair? _%tl3363333764%_)
                                          (let ((_%e3364433723%_
                                                 (gx#syntax-e
                                                  _%tl3363333764%_)))
                                            (let ((_%tl3364633730%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3364433723%_)))
                                                  (_%hd3364533727%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3364433723%_))))
                                              (_%__match3800038001%_
                                               _%e3363133757%_
                                               _%hd3363233761%_
                                               _%tl3363333764%_
                                               _%e3364433723%_
                                               _%hd3364533727%_
                                               _%tl3364633730%_)))
                                          (_%__match3800638007%_
                                           _%e3363133757%_
                                           _%hd3363233761%_
                                           _%tl3363333764%_)))))
                              (_%__kont3796637967%_)))))))
                 (_%parse-vector33443%_
                  (lambda (_%body33619%_)
                    (if (_%simple-vector?33444%_ _%body33619%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse133440%_ _%body33619%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list33442%_ _%body33619%_)
                                    '())))))
                 (_%simple-vector?33444%_
                  (lambda (_%body33556%_)
                    (let* ((_%__stx3800938010%_ _%body33556%_)
                           (_%g3356033572%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3800938010%_))))
                      (let ((_%__kont3801238013%_
                             (lambda (_%L33600%_ _%L33602%_)
                               (if (gx#ellipsis? _%L33602%_)
                                   '#f
                                   (_%simple-vector?33444%_ _%L33600%_))))
                            (_%__kont3801438015%_
                             (lambda () (gx#stx-null? _%body33556%_))))
                        (if (gx#stx-pair? _%__stx3800938010%_)
                            (let ((_%e3356433590%_
                                   (gx#syntax-e _%__stx3800938010%_)))
                              (let ((_%tl3356633597%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3356433590%_)))
                                    (_%hd3356533594%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3356433590%_))))
                                (_%__kont3801238013%_
                                 _%tl3356633597%_
                                 _%hd3356533594%_)))
                            (_%__kont3801438015%_))))))
                 (_%parse-class-body33445%_
                  (lambda (_%body33465%_)
                    (let _%recur33468%_ ((_%rest33471%_ _%body33465%_))
                      (let* ((_%__stx3802538026%_ _%rest33471%_)
                             (_%g3347533491%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3802538026%_))))
                        (let ((_%__kont3802838029%_
                               (lambda (_%L33529%_ _%L33531%_ _%L33532%_)
                                 (cons _%L33532%_
                                       (cons (_%parse133440%_ _%L33531%_)
                                             (_%recur33468%_ _%L33529%_)))))
                              (_%__kont3803038031%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest33471%_)
                                     '()
                                     (_%parse-error33447%_ _%rest33471%_)))))
                          (let ((_%__match3804438045%_
                                 (lambda (_%e3348033509%_
                                          _%hd3348133513%_
                                          _%tl3348233516%_
                                          _%e3348333519%_
                                          _%hd3348433523%_
                                          _%tl3348533526%_)
                                   (let ((_%L33529%_ _%tl3348533526%_)
                                         (_%L33531%_ _%hd3348433523%_)
                                         (_%L33532%_ _%hd3348133513%_))
                                     (if (gx#stx-keyword? _%L33532%_)
                                         (_%__kont3802838029%_
                                          _%L33529%_
                                          _%L33531%_
                                          _%L33532%_)
                                         (_%__kont3803038031%_))))))
                            (if (gx#stx-pair? _%__stx3802538026%_)
                                (let ((_%e3348033509%_
                                       (gx#syntax-e _%__stx3802538026%_)))
                                  (let ((_%tl3348233516%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3348033509%_)))
                                        (_%hd3348133513%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3348033509%_))))
                                    (if (gx#stx-pair? _%tl3348233516%_)
                                        (let ((_%e3348333519%_
                                               (gx#syntax-e _%tl3348233516%_)))
                                          (let ((_%tl3348533526%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3348333519%_)))
                                                (_%hd3348433523%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3348333519%_))))
                                            (_%__match3804438045%_
                                             _%e3348033509%_
                                             _%hd3348133513%_
                                             _%tl3348233516%_
                                             _%e3348333519%_
                                             _%hd3348433523%_
                                             _%tl3348533526%_)))
                                        (_%__kont3803038031%_))))
                                (_%__kont3803038031%_))))))))
                 (_%parse-qq33446%_
                  (lambda (_%hd33452%_)
                    (let ((_%g3345433461%_
                           (lambda (_%g3345533457%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3345533457%_))))
                      (_%g3345433461%_ _%hd33452%_))))
                 (_%parse-error33447%_
                  (lambda (_%hd33449%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx33438%_
                               (cons _%match-stx33438%_
                                     (cons _%stx33436%_
                                           (cons _%hd33449%_ '())))
                               (cons _%stx33436%_ (cons _%hd33449%_ '())))))))
          (_%parse133440%_ _%stx33436%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35126%_)
        (let ((_%match-stx35129%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35126%_
           _%match-stx35129%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g39856_
        (let ((_g39855_ (let () (declare (not safe)) (##length _g39856_))))
          (cond ((let () (declare (not safe)) (##fx= _g39855_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g39856_))
                ((let () (declare (not safe)) (##fx= _g39855_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g39856_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g39856_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx33421%_)
        (let ((__tmp39857
               (lambda (_%E33424%_)
                 (with-exception-handler
                  (let ((_%E!33427%_ (current-exception-handler)))
                    (lambda (_%e33430%_)
                      (if (syntax-error? _%e33430%_)
                          (_%E33424%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!33427%_ _%e33430%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx33421%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp39857))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32156%_)
        (letrec ((_%loop32159%_
                  (lambda (_%ptree32446%_ _%vars32448%_ _%K32449%_)
                    (let* ((_%__stx3814338144%_ _%ptree32446%_)
                           (_%g3246232572%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3814338144%_))))
                      (let ((_%__kont3814638147%_
                             (lambda (_%L33202%_)
                               (let* ((_%__stx3806338064%_ _%L33202%_)
                                      (_%g3321933253%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3806338064%_))))
                                 (let ((_%__kont3806638067%_
                                        (lambda (_%L33402%_)
                                          (_%loop32159%_
                                           _%L33402%_
                                           _%vars32448%_
                                           _%K32449%_)))
                                       (_%__kont3806838069%_
                                        (lambda (_%L33371%_)
                                          (_%loop32159%_
                                           _%L33371%_
                                           _%vars32448%_
                                           _%K32449%_)))
                                       (_%__kont3807038071%_
                                        (lambda (_%L33319%_)
                                          (_%loop32159%_
                                           _%L33319%_
                                           _%vars32448%_
                                           _%K32449%_)))
                                       (_%__kont3807238073%_
                                        (lambda ()
                                          (_%K32449%_ _%vars32448%_))))
                                   (if (gx#stx-pair? _%__stx3806338064%_)
                                       (let ((_%e3322233392%_
                                              (gx#syntax-e
                                               _%__stx3806338064%_)))
                                         (let ((_%tl3322433399%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3322233392%_)))
                                               (_%hd3322333396%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3322233392%_))))
                                           (if (gx#stx-null? _%tl3322433399%_)
                                               (_%__kont3806638067%_
                                                _%hd3322333396%_)
                                               (if (gx#stx-datum?
                                                    _%hd3322333396%_)
                                                   (let ((_%e3322933357%_
                                                          (gx#stx-e
                                                           _%hd3322333396%_)))
                                                     (if (equal? _%e3322933357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3322433399%_)
                     (let ((_%e3323033361%_ (gx#syntax-e _%tl3322433399%_)))
                       (let ((_%tl3323233368%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3323033361%_)))
                             (_%hd3323133365%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3323033361%_))))
                         (if (gx#stx-null? _%tl3323233368%_)
                             (_%__kont3806838069%_ _%hd3323133365%_)
                             (_%__kont3807238073%_))))
                     (_%__kont3807238073%_))
                 (if (equal? _%e3322933357%_ '::)
                     (if (gx#stx-pair? _%tl3322433399%_)
                         (let ((_%e3323833285%_
                                (gx#syntax-e _%tl3322433399%_)))
                           (let ((_%tl3324033292%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3323833285%_)))
                                 (_%hd3323933289%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3323833285%_))))
                             (if (gx#stx-pair? _%tl3324033292%_)
                                 (let ((_%e3324133295%_
                                        (gx#syntax-e _%tl3324033292%_)))
                                   (let ((_%tl3324333302%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3324133295%_)))
                                         (_%hd3324233299%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3324133295%_))))
                                     (if (gx#stx-datum? _%hd3324233299%_)
                                         (let ((_%e3324433305%_
                                                (gx#stx-e _%hd3324233299%_)))
                                           (if (equal? _%e3324433305%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3324333302%_)
                                                   (let ((_%e3324533309%_
                                                          (gx#syntax-e
                                                           _%tl3324333302%_)))
                                                     (let ((_%tl3324733316%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3324533309%_)))
                                                           (_%hd3324633313%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3324533309%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3324733316%_)
                                                           (_%__kont3807038071%_
                                                            _%hd3324633313%_)
                                                           (_%__kont3807238073%_))))
                                                   (_%__kont3807238073%_))
                                               (_%__kont3807238073%_)))
                                         (_%__kont3807238073%_))))
                                 (_%__kont3807238073%_))))
                         (_%__kont3807238073%_))
                     (_%__kont3807238073%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3807238073%_)))))
                                       (_%__kont3807238073%_))))))
                            (_%__kont3814838149%_
                             (lambda (_%L33089%_ _%L33091%_)
                               (let* ((_%__stx3804738048%_ _%L33089%_)
                                      (_%g3310733119%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3804738048%_))))
                                 (let ((_%__kont3805038051%_
                                        (lambda (_%L33147%_ _%L33149%_)
                                          (_%loop32159%_
                                           _%L33149%_
                                           _%vars32448%_
                                           (lambda (_%g3316133163%_)
                                             (_%loop32159%_
                                              (cons _%L33091%_ _%L33147%_)
                                              _%g3316133163%_
                                              _%K32449%_)))))
                                       (_%__kont3805238053%_
                                        (lambda ()
                                          (_%K32449%_ _%vars32448%_))))
                                   (if (gx#stx-pair? _%__stx3804738048%_)
                                       (let ((_%e3311133137%_
                                              (gx#syntax-e
                                               _%__stx3804738048%_)))
                                         (let ((_%tl3311333144%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3311133137%_)))
                                               (_%hd3311233141%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3311133137%_))))
                                           (_%__kont3805038051%_
                                            _%tl3311333144%_
                                            _%hd3311233141%_)))
                                       (_%__kont3805238053%_))))))
                            (_%__kont3815038151%_
                             (lambda (_%L33058%_)
                               (_%loop32159%_
                                _%L33058%_
                                _%vars32448%_
                                _%K32449%_)))
                            (_%__kont3815238153%_
                             (lambda (_%L33004%_ _%L33006%_)
                               (_%loop32159%_
                                _%L33006%_
                                _%vars32448%_
                                (lambda (_%g3302133023%_)
                                  (_%loop32159%_
                                   _%L33004%_
                                   _%g3302133023%_
                                   _%K32449%_)))))
                            (_%__kont3815438155%_
                             (lambda (_%L32940%_ _%L32942%_)
                               (_%loop32159%_
                                _%L32942%_
                                _%vars32448%_
                                (lambda (_%g3295732959%_)
                                  (_%loop32159%_
                                   _%L32940%_
                                   _%g3295732959%_
                                   _%K32449%_)))))
                            (_%__kont3815638157%_
                             (lambda (_%L32885%_)
                               (_%loop32159%_
                                _%L32885%_
                                _%vars32448%_
                                _%K32449%_)))
                            (_%__kont3815838159%_
                             (lambda (_%L32835%_ _%L32837%_)
                               (_%loop-vector32161%_
                                _%L32835%_
                                _%vars32448%_
                                _%K32449%_)))
                            (_%__kont3816038161%_
                             (lambda (_%L32792%_)
                               (_%loop-vector32161%_
                                _%L32792%_
                                _%vars32448%_
                                _%K32449%_)))
                            (_%__kont3816238163%_
                             (lambda (_%L32735%_)
                               (_%loop-class-list32163%_
                                _%L32735%_
                                _%vars32448%_
                                _%K32449%_)))
                            (_%__kont3816438165%_
                             (lambda (_%L32676%_ _%L32678%_)
                               (_%loop32159%_
                                _%L32676%_
                                _%vars32448%_
                                _%K32449%_)))
                            (_%__kont3816638167%_
                             (lambda (_%L32614%_)
                               (if (find (lambda (_%g3262932631%_)
                                           (gx#bound-identifier=?
                                            _%g3262932631%_
                                            _%L32614%_))
                                         _%vars32448%_)
                                   (_%K32449%_ _%vars32448%_)
                                   (_%K32449%_
                                    (cons _%L32614%_ _%vars32448%_)))))
                            (_%__kont3816838169%_
                             (lambda () (_%K32449%_ _%vars32448%_))))
                        (let* ((_%__match3830038301%_
                                (lambda (_%e3251932815%_
                                         _%hd3252032819%_
                                         _%tl3252132822%_
                                         _%e3252232825%_
                                         _%hd3252332829%_
                                         _%tl3252432832%_)
                                  (let ((_%L32835%_ _%hd3252332829%_)
                                        (_%L32837%_ _%hd3252032819%_))
                                    (if (or (gx#stx-eq? 'values: _%L32837%_)
                                            (gx#stx-eq? 'vector: _%L32837%_))
                                        (_%__kont3815838159%_
                                         _%L32835%_
                                         _%L32837%_)
                                        (if (gx#stx-datum? _%hd3252032819%_)
                                            (let ((_%e3252932768%_
                                                   (gx#stx-e
                                                    _%hd3252032819%_)))
                                              (if (equal? _%e3252932768%_
                                                          'struct:)
                                                  (_%__kont3816838169%_)
                                                  (if (equal? _%e3252932768%_
                                                              'class:)
                                                      (_%__kont3816838169%_)
                                                      (if (equal? _%e3252932768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3816838169%_)
                  (if (equal? _%e3252932768%_ 'var:)
                      (_%__kont3816638167%_ _%hd3252332829%_)
                      (_%__kont3816838169%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3816838169%_))))))
                               (_%__match3819438195%_
                                (lambda (_%e3247433079%_
                                         _%hd3247533083%_
                                         _%tl3247633086%_)
                                  (let ((_%L33089%_ _%tl3247633086%_)
                                        (_%L33091%_ _%hd3247533083%_))
                                    (if (or (gx#stx-eq? 'and: _%L33091%_)
                                            (gx#stx-eq? 'or: _%L33091%_))
                                        (_%__kont3814838149%_
                                         _%L33089%_
                                         _%L33091%_)
                                        (if (gx#stx-datum? _%hd3247533083%_)
                                            (let ((_%e3248133044%_
                                                   (gx#stx-e
                                                    _%hd3247533083%_)))
                                              (if (equal? _%e3248133044%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3247633086%_)
                                                      (let ((_%e3248233048%_
                                                             (gx#syntax-e
                                                              _%tl3247633086%_)))
                                                        (let ((_%tl3248433055%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3248233048%_)))
                      (_%hd3248333052%_
                       (let () (declare (not safe)) (##car _%e3248233048%_))))
                  (if (gx#stx-null? _%tl3248433055%_)
                      (_%__kont3815038151%_ _%hd3248333052%_)
                      (_%__kont3816838169%_))))
              (_%__kont3816838169%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3248133044%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3247633086%_)
                                                          (let ((_%e3249132984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3247633086%_)))
                    (let ((_%tl3249332991%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3249132984%_)))
                          (_%hd3249232988%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3249132984%_))))
                      (if (gx#stx-pair? _%tl3249332991%_)
                          (let ((_%e3249432994%_
                                 (gx#syntax-e _%tl3249332991%_)))
                            (let ((_%tl3249633001%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3249432994%_)))
                                  (_%hd3249532998%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3249432994%_))))
                              (if (gx#stx-null? _%tl3249633001%_)
                                  (_%__kont3815238153%_
                                   _%hd3249532998%_
                                   _%hd3249232988%_)
                                  (_%__kont3816838169%_))))
                          (if (gx#stx-null? _%tl3249332991%_)
                              (_%__match3830038301%_
                               _%e3247433079%_
                               _%hd3247533083%_
                               _%tl3247633086%_
                               _%e3249132984%_
                               _%hd3249232988%_
                               _%tl3249332991%_)
                              (_%__kont3816838169%_)))))
                  (_%__kont3816838169%_))
              (if (equal? _%e3248133044%_ 'splice:)
                  (if (gx#stx-pair? _%tl3247633086%_)
                      (let ((_%e3250332920%_ (gx#syntax-e _%tl3247633086%_)))
                        (let ((_%tl3250532927%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3250332920%_)))
                              (_%hd3250432924%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3250332920%_))))
                          (if (gx#stx-pair? _%tl3250532927%_)
                              (let ((_%e3250632930%_
                                     (gx#syntax-e _%tl3250532927%_)))
                                (let ((_%tl3250832937%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3250632930%_)))
                                      (_%hd3250732934%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3250632930%_))))
                                  (if (gx#stx-null? _%tl3250832937%_)
                                      (_%__kont3815438155%_
                                       _%hd3250732934%_
                                       _%hd3250432924%_)
                                      (_%__kont3816838169%_))))
                              (if (gx#stx-null? _%tl3250532927%_)
                                  (_%__match3830038301%_
                                   _%e3247433079%_
                                   _%hd3247533083%_
                                   _%tl3247633086%_
                                   _%e3250332920%_
                                   _%hd3250432924%_
                                   _%tl3250532927%_)
                                  (_%__kont3816838169%_)))))
                      (_%__kont3816838169%_))
                  (if (equal? _%e3248133044%_ 'box:)
                      (if (gx#stx-pair? _%tl3247633086%_)
                          (let ((_%e3251432875%_
                                 (gx#syntax-e _%tl3247633086%_)))
                            (let ((_%tl3251632882%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3251432875%_)))
                                  (_%hd3251532879%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3251432875%_))))
                              (if (gx#stx-null? _%tl3251632882%_)
                                  (_%__kont3815638157%_ _%hd3251532879%_)
                                  (_%__kont3816838169%_))))
                          (_%__kont3816838169%_))
                      (if (gx#stx-pair? _%tl3247633086%_)
                          (let ((_%e3252232825%_
                                 (gx#syntax-e _%tl3247633086%_)))
                            (let ((_%tl3252432832%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3252232825%_)))
                                  (_%hd3252332829%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3252232825%_))))
                              (if (gx#stx-null? _%tl3252432832%_)
                                  (_%__match3830038301%_
                                   _%e3247433079%_
                                   _%hd3247533083%_
                                   _%tl3247633086%_
                                   _%e3252232825%_
                                   _%hd3252332829%_
                                   _%tl3252432832%_)
                                  (if (equal? _%e3248133044%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3252432832%_)
                                          (let ((_%e3253332782%_
                                                 (gx#syntax-e
                                                  _%tl3252432832%_)))
                                            (let ((_%tl3253532789%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3253332782%_)))
                                                  (_%hd3253432786%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3253332782%_))))
                                              (if (gx#stx-null?
                                                   _%tl3253532789%_)
                                                  (_%__kont3816038161%_
                                                   _%hd3253432786%_)
                                                  (_%__kont3816838169%_))))
                                          (_%__kont3816838169%_))
                                      (if (equal? _%e3248133044%_ 'class:)
                                          (if (gx#stx-pair? _%tl3252432832%_)
                                              (let ((_%e3254432725%_
                                                     (gx#syntax-e
                                                      _%tl3252432832%_)))
                                                (let ((_%tl3254632732%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3254432725%_)))
                                                      (_%hd3254532729%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3254432725%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3254632732%_)
                                                      (_%__kont3816238163%_
                                                       _%hd3254532729%_)
                                                      (_%__kont3816838169%_))))
                                              (_%__kont3816838169%_))
                                          (if (equal? _%e3248133044%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3252432832%_)
                                                  (let ((_%e3255632666%_
                                                         (gx#syntax-e
                                                          _%tl3252432832%_)))
                                                    (let ((_%tl3255832673%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3255632666%_)))
                                                          (_%hd3255732670%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3255632666%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3255832673%_)
                                                          (_%__kont3816438165%_
                                                           _%hd3255732670%_
                                                           _%hd3252332829%_)
                                                          (_%__kont3816838169%_))))
                                                  (_%__kont3816838169%_))
                                              (_%__kont3816838169%_)))))))
                          (_%__kont3816838169%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3247633086%_)
                                                (let ((_%e3252232825%_
                                                       (gx#syntax-e
                                                        _%tl3247633086%_)))
                                                  (let ((_%tl3252432832%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3252232825%_)))
                                                        (_%hd3252332829%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3252232825%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3252432832%_)
                                                        (_%__match3830038301%_
                                                         _%e3247433079%_
                                                         _%hd3247533083%_
                                                         _%tl3247633086%_
                                                         _%e3252232825%_
                                                         _%hd3252332829%_
                                                         _%tl3252432832%_)
                                                        (_%__kont3816838169%_))))
                                                (_%__kont3816838169%_))))))))
                          (if (gx#stx-pair? _%__stx3814338144%_)
                              (let ((_%e3246533178%_
                                     (gx#syntax-e _%__stx3814338144%_)))
                                (let ((_%tl3246733185%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3246533178%_)))
                                      (_%hd3246633182%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3246533178%_))))
                                  (if (gx#stx-datum? _%hd3246633182%_)
                                      (let ((_%e3246833188%_
                                             (gx#stx-e _%hd3246633182%_)))
                                        (if (equal? _%e3246833188%_ '?:)
                                            (if (gx#stx-pair? _%tl3246733185%_)
                                                (let ((_%e3246933192%_
                                                       (gx#syntax-e
                                                        _%tl3246733185%_)))
                                                  (let ((_%tl3247133199%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3246933192%_)))
                                                        (_%hd3247033196%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3246933192%_))))
                                                    (_%__kont3814638147%_
                                                     _%tl3247133199%_)))
                                                (_%__match3819438195%_
                                                 _%e3246533178%_
                                                 _%hd3246633182%_
                                                 _%tl3246733185%_))
                                            (_%__match3819438195%_
                                             _%e3246533178%_
                                             _%hd3246633182%_
                                             _%tl3246733185%_)))
                                      (_%__match3819438195%_
                                       _%e3246533178%_
                                       _%hd3246633182%_
                                       _%tl3246733185%_))))
                              (_%__kont3816838169%_)))))))
                 (_%loop-vector32161%_
                  (lambda (_%body32322%_ _%vars32324%_ _%K32325%_)
                    (let* ((_%__stx3840138402%_ _%body32322%_)
                           (_%g3232832351%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3840138402%_))))
                      (let ((_%__kont3840438405%_
                             (lambda (_%L32428%_)
                               (_%loop-list32162%_
                                _%L32428%_
                                _%vars32324%_
                                _%K32325%_)))
                            (_%__kont3840638407%_
                             (lambda (_%L32382%_)
                               (_%loop32159%_
                                _%L32382%_
                                _%vars32324%_
                                _%K32325%_))))
                        (if (gx#stx-pair? _%__stx3840138402%_)
                            (let ((_%e3233132404%_
                                   (gx#syntax-e _%__stx3840138402%_)))
                              (let ((_%tl3233332411%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3233132404%_)))
                                    (_%hd3233232408%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3233132404%_))))
                                (if (gx#stx-datum? _%hd3233232408%_)
                                    (let ((_%e3233432414%_
                                           (gx#stx-e _%hd3233232408%_)))
                                      (if (equal? _%e3233432414%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3233332411%_)
                                              (let ((_%e3233532418%_
                                                     (gx#syntax-e
                                                      _%tl3233332411%_)))
                                                (let ((_%tl3233732425%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3233532418%_)))
                                                      (_%hd3233632422%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3233532418%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3233732425%_)
                                                      (_%__kont3840438405%_
                                                       _%hd3233632422%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3232832351%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3232832351%_)))
                                          (if (equal? _%e3233432414%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3233332411%_)
                                                  (let ((_%e3234332372%_
                                                         (gx#syntax-e
                                                          _%tl3233332411%_)))
                                                    (let ((_%tl3234532379%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3234332372%_)))
                                                          (_%hd3234432376%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3234332372%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3234532379%_)
                                                          (_%__kont3840638407%_
                                                           _%hd3234432376%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3232832351%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3232832351%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3232832351%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3232832351%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3232832351%_)))))))
                 (_%loop-list32162%_
                  (lambda (_%rest32252%_ _%vars32254%_ _%K32255%_)
                    (let* ((_%__stx3845138452%_ _%rest32252%_)
                           (_%g3225832270%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3845138452%_))))
                      (let ((_%__kont3845438455%_
                             (lambda (_%L32298%_ _%L32300%_)
                               (_%loop32159%_
                                _%L32300%_
                                _%vars32254%_
                                (lambda (_%g3231232314%_)
                                  (_%loop-list32162%_
                                   _%L32298%_
                                   _%g3231232314%_
                                   _%K32255%_)))))
                            (_%__kont3845638457%_
                             (lambda () (_%K32255%_ _%vars32254%_))))
                        (if (gx#stx-pair? _%__stx3845138452%_)
                            (let ((_%e3226232288%_
                                   (gx#syntax-e _%__stx3845138452%_)))
                              (let ((_%tl3226432295%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3226232288%_)))
                                    (_%hd3226332292%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3226232288%_))))
                                (_%__kont3845438455%_
                                 _%tl3226432295%_
                                 _%hd3226332292%_)))
                            (_%__kont3845638457%_))))))
                 (_%loop-class-list32163%_
                  (lambda (_%rest32165%_ _%vars32167%_ _%K32168%_)
                    (let* ((_%__stx3846738468%_ _%rest32165%_)
                           (_%g3217132186%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3846738468%_))))
                      (let ((_%__kont3847038471%_
                             (lambda (_%L32224%_ _%L32226%_)
                               (_%loop32159%_
                                _%L32226%_
                                _%vars32167%_
                                (lambda (_%g3224232244%_)
                                  (_%loop-class-list32163%_
                                   _%L32224%_
                                   _%g3224232244%_
                                   _%K32168%_)))))
                            (_%__kont3847238473%_
                             (lambda () (_%K32168%_ _%vars32167%_))))
                        (if (gx#stx-pair? _%__stx3846738468%_)
                            (let ((_%e3217532204%_
                                   (gx#syntax-e _%__stx3846738468%_)))
                              (let ((_%tl3217732211%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3217532204%_)))
                                    (_%hd3217632208%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3217532204%_))))
                                (if (gx#stx-pair? _%tl3217732211%_)
                                    (let ((_%e3217832214%_
                                           (gx#syntax-e _%tl3217732211%_)))
                                      (let ((_%tl3218032221%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3217832214%_)))
                                            (_%hd3217932218%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3217832214%_))))
                                        (_%__kont3847038471%_
                                         _%tl3218032221%_
                                         _%hd3217932218%_)))
                                    (_%__kont3847238473%_))))
                            (_%__kont3847238473%_)))))))
          (_%loop32159%_ _%ptree32156%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29101%_ _%tgt29103%_ _%ptree29104%_ _%K29105%_ _%E29106%_)
        (letrec ((_%generate129108%_
                  (lambda (_%tgt30355%_ _%ptree30357%_ _%K30358%_ _%E30359%_)
                    (let* ((_%g3036130369%_
                            (lambda (_%g3036230365%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3036230365%_)))
                           (_%g3036032152%_
                            (lambda (_%g3036230373%_)
                              ((lambda (_%L30376%_)
                                 (let* ((_%__stx3870338704%_ _%ptree30357%_)
                                        (_%g3040330545%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3870338704%_))))
                                   (let ((_%__kont3870638707%_
                                          (lambda (_%L31867%_ _%L31869%_)
                                            (let* ((_%__stx3862138622%_
                                                    _%L31867%_)
                                                   (_%g3188631921%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3862138622%_))))
                                              (let ((_%__kont3862438625%_
                                                     (lambda ()
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%L31869%_ (cons _%L30376%_ '())))
                           (cons _%K30358%_ (cons _%E30359%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3862638627%_
                                                     (lambda (_%L32122%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%L31869%_ (cons _%L30376%_ '())))
                           (cons (_%generate129108%_
                                  _%tgt30355%_
                                  _%L32122%_
                                  _%K30358%_
                                  _%E30359%_)
                                 (cons _%E30359%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3862838629%_
                                                     (lambda (_%L32060%_)
                                                       (let* ((_%g3207432082%_
                                                               (lambda (_%g3207532078%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3207532078%_)))
                      (_%g3207332101%_
                       (lambda (_%g3207532086%_)
                         ((lambda (_%L32089%_)
                            (cons 'let
                                  (cons (cons (cons _%L32089%_
                                                    (cons (cons _%L31869%_
                                                                (cons _%L30376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons 'if
                                                    (cons _%L32089%_
                                                          (cons (_%generate129108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L32089%_
                         _%L32060%_
                         _%K30358%_
                         _%E30359%_)
                        (cons _%E30359%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _%g3207532086%_))))
                 (_%g3207332101%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3863038631%_
                                                     (lambda (_%L31976%_
                                                              _%L31978%_)
                                                       (let* ((_%g3199832006%_
                                                               (lambda (_%g3199932002%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3199932002%_)))
                      (_%g3199732025%_
                       (lambda (_%g3199932010%_)
                         ((lambda (_%L32013%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '?)
                                              (cons _%L31869%_
                                                    (cons _%L30376%_ '())))
                                        (cons (cons 'let
                                                    (cons (cons (cons _%L32013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons _%L31978%_ (cons _%L30376%_ '()))
                                    '()))
                        '())
                  (cons (_%generate129108%_
                         _%L32013%_
                         _%L31976%_
                         _%K30358%_
                         _%E30359%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30359%_ '())))))
                          _%g3199932010%_))))
                 (_%g3199732025%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%g3188332133%_
                                                       (lambda ()
                                                         (if (gx#stx-pair?
                                                              _%__stx3862138622%_)
                                                             (let ((_%e3188932112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%__stx3862138622%_)))
                       (let ((_%tl3189132119%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3188932112%_)))
                             (_%hd3189032116%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3188932112%_))))
                         (if (gx#stx-null? _%tl3189132119%_)
                             (_%__kont3862638627%_ _%hd3189032116%_)
                             (if (gx#stx-datum? _%hd3189032116%_)
                                 (let ((_%e3189632046%_
                                        (gx#stx-e _%hd3189032116%_)))
                                   (if (equal? _%e3189632046%_ '=>:)
                                       (if (gx#stx-pair? _%tl3189132119%_)
                                           (let ((_%e3189732050%_
                                                  (gx#syntax-e
                                                   _%tl3189132119%_)))
                                             (let ((_%tl3189932057%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3189732050%_)))
                                                   (_%hd3189832054%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3189732050%_))))
                                               (if (gx#stx-null?
                                                    _%tl3189932057%_)
                                                   (_%__kont3862838629%_
                                                    _%hd3189832054%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3188631921%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3188631921%_)))
                                       (if (equal? _%e3189632046%_ '::)
                                           (if (gx#stx-pair? _%tl3189132119%_)
                                               (let ((_%e3190631942%_
                                                      (gx#syntax-e
                                                       _%tl3189132119%_)))
                                                 (let ((_%tl3190831949%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3190631942%_)))
                                                       (_%hd3190731946%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3190631942%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3190831949%_)
                                                       (let ((_%e3190931952%_
                                                              (gx#syntax-e
                                                               _%tl3190831949%_)))
                                                         (let ((_%tl3191131959%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3190931952%_)))
                       (_%hd3191031956%_
                        (let () (declare (not safe)) (##car _%e3190931952%_))))
                   (if (gx#stx-datum? _%hd3191031956%_)
                       (let ((_%e3191231962%_ (gx#stx-e _%hd3191031956%_)))
                         (if (equal? _%e3191231962%_ '=>:)
                             (if (gx#stx-pair? _%tl3191131959%_)
                                 (let ((_%e3191331966%_
                                        (gx#syntax-e _%tl3191131959%_)))
                                   (let ((_%tl3191531973%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3191331966%_)))
                                         (_%hd3191431970%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3191331966%_))))
                                     (if (gx#stx-null? _%tl3191531973%_)
                                         (_%__kont3863038631%_
                                          _%hd3191431970%_
                                          _%hd3190731946%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3188631921%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3188631921%_)))
                             (let () (declare (not safe)) (_%g3188631921%_))))
                       (let () (declare (not safe)) (_%g3188631921%_)))))
               (let () (declare (not safe)) (_%g3188631921%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3188631921%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3188631921%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3188631921%_))))))
                     (let () (declare (not safe)) (_%g3188631921%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%__stx3862138622%_)
                                                      (_%__kont3862438625%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3188332133%_))))))))
                                         (_%__kont3870838709%_
                                          (lambda (_%L31764%_)
                                            (let* ((_%__stx3860538606%_
                                                    _%L31764%_)
                                                   (_%g3177731789%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3860538606%_))))
                                              (let ((_%__kont3860838609%_
                                                     (lambda (_%L31817%_
                                                              _%L31819%_)
                                                       (_%generate129108%_
                                                        _%tgt30355%_
                                                        _%L31819%_
                                                        (_%generate129108%_
                                                         _%tgt30355%_
                                                         (cons 'and:
                                                               _%L31817%_)
                                                         _%K30358%_
                                                         _%E30359%_)
                                                        _%E30359%_)))
                                                    (_%__kont3861038611%_
                                                     (lambda () _%K30358%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3860538606%_)
                                                    (let ((_%e3178131807%_
                                                           (gx#syntax-e
                                                            _%__stx3860538606%_)))
                                                      (let ((_%tl3178331814%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3178131807%_)))
                    (_%hd3178231811%_
                     (let () (declare (not safe)) (##car _%e3178131807%_))))
                (_%__kont3860838609%_ _%tl3178331814%_ _%hd3178231811%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3861038611%_))))))
                                         (_%__kont3871038711%_
                                          (lambda (_%L31671%_)
                                            (let* ((_%__stx3858938590%_
                                                    _%L31671%_)
                                                   (_%g3168431696%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3858938590%_))))
                                              (let ((_%__kont3859238593%_
                                                     (lambda (_%L31724%_
                                                              _%L31726%_)
                                                       (_%generate129108%_
                                                        _%tgt30355%_
                                                        _%L31726%_
                                                        _%K30358%_
                                                        (_%generate129108%_
                                                         _%tgt30355%_
                                                         (cons 'or: _%L31724%_)
                                                         _%K30358%_
                                                         _%E30359%_))))
                                                    (_%__kont3859438595%_
                                                     (lambda () _%E30359%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3858938590%_)
                                                    (let ((_%e3168831714%_
                                                           (gx#syntax-e
                                                            _%__stx3858938590%_)))
                                                      (let ((_%tl3169031721%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3168831714%_)))
                    (_%hd3168931718%_
                     (let () (declare (not safe)) (##car _%e3168831714%_))))
                (_%__kont3859238593%_ _%tl3169031721%_ _%hd3168931718%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3859438595%_))))))
                                         (_%__kont3871238713%_
                                          (lambda (_%L31636%_)
                                            (_%generate129108%_
                                             _%tgt30355%_
                                             _%L31636%_
                                             _%E30359%_
                                             _%K30358%_)))
                                         (_%__kont3871438715%_
                                          (lambda (_%L31510%_ _%L31512%_)
                                            (let* ((_%g3152931544%_
                                                    (lambda (_%g3153031540%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3153031540%_)))
                                                   (_%g3152831601%_
                                                    (lambda (_%g3153031548%_)
                                                      (if (gx#stx-pair?
                                                           _%g3153031548%_)
                                                          (let ((_%e3153331551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%g3153031548%_)))
                    (let ((_%hd3153431555%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3153331551%_)))
                          (_%tl3153531558%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3153331551%_))))
                      (if (gx#stx-pair? _%tl3153531558%_)
                          (let ((_%e3153631561%_
                                 (gx#syntax-e _%tl3153531558%_)))
                            (let ((_%hd3153731565%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3153631561%_)))
                                  (_%tl3153831568%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3153631561%_))))
                              (if (gx#stx-null? _%tl3153831568%_)
                                  ((lambda (_%L31571%_ _%L31573%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##pair?)
                                                       (cons _%L30376%_ '()))
                                                 (cons (let ((_%hd-pat31589%_
                                                              (gx#stx-e
                                                               _%L31512%_))
                                                             (_%tl-pat31591%_
                                                              (gx#stx-e
                                                               _%L31510%_)))
                                                         (if (and (equal? _%hd-pat31589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat31591%_ '(any:)))
                     _%K30358%_
                     (if (equal? _%tl-pat31591%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%L31573%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%L30376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate129108%_
                                            _%L31573%_
                                            _%L31512%_
                                            _%K30358%_
                                            _%E30359%_)
                                           '())))
                         (if (equal? _%hd-pat31589%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%L31571%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%L30376%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate129108%_
                                                _%L31571%_
                                                _%L31510%_
                                                _%K30358%_
                                                _%E30359%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%L31573%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%L30376%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L31571%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%L30376%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate129108%_
                                                _%L31573%_
                                                _%L31512%_
                                                (_%generate129108%_
                                                 _%L31571%_
                                                 _%L31510%_
                                                 _%K30358%_
                                                 _%E30359%_)
                                                _%E30359%_)
                                               '())))))))
               (cons _%E30359%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd3153731565%_
                                   _%hd3153431555%_)
                                  (_%g3152931544%_ _%g3153031548%_))))
                          (_%g3152931544%_ _%g3153031548%_))))
                  (_%g3152931544%_ _%g3153031548%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3152831601%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl))))))
                                         (_%__kont3871638717%_
                                          (lambda ()
                                            (cons 'if
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '##null?)
                                                              (cons _%L30376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%K30358%_ (cons _%E30359%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3871838719%_
                                          (lambda (_%L31426%_ _%L31428%_)
                                            (_%generate-splice29110%_
                                             _%tgt30355%_
                                             _%L31428%_
                                             _%L31426%_
                                             _%K30358%_
                                             _%E30359%_)))
                                         (_%__kont3872038721%_
                                          (lambda (_%L31340%_)
                                            (let* ((_%g3135431362%_
                                                    (lambda (_%g3135531358%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3135531358%_)))
                                                   (_%g3135331381%_
                                                    (lambda (_%g3135531366%_)
                                                      ((lambda (_%L31369%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##box?)
                                   (cons _%L30376%_ '()))
                             (cons (cons 'let
                                         (cons (cons (cons _%L31369%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##unbox)
                               (cons _%L30376%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (_%generate129108%_
                                                      _%L31369%_
                                                      _%L31340%_
                                                      _%K30358%_
                                                      _%E30359%_)
                                                     '())))
                                   (cons _%E30359%_ '())))))
               _%g3135531366%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3135331381%_
                                               (gx#genident 'e)))))
                                         (_%__kont3872238723%_
                                          (lambda (_%L31145%_)
                                            (let* ((_%__stx3853938540%_
                                                    _%L31145%_)
                                                   (_%g3116031183%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3853938540%_))))
                                              (let ((_%__kont3854238543%_
                                                     (lambda (_%L31260%_)
                                                       (let* ((_%g3127431282%_
                                                               (lambda (_%g3127531278%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3127531278%_)))
                      (_%g3127331301%_
                       (lambda (_%g3127531286%_)
                         ((lambda (_%L31289%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'values-count)
                                                          (cons _%L30376%_
                                                                '()))
                                                    (cons _%L31289%_ '())))
                                        (cons (_%generate-simple-vector29111%_
                                               _%tgt30355%_
                                               _%L31260%_
                                               '0
                                               _%K30358%_
                                               _%E30359%_)
                                              (cons _%E30359%_ '())))))
                          _%g3127531286%_))))
                 (_%g3127331301%_ (gx#stx-length _%L31260%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3854438545%_
                                                     (lambda (_%L31214%_)
                                                       (_%generate-list-vector29112%_
                                                        _%tgt30355%_
                                                        _%L31214%_
                                                        'values->list
                                                        _%K30358%_
                                                        _%E30359%_))))
                                                (if (gx#stx-pair?
                                                     _%__stx3853938540%_)
                                                    (let ((_%e3116331236%_
                                                           (gx#syntax-e
                                                            _%__stx3853938540%_)))
                                                      (let ((_%tl3116531243%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3116331236%_)))
                    (_%hd3116431240%_
                     (let () (declare (not safe)) (##car _%e3116331236%_))))
                (if (gx#stx-datum? _%hd3116431240%_)
                    (let ((_%e3116631246%_ (gx#stx-e _%hd3116431240%_)))
                      (if (equal? _%e3116631246%_ 'simple:)
                          (if (gx#stx-pair? _%tl3116531243%_)
                              (let ((_%e3116731250%_
                                     (gx#syntax-e _%tl3116531243%_)))
                                (let ((_%tl3116931257%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3116731250%_)))
                                      (_%hd3116831254%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3116731250%_))))
                                  (if (gx#stx-null? _%tl3116931257%_)
                                      (_%__kont3854238543%_ _%hd3116831254%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3116031183%_)))))
                              (let () (declare (not safe)) (_%g3116031183%_)))
                          (if (equal? _%e3116631246%_ 'list:)
                              (if (gx#stx-pair? _%tl3116531243%_)
                                  (let ((_%e3117531204%_
                                         (gx#syntax-e _%tl3116531243%_)))
                                    (let ((_%tl3117731211%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3117531204%_)))
                                          (_%hd3117631208%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3117531204%_))))
                                      (if (gx#stx-null? _%tl3117731211%_)
                                          (_%__kont3854438545%_
                                           _%hd3117631208%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3116031183%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3116031183%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3116031183%_)))))
                    (let () (declare (not safe)) (_%g3116031183%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3116031183%_)))))))
                                         (_%__kont3872438725%_
                                          (lambda (_%L30950%_)
                                            (let* ((_%__stx3848938490%_
                                                    _%L30950%_)
                                                   (_%g3096530988%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3848938490%_))))
                                              (let ((_%__kont3849238493%_
                                                     (lambda (_%L31065%_)
                                                       (let* ((_%g3107931087%_
                                                               (lambda (_%g3108031083%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3108031083%_)))
                      (_%g3107831106%_
                       (lambda (_%g3108031091%_)
                         ((lambda (_%L31094%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##vector?)
                                              (cons _%L30376%_ '()))
                                        (cons (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _%L30376%_ '()))
                              (cons _%L31094%_ '())))
                  (cons (_%generate-simple-vector29111%_
                         _%tgt30355%_
                         _%L31065%_
                         '0
                         _%K30358%_
                         _%E30359%_)
                        (cons _%E30359%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30359%_ '())))))
                          _%g3108031091%_))))
                 (_%g3107831106%_ (gx#stx-length _%L31065%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3849438495%_
                                                     (lambda (_%L31019%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##vector?)
                                 (cons _%L30376%_ '()))
                           (cons (_%generate-list-vector29112%_
                                  _%tgt30355%_
                                  _%L31019%_
                                  'vector->list
                                  _%K30358%_
                                  _%E30359%_)
                                 (cons _%E30359%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx3848938490%_)
                                                    (let ((_%e3096831041%_
                                                           (gx#syntax-e
                                                            _%__stx3848938490%_)))
                                                      (let ((_%tl3097031048%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3096831041%_)))
                    (_%hd3096931045%_
                     (let () (declare (not safe)) (##car _%e3096831041%_))))
                (if (gx#stx-datum? _%hd3096931045%_)
                    (let ((_%e3097131051%_ (gx#stx-e _%hd3096931045%_)))
                      (if (equal? _%e3097131051%_ 'simple:)
                          (if (gx#stx-pair? _%tl3097031048%_)
                              (let ((_%e3097231055%_
                                     (gx#syntax-e _%tl3097031048%_)))
                                (let ((_%tl3097431062%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3097231055%_)))
                                      (_%hd3097331059%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3097231055%_))))
                                  (if (gx#stx-null? _%tl3097431062%_)
                                      (_%__kont3849238493%_ _%hd3097331059%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3096530988%_)))))
                              (let () (declare (not safe)) (_%g3096530988%_)))
                          (if (equal? _%e3097131051%_ 'list:)
                              (if (gx#stx-pair? _%tl3097031048%_)
                                  (let ((_%e3098031009%_
                                         (gx#syntax-e _%tl3097031048%_)))
                                    (let ((_%tl3098231016%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3098031009%_)))
                                          (_%hd3098131013%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3098031009%_))))
                                      (if (gx#stx-null? _%tl3098231016%_)
                                          (_%__kont3849438495%_
                                           _%hd3098131013%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3096530988%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3096530988%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3096530988%_)))))
                    (let () (declare (not safe)) (_%g3096530988%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3096530988%_)))))))
                                         (_%__kont3872638727%_
                                          (lambda (_%L30901%_ _%L30903%_)
                                            (_%generate-struct29113%_
                                             (gx#stx-e _%L30903%_)
                                             _%tgt30355%_
                                             _%L30901%_
                                             _%K30358%_
                                             _%E30359%_)))
                                         (_%__kont3872838729%_
                                          (lambda (_%L30842%_ _%L30844%_)
                                            (_%generate-class29116%_
                                             (gx#stx-e _%L30844%_)
                                             _%tgt30355%_
                                             _%L30842%_
                                             _%K30358%_
                                             _%E30359%_)))
                                         (_%__kont3873038731%_
                                          (lambda (_%L30739%_)
                                            (let* ((_%g3075330761%_
                                                    (lambda (_%g3075430757%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3075430757%_)))
                                                   (_%g3075230780%_
                                                    (lambda (_%g3075430765%_)
                                                      ((lambda (_%L30768%_)
                                                         (cons 'if
                                                               (cons (cons _%L30768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%L30376%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L30739%_ '()))
                                               '())))
                             (cons _%K30358%_ (cons _%E30359%_ '())))))
               _%g3075430765%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3075230780%_
                                               (let ((_%e30784%_
                                                      (gx#stx-e _%L30739%_)))
                                                 (if (or (symbol? _%e30784%_)
                                                         (keyword? _%e30784%_)
                                                         (immediate?
                                                          _%e30784%_))
                                                     '##eq?
                                                     (if (number? _%e30784%_)
                                                         'eqv?
                                                         'equal?)))))))
                                         (_%__kont3873238733%_
                                          (lambda (_%L30659%_ _%L30661%_)
                                            (let* ((_%g3067730685%_
                                                    (lambda (_%g3067830681%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3067830681%_)))
                                                   (_%g3067630704%_
                                                    (lambda (_%g3067830689%_)
                                                      ((lambda (_%L30692%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%L30692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%L30661%_
                                                     (cons _%L30376%_ '()))
                                               '()))
                                   '())
                             (cons (_%generate129108%_
                                    _%L30692%_
                                    _%L30659%_
                                    _%K30358%_
                                    _%E30359%_)
                                   '()))))
               _%g3067830689%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3067630704%_
                                               (gx#genident 'e)))))
                                         (_%__kont3873438735%_
                                          (lambda (_%L30601%_)
                                            (cons 'let
                                                  (cons (cons (cons _%L30601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L30376%_ '()))
                      '())
                (cons _%K30358%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3873638737%_
                                          (lambda () _%K30358%_)))
                                     (if (gx#stx-pair? _%__stx3870338704%_)
                                         (let ((_%e3040731843%_
                                                (gx#syntax-e
                                                 _%__stx3870338704%_)))
                                           (let ((_%tl3040931850%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e3040731843%_)))
                                                 (_%hd3040831847%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e3040731843%_))))
                                             (if (gx#stx-datum?
                                                  _%hd3040831847%_)
                                                 (let ((_%e3041031853%_
                                                        (gx#stx-e
                                                         _%hd3040831847%_)))
                                                   (if (equal? _%e3041031853%_
                                                               '?:)
                                                       (if (gx#stx-pair?
                                                            _%tl3040931850%_)
                                                           (let ((_%e3041131857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3040931850%_)))
                     (let ((_%tl3041331864%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3041131857%_)))
                           (_%hd3041231861%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3041131857%_))))
                       (_%__kont3870638707%_
                        _%tl3041331864%_
                        _%hd3041231861%_)))
                   (let () (declare (not safe)) (_%g3040330545%_)))
               (if (equal? _%e3041031853%_ 'and:)
                   (_%__kont3870838709%_ _%tl3040931850%_)
                   (if (equal? _%e3041031853%_ 'or:)
                       (_%__kont3871038711%_ _%tl3040931850%_)
                       (if (equal? _%e3041031853%_ 'not:)
                           (if (gx#stx-pair? _%tl3040931850%_)
                               (let ((_%e3042931626%_
                                      (gx#syntax-e _%tl3040931850%_)))
                                 (let ((_%tl3043131633%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3042931626%_)))
                                       (_%hd3043031630%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3042931626%_))))
                                   (if (gx#stx-null? _%tl3043131633%_)
                                       (_%__kont3871238713%_ _%hd3043031630%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3040330545%_)))))
                               (let () (declare (not safe)) (_%g3040330545%_)))
                           (if (equal? _%e3041031853%_ 'cons:)
                               (if (gx#stx-pair? _%tl3040931850%_)
                                   (let ((_%e3043831490%_
                                          (gx#syntax-e _%tl3040931850%_)))
                                     (let ((_%tl3044031497%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3043831490%_)))
                                           (_%hd3043931494%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3043831490%_))))
                                       (if (gx#stx-pair? _%tl3044031497%_)
                                           (let ((_%e3044131500%_
                                                  (gx#syntax-e
                                                   _%tl3044031497%_)))
                                             (let ((_%tl3044331507%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3044131500%_)))
                                                   (_%hd3044231504%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3044131500%_))))
                                               (if (gx#stx-null?
                                                    _%tl3044331507%_)
                                                   (_%__kont3871438715%_
                                                    _%hd3044231504%_
                                                    _%hd3043931494%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3040330545%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3040330545%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3040330545%_)))
                               (if (equal? _%e3041031853%_ 'null:)
                                   (if (gx#stx-null? _%tl3040931850%_)
                                       (_%__kont3871638717%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3040330545%_)))
                                   (if (equal? _%e3041031853%_ 'splice:)
                                       (if (gx#stx-pair? _%tl3040931850%_)
                                           (let ((_%e3045431406%_
                                                  (gx#syntax-e
                                                   _%tl3040931850%_)))
                                             (let ((_%tl3045631413%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3045431406%_)))
                                                   (_%hd3045531410%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3045431406%_))))
                                               (if (gx#stx-pair?
                                                    _%tl3045631413%_)
                                                   (let ((_%e3045731416%_
                                                          (gx#syntax-e
                                                           _%tl3045631413%_)))
                                                     (let ((_%tl3045931423%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3045731416%_)))
                                                           (_%hd3045831420%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3045731416%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3045931423%_)
                                                           (_%__kont3871838719%_
                                                            _%hd3045831420%_
                                                            _%hd3045531410%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3040330545%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3040330545%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3040330545%_)))
                                       (if (equal? _%e3041031853%_ 'box:)
                                           (if (gx#stx-pair? _%tl3040931850%_)
                                               (let ((_%e3046531330%_
                                                      (gx#syntax-e
                                                       _%tl3040931850%_)))
                                                 (let ((_%tl3046731337%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3046531330%_)))
                                                       (_%hd3046631334%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3046531330%_))))
                                                   (if (gx#stx-null?
                                                        _%tl3046731337%_)
                                                       (_%__kont3872038721%_
                                                        _%hd3046631334%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g3040330545%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3040330545%_)))
                                           (if (equal? _%e3041031853%_
                                                       'values:)
                                               (if (gx#stx-pair?
                                                    _%tl3040931850%_)
                                                   (let ((_%e3047331135%_
                                                          (gx#syntax-e
                                                           _%tl3040931850%_)))
                                                     (let ((_%tl3047531142%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3047331135%_)))
                                                           (_%hd3047431139%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3047331135%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3047531142%_)
                                                           (_%__kont3872238723%_
                                                            _%hd3047431139%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3040330545%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3040330545%_)))
                                               (if (equal? _%e3041031853%_
                                                           'vector:)
                                                   (if (gx#stx-pair?
                                                        _%tl3040931850%_)
                                                       (let ((_%e3048130940%_
                                                              (gx#syntax-e
                                                               _%tl3040931850%_)))
                                                         (let ((_%tl3048330947%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3048130940%_)))
                       (_%hd3048230944%_
                        (let () (declare (not safe)) (##car _%e3048130940%_))))
                   (if (gx#stx-null? _%tl3048330947%_)
                       (_%__kont3872438725%_ _%hd3048230944%_)
                       (let () (declare (not safe)) (_%g3040330545%_)))))
               (let () (declare (not safe)) (_%g3040330545%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (equal? _%e3041031853%_
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _%tl3040931850%_)
                                                           (let ((_%e3049030881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3040931850%_)))
                     (let ((_%tl3049230888%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3049030881%_)))
                           (_%hd3049130885%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3049030881%_))))
                       (if (gx#stx-pair? _%tl3049230888%_)
                           (let ((_%e3049330891%_
                                  (gx#syntax-e _%tl3049230888%_)))
                             (let ((_%tl3049530898%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3049330891%_)))
                                   (_%hd3049430895%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3049330891%_))))
                               (if (gx#stx-null? _%tl3049530898%_)
                                   (_%__kont3872638727%_
                                    _%hd3049430895%_
                                    _%hd3049130885%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3040330545%_)))))
                           (let () (declare (not safe)) (_%g3040330545%_)))))
                   (let () (declare (not safe)) (_%g3040330545%_)))
               (if (equal? _%e3041031853%_ 'class:)
                   (if (gx#stx-pair? _%tl3040931850%_)
                       (let ((_%e3050230822%_ (gx#syntax-e _%tl3040931850%_)))
                         (let ((_%tl3050430829%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3050230822%_)))
                               (_%hd3050330826%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3050230822%_))))
                           (if (gx#stx-pair? _%tl3050430829%_)
                               (let ((_%e3050530832%_
                                      (gx#syntax-e _%tl3050430829%_)))
                                 (let ((_%tl3050730839%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3050530832%_)))
                                       (_%hd3050630836%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3050530832%_))))
                                   (if (gx#stx-null? _%tl3050730839%_)
                                       (_%__kont3872838729%_
                                        _%hd3050630836%_
                                        _%hd3050330826%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3040330545%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g3040330545%_)))))
                       (let () (declare (not safe)) (_%g3040330545%_)))
                   (if (equal? _%e3041031853%_ 'datum:)
                       (if (gx#stx-pair? _%tl3040931850%_)
                           (let ((_%e3051330729%_
                                  (gx#syntax-e _%tl3040931850%_)))
                             (let ((_%tl3051530736%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3051330729%_)))
                                   (_%hd3051430733%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3051330729%_))))
                               (if (gx#stx-null? _%tl3051530736%_)
                                   (_%__kont3873038731%_ _%hd3051430733%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3040330545%_)))))
                           (let () (declare (not safe)) (_%g3040330545%_)))
                       (if (equal? _%e3041031853%_ 'apply:)
                           (if (gx#stx-pair? _%tl3040931850%_)
                               (let ((_%e3052230639%_
                                      (gx#syntax-e _%tl3040931850%_)))
                                 (let ((_%tl3052430646%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3052230639%_)))
                                       (_%hd3052330643%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3052230639%_))))
                                   (if (gx#stx-pair? _%tl3052430646%_)
                                       (let ((_%e3052530649%_
                                              (gx#syntax-e _%tl3052430646%_)))
                                         (let ((_%tl3052730656%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3052530649%_)))
                                               (_%hd3052630653%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3052530649%_))))
                                           (if (gx#stx-null? _%tl3052730656%_)
                                               (_%__kont3873238733%_
                                                _%hd3052630653%_
                                                _%hd3052330643%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3040330545%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g3040330545%_)))))
                               (let () (declare (not safe)) (_%g3040330545%_)))
                           (if (equal? _%e3041031853%_ 'var:)
                               (if (gx#stx-pair? _%tl3040931850%_)
                                   (let ((_%e3053330591%_
                                          (gx#syntax-e _%tl3040931850%_)))
                                     (let ((_%tl3053530598%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3053330591%_)))
                                           (_%hd3053430595%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3053330591%_))))
                                       (if (gx#stx-null? _%tl3053530598%_)
                                           (_%__kont3873438735%_
                                            _%hd3053430595%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g3040330545%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3040330545%_)))
                               (if (equal? _%e3041031853%_ 'any:)
                                   (if (gx#stx-null? _%tl3040931850%_)
                                       (_%__kont3873638737%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3040330545%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3040330545%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3040330545%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3040330545%_))))))
                               _%g3036230373%_))))
                      (_%g3036032152%_ _%tgt30355%_))))
                 (_%generate-splice29110%_
                  (lambda (_%tgt29727%_
                           _%hd29729%_
                           _%rest29730%_
                           _%K29731%_
                           _%E29732%_)
                    (let* ((_%g2973429751%_
                            (lambda (_%g2973529747%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2973529747%_)))
                           (_%g2973330351%_
                            (lambda (_%g2973529755%_)
                              (if (gx#stx-pair/null? _%g2973529755%_)
                                  (let ((_g39858_
                                         (gx#syntax-split-splice
                                          _%g2973529755%_
                                          '0)))
                                    (begin
                                      (let ((_g39859_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g39858_)
                                                   (##vector-length _g39858_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g39859_ 2)))
                                            (error "Context expects 2 values"
                                                   _g39859_)))
                                      (let ((_%target2973729758%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g39858_ 0)))
                                            (_%tl2973929761%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g39858_ 1))))
                                        (if (gx#stx-null? _%tl2973929761%_)
                                            (letrec ((_%loop2974029764%_
                                                      (lambda (_%hd2973829768%_
                                                               _%var2974429771%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2973829768%_)
                                                            (let ((_%e2974129774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2973829768%_)))
                      (let ((_%lp-hd2974229778%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2974129774%_)))
                            (_%lp-tl2974329781%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2974129774%_))))
                        (_%loop2974029764%_
                         _%lp-tl2974329781%_
                         (cons _%lp-hd2974229778%_ _%var2974429771%_))))
                    (let ((_%var2974529784%_ (reverse _%var2974429771%_)))
                      ((lambda (_%L29788%_)
                         (let* ((_%g2980429821%_
                                 (lambda (_%g2980529817%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2980529817%_)))
                                (_%g2980330339%_
                                 (lambda (_%g2980529825%_)
                                   (if (gx#stx-pair/null? _%g2980529825%_)
                                       (let ((_g39860_
                                              (gx#syntax-split-splice
                                               _%g2980529825%_
                                               '0)))
                                         (begin
                                           (let ((_g39861_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g39860_)
                                                        (##vector-length
                                                         _g39860_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g39861_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g39861_)))
                                           (let ((_%target2980729828%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g39860_ 0)))
                                                 (_%tl2980929831%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g39860_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2980929831%_)
                                                 (letrec ((_%loop2981029834%_
                                                           (lambda (_%hd2980829838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%var-r2981429841%_)
                     (if (gx#stx-pair? _%hd2980829838%_)
                         (let ((_%e2981129844%_
                                (gx#syntax-e _%hd2980829838%_)))
                           (let ((_%lp-hd2981229848%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2981129844%_)))
                                 (_%lp-tl2981329851%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2981129844%_))))
                             (_%loop2981029834%_
                              _%lp-tl2981329851%_
                              (cons _%lp-hd2981229848%_ _%var-r2981429841%_))))
                         (let ((_%var-r2981529854%_
                                (reverse _%var-r2981429841%_)))
                           ((lambda (_%L29858%_)
                              (let* ((_%g2987529892%_
                                      (lambda (_%g2987629888%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2987629888%_)))
                                     (_%g2987430327%_
                                      (lambda (_%g2987629896%_)
                                        (if (gx#stx-pair/null? _%g2987629896%_)
                                            (let ((_g39862_
                                                   (gx#syntax-split-splice
                                                    _%g2987629896%_
                                                    '0)))
                                              (begin
                                                (let ((_g39863_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g39862_)
                                                             (##vector-length
                                                              _g39862_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g39863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g39863_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2987829899%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g39862_
                                                          0)))
                                                      (_%tl2988029902%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g39862_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2988029902%_)
                                                      (letrec ((_%loop2988129905%_
                                                                (lambda (_%hd2987929909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%init2988529912%_)
                          (if (gx#stx-pair? _%hd2987929909%_)
                              (let ((_%e2988229915%_
                                     (gx#syntax-e _%hd2987929909%_)))
                                (let ((_%lp-hd2988329919%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2988229915%_)))
                                      (_%lp-tl2988429922%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2988229915%_))))
                                  (_%loop2988129905%_
                                   _%lp-tl2988429922%_
                                   (cons _%lp-hd2988329919%_
                                         _%init2988529912%_))))
                              (let ((_%init2988629925%_
                                     (reverse _%init2988529912%_)))
                                ((lambda (_%L29929%_)
                                   (let* ((_%g2994629954%_
                                           (lambda (_%g2994729950%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2994729950%_)))
                                          (_%g2994530323%_
                                           (lambda (_%g2994729958%_)
                                             ((lambda (_%L29961%_)
                                                (let* ((_%g2997429982%_
                                                        (lambda (_%g2997529978%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2997529978%_)))
                                                       (_%g2997330319%_
                                                        (lambda (_%g2997529986%_)
                                                          ((lambda (_%L29989%_)
                                                             (let* ((_%g3000230010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g3000330006%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g3000330006%_)))
                            (_%g3000130315%_
                             (lambda (_%g3000330014%_)
                               ((lambda (_%L30017%_)
                                  (let* ((_%g3003030038%_
                                          (lambda (_%g3003130034%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3003130034%_)))
                                         (_%g3002930311%_
                                          (lambda (_%g3003130042%_)
                                            ((lambda (_%L30045%_)
                                               (let* ((_%g3005830066%_
                                                       (lambda (_%g3005930062%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g3005930062%_)))
                                                      (_%g3005730307%_
                                                       (lambda (_%g3005930070%_)
                                                         ((lambda (_%L30073%_)
                                                            (let* ((_%g3008630094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3008730090%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3008730090%_)))
                           (_%g3008530303%_
                            (lambda (_%g3008730098%_)
                              ((lambda (_%L30101%_)
                                 (let* ((_%g3011430122%_
                                         (lambda (_%g3011530118%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3011530118%_)))
                                        (_%g3011330299%_
                                         (lambda (_%g3011530126%_)
                                           ((lambda (_%L30129%_)
                                              (let* ((_%g3014230150%_
                                                      (lambda (_%g3014330146%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3014330146%_)))
                                                     (_%g3014130284%_
                                                      (lambda (_%g3014330154%_)
                                                        ((lambda (_%L30157%_)
                                                           (let* ((_%g3017030178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g3017130174%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3017130174%_)))
                          (_%g3016930272%_
                           (lambda (_%g3017130182%_)
                             ((lambda (_%L30185%_)
                                (let* ((_%g3019830206%_
                                        (lambda (_%g3019930202%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3019930202%_)))
                                       (_%g3019730268%_
                                        (lambda (_%g3019930210%_)
                                          ((lambda (_%L30213%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%L29989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%L30101%_
                                                     (foldr (lambda (_%g3023530238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g3023630241%_)
                      (cons _%g3023530238%_ _%g3023630241%_))
                    '()
                    _%L29788%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L30129%_ '())))
                                   '()))
                       (cons (cons _%L30045%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%L30073%_
                                                           (cons _%L30101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3023330244%_ _%g3023430247%_)
                                  (cons _%g3023330244%_ _%g3023430247%_))
                                '()
                                _%L29858%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%L30213%_ '())))
                                         '()))
                             (cons (cons _%L30017%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%L30101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3023130250%_ _%g3023230253%_)
                                  (cons _%g3023130250%_ _%g3023230253%_))
                                '()
                                _%L29858%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%L30101%_ '()))
                                     (cons (cons _%L30045%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%L30101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%L30101%_
                     (foldr (lambda (_%g3022930256%_ _%g3023030259%_)
                              (cons _%g3022930256%_ _%g3023030259%_))
                            '()
                            _%L29858%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%L30185%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%L30017%_
                             (cons _%L29961%_
                                   (foldr (lambda (_%g3022730262%_
                                                   _%g3022830265%_)
                                            (cons _%g3022730262%_
                                                  _%g3022830265%_))
                                          '()
                                          _%L29929%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3019930210%_))))
                                  (_%g3019730268%_
                                   (_%generate129108%_
                                    _%L30073%_
                                    _%hd29729%_
                                    _%L30157%_
                                    _%L30185%_))))
                              _%g3017130182%_))))
                     (_%g3016930272%_
                      (cons _%L29989%_
                            (cons _%L30101%_
                                  (foldr (lambda (_%g3027530278%_
                                                  _%g3027630281%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%g3027530278%_
                                                             '()))
                                                 _%g3027630281%_))
                                         '()
                                         _%L29858%_))))))
                 _%g3014330154%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3014130284%_
                                                 (cons _%L30017%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%L30101%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets _%L29858%_ _%L29788%_)
                       (foldr (lambda (_%g3028730291%_
                                       _%g3028830294%_
                                       _%g3028930296%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%g3028830294%_
                                                  (cons _%g3028730291%_ '())))
                                      _%g3028930296%_))
                              '()
                              _%L29858%_
                              _%L29788%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g3011530126%_))))
                                   (_%g3011330299%_
                                    (_%generate129108%_
                                     _%L30101%_
                                     _%rest29730%_
                                     _%K29731%_
                                     _%E29732%_))))
                               _%g3008730098%_))))
                      (_%g3008530303%_ (gx#genident 'rest))))
                  _%g3005930070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3005730307%_
                                                  (gx#genident 'hd))))
                                             _%g3003130042%_))))
                                    (_%g3002930311%_
                                     (gx#genident 'splice-try))))
                                _%g3000330014%_))))
                       (_%g3000130315%_ (gx#genident 'splice-loop))))
                   _%g2997529986%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2997330319%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%g2994729958%_))))
                                     (_%g2994530323%_ _%tgt29727%_)))
                                 _%init2988629925%_))))))
                (_%loop2988129905%_ _%target2987829899%_ '()))
              (_%g2987529892%_ _%g2987629896%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2987529892%_
                                             _%g2987629896%_)))))
                                (_%g2987430327%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%g3033030333%_
                                                   _%g3033130336%_)
                                            (cons _%g3033030333%_
                                                  _%g3033130336%_))
                                          '()
                                          _%L29788%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%var-r2981529854%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2981029834%_
                                                    _%target2980729828%_
                                                    '()))
                                                 (_%g2980429821%_
                                                  _%g2980529825%_)))))
                                       (_%g2980429821%_ _%g2980529825%_)))))
                           (_%g2980330339%_
                            (gx#gentemps
                             (foldr (lambda (_%g3034230345%_ _%g3034330348%_)
                                      (cons _%g3034230345%_ _%g3034330348%_))
                                    '()
                                    _%L29788%_)))))
                       _%var2974529784%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2974029764%_
                                               _%target2973729758%_
                                               '()))
                                            (_%g2973429751%_
                                             _%g2973529755%_)))))
                                  (_%g2973429751%_ _%g2973529755%_)))))
                      (_%g2973330351%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd29729%_)))))
                 (_%generate-simple-vector29111%_
                  (lambda (_%tgt29569%_
                           _%body29571%_
                           _%start29572%_
                           _%K29573%_
                           _%E29574%_)
                    (let _%recur29576%_ ((_%rest29579%_ _%body29571%_)
                                         (_%off29581%_ _%start29572%_))
                      (let* ((_%__stx3906139062%_ _%rest29579%_)
                             (_%g2958429596%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3906139062%_))))
                        (let ((_%__kont3906439065%_
                               (lambda (_%L29624%_ _%L29626%_)
                                 (let* ((_%g2964129660%_
                                         (lambda (_%g2964229656%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2964229656%_)))
                                        (_%g2964029719%_
                                         (lambda (_%g2964229664%_)
                                           (if (gx#stx-pair? _%g2964229664%_)
                                               (let ((_%e2964629667%_
                                                      (gx#syntax-e
                                                       _%g2964229664%_)))
                                                 (let ((_%hd2964729671%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2964629667%_)))
                                                       (_%tl2964829674%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2964629667%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2964829674%_)
                                                       (let ((_%e2964929677%_
                                                              (gx#syntax-e
                                                               _%tl2964829674%_)))
                                                         (let ((_%hd2965029681%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2964929677%_)))
                       (_%tl2965129684%_
                        (let () (declare (not safe)) (##cdr _%e2964929677%_))))
                   (if (gx#stx-pair? _%tl2965129684%_)
                       (let ((_%e2965229687%_ (gx#syntax-e _%tl2965129684%_)))
                         (let ((_%hd2965329691%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e2965229687%_)))
                               (_%tl2965429694%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e2965229687%_))))
                           (if (gx#stx-null? _%tl2965429694%_)
                               ((lambda (_%L29697%_ _%L29699%_ _%L29700%_)
                                  (cons 'let
                                        (cons (cons (cons _%L29700%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##vector-ref)
                              (cons _%L29699%_ (cons _%L29697%_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (_%generate129108%_
                                                     _%L29700%_
                                                     _%L29626%_
                                                     (_%recur29576%_
                                                      _%L29624%_
                                                      (fx1+ _%off29581%_))
                                                     _%E29574%_)
                                                    '()))))
                                _%hd2965329691%_
                                _%hd2965029681%_
                                _%hd2964729671%_)
                               (_%g2964129660%_ _%g2964229664%_))))
                       (_%g2964129660%_ _%g2964229664%_))))
               (_%g2964129660%_ _%g2964229664%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2964129660%_
                                                _%g2964229664%_)))))
                                   (_%g2964029719%_
                                    (list (gx#genident 'e)
                                          _%tgt29569%_
                                          _%off29581%_)))))
                              (_%__kont3906639067%_ (lambda () _%K29573%_)))
                          (if (gx#stx-pair? _%__stx3906139062%_)
                              (let ((_%e2958829614%_
                                     (gx#syntax-e _%__stx3906139062%_)))
                                (let ((_%tl2959029621%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2958829614%_)))
                                      (_%hd2958929618%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2958829614%_))))
                                  (_%__kont3906439065%_
                                   _%tl2959029621%_
                                   _%hd2958929618%_)))
                              (_%__kont3906639067%_)))))))
                 (_%generate-list-vector29112%_
                  (lambda (_%tgt29461%_
                           _%body29463%_
                           _%->list29464%_
                           _%K29465%_
                           _%E29466%_)
                    (let* ((_%g2946829476%_
                            (lambda (_%g2946929472%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2946929472%_)))
                           (_%g2946729565%_
                            (lambda (_%g2946929480%_)
                              ((lambda (_%L29483%_)
                                 (let* ((_%g2949529503%_
                                         (lambda (_%g2949629499%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2949629499%_)))
                                        (_%g2949429561%_
                                         (lambda (_%g2949629507%_)
                                           ((lambda (_%L29510%_)
                                              (let* ((_%g2952329531%_
                                                      (lambda (_%g2952429527%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2952429527%_)))
                                                     (_%g2952229553%_
                                                      (lambda (_%g2952429535%_)
                                                        ((lambda (_%L29538%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%L29483%_ (cons _%L29538%_ '()))
                                     '())
                               (cons (_%generate129108%_
                                      _%L29483%_
                                      _%body29463%_
                                      _%K29465%_
                                      _%E29466%_)
                                     '()))))
                 _%g2952429535%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2952229553%_
                                                 (let ((_%$e29557%_
                                                        _%->list29464%_))
                                                   (if (eq? 'values->list
                                                            _%$e29557%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%L29510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e29557%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%L29510%_ '()))
                   (if (eq? 'struct->list _%$e29557%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          '##structure->list)
                                         (cons _%L29510%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx29101%_
                        _%->list29464%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2949629507%_))))
                                   (_%g2949429561%_ _%tgt29461%_)))
                               _%g2946929480%_))))
                      (_%g2946729565%_ (gx#genident 'e)))))
                 (_%generate-struct29113%_
                  (lambda (_%info29332%_
                           _%tgt29334%_
                           _%body29335%_
                           _%K29336%_
                           _%E29337%_)
                    (let* ((_%__stx3907739078%_ _%body29335%_)
                           (_%g2934029363%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3907739078%_))))
                      (let ((_%__kont3908039081%_
                             (lambda (_%L29440%_)
                               (let ((_%fields29454%_
                                      (_%struct-field-accessors29115%_
                                       _%info29332%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj39831
                                                          _%info29332%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj39831
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj39831
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj39831
                                                          'predicate)))
                                                   (cons _%tgt29334%_ '()))
                                             (cons (_%generate-simple-struct-body29114%_
                                                    _%info29332%_
                                                    _%tgt29334%_
                                                    _%L29440%_
                                                    _%K29336%_
                                                    _%E29337%_)
                                                   (cons _%E29337%_ '())))))))
                            (_%__kont3908239083%_
                             (lambda (_%L29394%_)
                               (cons 'if
                                     (cons (cons (let ((__obj39832
                                                        _%info29332%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj39832
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj39832
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj39832
                                                        'predicate)))
                                                 (cons _%tgt29334%_ '()))
                                           (cons (_%generate-list-vector29112%_
                                                  _%tgt29334%_
                                                  _%L29394%_
                                                  'struct->list
                                                  _%K29336%_
                                                  _%E29337%_)
                                                 (cons _%E29337%_ '())))))))
                        (if (gx#stx-pair? _%__stx3907739078%_)
                            (let ((_%e2934329416%_
                                   (gx#syntax-e _%__stx3907739078%_)))
                              (let ((_%tl2934529423%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2934329416%_)))
                                    (_%hd2934429420%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2934329416%_))))
                                (if (gx#stx-datum? _%hd2934429420%_)
                                    (let ((_%e2934629426%_
                                           (gx#stx-e _%hd2934429420%_)))
                                      (if (equal? _%e2934629426%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2934529423%_)
                                              (let ((_%e2934729430%_
                                                     (gx#syntax-e
                                                      _%tl2934529423%_)))
                                                (let ((_%tl2934929437%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2934729430%_)))
                                                      (_%hd2934829434%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2934729430%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2934929437%_)
                                                      (_%__kont3908039081%_
                                                       _%hd2934829434%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2934029363%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2934029363%_)))
                                          (if (equal? _%e2934629426%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2934529423%_)
                                                  (let ((_%e2935529384%_
                                                         (gx#syntax-e
                                                          _%tl2934529423%_)))
                                                    (let ((_%tl2935729391%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2935529384%_)))
                                                          (_%hd2935629388%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2935529384%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2935729391%_)
                                                          (_%__kont3908239083%_
                                                           _%hd2935629388%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2934029363%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2934029363%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2934029363%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2934029363%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2934029363%_)))))))
                 (_%generate-simple-struct-body29114%_
                  (lambda (_%info29252%_
                           _%tgt29254%_
                           _%body29255%_
                           _%K29256%_
                           _%E29257%_)
                    (let _%recur29259%_ ((_%rest29262%_ _%body29255%_)
                                         (_%fields29264%_
                                          (_%struct-field-accessors29115%_
                                           _%info29252%_)))
                      (let* ((_%__stx3912739128%_ _%rest29262%_)
                             (_%g2926729279%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3912739128%_))))
                        (let ((_%__kont3913039131%_
                               (lambda (_%L29307%_ _%L29309%_)
                                 (if (null? _%fields29264%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29101%_
                                      _%info29252%_
                                      (let ((__obj39833 _%info29252%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39833
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39833
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39833
                                             'name))))
                                     (let ((_%$tgt29324%_ (gx#genident 'e))
                                           (_%getf29326%_
                                            (car _%fields29264%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29324%_
                                                               (cons (cons _%getf29326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29254%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129108%_
                                                          _%$tgt29324%_
                                                          _%L29309%_
                                                          (_%recur29259%_
                                                           _%L29307%_
                                                           (cdr _%fields29264%_))
                                                          _%E29257%_)
                                                         '())))))))
                              (_%__kont3913239133%_ (lambda () _%K29256%_)))
                          (if (gx#stx-pair? _%__stx3912739128%_)
                              (let ((_%e2927129297%_
                                     (gx#syntax-e _%__stx3912739128%_)))
                                (let ((_%tl2927329304%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2927129297%_)))
                                      (_%hd2927229301%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2927129297%_))))
                                  (_%__kont3913039131%_
                                   _%tl2927329304%_
                                   _%hd2927229301%_)))
                              (_%__kont3913239133%_)))))))
                 (_%struct-field-accessors29115%_
                  (lambda (_%info29233%_)
                    (let _%recur29236%_ ((_%next29239%_
                                          (cons _%info29233%_ '())))
                      (if (null? _%next29239%_)
                          '()
                          (let ((_%ti29242%_ (car _%next29239%_)))
                            (let ((__tmp39865
                                   (_%recur29236%_
                                    (map gx#syntax-local-value
                                         (let ((__obj39834 _%ti29242%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj39834
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj39834
                                                  '3
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj39834
                                                'super))))))
                                  (__tmp39864
                                   (map (lambda (_%slot29245%_)
                                          (let ((_%$e29248%_
                                                 (agetq _%slot29245%_
                                                        (let ((__obj39835
                                                               _%ti29242%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj39835
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj39835 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj39835
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29248%_
                                                _%$e29248%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29101%_
                                                 _%info29233%_
                                                 _%slot29245%_))))
                                        (let ((__obj39836 _%ti29242%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj39836
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj39836
                                                 '4
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj39836
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp39865 __tmp39864)))))))
                 (_%generate-class29116%_
                  (lambda (_%info29226%_
                           _%tgt29228%_
                           _%body29229%_
                           _%K29230%_
                           _%E29231%_)
                    (cons 'if
                          (cons (cons (let ((__obj39837 _%info29226%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39837
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39837
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39837
                                             'predicate)))
                                      (cons _%tgt29228%_ '()))
                                (cons (_%generate-class-body29117%_
                                       _%info29226%_
                                       _%tgt29228%_
                                       _%body29229%_
                                       _%K29230%_
                                       _%E29231%_)
                                      (cons _%E29231%_ '()))))))
                 (_%generate-class-body29117%_
                  (lambda (_%info29119%_
                           _%tgt29121%_
                           _%body29122%_
                           _%K29123%_
                           _%E29124%_)
                    (let _%recur29126%_ ((_%rest29129%_ _%body29122%_))
                      (let* ((_%__stx3914339144%_ _%rest29129%_)
                             (_%g2913329149%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3914339144%_))))
                        (let ((_%__kont3914639147%_
                               (lambda (_%L29187%_ _%L29189%_ _%L29190%_)
                                 (let ((_%$e29210%_
                                        (agetq (let ((__tmp39866
                                                      (keyword->string
                                                       (gx#stx-e _%L29190%_))))
                                                 (declare (not safe))
                                                 (##string->symbol __tmp39866))
                                               (let ((__obj39838
                                                      _%info29119%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj39838
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj39838
                                                        '17
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj39838
                                                      'unchecked-accessors))))))
                                   (if _%$e29210%_
                                       ((lambda (_%getf29214%_)
                                          (let ((_%$tgt29217%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt29217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf29214%_ (cons _%tgt29121%_ '()))
                                  '()))
                      '())
                (cons (_%generate129108%_
                       _%$tgt29217%_
                       _%L29189%_
                       (_%recur29126%_ _%L29187%_)
                       _%E29124%_)
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e29210%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx29101%_
                                        _%info29119%_
                                        _%L29190%_)))))
                              (_%__kont3914839149%_ (lambda () _%K29123%_)))
                          (if (gx#stx-pair? _%__stx3914339144%_)
                              (let ((_%e2913829167%_
                                     (gx#syntax-e _%__stx3914339144%_)))
                                (let ((_%tl2914029174%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2913829167%_)))
                                      (_%hd2913929171%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2913829167%_))))
                                  (if (gx#stx-pair? _%tl2914029174%_)
                                      (let ((_%e2914129177%_
                                             (gx#syntax-e _%tl2914029174%_)))
                                        (let ((_%tl2914329184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2914129177%_)))
                                              (_%hd2914229181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2914129177%_))))
                                          (_%__kont3914639147%_
                                           _%tl2914329184%_
                                           _%hd2914229181%_
                                           _%hd2913929171%_)))
                                      (_%__kont3914839149%_))))
                              (_%__kont3914839149%_))))))))
          (_%generate129108%_
           _%tgt29103%_
           _%ptree29104%_
           _%K29105%_
           _%E29106%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx27914%_ _%tgt-lst27916%_ _%clauses27917%_)
        (letrec ((_%parse-body27919%_
                  (lambda (_%hd-len28923%_)
                    (let _%lp28926%_ ((_%rest28929%_ _%clauses27917%_)
                                      (_%r28931%_ '()))
                      (let* ((_%__stx3919339194%_ _%rest28929%_)
                             (_%g2893428946%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3919339194%_))))
                        (let ((_%__kont3919639197%_
                               (lambda (_%L28974%_ _%L28976%_)
                                 (let* ((_%__stx3916539166%_ _%L28976%_)
                                        (_%g2899329009%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3916539166%_))))
                                   (let ((_%__kont3916839169%_
                                          (lambda (_%L29078%_)
                                            (if (gx#stx-null? _%L28974%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%L29078%_)
                                 (let ((_%$e29089%_
                                        (gx#stx-source _%L28976%_)))
                                   (if _%$e29089%_
                                       _%$e29089%_
                                       (gx#stx-source _%stx27914%_))))
                                '())))
              _%r28931%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx27914%_
                                                 _%L28976%_))))
                                         (_%__kont3917039171%_
                                          (lambda (_%L29037%_ _%L29039%_)
                                            (_%lp28926%_
                                             _%L28974%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g2905129053%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g2905129053%_
                           _%stx27914%_))
                        _%L29039%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin) _%L29037%_)
                              (let ((_%$e29057%_ (gx#stx-source _%L28976%_)))
                                (if _%$e29057%_
                                    _%$e29057%_
                                    (gx#stx-source _%stx27914%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r28931%_))))
                                         (_%__kont3917239173%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx27914%_
                                             _%L28976%_))))
                                     (let* ((_%__match3919039191%_
                                             (lambda (_%e2900129027%_
                                                      _%hd2900229031%_
                                                      _%tl2900329034%_)
                                               (let ((_%L29037%_
                                                      _%tl2900329034%_)
                                                     (_%L29039%_
                                                      _%hd2900229031%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29039%_)
                                                          (fx= (gx#stx-length
                                                                _%L29039%_)
                                                               _%hd-len28923%_)
                                                          (gx#stx-list?
                                                           _%L29037%_)
                                                          (not (gx#stx-null?
                                                                _%L29037%_)))
                                                     (_%__kont3917039171%_
                                                      _%L29037%_
                                                      _%L29039%_)
                                                     (_%__kont3917239173%_)))))
                                            (_%__match3918439185%_
                                             (lambda (_%e2899629068%_
                                                      _%hd2899729072%_
                                                      _%tl2899829075%_)
                                               (let ((_%L29078%_
                                                      _%tl2899829075%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29078%_)
                                                          (not (gx#stx-null?
                                                                _%L29078%_)))
                                                     (_%__kont3916839169%_
                                                      _%L29078%_)
                                                     (_%__match3919039191%_
                                                      _%e2899629068%_
                                                      _%hd2899729072%_
                                                      _%tl2899829075%_))))))
                                       (if (gx#stx-pair? _%__stx3916539166%_)
                                           (let ((_%e2899629068%_
                                                  (gx#syntax-e
                                                   _%__stx3916539166%_)))
                                             (let ((_%tl2899829075%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2899629068%_)))
                                                   (_%hd2899729072%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2899629068%_))))
                                               (if (gx#identifier?
                                                    _%hd2899729072%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g39867_|
                                                        _%hd2899729072%_)
                                                       (_%__match3918439185%_
                                                        _%e2899629068%_
                                                        _%hd2899729072%_
                                                        _%tl2899829075%_)
                                                       (_%__match3919039191%_
                                                        _%e2899629068%_
                                                        _%hd2899729072%_
                                                        _%tl2899829075%_))
                                                   (_%__match3919039191%_
                                                    _%e2899629068%_
                                                    _%hd2899729072%_
                                                    _%tl2899829075%_))))
                                           (_%__kont3917239173%_)))))))
                              (_%__kont3919839199%_ (lambda () _%r28931%_)))
                          (if (gx#stx-pair? _%__stx3919339194%_)
                              (let ((_%e2893828964%_
                                     (gx#syntax-e _%__stx3919339194%_)))
                                (let ((_%tl2894028971%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2893828964%_)))
                                      (_%hd2893928968%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2893828964%_))))
                                  (_%__kont3919639197%_
                                   _%tl2894028971%_
                                   _%hd2893928968%_)))
                              (_%__kont3919839199%_)))))))
                 (_%generate-body27921%_
                  (lambda (_%body28625%_)
                    (let* ((_%g2862828636%_
                            (lambda (_%g2862928632%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2862928632%_)))
                           (_%g2862728919%_
                            (lambda (_%g2862928640%_)
                              ((lambda (_%L28643%_)
                                 (let* ((_%g2865528672%_
                                         (lambda (_%g2865628668%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2865628668%_)))
                                        (_%g2865428915%_
                                         (lambda (_%g2865628676%_)
                                           (if (gx#stx-pair/null?
                                                _%g2865628676%_)
                                               (let ((_g39868_
                                                      (gx#syntax-split-splice
                                                       _%g2865628676%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39869_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39868_)
                        (##vector-length _g39868_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39869_ 2)))
                 (error "Context expects 2 values" _g39869_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target2865828679%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g39868_
                                                             0)))
                                                         (_%tl2866028682%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g39868_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl2866028682%_)
                                                         (letrec ((_%loop2866128685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd2865928689%_ _%target2866528692%_)
                             (if (gx#stx-pair? _%hd2865928689%_)
                                 (let ((_%e2866228695%_
                                        (gx#syntax-e _%hd2865928689%_)))
                                   (let ((_%lp-hd2866328699%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2866228695%_)))
                                         (_%lp-tl2866428702%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2866228695%_))))
                                     (_%loop2866128685%_
                                      _%lp-tl2866428702%_
                                      (cons _%lp-hd2866328699%_
                                            _%target2866528692%_))))
                                 (let ((_%target2866628705%_
                                        (reverse _%target2866528692%_)))
                                   ((lambda (_%L28709%_)
                                      (let* ((_%g2872628743%_
                                              (lambda (_%g2872728739%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2872728739%_)))
                                             (_%g2872528911%_
                                              (lambda (_%g2872728747%_)
                                                (if (gx#stx-pair/null?
                                                     _%g2872728747%_)
                                                    (let ((_g39870_
                                                           (gx#syntax-split-splice
                                                            _%g2872728747%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g39871_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g39870_)
                             (##vector-length _g39870_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g39871_ 2)))
                      (error "Context expects 2 values" _g39871_)))
                (let ((_%target2872928750%_
                       (let () (declare (not safe)) (##vector-ref _g39870_ 0)))
                      (_%tl2873128753%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g39870_ 1))))
                  (if (gx#stx-null? _%tl2873128753%_)
                      (letrec ((_%loop2873228756%_
                                (lambda (_%hd2873028760%_
                                         _%fail-diagnostic2873628763%_)
                                  (if (gx#stx-pair? _%hd2873028760%_)
                                      (let ((_%e2873328766%_
                                             (gx#syntax-e _%hd2873028760%_)))
                                        (let ((_%lp-hd2873428770%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2873328766%_)))
                                              (_%lp-tl2873528773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2873328766%_))))
                                          (_%loop2873228756%_
                                           _%lp-tl2873528773%_
                                           (cons _%lp-hd2873428770%_
                                                 _%fail-diagnostic2873628763%_))))
                                      (let ((_%fail-diagnostic2873728776%_
                                             (reverse _%fail-diagnostic2873628763%_)))
                                        ((lambda (_%L28780%_)
                                           (let* ((_%g2879728805%_
                                                   (lambda (_%g2879828801%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2879828801%_)))
                                                  (_%g2879628891%_
                                                   (lambda (_%g2879828809%_)
                                                     ((lambda (_%L28812%_)
                                                        (let* ((_%g2882528833%_
                                                                (lambda (_%g2882628829%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2882628829%_)))
                       (_%g2882428887%_
                        (lambda (_%g2882628837%_)
                          ((lambda (_%L28840%_)
                             (let* ((_%g2885328861%_
                                     (lambda (_%g2885428857%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2885428857%_)))
                                    (_%g2885228883%_
                                     (lambda (_%g2885428865%_)
                                       ((lambda (_%L28868%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%L28868%_ '()))))
                                        _%g2885428865%_))))
                               (_%g2885228883%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%L28643%_
                                                         (cons _%L28812%_ '()))
                                                   '())
                                             (cons _%L28840%_ '())))
                                 (gx#stx-source _%stx27914%_)))))
                           _%g2882628837%_))))
                  (_%g2882428887%_
                   (_%generate-clauses27922%_
                    _%body28625%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%L28643%_ '()) '())))))))
              _%g2879828809%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2879628891%_
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
                                     (foldr (lambda (_%g2889428899%_
                                                     _%g2889528902%_)
                                              (cons _%g2889428899%_
                                                    _%g2889528902%_))
                                            (foldr (lambda (_%g2889628905%_
                                                            _%g2889728908%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g2889628905%_ '()))
                   _%g2889728908%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%L28780%_)
                                            _%L28709%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx27914%_)))))
                                         _%fail-diagnostic2873728776%_))))))
                        (_%loop2873228756%_ _%target2872928750%_ '()))
                      (_%g2872628743%_ _%g2872728747%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2872628743%_
                                                     _%g2872728747%_)))))
                                        (_%g2872528911%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses27917%_))))
                                    _%target2866628705%_))))))
                   (_%loop2866128685%_ _%target2865828679%_ '()))
                 (_%g2865528672%_ _%g2865628676%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2865528672%_
                                                _%g2865628676%_)))))
                                   (_%g2865428915%_ _%tgt-lst27916%_)))
                               _%g2862928640%_))))
                      (_%g2862728919%_ (gx#genident 'E)))))
                 (_%generate-clauses27922%_
                  (lambda (_%rest28277%_ _%E28279%_)
                    (let* ((_%__stx3920939210%_ _%rest28277%_)
                           (_%g2828328299%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3920939210%_))))
                      (let ((_%__kont3921239213%_
                             (lambda (_%L28533%_)
                               (let* ((_%g2854428562%_
                                       (lambda (_%g2854528558%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2854528558%_)))
                                      (_%g2854328617%_
                                       (lambda (_%g2854528566%_)
                                         (if (gx#stx-pair? _%g2854528566%_)
                                             (let ((_%e2854828569%_
                                                    (gx#syntax-e
                                                     _%g2854528566%_)))
                                               (let ((_%hd2854928573%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2854828569%_)))
                                                     (_%tl2855028576%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2854828569%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2855028576%_)
                                                     (let ((_%e2855128579%_
                                                            (gx#syntax-e
                                                             _%tl2855028576%_)))
                                                       (let ((_%hd2855228583%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2855128579%_)))
                     (_%tl2855328586%_
                      (let () (declare (not safe)) (##cdr _%e2855128579%_))))
                 (if (gx#stx-pair? _%tl2855328586%_)
                     (let ((_%e2855428589%_ (gx#syntax-e _%tl2855328586%_)))
                       (let ((_%hd2855528593%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2855428589%_)))
                             (_%tl2855628596%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2855428589%_))))
                         (if (gx#stx-null? _%tl2855628596%_)
                             ((lambda (_%L28599%_ _%L28601%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _%L28601%_)
                                                      (_%generate127923%_
                                                       _%L28601%_
                                                       _%L28599%_
                                                       _%E28279%_)
                                                      _%L28599%_)
                                                  '()))))
                              _%hd2855528593%_
                              _%hd2855228583%_)
                             (_%g2854428562%_ _%g2854528566%_))))
                     (_%g2854428562%_ _%g2854528566%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2854428562%_
                                                      _%g2854528566%_))))
                                             (_%g2854428562%_
                                              _%g2854528566%_)))))
                                 (_%g2854328617%_ _%L28533%_))))
                            (_%__kont3921439215%_
                             (lambda (_%L28327%_ _%L28329%_)
                               (let* ((_%g2834228361%_
                                       (lambda (_%g2834328357%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2834328357%_)))
                                      (_%g2834128512%_
                                       (lambda (_%g2834328365%_)
                                         (if (gx#stx-pair? _%g2834328365%_)
                                             (let ((_%e2834728368%_
                                                    (gx#syntax-e
                                                     _%g2834328365%_)))
                                               (let ((_%hd2834828372%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2834728368%_)))
                                                     (_%tl2834928375%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2834728368%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2834928375%_)
                                                     (let ((_%e2835028378%_
                                                            (gx#syntax-e
                                                             _%tl2834928375%_)))
                                                       (let ((_%hd2835128382%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2835028378%_)))
                     (_%tl2835228385%_
                      (let () (declare (not safe)) (##cdr _%e2835028378%_))))
                 (if (gx#stx-pair? _%tl2835228385%_)
                     (let ((_%e2835328388%_ (gx#syntax-e _%tl2835228385%_)))
                       (let ((_%hd2835428392%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2835328388%_)))
                             (_%tl2835528395%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2835328388%_))))
                         (if (gx#stx-null? _%tl2835528395%_)
                             ((lambda (_%L28398%_ _%L28400%_ _%L28401%_)
                                (if (gx#stx-e _%L28400%_)
                                    (let* ((_%g2841828433%_
                                            (lambda (_%g2841928429%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2841928429%_)))
                                           (_%g2841728478%_
                                            (lambda (_%g2841928437%_)
                                              (if (gx#stx-pair?
                                                   _%g2841928437%_)
                                                  (let ((_%e2842228440%_
                                                         (gx#syntax-e
                                                          _%g2841928437%_)))
                                                    (let ((_%hd2842328444%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2842228440%_)))
                                                          (_%tl2842428447%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2842228440%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl2842428447%_)
                                                          (let ((_%e2842528450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2842428447%_)))
                    (let ((_%hd2842628454%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2842528450%_)))
                          (_%tl2842728457%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2842528450%_))))
                      (if (gx#stx-null? _%tl2842728457%_)
                          ((lambda (_%L28460%_ _%L28462%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _%L28401%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%L28462%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L28460%_ '()))))
                           _%hd2842628454%_
                           _%hd2842328444%_)
                          (_%g2841828433%_ _%g2841928437%_))))
                  (_%g2841828433%_ _%g2841928437%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2841828433%_
                                                   _%g2841928437%_)))))
                                      (_%g2841728478%_
                                       (list (_%generate127923%_
                                              _%L28400%_
                                              _%L28398%_
                                              _%E28279%_)
                                             (_%generate-clauses27922%_
                                              _%L28327%_
                                              (cons _%L28401%_ '())))))
                                    (let* ((_%g2848228490%_
                                            (lambda (_%g2848328486%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2848328486%_)))
                                           (_%g2848128508%_
                                            (lambda (_%g2848328494%_)
                                              ((lambda (_%L28497%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L28401%_
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
                             (cons _%L28398%_ '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons _%L28497%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2848328494%_))))
                                      (_%g2848128508%_
                                       (_%generate-clauses27922%_
                                        _%L28327%_
                                        (cons _%L28401%_ '()))))))
                              _%hd2835428392%_
                              _%hd2835128382%_
                              _%hd2834828372%_)
                             (_%g2834228361%_ _%g2834328365%_))))
                     (_%g2834228361%_ _%g2834328365%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2834228361%_
                                                      _%g2834328365%_))))
                                             (_%g2834228361%_
                                              _%g2834328365%_)))))
                                 (_%g2834128512%_ _%L28329%_))))
                            (_%__kont3921639217%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28279%_ '()))))))
                        (if (gx#stx-pair? _%__stx3920939210%_)
                            (let ((_%e2828628523%_
                                   (gx#syntax-e _%__stx3920939210%_)))
                              (let ((_%tl2828828530%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2828628523%_)))
                                    (_%hd2828728527%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2828628523%_))))
                                (if (gx#stx-null? _%tl2828828530%_)
                                    (_%__kont3921239213%_ _%hd2828728527%_)
                                    (_%__kont3921439215%_
                                     _%tl2828828530%_
                                     _%hd2828728527%_))))
                            (_%__kont3921639217%_))))))
                 (_%generate127923%_
                  (lambda (_%clause27925%_ _%body27927%_ _%E27928%_)
                    (let* ((_%g2793027954%_
                            (lambda (_%g2793127950%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2793127950%_)))
                           (_%g2792928273%_
                            (lambda (_%g2793127958%_)
                              (if (gx#stx-pair? _%g2793127958%_)
                                  (let ((_%e2793427961%_
                                         (gx#syntax-e _%g2793127958%_)))
                                    (let ((_%hd2793527965%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2793427961%_)))
                                          (_%tl2793627968%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2793427961%_))))
                                      (if (gx#stx-pair? _%tl2793627968%_)
                                          (let ((_%e2793727971%_
                                                 (gx#syntax-e
                                                  _%tl2793627968%_)))
                                            (let ((_%hd2793827975%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2793727971%_)))
                                                  (_%tl2793927978%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2793727971%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2793827975%_)
                                                  (let ((_g39872_
                                                         (gx#syntax-split-splice
                                                          _%hd2793827975%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g39873_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g39872_)
                           (##vector-length _g39872_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g39873_ 2)))
                    (error "Context expects 2 values" _g39873_)))
              (let ((_%target2794027981%_
                     (let () (declare (not safe)) (##vector-ref _g39872_ 0)))
                    (_%tl2794227984%_
                     (let () (declare (not safe)) (##vector-ref _g39872_ 1))))
                (if (gx#stx-null? _%tl2794227984%_)
                    (letrec ((_%loop2794327987%_
                              (lambda (_%hd2794127991%_ _%var2794727994%_)
                                (if (gx#stx-pair? _%hd2794127991%_)
                                    (let ((_%e2794427997%_
                                           (gx#syntax-e _%hd2794127991%_)))
                                      (let ((_%lp-hd2794528001%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2794427997%_)))
                                            (_%lp-tl2794628004%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2794427997%_))))
                                        (_%loop2794327987%_
                                         _%lp-tl2794628004%_
                                         (cons _%lp-hd2794528001%_
                                               _%var2794727994%_))))
                                    (let ((_%var2794828007%_
                                           (reverse _%var2794727994%_)))
                                      (if (gx#stx-null? _%tl2793927978%_)
                                          ((lambda (_%L28011%_ _%L28013%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g2803428037%_
                                                                _%g2803528040%_)
                                                         (cons _%g2803428037%_
                                                               _%g2803528040%_))
                                                       '()
                                                       _%L28011%_)
                                                _%stx27914%_)
                                               (let* ((_%g2804328051%_
                                                       (lambda (_%g2804428047%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2804428047%_)))
                                                      (_%g2804228145%_
                                                       (lambda (_%g2804428055%_)
                                                         ((lambda (_%L28058%_)
                                                            (let* ((_%g2807128079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2807228075%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2807228075%_)))
                           (_%g2807028141%_
                            (lambda (_%g2807228083%_)
                              ((lambda (_%L28086%_)
                                 (let* ((_%g2809928107%_
                                         (lambda (_%g2810028103%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2810028103%_)))
                                        (_%g2809828129%_
                                         (lambda (_%g2810028111%_)
                                           ((lambda (_%L28114%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L28013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L28114%_ '()))
                   (cons _%L28058%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx27914%_)))
                                            _%g2810028111%_))))
                                   (_%g2809828129%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%g2813228135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2813328138%_)
                  (cons _%g2813228135%_ _%g2813328138%_))
                '()
                _%L28011%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L28086%_ '())))
                                     (gx#stx-source _%stx27914%_)))))
                               _%g2807228083%_))))
                      (_%g2807028141%_ _%body27927%_)))
                  _%g2804428055%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2804228145%_
                                                  (let _%recur28149%_ ((_%rest28152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%clause27925%_)
                               (_%rest-targets28154%_ _%tgt-lst27916%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%__stx3923539236%_
                                                            _%rest28152%_)
                                                           (_%g2815728169%_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx3923539236%_))))
                                                      (let ((_%__kont3923839239%_
                                                             (lambda (_%L28205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L28207%_)
                       (let* ((_%g2822228234%_
                               (lambda (_%g2822328230%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2822328230%_)))
                              (_%g2822128265%_
                               (lambda (_%g2822328238%_)
                                 (if (gx#stx-pair? _%g2822328238%_)
                                     (let ((_%e2822628241%_
                                            (gx#syntax-e _%g2822328238%_)))
                                       (let ((_%hd2822728245%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2822628241%_)))
                                             (_%tl2822828248%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2822628241%_))))
                                         ((lambda (_%L28251%_ _%L28253%_)
                                            (|gerbil/core/match[1]#generate-match1|
                                             _%stx27914%_
                                             _%L28253%_
                                             _%L28207%_
                                             (_%recur28149%_
                                              _%L28205%_
                                              _%L28251%_)
                                             _%E27928%_))
                                          _%tl2822828248%_
                                          _%hd2822728245%_)))
                                     (_%g2822228234%_ _%g2822328238%_)))))
                         (_%g2822128265%_ _%rest-targets28154%_))))
                    (_%__kont3924039241%_
                     (lambda ()
                       (cons _%L28013%_
                             (foldr (lambda (_%g2817928182%_ _%g2818028185%_)
                                      (cons _%g2817928182%_ _%g2818028185%_))
                                    '()
                                    _%L28011%_)))))
                (if (gx#stx-pair? _%__stx3923539236%_)
                    (let ((_%e2816128195%_ (gx#syntax-e _%__stx3923539236%_)))
                      (let ((_%tl2816328202%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2816128195%_)))
                            (_%hd2816228199%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2816128195%_))))
                        (_%__kont3923839239%_
                         _%tl2816328202%_
                         _%hd2816228199%_)))
                    (_%__kont3924039241%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%var2794828007%_
                                           _%hd2793527965%_)
                                          (_%g2793027954%_
                                           _%g2793127958%_)))))))
                      (_%loop2794327987%_ _%target2794027981%_ '()))
                    (_%g2793027954%_ _%g2793127958%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2793027954%_
                                                   _%g2793127958%_))))
                                          (_%g2793027954%_ _%g2793127958%_))))
                                  (_%g2793027954%_ _%g2793127958%_)))))
                      (_%g2792928273%_
                       (list (gx#genident 'K)
                             (let ((__tmp39874
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause27925%_)))
                               (declare (not safe))
                               (##apply append __tmp39874))))))))
          (_%generate-body27921%_
           (_%parse-body27919%_ (gx#stx-length _%tgt-lst27916%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx27816%_ _%tgt27818%_ _%clauses27819%_)
        (letrec ((_%reclause27821%_
                  (lambda (_%clause27824%_)
                    (let* ((_%__stx3925139252%_ _%clause27824%_)
                           (_%g2782927844%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3925139252%_))))
                      (let ((_%__kont3925439255%_ (lambda () _%clause27824%_))
                            (_%__kont3925639257%_
                             (lambda (_%L27872%_ _%L27874%_)
                               (gx#stx-wrap-source
                                (cons (cons _%L27874%_ '()) _%L27872%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3925839259%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx27816%_
                                _%clause27824%_))))
                        (if (gx#stx-pair? _%__stx3925139252%_)
                            (let ((_%e2783127896%_
                                   (gx#syntax-e _%__stx3925139252%_)))
                              (let ((_%tl2783327903%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2783127896%_)))
                                    (_%hd2783227900%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2783127896%_))))
                                (if (gx#identifier? _%hd2783227900%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39875_|
                                         _%hd2783227900%_)
                                        (_%__kont3925439255%_)
                                        (_%__kont3925639257%_
                                         _%tl2783327903%_
                                         _%hd2783227900%_))
                                    (_%__kont3925639257%_
                                     _%tl2783327903%_
                                     _%hd2783227900%_))))
                            (_%__kont3925839259%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx27816%_
           (cons _%tgt27818%_ '())
           (gx#stx-map _%reclause27821%_ _%clauses27819%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35152%_)
        (let* ((_%__stx3927939280%_ _%stx35152%_)
               (_%g3515735186%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3927939280%_))))
          (let ((_%__kont3928239283%_
                 (lambda (_%L35426%_)
                   (let* ((_%g3543935447%_
                           (lambda (_%g3544035443%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3544035443%_)))
                          (_%g3543835500%_
                           (lambda (_%g3544035451%_)
                             ((lambda (_%L35454%_)
                                (let* ((_%g3546635474%_
                                        (lambda (_%g3546735470%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3546735470%_)))
                                       (_%g3546535496%_
                                        (lambda (_%g3546735478%_)
                                          ((lambda (_%L35481%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%L35454%_ '())
                                                         (cons _%L35481%_
                                                               '()))))
                                           _%g3546735478%_))))
                                  (_%g3546535496%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%L35454%_ _%L35426%_))
                                    (gx#stx-source _%stx35152%_)))))
                              _%g3544035451%_))))
                     (_%g3543835500%_ (gx#genident 'e)))))
                (_%__kont3928439285%_
                 (lambda (_%L35321%_)
                   (let* ((_%g3533435342%_
                           (lambda (_%g3533535338%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3533535338%_)))
                          (_%g3533335395%_
                           (lambda (_%g3533535346%_)
                             ((lambda (_%L35349%_)
                                (let* ((_%g3536135369%_
                                        (lambda (_%g3536235365%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3536235365%_)))
                                       (_%g3536035391%_
                                        (lambda (_%g3536235373%_)
                                          ((lambda (_%L35376%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%L35349%_
                                                         (cons _%L35376%_
                                                               '()))))
                                           _%g3536235373%_))))
                                  (_%g3536035391%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%L35349%_ _%L35321%_))
                                    (gx#stx-source _%stx35152%_)))))
                              _%g3533535346%_))))
                     (_%g3533335395%_ (gx#genident 'args)))))
                (_%__kont3928639287%_
                 (lambda (_%L35213%_ _%L35215%_)
                   (let* ((_%g3522935237%_
                           (lambda (_%g3523035233%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3523035233%_)))
                          (_%g3522835290%_
                           (lambda (_%g3523035241%_)
                             ((lambda (_%L35244%_)
                                (let* ((_%g3525635264%_
                                        (lambda (_%g3525735260%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3525735260%_)))
                                       (_%g3525535286%_
                                        (lambda (_%g3525735268%_)
                                          ((lambda (_%L35271%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L35244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L35215%_ '()))
                       '())
                 (cons _%L35271%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3525735268%_))))
                                  (_%g3525535286%_
                                   (|gerbil/core/match[1]#generate-match|
                                    _%stx35152%_
                                    _%L35244%_
                                    _%L35213%_))))
                              _%g3523035241%_))))
                     (_%g3522835290%_ (gx#genident _%L35215%_))))))
            (let* ((_%__match3933239333%_
                    (lambda (_%e3517535193%_
                             _%hd3517635197%_
                             _%tl3517735200%_
                             _%e3517835203%_
                             _%hd3517935207%_
                             _%tl3518035210%_)
                      (let ((_%L35213%_ _%tl3518035210%_)
                            (_%L35215%_ _%hd3517935207%_))
                        (if (gx#stx-list? _%L35213%_)
                            (_%__kont3928639287%_ _%L35213%_ _%L35215%_)
                            (let () (declare (not safe)) (_%g3515735186%_))))))
                   (_%__match3932039321%_
                    (lambda (_%e3516735301%_
                             _%hd3516835305%_
                             _%tl3516935308%_
                             _%e3517035311%_
                             _%hd3517135315%_
                             _%tl3517235318%_)
                      (let ((_%L35321%_ _%tl3517235318%_))
                        (if (gx#stx-list? _%L35321%_)
                            (_%__kont3928439285%_ _%L35321%_)
                            (_%__match3933239333%_
                             _%e3516735301%_
                             _%hd3516835305%_
                             _%tl3516935308%_
                             _%e3517035311%_
                             _%hd3517135315%_
                             _%tl3517235318%_)))))
                   (_%__match3930439305%_
                    (lambda (_%e3516035406%_
                             _%hd3516135410%_
                             _%tl3516235413%_
                             _%e3516335416%_
                             _%hd3516435420%_
                             _%tl3516535423%_)
                      (let ((_%L35426%_ _%tl3516535423%_))
                        (if (gx#stx-list? _%L35426%_)
                            (_%__kont3928239283%_ _%L35426%_)
                            (_%__match3933239333%_
                             _%e3516035406%_
                             _%hd3516135410%_
                             _%tl3516235413%_
                             _%e3516335416%_
                             _%hd3516435420%_
                             _%tl3516535423%_))))))
              (if (gx#stx-pair? _%__stx3927939280%_)
                  (let ((_%e3516035406%_ (gx#syntax-e _%__stx3927939280%_)))
                    (let ((_%tl3516235413%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3516035406%_)))
                          (_%hd3516135410%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3516035406%_))))
                      (if (gx#stx-pair? _%tl3516235413%_)
                          (let ((_%e3516335416%_
                                 (gx#syntax-e _%tl3516235413%_)))
                            (let ((_%tl3516535423%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3516335416%_)))
                                  (_%hd3516435420%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3516335416%_))))
                              (if (gx#identifier? _%hd3516435420%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39876_|
                                       _%hd3516435420%_)
                                      (_%__match3930439305%_
                                       _%e3516035406%_
                                       _%hd3516135410%_
                                       _%tl3516235413%_
                                       _%e3516335416%_
                                       _%hd3516435420%_
                                       _%tl3516535423%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39877_|
                                           _%hd3516435420%_)
                                          (_%__match3932039321%_
                                           _%e3516035406%_
                                           _%hd3516135410%_
                                           _%tl3516235413%_
                                           _%e3516335416%_
                                           _%hd3516435420%_
                                           _%tl3516535423%_)
                                          (_%__match3933239333%_
                                           _%e3516035406%_
                                           _%hd3516135410%_
                                           _%tl3516235413%_
                                           _%e3516335416%_
                                           _%hd3516435420%_
                                           _%tl3516535423%_)))
                                  (_%__match3933239333%_
                                   _%e3516035406%_
                                   _%hd3516135410%_
                                   _%tl3516235413%_
                                   _%e3516335416%_
                                   _%hd3516435420%_
                                   _%tl3516535423%_))))
                          (let () (declare (not safe)) (_%g3515735186%_)))))
                  (let () (declare (not safe)) (_%g3515735186%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx35508%_)
        (let* ((_%g3551135535%_
                (lambda (_%g3551235531%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3551235531%_)))
               (_%g3551035747%_
                (lambda (_%g3551235539%_)
                  (if (gx#stx-pair? _%g3551235539%_)
                      (let ((_%e3551535542%_ (gx#syntax-e _%g3551235539%_)))
                        (let ((_%hd3551635546%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3551535542%_)))
                              (_%tl3551735549%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3551535542%_))))
                          (if (gx#stx-pair? _%tl3551735549%_)
                              (let ((_%e3551835552%_
                                     (gx#syntax-e _%tl3551735549%_)))
                                (let ((_%hd3551935556%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3551835552%_)))
                                      (_%tl3552035559%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3551835552%_))))
                                  (if (gx#stx-pair/null? _%hd3551935556%_)
                                      (let ((_g39878_
                                             (gx#syntax-split-splice
                                              _%hd3551935556%_
                                              '0)))
                                        (begin
                                          (let ((_g39879_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39878_)
                                                       (##vector-length
                                                        _g39878_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39879_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39879_)))
                                          (let ((_%target3552135562%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g39878_ 0)))
                                                (_%tl3552335565%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g39878_ 1))))
                                            (if (gx#stx-null? _%tl3552335565%_)
                                                (letrec ((_%loop3552435568%_
                                                          (lambda (_%hd3552235572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3552835575%_)
                    (if (gx#stx-pair? _%hd3552235572%_)
                        (let ((_%e3552535578%_ (gx#syntax-e _%hd3552235572%_)))
                          (let ((_%lp-hd3552635582%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3552535578%_)))
                                (_%lp-tl3552735585%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3552535578%_))))
                            (_%loop3552435568%_
                             _%lp-tl3552735585%_
                             (cons _%lp-hd3552635582%_ _%e3552835575%_))))
                        (let ((_%e3552935588%_ (reverse _%e3552835575%_)))
                          ((lambda (_%L35592%_ _%L35594%_)
                             (if (gx#stx-list? _%L35592%_)
                                 (let* ((_%g3561235629%_
                                         (lambda (_%g3561335625%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3561335625%_)))
                                        (_%g3561135735%_
                                         (lambda (_%g3561335633%_)
                                           (if (gx#stx-pair/null?
                                                _%g3561335633%_)
                                               (let ((_g39880_
                                                      (gx#syntax-split-splice
                                                       _%g3561335633%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39881_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39880_)
                        (##vector-length _g39880_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39881_ 2)))
                 (error "Context expects 2 values" _g39881_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3561535636%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g39880_
                                                             0)))
                                                         (_%tl3561735639%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g39880_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3561735639%_)
                                                         (letrec ((_%loop3561835642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3561635646%_ _%$e3562235649%_)
                             (if (gx#stx-pair? _%hd3561635646%_)
                                 (let ((_%e3561935652%_
                                        (gx#syntax-e _%hd3561635646%_)))
                                   (let ((_%lp-hd3562035656%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3561935652%_)))
                                         (_%lp-tl3562135659%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3561935652%_))))
                                     (_%loop3561835642%_
                                      _%lp-tl3562135659%_
                                      (cons _%lp-hd3562035656%_
                                            _%$e3562235649%_))))
                                 (let ((_%$e3562335662%_
                                        (reverse _%$e3562235649%_)))
                                   ((lambda (_%L35666%_)
                                      (let* ((_%g3568235690%_
                                              (lambda (_%g3568335686%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g3568335686%_)))
                                             (_%g3568135723%_
                                              (lambda (_%g3568335694%_)
                                                ((lambda (_%L35697%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _%L35594%_ _%L35666%_)
                         (foldr (lambda (_%g3571135715%_
                                         _%g3571235718%_
                                         _%g3571335720%_)
                                  (cons (cons _%g3571235718%_
                                              (cons _%g3571135715%_ '()))
                                        _%g3571335720%_))
                                '()
                                _%L35594%_
                                _%L35666%_))
                       (cons _%L35697%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g3568335694%_))))
                                        (_%g3568135723%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx35508%_
                                          (foldr (lambda (_%g3572635729%_
                                                          _%g3572735732%_)
                                                   (cons _%g3572635729%_
                                                         _%g3572735732%_))
                                                 '()
                                                 _%L35666%_)
                                          _%L35592%_))))
                                    _%$e3562335662%_))))))
                   (_%loop3561835642%_ _%target3561535636%_ '()))
                 (_%g3561235629%_ _%g3561335633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3561235629%_
                                                _%g3561335633%_)))))
                                   (_%g3561135735%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g3573835741%_
                                                     _%g3573935744%_)
                                              (cons _%g3573835741%_
                                                    _%g3573935744%_))
                                            '()
                                            _%L35594%_))))
                                 (_%g3551135535%_ _%g3551235539%_)))
                           _%tl3552035559%_
                           _%e3552935588%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3552435568%_
                                                   _%target3552135562%_
                                                   '()))
                                                (_%g3551135535%_
                                                 _%g3551235539%_)))))
                                      (_%g3551135535%_ _%g3551235539%_))))
                              (_%g3551135535%_ _%g3551235539%_))))
                      (_%g3551135535%_ _%g3551235539%_)))))
          (_%g3551035747%_ _%stx35508%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx35753%_)
        (let* ((_%__stx3933539336%_ _%$stx35753%_)
               (_%g3575935842%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3933539336%_))))
          (let ((_%__kont3933839339%_
                 (lambda (_%L36172%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3618836191%_ _%g3618936194%_)
                                        (cons _%g3618836191%_ _%g3618936194%_))
                                      '()
                                      _%L36172%_)))))
                (_%__kont3934239343%_
                 (lambda (_%L36080%_ _%L36082%_ _%L36083%_ _%L36084%_)
                   (cons _%L36084%_
                         (cons (cons (cons _%L36083%_ (cons _%L36082%_ '()))
                                     '())
                               (foldr (lambda (_%g3610636109%_ _%g3610736112%_)
                                        (cons _%g3610636109%_ _%g3610736112%_))
                                      '()
                                      _%L36080%_)))))
                (_%__kont3934639347%_
                 (lambda (_%L35953%_ _%L35955%_ _%L35956%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3598235985%_ _%g3598335988%_)
                                        (cons _%g3598235985%_ _%g3598335988%_))
                                      '()
                                      _%L35955%_)
                               (cons (cons (foldr (lambda (_%g3598035991%_
                                                           _%g3598135994%_)
                                                    (cons _%g3598035991%_
                                                          _%g3598135994%_))
                                                  '()
                                                  _%L35956%_)
                                           (foldr (lambda (_%g3597835997%_
                                                           _%g3597936000%_)
                                                    (cons _%g3597835997%_
                                                          _%g3597936000%_))
                                                  '()
                                                  _%L35953%_))
                                     '()))))))
            (let* ((_%__match3942839429%_
                    (lambda (_%e3580535849%_
                             _%hd3580635853%_
                             _%tl3580735856%_
                             _%e3580835859%_
                             _%hd3580935863%_
                             _%tl3581035866%_
                             _%__splice3934839349%_
                             _%target3581135869%_
                             _%tl3581335872%_)
                      (letrec ((_%loop3581435875%_
                                (lambda (_%hd3581235879%_
                                         _%expr3581835882%_
                                         _%hd3581935884%_)
                                  (if (gx#stx-pair? _%hd3581235879%_)
                                      (let ((_%e3581535887%_
                                             (gx#syntax-e _%hd3581235879%_)))
                                        (let ((_%lp-tl3581735894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3581535887%_)))
                                              (_%lp-hd3581635891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3581535887%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3581635891%_)
                                              (let ((_%e3583135897%_
                                                     (gx#syntax-e
                                                      _%lp-hd3581635891%_)))
                                                (let ((_%tl3583335904%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3583135897%_)))
                                                      (_%hd3583235901%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3583135897%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3583335904%_)
                                                      (let ((_%e3583435907%_
                                                             (gx#syntax-e
                                                              _%tl3583335904%_)))
                                                        (let ((_%tl3583635914%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3583435907%_)))
                      (_%hd3583535911%_
                       (let () (declare (not safe)) (##car _%e3583435907%_))))
                  (if (gx#stx-null? _%tl3583635914%_)
                      (_%loop3581435875%_
                       _%lp-tl3581735894%_
                       (cons _%hd3583535911%_ _%expr3581835882%_)
                       (cons _%hd3583235901%_ _%hd3581935884%_))
                      (let () (declare (not safe)) (_%g3575935842%_)))))
              (let () (declare (not safe)) (_%g3575935842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3575935842%_)))))
                                      (let ((_%hd3582135920%_
                                             (reverse _%hd3581935884%_))
                                            (_%expr3582035917%_
                                             (reverse _%expr3581835882%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3581035866%_)
                                            (let ((_%__splice3935039351%_
                                                   (gx#syntax-split-splice
                                                    _%tl3581035866%_
                                                    '0)))
                                              (let ((_%tl3582435926%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3935039351%_
                                                        '1)))
                                                    (_%target3582235923%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3935039351%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3582435926%_)
                                                    (letrec ((_%loop3582535929%_
                                                              (lambda (_%hd3582335933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3582935936%_)
                        (if (gx#stx-pair? _%hd3582335933%_)
                            (let ((_%e3582635939%_
                                   (gx#syntax-e _%hd3582335933%_)))
                              (let ((_%lp-tl3582835946%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3582635939%_)))
                                    (_%lp-hd3582735943%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3582635939%_))))
                                (_%loop3582535929%_
                                 _%lp-tl3582835946%_
                                 (cons _%lp-hd3582735943%_
                                       _%body3582935936%_))))
                            (let ((_%body3583035949%_
                                   (reverse _%body3582935936%_)))
                              (_%__kont3934639347%_
                               _%body3583035949%_
                               _%expr3582035917%_
                               _%hd3582135920%_))))))
              (_%loop3582535929%_ _%target3582235923%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3575935842%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3575935842%_))))))))
                        (_%loop3581435875%_ _%target3581135869%_ '() '()))))
                   (_%__match3942039421%_
                    (lambda (_%e3580535849%_
                             _%hd3580635853%_
                             _%tl3580735856%_
                             _%e3580835859%_
                             _%hd3580935863%_
                             _%tl3581035866%_)
                      (if (gx#stx-pair/null? _%hd3580935863%_)
                          (let ((_%__splice3934839349%_
                                 (gx#syntax-split-splice _%hd3580935863%_ '0)))
                            (let ((_%tl3581335872%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3934839349%_ '1)))
                                  (_%target3581135869%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3934839349%_
                                      '0))))
                              (if (gx#stx-null? _%tl3581335872%_)
                                  (_%__match3942839429%_
                                   _%e3580535849%_
                                   _%hd3580635853%_
                                   _%tl3580735856%_
                                   _%e3580835859%_
                                   _%hd3580935863%_
                                   _%tl3581035866%_
                                   _%__splice3934839349%_
                                   _%target3581135869%_
                                   _%tl3581335872%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3575935842%_)))))
                          (let () (declare (not safe)) (_%g3575935842%_)))))
                   (_%__match3940839409%_
                    (lambda (_%e3578136010%_
                             _%hd3578236014%_
                             _%tl3578336017%_
                             _%e3578436020%_
                             _%hd3578536024%_
                             _%tl3578636027%_
                             _%e3578736030%_
                             _%hd3578836034%_
                             _%tl3578936037%_
                             _%e3579036040%_
                             _%hd3579136044%_
                             _%tl3579236047%_
                             _%__splice3934439345%_
                             _%target3579336050%_
                             _%tl3579536053%_)
                      (letrec ((_%loop3579636056%_
                                (lambda (_%hd3579436060%_ _%body3580036063%_)
                                  (if (gx#stx-pair? _%hd3579436060%_)
                                      (let ((_%e3579736066%_
                                             (gx#syntax-e _%hd3579436060%_)))
                                        (let ((_%lp-tl3579936073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3579736066%_)))
                                              (_%lp-hd3579836070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3579736066%_))))
                                          (_%loop3579636056%_
                                           _%lp-tl3579936073%_
                                           (cons _%lp-hd3579836070%_
                                                 _%body3580036063%_))))
                                      (let ((_%body3580136076%_
                                             (reverse _%body3580036063%_)))
                                        (let ((_%L36080%_ _%body3580136076%_)
                                              (_%L36082%_ _%hd3579136044%_)
                                              (_%L36083%_ _%hd3578836034%_)
                                              (_%L36084%_ _%hd3578236014%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%L36083%_)
                                              (_%__kont3934239343%_
                                               _%L36080%_
                                               _%L36082%_
                                               _%L36083%_
                                               _%L36084%_)
                                              (_%__match3942039421%_
                                               _%e3578136010%_
                                               _%hd3578236014%_
                                               _%tl3578336017%_
                                               _%e3578436020%_
                                               _%hd3578536024%_
                                               _%tl3578636027%_))))))))
                        (_%loop3579636056%_ _%target3579336050%_ '()))))
                   (_%__match3937439375%_
                    (lambda (_%e3576236122%_
                             _%hd3576336126%_
                             _%tl3576436129%_
                             _%e3576536132%_
                             _%hd3576636136%_
                             _%tl3576736139%_
                             _%__splice3934039341%_
                             _%target3576836142%_
                             _%tl3577036145%_)
                      (letrec ((_%loop3577136148%_
                                (lambda (_%hd3576936152%_ _%body3577536155%_)
                                  (if (gx#stx-pair? _%hd3576936152%_)
                                      (let ((_%e3577236158%_
                                             (gx#syntax-e _%hd3576936152%_)))
                                        (let ((_%lp-tl3577436165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3577236158%_)))
                                              (_%lp-hd3577336162%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3577236158%_))))
                                          (_%loop3577136148%_
                                           _%lp-tl3577436165%_
                                           (cons _%lp-hd3577336162%_
                                                 _%body3577536155%_))))
                                      (let ((_%body3577636168%_
                                             (reverse _%body3577536155%_)))
                                        (_%__kont3933839339%_
                                         _%body3577636168%_))))))
                        (_%loop3577136148%_ _%target3576836142%_ '())))))
              (if (gx#stx-pair? _%__stx3933539336%_)
                  (let ((_%e3576236122%_ (gx#syntax-e _%__stx3933539336%_)))
                    (let ((_%tl3576436129%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3576236122%_)))
                          (_%hd3576336126%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3576236122%_))))
                      (if (gx#stx-pair? _%tl3576436129%_)
                          (let ((_%e3576536132%_
                                 (gx#syntax-e _%tl3576436129%_)))
                            (let ((_%tl3576736139%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3576536132%_)))
                                  (_%hd3576636136%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3576536132%_))))
                              (if (gx#stx-null? _%hd3576636136%_)
                                  (if (gx#stx-pair/null? _%tl3576736139%_)
                                      (let ((_%__splice3934039341%_
                                             (gx#syntax-split-splice
                                              _%tl3576736139%_
                                              '0)))
                                        (let ((_%tl3577036145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3934039341%_
                                                  '1)))
                                              (_%target3576836142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3934039341%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3577036145%_)
                                              (_%__match3937439375%_
                                               _%e3576236122%_
                                               _%hd3576336126%_
                                               _%tl3576436129%_
                                               _%e3576536132%_
                                               _%hd3576636136%_
                                               _%tl3576736139%_
                                               _%__splice3934039341%_
                                               _%target3576836142%_
                                               _%tl3577036145%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3576636136%_)
                                                  (let ((_%__splice3934839349%_
                                                         (gx#syntax-split-splice
                                                          _%hd3576636136%_
                                                          '0)))
                                                    (let ((_%tl3581335872%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3934839349%_
                                                              '1)))
                                                          (_%target3581135869%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3934839349%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3581335872%_)
                                                          (_%__match3942839429%_
                                                           _%e3576236122%_
                                                           _%hd3576336126%_
                                                           _%tl3576436129%_
                                                           _%e3576536132%_
                                                           _%hd3576636136%_
                                                           _%tl3576736139%_
                                                           _%__splice3934839349%_
                                                           _%target3581135869%_
                                                           _%tl3581335872%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3575935842%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3575935842%_))))))
                                      (if (gx#stx-pair/null? _%hd3576636136%_)
                                          (let ((_%__splice3934839349%_
                                                 (gx#syntax-split-splice
                                                  _%hd3576636136%_
                                                  '0)))
                                            (let ((_%tl3581335872%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3934839349%_
                                                      '1)))
                                                  (_%target3581135869%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3934839349%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3581335872%_)
                                                  (_%__match3942839429%_
                                                   _%e3576236122%_
                                                   _%hd3576336126%_
                                                   _%tl3576436129%_
                                                   _%e3576536132%_
                                                   _%hd3576636136%_
                                                   _%tl3576736139%_
                                                   _%__splice3934839349%_
                                                   _%target3581135869%_
                                                   _%tl3581335872%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3575935842%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3575935842%_))))
                                  (if (gx#stx-pair? _%hd3576636136%_)
                                      (let ((_%e3578736030%_
                                             (gx#syntax-e _%hd3576636136%_)))
                                        (let ((_%tl3578936037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3578736030%_)))
                                              (_%hd3578836034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3578736030%_))))
                                          (if (gx#stx-pair? _%tl3578936037%_)
                                              (let ((_%e3579036040%_
                                                     (gx#syntax-e
                                                      _%tl3578936037%_)))
                                                (let ((_%tl3579236047%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3579036040%_)))
                                                      (_%hd3579136044%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3579036040%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3579236047%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3576736139%_)
                                                          (let ((_%__splice3934439345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl3576736139%_ '0)))
                    (let ((_%tl3579536053%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3934439345%_ '1)))
                          (_%target3579336050%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3934439345%_ '0))))
                      (if (gx#stx-null? _%tl3579536053%_)
                          (_%__match3940839409%_
                           _%e3576236122%_
                           _%hd3576336126%_
                           _%tl3576436129%_
                           _%e3576536132%_
                           _%hd3576636136%_
                           _%tl3576736139%_
                           _%e3578736030%_
                           _%hd3578836034%_
                           _%tl3578936037%_
                           _%e3579036040%_
                           _%hd3579136044%_
                           _%tl3579236047%_
                           _%__splice3934439345%_
                           _%target3579336050%_
                           _%tl3579536053%_)
                          (if (gx#stx-pair/null? _%hd3576636136%_)
                              (let ((_%__splice3934839349%_
                                     (gx#syntax-split-splice
                                      _%hd3576636136%_
                                      '0)))
                                (let ((_%tl3581335872%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3934839349%_
                                          '1)))
                                      (_%target3581135869%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3934839349%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3581335872%_)
                                      (_%__match3942839429%_
                                       _%e3576236122%_
                                       _%hd3576336126%_
                                       _%tl3576436129%_
                                       _%e3576536132%_
                                       _%hd3576636136%_
                                       _%tl3576736139%_
                                       _%__splice3934839349%_
                                       _%target3581135869%_
                                       _%tl3581335872%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3575935842%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3575935842%_))))))
                  (if (gx#stx-pair/null? _%hd3576636136%_)
                      (let ((_%__splice3934839349%_
                             (gx#syntax-split-splice _%hd3576636136%_ '0)))
                        (let ((_%tl3581335872%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3934839349%_ '1)))
                              (_%target3581135869%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3934839349%_ '0))))
                          (if (gx#stx-null? _%tl3581335872%_)
                              (_%__match3942839429%_
                               _%e3576236122%_
                               _%hd3576336126%_
                               _%tl3576436129%_
                               _%e3576536132%_
                               _%hd3576636136%_
                               _%tl3576736139%_
                               _%__splice3934839349%_
                               _%target3581135869%_
                               _%tl3581335872%_)
                              (let ()
                                (declare (not safe))
                                (_%g3575935842%_)))))
                      (let () (declare (not safe)) (_%g3575935842%_))))
              (if (gx#stx-pair/null? _%hd3576636136%_)
                  (let ((_%__splice3934839349%_
                         (gx#syntax-split-splice _%hd3576636136%_ '0)))
                    (let ((_%tl3581335872%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3934839349%_ '1)))
                          (_%target3581135869%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3934839349%_ '0))))
                      (if (gx#stx-null? _%tl3581335872%_)
                          (_%__match3942839429%_
                           _%e3576236122%_
                           _%hd3576336126%_
                           _%tl3576436129%_
                           _%e3576536132%_
                           _%hd3576636136%_
                           _%tl3576736139%_
                           _%__splice3934839349%_
                           _%target3581135869%_
                           _%tl3581335872%_)
                          (let () (declare (not safe)) (_%g3575935842%_)))))
                  (let () (declare (not safe)) (_%g3575935842%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3576636136%_)
                                                  (let ((_%__splice3934839349%_
                                                         (gx#syntax-split-splice
                                                          _%hd3576636136%_
                                                          '0)))
                                                    (let ((_%tl3581335872%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3934839349%_
                                                              '1)))
                                                          (_%target3581135869%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3934839349%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3581335872%_)
                                                          (_%__match3942839429%_
                                                           _%e3576236122%_
                                                           _%hd3576336126%_
                                                           _%tl3576436129%_
                                                           _%e3576536132%_
                                                           _%hd3576636136%_
                                                           _%tl3576736139%_
                                                           _%__splice3934839349%_
                                                           _%target3581135869%_
                                                           _%tl3581335872%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3575935842%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3575935842%_))))))
                                      (if (gx#stx-pair/null? _%hd3576636136%_)
                                          (let ((_%__splice3934839349%_
                                                 (gx#syntax-split-splice
                                                  _%hd3576636136%_
                                                  '0)))
                                            (let ((_%tl3581335872%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3934839349%_
                                                      '1)))
                                                  (_%target3581135869%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3934839349%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3581335872%_)
                                                  (_%__match3942839429%_
                                                   _%e3576236122%_
                                                   _%hd3576336126%_
                                                   _%tl3576436129%_
                                                   _%e3576536132%_
                                                   _%hd3576636136%_
                                                   _%tl3576736139%_
                                                   _%__splice3934839349%_
                                                   _%target3581135869%_
                                                   _%tl3581335872%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3575935842%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3575935842%_)))))))
                          (let () (declare (not safe)) (_%g3575935842%_)))))
                  (let () (declare (not safe)) (_%g3575935842%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36205%_)
        (let* ((_%__stx3943139432%_ _%$stx36205%_)
               (_%g3621036262%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3943139432%_))))
          (let ((_%__kont3943439435%_
                 (lambda (_%L36432%_
                          _%L36434%_
                          _%L36435%_
                          _%L36436%_
                          _%L36437%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%L36436%_ (cons _%L36435%_ '()))
                                     '())
                               (cons (cons _%L36437%_
                                           (cons _%L36434%_
                                                 (foldr (lambda (_%g3646236465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3646336468%_)
                  (cons _%g3646236465%_ _%g3646336468%_))
                '()
                _%L36432%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3943839439%_
                 (lambda (_%L36319%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3633636339%_ _%g3633736342%_)
                                        (cons _%g3633636339%_ _%g3633736342%_))
                                      '()
                                      _%L36319%_))))))
            (let* ((_%__match3950439505%_
                    (lambda (_%e3624236269%_
                             _%hd3624336273%_
                             _%tl3624436276%_
                             _%e3624536279%_
                             _%hd3624636283%_
                             _%tl3624736286%_
                             _%__splice3944039441%_
                             _%target3624836289%_
                             _%tl3625036292%_)
                      (letrec ((_%loop3625136295%_
                                (lambda (_%hd3624936299%_ _%body3625536302%_)
                                  (if (gx#stx-pair? _%hd3624936299%_)
                                      (let ((_%e3625236305%_
                                             (gx#syntax-e _%hd3624936299%_)))
                                        (let ((_%lp-tl3625436312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3625236305%_)))
                                              (_%lp-hd3625336309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3625236305%_))))
                                          (_%loop3625136295%_
                                           _%lp-tl3625436312%_
                                           (cons _%lp-hd3625336309%_
                                                 _%body3625536302%_))))
                                      (let ((_%body3625636315%_
                                             (reverse _%body3625536302%_)))
                                        (_%__kont3943839439%_
                                         _%body3625636315%_))))))
                        (_%loop3625136295%_ _%target3624836289%_ '()))))
                   (_%__match3948239483%_
                    (lambda (_%e3621736352%_
                             _%hd3621836356%_
                             _%tl3621936359%_
                             _%e3622036362%_
                             _%hd3622136366%_
                             _%tl3622236369%_
                             _%e3622336372%_
                             _%hd3622436376%_
                             _%tl3622536379%_
                             _%e3622636382%_
                             _%hd3622736386%_
                             _%tl3622836389%_
                             _%e3622936392%_
                             _%hd3623036396%_
                             _%tl3623136399%_
                             _%__splice3943639437%_
                             _%target3623236402%_
                             _%tl3623436405%_)
                      (letrec ((_%loop3623536408%_
                                (lambda (_%hd3623336412%_ _%body3623936415%_)
                                  (if (gx#stx-pair? _%hd3623336412%_)
                                      (let ((_%e3623636418%_
                                             (gx#syntax-e _%hd3623336412%_)))
                                        (let ((_%lp-tl3623836425%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3623636418%_)))
                                              (_%lp-hd3623736422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3623636418%_))))
                                          (_%loop3623536408%_
                                           _%lp-tl3623836425%_
                                           (cons _%lp-hd3623736422%_
                                                 _%body3623936415%_))))
                                      (let ((_%body3624036428%_
                                             (reverse _%body3623936415%_)))
                                        (_%__kont3943439435%_
                                         _%body3624036428%_
                                         _%tl3622536379%_
                                         _%hd3623036396%_
                                         _%hd3622736386%_
                                         _%hd3621836356%_))))))
                        (_%loop3623536408%_ _%target3623236402%_ '())))))
              (if (gx#stx-pair? _%__stx3943139432%_)
                  (let ((_%e3621736352%_ (gx#syntax-e _%__stx3943139432%_)))
                    (let ((_%tl3621936359%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3621736352%_)))
                          (_%hd3621836356%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3621736352%_))))
                      (if (gx#stx-pair? _%tl3621936359%_)
                          (let ((_%e3622036362%_
                                 (gx#syntax-e _%tl3621936359%_)))
                            (let ((_%tl3622236369%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3622036362%_)))
                                  (_%hd3622136366%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3622036362%_))))
                              (if (gx#stx-pair? _%hd3622136366%_)
                                  (let ((_%e3622336372%_
                                         (gx#syntax-e _%hd3622136366%_)))
                                    (let ((_%tl3622536379%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3622336372%_)))
                                          (_%hd3622436376%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3622336372%_))))
                                      (if (gx#stx-pair? _%hd3622436376%_)
                                          (let ((_%e3622636382%_
                                                 (gx#syntax-e
                                                  _%hd3622436376%_)))
                                            (let ((_%tl3622836389%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3622636382%_)))
                                                  (_%hd3622736386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3622636382%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3622836389%_)
                                                  (let ((_%e3622936392%_
                                                         (gx#syntax-e
                                                          _%tl3622836389%_)))
                                                    (let ((_%tl3623136399%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3622936392%_)))
                                                          (_%hd3623036396%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3622936392%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3623136399%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3622236369%_)
                                                              (let ((_%__splice3943639437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl3622236369%_ '0)))
                        (let ((_%tl3623436405%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3943639437%_ '1)))
                              (_%target3623236402%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3943639437%_ '0))))
                          (if (gx#stx-null? _%tl3623436405%_)
                              (_%__match3948239483%_
                               _%e3621736352%_
                               _%hd3621836356%_
                               _%tl3621936359%_
                               _%e3622036362%_
                               _%hd3622136366%_
                               _%tl3622236369%_
                               _%e3622336372%_
                               _%hd3622436376%_
                               _%tl3622536379%_
                               _%e3622636382%_
                               _%hd3622736386%_
                               _%tl3622836389%_
                               _%e3622936392%_
                               _%hd3623036396%_
                               _%tl3623136399%_
                               _%__splice3943639437%_
                               _%target3623236402%_
                               _%tl3623436405%_)
                              (let ()
                                (declare (not safe))
                                (_%g3621036262%_)))))
                      (let () (declare (not safe)) (_%g3621036262%_)))
                  (let () (declare (not safe)) (_%g3621036262%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3621036262%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3621036262%_)))))
                                  (if (gx#stx-null? _%hd3622136366%_)
                                      (if (gx#stx-pair/null? _%tl3622236369%_)
                                          (let ((_%__splice3944039441%_
                                                 (gx#syntax-split-splice
                                                  _%tl3622236369%_
                                                  '0)))
                                            (let ((_%tl3625036292%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3944039441%_
                                                      '1)))
                                                  (_%target3624836289%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3944039441%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3625036292%_)
                                                  (_%__match3950439505%_
                                                   _%e3621736352%_
                                                   _%hd3621836356%_
                                                   _%tl3621936359%_
                                                   _%e3622036362%_
                                                   _%hd3622136366%_
                                                   _%tl3622236369%_
                                                   _%__splice3944039441%_
                                                   _%target3624836289%_
                                                   _%tl3625036292%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3621036262%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3621036262%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3621036262%_))))))
                          (let () (declare (not safe)) (_%g3621036262%_)))))
                  (let () (declare (not safe)) (_%g3621036262%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx36477%_)
        (let* ((_%__stx3950739508%_ _%$stx36477%_)
               (_%g3648836634%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3950739508%_))))
          (let ((_%__kont3951039511%_
                 (lambda (_%L37238%_ _%L37240%_ _%L37241%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3726237265%_ _%g3726337268%_)
                                  (cons (cons _%L37241%_
                                              (cons _%g3726237265%_
                                                    (cons _%L37238%_ '())))
                                        _%g3726337268%_))
                                '()
                                _%L37240%_))))
                (_%__kont3951439515%_
                 (lambda (_%L37128%_ _%L37130%_ _%L37131%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3715237155%_ _%g3715337158%_)
                                  (cons (cons _%L37131%_
                                              (cons _%g3715237155%_
                                                    (cons _%L37128%_ '())))
                                        _%g3715337158%_))
                                '()
                                _%L37130%_))))
                (_%__kont3951839519%_
                 (lambda (_%L37028%_ _%L37030%_ _%L37031%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%L37031%_
                                     (cons _%L37030%_ (cons _%L37028%_ '())))
                               '()))))
                (_%__kont3952039521%_
                 (lambda (_%L36954%_ _%L36956%_)
                   (cons _%L36956%_ (cons _%L36954%_ '()))))
                (_%__kont3952239523%_
                 (lambda (_%L36902%_ _%L36904%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%L36904%_
                                           (cons _%L36902%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont3952439525%_
                 (lambda (_%L36854%_ _%L36856%_ _%L36857%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%L36857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L36856%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36854%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3952639527%_
                 (lambda (_%L36785%_ _%L36787%_ _%L36788%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36788%_
                                                       (cons _%L36787%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36785%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3952839529%_
                 (lambda (_%L36705%_ _%L36707%_ _%L36708%_ _%L36709%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36709%_
                                                       (cons _%L36708%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36705%_
                                                             (cons (cons _%L36707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match3968039681%_
                    (lambda (_%e3657836814%_
                             _%hd3657936818%_
                             _%tl3658036821%_
                             _%e3658136824%_
                             _%hd3658236828%_
                             _%tl3658336831%_
                             _%e3658436834%_
                             _%hd3658536838%_
                             _%tl3658636841%_)
                      (if (gx#identifier? _%hd3658536838%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39882_|
                               _%hd3658536838%_)
                              (if (gx#stx-pair? _%tl3658636841%_)
                                  (let ((_%e3658736844%_
                                         (gx#syntax-e _%tl3658636841%_)))
                                    (let ((_%tl3658936851%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3658736844%_)))
                                          (_%hd3658836848%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3658736844%_))))
                                      (if (gx#stx-null? _%tl3658936851%_)
                                          (_%__kont3952439525%_
                                           _%hd3658836848%_
                                           _%hd3658236828%_
                                           _%hd3657936818%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3648836634%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3648836634%_)))
                              (let () (declare (not safe)) (_%g3648836634%_)))
                          (if (gx#stx-datum? _%hd3658536838%_)
                              (let ((_%e3660236771%_
                                     (gx#stx-e _%hd3658536838%_)))
                                (if (equal? _%e3660236771%_ '::)
                                    (if (gx#stx-pair? _%tl3658636841%_)
                                        (let ((_%e3660336775%_
                                               (gx#syntax-e _%tl3658636841%_)))
                                          (let ((_%tl3660536782%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3660336775%_)))
                                                (_%hd3660436779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3660336775%_))))
                                            (if (gx#stx-null? _%tl3660536782%_)
                                                (_%__kont3952639527%_
                                                 _%hd3660436779%_
                                                 _%hd3658236828%_
                                                 _%hd3657936818%_)
                                                (if (gx#stx-pair?
                                                     _%tl3660536782%_)
                                                    (let ((_%e3662336685%_
                                                           (gx#syntax-e
                                                            _%tl3660536782%_)))
                                                      (let ((_%tl3662536692%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3662336685%_)))
                    (_%hd3662436689%_
                     (let () (declare (not safe)) (##car _%e3662336685%_))))
                (if (gx#identifier? _%hd3662436689%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39883_|
                         _%hd3662436689%_)
                        (if (gx#stx-pair? _%tl3662536692%_)
                            (let ((_%e3662636695%_
                                   (gx#syntax-e _%tl3662536692%_)))
                              (let ((_%tl3662836702%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3662636695%_)))
                                    (_%hd3662736699%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3662636695%_))))
                                (if (gx#stx-null? _%tl3662836702%_)
                                    (_%__kont3952839529%_
                                     _%hd3662736699%_
                                     _%hd3660436779%_
                                     _%hd3658236828%_
                                     _%hd3657936818%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3648836634%_)))))
                            (let () (declare (not safe)) (_%g3648836634%_)))
                        (let () (declare (not safe)) (_%g3648836634%_)))
                    (let () (declare (not safe)) (_%g3648836634%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3648836634%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3648836634%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3648836634%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3648836634%_))))))
                   (_%__match3966039661%_
                    (lambda (_%e3656936882%_
                             _%hd3657036886%_
                             _%tl3657136889%_
                             _%e3657236892%_
                             _%hd3657336896%_
                             _%tl3657436899%_)
                      (if (gx#stx-null? _%tl3657436899%_)
                          (_%__kont3952239523%_
                           _%hd3657336896%_
                           _%hd3657036886%_)
                          (if (gx#stx-pair? _%tl3657436899%_)
                              (let ((_%e3658436834%_
                                     (gx#syntax-e _%tl3657436899%_)))
                                (let ((_%tl3658636841%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3658436834%_)))
                                      (_%hd3658536838%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3658436834%_))))
                                  (if (gx#identifier? _%hd3658536838%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39882_|
                                           _%hd3658536838%_)
                                          (if (gx#stx-pair? _%tl3658636841%_)
                                              (let ((_%e3658736844%_
                                                     (gx#syntax-e
                                                      _%tl3658636841%_)))
                                                (let ((_%tl3658936851%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3658736844%_)))
                                                      (_%hd3658836848%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3658736844%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3658936851%_)
                                                      (_%__kont3952439525%_
                                                       _%hd3658836848%_
                                                       _%hd3657336896%_
                                                       _%hd3657036886%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3648836634%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3648836634%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3648836634%_)))
                                      (if (gx#stx-datum? _%hd3658536838%_)
                                          (let ((_%e3660236771%_
                                                 (gx#stx-e _%hd3658536838%_)))
                                            (if (equal? _%e3660236771%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3658636841%_)
                                                    (let ((_%e3660336775%_
                                                           (gx#syntax-e
                                                            _%tl3658636841%_)))
                                                      (let ((_%tl3660536782%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3660336775%_)))
                    (_%hd3660436779%_
                     (let () (declare (not safe)) (##car _%e3660336775%_))))
                (if (gx#stx-null? _%tl3660536782%_)
                    (_%__kont3952639527%_
                     _%hd3660436779%_
                     _%hd3657336896%_
                     _%hd3657036886%_)
                    (if (gx#stx-pair? _%tl3660536782%_)
                        (let ((_%e3662336685%_ (gx#syntax-e _%tl3660536782%_)))
                          (let ((_%tl3662536692%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3662336685%_)))
                                (_%hd3662436689%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3662336685%_))))
                            (if (gx#identifier? _%hd3662436689%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39883_|
                                     _%hd3662436689%_)
                                    (if (gx#stx-pair? _%tl3662536692%_)
                                        (let ((_%e3662636695%_
                                               (gx#syntax-e _%tl3662536692%_)))
                                          (let ((_%tl3662836702%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3662636695%_)))
                                                (_%hd3662736699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3662636695%_))))
                                            (if (gx#stx-null? _%tl3662836702%_)
                                                (_%__kont3952839529%_
                                                 _%hd3662736699%_
                                                 _%hd3660436779%_
                                                 _%hd3657336896%_
                                                 _%hd3657036886%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3648836634%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3648836634%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3648836634%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3648836634%_)))))
                        (let () (declare (not safe)) (_%g3648836634%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3648836634%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3648836634%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3648836634%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3648836634%_))))))
                   (_%__match3959039591%_
                    (lambda (_%e3651737058%_
                             _%hd3651837062%_
                             _%tl3651937065%_
                             _%e3652037068%_
                             _%hd3652137072%_
                             _%tl3652237075%_
                             _%e3652337078%_
                             _%hd3652437082%_
                             _%tl3652537085%_
                             _%__splice3951639517%_
                             _%target3652637088%_
                             _%tl3652837091%_)
                      (letrec ((_%loop3652937094%_
                                (lambda (_%hd3652737098%_ _%pred3653337101%_)
                                  (if (gx#stx-pair? _%hd3652737098%_)
                                      (let ((_%e3653037104%_
                                             (gx#syntax-e _%hd3652737098%_)))
                                        (let ((_%lp-tl3653237111%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3653037104%_)))
                                              (_%lp-hd3653137108%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3653037104%_))))
                                          (_%loop3652937094%_
                                           _%lp-tl3653237111%_
                                           (cons _%lp-hd3653137108%_
                                                 _%pred3653337101%_))))
                                      (let ((_%pred3653437114%_
                                             (reverse _%pred3653337101%_)))
                                        (if (gx#stx-pair? _%tl3652237075%_)
                                            (let ((_%e3653537118%_
                                                   (gx#syntax-e
                                                    _%tl3652237075%_)))
                                              (let ((_%tl3653737125%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3653537118%_)))
                                                    (_%hd3653637122%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3653537118%_))))
                                                (if (gx#stx-null?
                                                     _%tl3653737125%_)
                                                    (_%__kont3951439515%_
                                                     _%hd3653637122%_
                                                     _%pred3653437114%_
                                                     _%hd3651837062%_)
                                                    (_%__match3968039681%_
                                                     _%e3651737058%_
                                                     _%hd3651837062%_
                                                     _%tl3651937065%_
                                                     _%e3652037068%_
                                                     _%hd3652137072%_
                                                     _%tl3652237075%_
                                                     _%e3653537118%_
                                                     _%hd3653637122%_
                                                     _%tl3653737125%_))))
                                            (_%__match3966039661%_
                                             _%e3651737058%_
                                             _%hd3651837062%_
                                             _%tl3651937065%_
                                             _%e3652037068%_
                                             _%hd3652137072%_
                                             _%tl3652237075%_)))))))
                        (_%loop3652937094%_ _%target3652637088%_ '()))))
                   (_%__match3956039561%_
                    (lambda (_%e3649337168%_
                             _%hd3649437172%_
                             _%tl3649537175%_
                             _%e3649637178%_
                             _%hd3649737182%_
                             _%tl3649837185%_
                             _%e3649937188%_
                             _%hd3650037192%_
                             _%tl3650137195%_
                             _%__splice3951239513%_
                             _%target3650237198%_
                             _%tl3650437201%_)
                      (letrec ((_%loop3650537204%_
                                (lambda (_%hd3650337208%_ _%pred3650937211%_)
                                  (if (gx#stx-pair? _%hd3650337208%_)
                                      (let ((_%e3650637214%_
                                             (gx#syntax-e _%hd3650337208%_)))
                                        (let ((_%lp-tl3650837221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3650637214%_)))
                                              (_%lp-hd3650737218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3650637214%_))))
                                          (_%loop3650537204%_
                                           _%lp-tl3650837221%_
                                           (cons _%lp-hd3650737218%_
                                                 _%pred3650937211%_))))
                                      (let ((_%pred3651037224%_
                                             (reverse _%pred3650937211%_)))
                                        (if (gx#stx-pair? _%tl3649837185%_)
                                            (let ((_%e3651137228%_
                                                   (gx#syntax-e
                                                    _%tl3649837185%_)))
                                              (let ((_%tl3651337235%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3651137228%_)))
                                                    (_%hd3651237232%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3651137228%_))))
                                                (if (gx#stx-null?
                                                     _%tl3651337235%_)
                                                    (_%__kont3951039511%_
                                                     _%hd3651237232%_
                                                     _%pred3651037224%_
                                                     _%hd3649437172%_)
                                                    (_%__match3968039681%_
                                                     _%e3649337168%_
                                                     _%hd3649437172%_
                                                     _%tl3649537175%_
                                                     _%e3649637178%_
                                                     _%hd3649737182%_
                                                     _%tl3649837185%_
                                                     _%e3651137228%_
                                                     _%hd3651237232%_
                                                     _%tl3651337235%_))))
                                            (_%__match3966039661%_
                                             _%e3649337168%_
                                             _%hd3649437172%_
                                             _%tl3649537175%_
                                             _%e3649637178%_
                                             _%hd3649737182%_
                                             _%tl3649837185%_)))))))
                        (_%loop3650537204%_ _%target3650237198%_ '())))))
              (if (gx#stx-pair? _%__stx3950739508%_)
                  (let ((_%e3649337168%_ (gx#syntax-e _%__stx3950739508%_)))
                    (let ((_%tl3649537175%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3649337168%_)))
                          (_%hd3649437172%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3649337168%_))))
                      (if (gx#stx-pair? _%tl3649537175%_)
                          (let ((_%e3649637178%_
                                 (gx#syntax-e _%tl3649537175%_)))
                            (let ((_%tl3649837185%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3649637178%_)))
                                  (_%hd3649737182%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3649637178%_))))
                              (if (gx#stx-pair? _%hd3649737182%_)
                                  (let ((_%e3649937188%_
                                         (gx#syntax-e _%hd3649737182%_)))
                                    (let ((_%tl3650137195%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3649937188%_)))
                                          (_%hd3650037192%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3649937188%_))))
                                      (if (gx#identifier? _%hd3650037192%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39884_|
                                               _%hd3650037192%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3650137195%_)
                                                  (let ((_%__splice3951239513%_
                                                         (gx#syntax-split-splice
                                                          _%tl3650137195%_
                                                          '0)))
                                                    (let ((_%tl3650437201%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3951239513%_
                                                              '1)))
                                                          (_%target3650237198%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3951239513%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3650437201%_)
                                                          (_%__match3956039561%_
                                                           _%e3649337168%_
                                                           _%hd3649437172%_
                                                           _%tl3649537175%_
                                                           _%e3649637178%_
                                                           _%hd3649737182%_
                                                           _%tl3649837185%_
                                                           _%e3649937188%_
                                                           _%hd3650037192%_
                                                           _%tl3650137195%_
                                                           _%__splice3951239513%_
                                                           _%target3650237198%_
                                                           _%tl3650437201%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3649837185%_)
                                                              (let ((_%e3656436944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3649837185%_)))
                        (let ((_%tl3656636951%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3656436944%_)))
                              (_%hd3656536948%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3656436944%_))))
                          (if (gx#stx-null? _%tl3656636951%_)
                              (_%__kont3952039521%_
                               _%hd3656536948%_
                               _%hd3649737182%_)
                              (if (gx#identifier? _%hd3656536948%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39882_|
                                       _%hd3656536948%_)
                                      (if (gx#stx-pair? _%tl3656636951%_)
                                          (let ((_%e3658736844%_
                                                 (gx#syntax-e
                                                  _%tl3656636951%_)))
                                            (let ((_%tl3658936851%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3658736844%_)))
                                                  (_%hd3658836848%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3658736844%_))))
                                              (if (gx#stx-null?
                                                   _%tl3658936851%_)
                                                  (_%__kont3952439525%_
                                                   _%hd3658836848%_
                                                   _%hd3649737182%_
                                                   _%hd3649437172%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3648836634%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3648836634%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3648836634%_)))
                                  (if (gx#stx-datum? _%hd3656536948%_)
                                      (let ((_%e3660236771%_
                                             (gx#stx-e _%hd3656536948%_)))
                                        (if (equal? _%e3660236771%_ '::)
                                            (if (gx#stx-pair? _%tl3656636951%_)
                                                (let ((_%e3660336775%_
                                                       (gx#syntax-e
                                                        _%tl3656636951%_)))
                                                  (let ((_%tl3660536782%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3660336775%_)))
                                                        (_%hd3660436779%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3660336775%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3660536782%_)
                                                        (_%__kont3952639527%_
                                                         _%hd3660436779%_
                                                         _%hd3649737182%_
                                                         _%hd3649437172%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3660536782%_)
                                                            (let ((_%e3662336685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3660536782%_)))
                      (let ((_%tl3662536692%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3662336685%_)))
                            (_%hd3662436689%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3662336685%_))))
                        (if (gx#identifier? _%hd3662436689%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39883_|
                                 _%hd3662436689%_)
                                (if (gx#stx-pair? _%tl3662536692%_)
                                    (let ((_%e3662636695%_
                                           (gx#syntax-e _%tl3662536692%_)))
                                      (let ((_%tl3662836702%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3662636695%_)))
                                            (_%hd3662736699%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3662636695%_))))
                                        (if (gx#stx-null? _%tl3662836702%_)
                                            (_%__kont3952839529%_
                                             _%hd3662736699%_
                                             _%hd3660436779%_
                                             _%hd3649737182%_
                                             _%hd3649437172%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3648836634%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3648836634%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3648836634%_)))
                            (let () (declare (not safe)) (_%g3648836634%_)))))
                    (let () (declare (not safe)) (_%g3648836634%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3648836634%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3648836634%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3648836634%_)))))))
                      (if (gx#stx-null? _%tl3649837185%_)
                          (_%__kont3952239523%_
                           _%hd3649737182%_
                           _%hd3649437172%_)
                          (let () (declare (not safe)) (_%g3648836634%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3649837185%_)
                                                      (let ((_%e3656436944%_
                                                             (gx#syntax-e
                                                              _%tl3649837185%_)))
                                                        (let ((_%tl3656636951%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3656436944%_)))
                      (_%hd3656536948%_
                       (let () (declare (not safe)) (##car _%e3656436944%_))))
                  (if (gx#stx-null? _%tl3656636951%_)
                      (_%__kont3952039521%_ _%hd3656536948%_ _%hd3649737182%_)
                      (if (gx#identifier? _%hd3656536948%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39882_|
                               _%hd3656536948%_)
                              (if (gx#stx-pair? _%tl3656636951%_)
                                  (let ((_%e3658736844%_
                                         (gx#syntax-e _%tl3656636951%_)))
                                    (let ((_%tl3658936851%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3658736844%_)))
                                          (_%hd3658836848%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3658736844%_))))
                                      (if (gx#stx-null? _%tl3658936851%_)
                                          (_%__kont3952439525%_
                                           _%hd3658836848%_
                                           _%hd3649737182%_
                                           _%hd3649437172%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3648836634%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3648836634%_)))
                              (let () (declare (not safe)) (_%g3648836634%_)))
                          (if (gx#stx-datum? _%hd3656536948%_)
                              (let ((_%e3660236771%_
                                     (gx#stx-e _%hd3656536948%_)))
                                (if (equal? _%e3660236771%_ '::)
                                    (if (gx#stx-pair? _%tl3656636951%_)
                                        (let ((_%e3660336775%_
                                               (gx#syntax-e _%tl3656636951%_)))
                                          (let ((_%tl3660536782%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3660336775%_)))
                                                (_%hd3660436779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3660336775%_))))
                                            (if (gx#stx-null? _%tl3660536782%_)
                                                (_%__kont3952639527%_
                                                 _%hd3660436779%_
                                                 _%hd3649737182%_
                                                 _%hd3649437172%_)
                                                (if (gx#stx-pair?
                                                     _%tl3660536782%_)
                                                    (let ((_%e3662336685%_
                                                           (gx#syntax-e
                                                            _%tl3660536782%_)))
                                                      (let ((_%tl3662536692%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3662336685%_)))
                    (_%hd3662436689%_
                     (let () (declare (not safe)) (##car _%e3662336685%_))))
                (if (gx#identifier? _%hd3662436689%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39883_|
                         _%hd3662436689%_)
                        (if (gx#stx-pair? _%tl3662536692%_)
                            (let ((_%e3662636695%_
                                   (gx#syntax-e _%tl3662536692%_)))
                              (let ((_%tl3662836702%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3662636695%_)))
                                    (_%hd3662736699%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3662636695%_))))
                                (if (gx#stx-null? _%tl3662836702%_)
                                    (_%__kont3952839529%_
                                     _%hd3662736699%_
                                     _%hd3660436779%_
                                     _%hd3649737182%_
                                     _%hd3649437172%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3648836634%_)))))
                            (let () (declare (not safe)) (_%g3648836634%_)))
                        (let () (declare (not safe)) (_%g3648836634%_)))
                    (let () (declare (not safe)) (_%g3648836634%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3648836634%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3648836634%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3648836634%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3648836634%_)))))))
              (if (gx#stx-null? _%tl3649837185%_)
                  (_%__kont3952239523%_ _%hd3649737182%_ _%hd3649437172%_)
                  (let () (declare (not safe)) (_%g3648836634%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39885_|
                                                   _%hd3650037192%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3650137195%_)
                                                      (let ((_%__splice3951639517%_
                                                             (gx#syntax-split-splice
                                                              _%tl3650137195%_
                                                              '0)))
                                                        (let ((_%tl3652837091%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice3951639517%_ '1)))
                      (_%target3652637088%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice3951639517%_ '0))))
                  (if (gx#stx-null? _%tl3652837091%_)
                      (_%__match3959039591%_
                       _%e3649337168%_
                       _%hd3649437172%_
                       _%tl3649537175%_
                       _%e3649637178%_
                       _%hd3649737182%_
                       _%tl3649837185%_
                       _%e3649937188%_
                       _%hd3650037192%_
                       _%tl3650137195%_
                       _%__splice3951639517%_
                       _%target3652637088%_
                       _%tl3652837091%_)
                      (if (gx#stx-pair? _%tl3649837185%_)
                          (let ((_%e3656436944%_
                                 (gx#syntax-e _%tl3649837185%_)))
                            (let ((_%tl3656636951%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3656436944%_)))
                                  (_%hd3656536948%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3656436944%_))))
                              (if (gx#stx-null? _%tl3656636951%_)
                                  (_%__kont3952039521%_
                                   _%hd3656536948%_
                                   _%hd3649737182%_)
                                  (if (gx#identifier? _%hd3656536948%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39882_|
                                           _%hd3656536948%_)
                                          (if (gx#stx-pair? _%tl3656636951%_)
                                              (let ((_%e3658736844%_
                                                     (gx#syntax-e
                                                      _%tl3656636951%_)))
                                                (let ((_%tl3658936851%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3658736844%_)))
                                                      (_%hd3658836848%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3658736844%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3658936851%_)
                                                      (_%__kont3952439525%_
                                                       _%hd3658836848%_
                                                       _%hd3649737182%_
                                                       _%hd3649437172%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3648836634%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3648836634%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3648836634%_)))
                                      (if (gx#stx-datum? _%hd3656536948%_)
                                          (let ((_%e3660236771%_
                                                 (gx#stx-e _%hd3656536948%_)))
                                            (if (equal? _%e3660236771%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3656636951%_)
                                                    (let ((_%e3660336775%_
                                                           (gx#syntax-e
                                                            _%tl3656636951%_)))
                                                      (let ((_%tl3660536782%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3660336775%_)))
                    (_%hd3660436779%_
                     (let () (declare (not safe)) (##car _%e3660336775%_))))
                (if (gx#stx-null? _%tl3660536782%_)
                    (_%__kont3952639527%_
                     _%hd3660436779%_
                     _%hd3649737182%_
                     _%hd3649437172%_)
                    (if (gx#stx-pair? _%tl3660536782%_)
                        (let ((_%e3662336685%_ (gx#syntax-e _%tl3660536782%_)))
                          (let ((_%tl3662536692%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3662336685%_)))
                                (_%hd3662436689%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3662336685%_))))
                            (if (gx#identifier? _%hd3662436689%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39883_|
                                     _%hd3662436689%_)
                                    (if (gx#stx-pair? _%tl3662536692%_)
                                        (let ((_%e3662636695%_
                                               (gx#syntax-e _%tl3662536692%_)))
                                          (let ((_%tl3662836702%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3662636695%_)))
                                                (_%hd3662736699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3662636695%_))))
                                            (if (gx#stx-null? _%tl3662836702%_)
                                                (_%__kont3952839529%_
                                                 _%hd3662736699%_
                                                 _%hd3660436779%_
                                                 _%hd3649737182%_
                                                 _%hd3649437172%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3648836634%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3648836634%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3648836634%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3648836634%_)))))
                        (let () (declare (not safe)) (_%g3648836634%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3648836634%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3648836634%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3648836634%_)))))))
                          (if (gx#stx-null? _%tl3649837185%_)
                              (_%__kont3952239523%_
                               _%hd3649737182%_
                               _%hd3649437172%_)
                              (let ()
                                (declare (not safe))
                                (_%g3648836634%_)))))))
              (if (gx#stx-pair? _%tl3649837185%_)
                  (let ((_%e3656436944%_ (gx#syntax-e _%tl3649837185%_)))
                    (let ((_%tl3656636951%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3656436944%_)))
                          (_%hd3656536948%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3656436944%_))))
                      (if (gx#stx-null? _%tl3656636951%_)
                          (_%__kont3952039521%_
                           _%hd3656536948%_
                           _%hd3649737182%_)
                          (if (gx#identifier? _%hd3656536948%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39882_|
                                   _%hd3656536948%_)
                                  (if (gx#stx-pair? _%tl3656636951%_)
                                      (let ((_%e3658736844%_
                                             (gx#syntax-e _%tl3656636951%_)))
                                        (let ((_%tl3658936851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3658736844%_)))
                                              (_%hd3658836848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3658736844%_))))
                                          (if (gx#stx-null? _%tl3658936851%_)
                                              (_%__kont3952439525%_
                                               _%hd3658836848%_
                                               _%hd3649737182%_
                                               _%hd3649437172%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3648836634%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3648836634%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3648836634%_)))
                              (if (gx#stx-datum? _%hd3656536948%_)
                                  (let ((_%e3660236771%_
                                         (gx#stx-e _%hd3656536948%_)))
                                    (if (equal? _%e3660236771%_ '::)
                                        (if (gx#stx-pair? _%tl3656636951%_)
                                            (let ((_%e3660336775%_
                                                   (gx#syntax-e
                                                    _%tl3656636951%_)))
                                              (let ((_%tl3660536782%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3660336775%_)))
                                                    (_%hd3660436779%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3660336775%_))))
                                                (if (gx#stx-null?
                                                     _%tl3660536782%_)
                                                    (_%__kont3952639527%_
                                                     _%hd3660436779%_
                                                     _%hd3649737182%_
                                                     _%hd3649437172%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3660536782%_)
                                                        (let ((_%e3662336685%_
                                                               (gx#syntax-e
                                                                _%tl3660536782%_)))
                                                          (let ((_%tl3662536692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3662336685%_)))
                        (_%hd3662436689%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3662336685%_))))
                    (if (gx#identifier? _%hd3662436689%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39883_|
                             _%hd3662436689%_)
                            (if (gx#stx-pair? _%tl3662536692%_)
                                (let ((_%e3662636695%_
                                       (gx#syntax-e _%tl3662536692%_)))
                                  (let ((_%tl3662836702%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3662636695%_)))
                                        (_%hd3662736699%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3662636695%_))))
                                    (if (gx#stx-null? _%tl3662836702%_)
                                        (_%__kont3952839529%_
                                         _%hd3662736699%_
                                         _%hd3660436779%_
                                         _%hd3649737182%_
                                         _%hd3649437172%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3648836634%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3648836634%_)))
                            (let () (declare (not safe)) (_%g3648836634%_)))
                        (let () (declare (not safe)) (_%g3648836634%_)))))
                (let () (declare (not safe)) (_%g3648836634%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3648836634%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3648836634%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3648836634%_)))))))
                  (if (gx#stx-null? _%tl3649837185%_)
                      (_%__kont3952239523%_ _%hd3649737182%_ _%hd3649437172%_)
                      (let () (declare (not safe)) (_%g3648836634%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39886_|
                                                       _%hd3650037192%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3650137195%_)
                                                          (let ((_%e3655037008%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3650137195%_)))
                    (let ((_%tl3655237015%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3655037008%_)))
                          (_%hd3655137012%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3655037008%_))))
                      (if (gx#stx-null? _%tl3655237015%_)
                          (if (gx#stx-pair? _%tl3649837185%_)
                              (let ((_%e3655337018%_
                                     (gx#syntax-e _%tl3649837185%_)))
                                (let ((_%tl3655537025%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3655337018%_)))
                                      (_%hd3655437022%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3655337018%_))))
                                  (if (gx#stx-null? _%tl3655537025%_)
                                      (_%__kont3951839519%_
                                       _%hd3655437022%_
                                       _%hd3655137012%_
                                       _%hd3649437172%_)
                                      (if (gx#identifier? _%hd3655437022%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39882_|
                                               _%hd3655437022%_)
                                              (if (gx#stx-pair?
                                                   _%tl3655537025%_)
                                                  (let ((_%e3658736844%_
                                                         (gx#syntax-e
                                                          _%tl3655537025%_)))
                                                    (let ((_%tl3658936851%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3658736844%_)))
                                                          (_%hd3658836848%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3658736844%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3658936851%_)
                                                          (_%__kont3952439525%_
                                                           _%hd3658836848%_
                                                           _%hd3649737182%_
                                                           _%hd3649437172%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3648836634%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3648836634%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3648836634%_)))
                                          (if (gx#stx-datum? _%hd3655437022%_)
                                              (let ((_%e3660236771%_
                                                     (gx#stx-e
                                                      _%hd3655437022%_)))
                                                (if (equal? _%e3660236771%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3655537025%_)
                                                        (let ((_%e3660336775%_
                                                               (gx#syntax-e
                                                                _%tl3655537025%_)))
                                                          (let ((_%tl3660536782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3660336775%_)))
                        (_%hd3660436779%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3660336775%_))))
                    (if (gx#stx-null? _%tl3660536782%_)
                        (_%__kont3952639527%_
                         _%hd3660436779%_
                         _%hd3649737182%_
                         _%hd3649437172%_)
                        (if (gx#stx-pair? _%tl3660536782%_)
                            (let ((_%e3662336685%_
                                   (gx#syntax-e _%tl3660536782%_)))
                              (let ((_%tl3662536692%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3662336685%_)))
                                    (_%hd3662436689%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3662336685%_))))
                                (if (gx#identifier? _%hd3662436689%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39883_|
                                         _%hd3662436689%_)
                                        (if (gx#stx-pair? _%tl3662536692%_)
                                            (let ((_%e3662636695%_
                                                   (gx#syntax-e
                                                    _%tl3662536692%_)))
                                              (let ((_%tl3662836702%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3662636695%_)))
                                                    (_%hd3662736699%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3662636695%_))))
                                                (if (gx#stx-null?
                                                     _%tl3662836702%_)
                                                    (_%__kont3952839529%_
                                                     _%hd3662736699%_
                                                     _%hd3660436779%_
                                                     _%hd3649737182%_
                                                     _%hd3649437172%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3648836634%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3648836634%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3648836634%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3648836634%_)))))
                            (let () (declare (not safe)) (_%g3648836634%_))))))
                (let () (declare (not safe)) (_%g3648836634%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3648836634%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3648836634%_)))))))
                              (if (gx#stx-null? _%tl3649837185%_)
                                  (_%__kont3952239523%_
                                   _%hd3649737182%_
                                   _%hd3649437172%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3648836634%_))))
                          (if (gx#stx-pair? _%tl3649837185%_)
                              (let ((_%e3656436944%_
                                     (gx#syntax-e _%tl3649837185%_)))
                                (let ((_%tl3656636951%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3656436944%_)))
                                      (_%hd3656536948%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3656436944%_))))
                                  (if (gx#stx-null? _%tl3656636951%_)
                                      (_%__kont3952039521%_
                                       _%hd3656536948%_
                                       _%hd3649737182%_)
                                      (if (gx#identifier? _%hd3656536948%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39882_|
                                               _%hd3656536948%_)
                                              (if (gx#stx-pair?
                                                   _%tl3656636951%_)
                                                  (let ((_%e3658736844%_
                                                         (gx#syntax-e
                                                          _%tl3656636951%_)))
                                                    (let ((_%tl3658936851%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3658736844%_)))
                                                          (_%hd3658836848%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3658736844%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3658936851%_)
                                                          (_%__kont3952439525%_
                                                           _%hd3658836848%_
                                                           _%hd3649737182%_
                                                           _%hd3649437172%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3648836634%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3648836634%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3648836634%_)))
                                          (if (gx#stx-datum? _%hd3656536948%_)
                                              (let ((_%e3660236771%_
                                                     (gx#stx-e
                                                      _%hd3656536948%_)))
                                                (if (equal? _%e3660236771%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3656636951%_)
                                                        (let ((_%e3660336775%_
                                                               (gx#syntax-e
                                                                _%tl3656636951%_)))
                                                          (let ((_%tl3660536782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3660336775%_)))
                        (_%hd3660436779%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3660336775%_))))
                    (if (gx#stx-null? _%tl3660536782%_)
                        (_%__kont3952639527%_
                         _%hd3660436779%_
                         _%hd3649737182%_
                         _%hd3649437172%_)
                        (if (gx#stx-pair? _%tl3660536782%_)
                            (let ((_%e3662336685%_
                                   (gx#syntax-e _%tl3660536782%_)))
                              (let ((_%tl3662536692%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3662336685%_)))
                                    (_%hd3662436689%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3662336685%_))))
                                (if (gx#identifier? _%hd3662436689%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39883_|
                                         _%hd3662436689%_)
                                        (if (gx#stx-pair? _%tl3662536692%_)
                                            (let ((_%e3662636695%_
                                                   (gx#syntax-e
                                                    _%tl3662536692%_)))
                                              (let ((_%tl3662836702%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3662636695%_)))
                                                    (_%hd3662736699%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3662636695%_))))
                                                (if (gx#stx-null?
                                                     _%tl3662836702%_)
                                                    (_%__kont3952839529%_
                                                     _%hd3662736699%_
                                                     _%hd3660436779%_
                                                     _%hd3649737182%_
                                                     _%hd3649437172%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3648836634%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3648836634%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3648836634%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3648836634%_)))))
                            (let () (declare (not safe)) (_%g3648836634%_))))))
                (let () (declare (not safe)) (_%g3648836634%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3648836634%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3648836634%_)))))))
                              (if (gx#stx-null? _%tl3649837185%_)
                                  (_%__kont3952239523%_
                                   _%hd3649737182%_
                                   _%hd3649437172%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3648836634%_)))))))
                  (if (gx#stx-pair? _%tl3649837185%_)
                      (let ((_%e3656436944%_ (gx#syntax-e _%tl3649837185%_)))
                        (let ((_%tl3656636951%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3656436944%_)))
                              (_%hd3656536948%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3656436944%_))))
                          (if (gx#stx-null? _%tl3656636951%_)
                              (_%__kont3952039521%_
                               _%hd3656536948%_
                               _%hd3649737182%_)
                              (if (gx#identifier? _%hd3656536948%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39882_|
                                       _%hd3656536948%_)
                                      (if (gx#stx-pair? _%tl3656636951%_)
                                          (let ((_%e3658736844%_
                                                 (gx#syntax-e
                                                  _%tl3656636951%_)))
                                            (let ((_%tl3658936851%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3658736844%_)))
                                                  (_%hd3658836848%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3658736844%_))))
                                              (if (gx#stx-null?
                                                   _%tl3658936851%_)
                                                  (_%__kont3952439525%_
                                                   _%hd3658836848%_
                                                   _%hd3649737182%_
                                                   _%hd3649437172%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3648836634%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3648836634%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3648836634%_)))
                                  (if (gx#stx-datum? _%hd3656536948%_)
                                      (let ((_%e3660236771%_
                                             (gx#stx-e _%hd3656536948%_)))
                                        (if (equal? _%e3660236771%_ '::)
                                            (if (gx#stx-pair? _%tl3656636951%_)
                                                (let ((_%e3660336775%_
                                                       (gx#syntax-e
                                                        _%tl3656636951%_)))
                                                  (let ((_%tl3660536782%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3660336775%_)))
                                                        (_%hd3660436779%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3660336775%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3660536782%_)
                                                        (_%__kont3952639527%_
                                                         _%hd3660436779%_
                                                         _%hd3649737182%_
                                                         _%hd3649437172%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3660536782%_)
                                                            (let ((_%e3662336685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3660536782%_)))
                      (let ((_%tl3662536692%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3662336685%_)))
                            (_%hd3662436689%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3662336685%_))))
                        (if (gx#identifier? _%hd3662436689%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39883_|
                                 _%hd3662436689%_)
                                (if (gx#stx-pair? _%tl3662536692%_)
                                    (let ((_%e3662636695%_
                                           (gx#syntax-e _%tl3662536692%_)))
                                      (let ((_%tl3662836702%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3662636695%_)))
                                            (_%hd3662736699%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3662636695%_))))
                                        (if (gx#stx-null? _%tl3662836702%_)
                                            (_%__kont3952839529%_
                                             _%hd3662736699%_
                                             _%hd3660436779%_
                                             _%hd3649737182%_
                                             _%hd3649437172%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3648836634%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3648836634%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3648836634%_)))
                            (let () (declare (not safe)) (_%g3648836634%_)))))
                    (let () (declare (not safe)) (_%g3648836634%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3648836634%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3648836634%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3648836634%_)))))))
                      (if (gx#stx-null? _%tl3649837185%_)
                          (_%__kont3952239523%_
                           _%hd3649737182%_
                           _%hd3649437172%_)
                          (let () (declare (not safe)) (_%g3648836634%_)))))
              (if (gx#stx-pair? _%tl3649837185%_)
                  (let ((_%e3656436944%_ (gx#syntax-e _%tl3649837185%_)))
                    (let ((_%tl3656636951%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3656436944%_)))
                          (_%hd3656536948%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3656436944%_))))
                      (if (gx#stx-null? _%tl3656636951%_)
                          (_%__kont3952039521%_
                           _%hd3656536948%_
                           _%hd3649737182%_)
                          (if (gx#identifier? _%hd3656536948%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39882_|
                                   _%hd3656536948%_)
                                  (if (gx#stx-pair? _%tl3656636951%_)
                                      (let ((_%e3658736844%_
                                             (gx#syntax-e _%tl3656636951%_)))
                                        (let ((_%tl3658936851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3658736844%_)))
                                              (_%hd3658836848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3658736844%_))))
                                          (if (gx#stx-null? _%tl3658936851%_)
                                              (_%__kont3952439525%_
                                               _%hd3658836848%_
                                               _%hd3649737182%_
                                               _%hd3649437172%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3648836634%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3648836634%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3648836634%_)))
                              (if (gx#stx-datum? _%hd3656536948%_)
                                  (let ((_%e3660236771%_
                                         (gx#stx-e _%hd3656536948%_)))
                                    (if (equal? _%e3660236771%_ '::)
                                        (if (gx#stx-pair? _%tl3656636951%_)
                                            (let ((_%e3660336775%_
                                                   (gx#syntax-e
                                                    _%tl3656636951%_)))
                                              (let ((_%tl3660536782%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3660336775%_)))
                                                    (_%hd3660436779%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3660336775%_))))
                                                (if (gx#stx-null?
                                                     _%tl3660536782%_)
                                                    (_%__kont3952639527%_
                                                     _%hd3660436779%_
                                                     _%hd3649737182%_
                                                     _%hd3649437172%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3660536782%_)
                                                        (let ((_%e3662336685%_
                                                               (gx#syntax-e
                                                                _%tl3660536782%_)))
                                                          (let ((_%tl3662536692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3662336685%_)))
                        (_%hd3662436689%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3662336685%_))))
                    (if (gx#identifier? _%hd3662436689%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39883_|
                             _%hd3662436689%_)
                            (if (gx#stx-pair? _%tl3662536692%_)
                                (let ((_%e3662636695%_
                                       (gx#syntax-e _%tl3662536692%_)))
                                  (let ((_%tl3662836702%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3662636695%_)))
                                        (_%hd3662736699%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3662636695%_))))
                                    (if (gx#stx-null? _%tl3662836702%_)
                                        (_%__kont3952839529%_
                                         _%hd3662736699%_
                                         _%hd3660436779%_
                                         _%hd3649737182%_
                                         _%hd3649437172%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3648836634%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3648836634%_)))
                            (let () (declare (not safe)) (_%g3648836634%_)))
                        (let () (declare (not safe)) (_%g3648836634%_)))))
                (let () (declare (not safe)) (_%g3648836634%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3648836634%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3648836634%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3648836634%_)))))))
                  (if (gx#stx-null? _%tl3649837185%_)
                      (_%__kont3952239523%_ _%hd3649737182%_ _%hd3649437172%_)
                      (let () (declare (not safe)) (_%g3648836634%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3649837185%_)
                                              (let ((_%e3656436944%_
                                                     (gx#syntax-e
                                                      _%tl3649837185%_)))
                                                (let ((_%tl3656636951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3656436944%_)))
                                                      (_%hd3656536948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3656436944%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3656636951%_)
                                                      (_%__kont3952039521%_
                                                       _%hd3656536948%_
                                                       _%hd3649737182%_)
                                                      (if (gx#identifier?
                                                           _%hd3656536948%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g39882_|
                                                               _%hd3656536948%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3656636951%_)
                          (let ((_%e3658736844%_
                                 (gx#syntax-e _%tl3656636951%_)))
                            (let ((_%tl3658936851%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3658736844%_)))
                                  (_%hd3658836848%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3658736844%_))))
                              (if (gx#stx-null? _%tl3658936851%_)
                                  (_%__kont3952439525%_
                                   _%hd3658836848%_
                                   _%hd3649737182%_
                                   _%hd3649437172%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3648836634%_)))))
                          (let () (declare (not safe)) (_%g3648836634%_)))
                      (let () (declare (not safe)) (_%g3648836634%_)))
                  (if (gx#stx-datum? _%hd3656536948%_)
                      (let ((_%e3660236771%_ (gx#stx-e _%hd3656536948%_)))
                        (if (equal? _%e3660236771%_ '::)
                            (if (gx#stx-pair? _%tl3656636951%_)
                                (let ((_%e3660336775%_
                                       (gx#syntax-e _%tl3656636951%_)))
                                  (let ((_%tl3660536782%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3660336775%_)))
                                        (_%hd3660436779%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3660336775%_))))
                                    (if (gx#stx-null? _%tl3660536782%_)
                                        (_%__kont3952639527%_
                                         _%hd3660436779%_
                                         _%hd3649737182%_
                                         _%hd3649437172%_)
                                        (if (gx#stx-pair? _%tl3660536782%_)
                                            (let ((_%e3662336685%_
                                                   (gx#syntax-e
                                                    _%tl3660536782%_)))
                                              (let ((_%tl3662536692%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3662336685%_)))
                                                    (_%hd3662436689%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3662336685%_))))
                                                (if (gx#identifier?
                                                     _%hd3662436689%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g39883_|
                                                         _%hd3662436689%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3662536692%_)
                                                            (let ((_%e3662636695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3662536692%_)))
                      (let ((_%tl3662836702%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3662636695%_)))
                            (_%hd3662736699%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3662636695%_))))
                        (if (gx#stx-null? _%tl3662836702%_)
                            (_%__kont3952839529%_
                             _%hd3662736699%_
                             _%hd3660436779%_
                             _%hd3649737182%_
                             _%hd3649437172%_)
                            (let () (declare (not safe)) (_%g3648836634%_)))))
                    (let () (declare (not safe)) (_%g3648836634%_)))
                (let () (declare (not safe)) (_%g3648836634%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3648836634%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3648836634%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3648836634%_)))
                            (let () (declare (not safe)) (_%g3648836634%_))))
                      (let () (declare (not safe)) (_%g3648836634%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3649837185%_)
                                                  (_%__kont3952239523%_
                                                   _%hd3649737182%_
                                                   _%hd3649437172%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3648836634%_)))))))
                                  (if (gx#stx-pair? _%tl3649837185%_)
                                      (let ((_%e3656436944%_
                                             (gx#syntax-e _%tl3649837185%_)))
                                        (let ((_%tl3656636951%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3656436944%_)))
                                              (_%hd3656536948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3656436944%_))))
                                          (if (gx#stx-null? _%tl3656636951%_)
                                              (_%__kont3952039521%_
                                               _%hd3656536948%_
                                               _%hd3649737182%_)
                                              (if (gx#identifier?
                                                   _%hd3656536948%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39882_|
                                                       _%hd3656536948%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3656636951%_)
                                                          (let ((_%e3658736844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3656636951%_)))
                    (let ((_%tl3658936851%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3658736844%_)))
                          (_%hd3658836848%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3658736844%_))))
                      (if (gx#stx-null? _%tl3658936851%_)
                          (_%__kont3952439525%_
                           _%hd3658836848%_
                           _%hd3649737182%_
                           _%hd3649437172%_)
                          (let () (declare (not safe)) (_%g3648836634%_)))))
                  (let () (declare (not safe)) (_%g3648836634%_)))
              (let () (declare (not safe)) (_%g3648836634%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3656536948%_)
                                                      (let ((_%e3660236771%_
                                                             (gx#stx-e
                                                              _%hd3656536948%_)))
                                                        (if (equal? _%e3660236771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3656636951%_)
                        (let ((_%e3660336775%_ (gx#syntax-e _%tl3656636951%_)))
                          (let ((_%tl3660536782%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3660336775%_)))
                                (_%hd3660436779%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3660336775%_))))
                            (if (gx#stx-null? _%tl3660536782%_)
                                (_%__kont3952639527%_
                                 _%hd3660436779%_
                                 _%hd3649737182%_
                                 _%hd3649437172%_)
                                (if (gx#stx-pair? _%tl3660536782%_)
                                    (let ((_%e3662336685%_
                                           (gx#syntax-e _%tl3660536782%_)))
                                      (let ((_%tl3662536692%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3662336685%_)))
                                            (_%hd3662436689%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3662336685%_))))
                                        (if (gx#identifier? _%hd3662436689%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39883_|
                                                 _%hd3662436689%_)
                                                (if (gx#stx-pair?
                                                     _%tl3662536692%_)
                                                    (let ((_%e3662636695%_
                                                           (gx#syntax-e
                                                            _%tl3662536692%_)))
                                                      (let ((_%tl3662836702%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3662636695%_)))
                    (_%hd3662736699%_
                     (let () (declare (not safe)) (##car _%e3662636695%_))))
                (if (gx#stx-null? _%tl3662836702%_)
                    (_%__kont3952839529%_
                     _%hd3662736699%_
                     _%hd3660436779%_
                     _%hd3649737182%_
                     _%hd3649437172%_)
                    (let () (declare (not safe)) (_%g3648836634%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3648836634%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3648836634%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3648836634%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3648836634%_))))))
                        (let () (declare (not safe)) (_%g3648836634%_)))
                    (let () (declare (not safe)) (_%g3648836634%_))))
              (let () (declare (not safe)) (_%g3648836634%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3649837185%_)
                                          (_%__kont3952239523%_
                                           _%hd3649737182%_
                                           _%hd3649437172%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3648836634%_)))))))
                          (let () (declare (not safe)) (_%g3648836634%_)))))
                  (let () (declare (not safe)) (_%g3648836634%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37277%_)
        (let* ((_%__stx3977539776%_ _%$stx37277%_)
               (_%g3728237316%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3977539776%_))))
          (let ((_%__kont3977839779%_
                 (lambda (_%L37420%_ _%L37422%_ _%L37423%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%L37423%_
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
                                       (cons _%L37422%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%L37420%_ '()))
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
                (_%__kont3978039781%_
                 (lambda (_%L37353%_ _%L37355%_ _%L37356%_)
                   (cons _%L37356%_
                         (cons _%L37355%_
                               (cons _%L37353%_
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
            (let ((_%__match3980839809%_
                   (lambda (_%e3728737380%_
                            _%hd3728837384%_
                            _%tl3728937387%_
                            _%e3729037390%_
                            _%hd3729137394%_
                            _%tl3729237397%_
                            _%e3729337400%_
                            _%hd3729437404%_
                            _%tl3729537407%_
                            _%e3729637410%_
                            _%hd3729737414%_
                            _%tl3729837417%_)
                     (let ((_%L37420%_ _%hd3729737414%_)
                           (_%L37422%_ _%hd3729437404%_)
                           (_%L37423%_ _%hd3729137394%_))
                       (if (gx#identifier? _%L37423%_)
                           (_%__kont3977839779%_
                            _%L37420%_
                            _%L37422%_
                            _%L37423%_)
                           (let () (declare (not safe)) (_%g3728237316%_)))))))
              (if (gx#stx-pair? _%__stx3977539776%_)
                  (let ((_%e3728737380%_ (gx#syntax-e _%__stx3977539776%_)))
                    (let ((_%tl3728937387%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3728737380%_)))
                          (_%hd3728837384%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3728737380%_))))
                      (if (gx#stx-pair? _%tl3728937387%_)
                          (let ((_%e3729037390%_
                                 (gx#syntax-e _%tl3728937387%_)))
                            (let ((_%tl3729237397%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3729037390%_)))
                                  (_%hd3729137394%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3729037390%_))))
                              (if (gx#stx-pair? _%tl3729237397%_)
                                  (let ((_%e3729337400%_
                                         (gx#syntax-e _%tl3729237397%_)))
                                    (let ((_%tl3729537407%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3729337400%_)))
                                          (_%hd3729437404%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3729337400%_))))
                                      (if (gx#stx-pair? _%tl3729537407%_)
                                          (let ((_%e3729637410%_
                                                 (gx#syntax-e
                                                  _%tl3729537407%_)))
                                            (let ((_%tl3729837417%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3729637410%_)))
                                                  (_%hd3729737414%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3729637410%_))))
                                              (if (gx#stx-null?
                                                   _%tl3729837417%_)
                                                  (_%__match3980839809%_
                                                   _%e3728737380%_
                                                   _%hd3728837384%_
                                                   _%tl3728937387%_
                                                   _%e3729037390%_
                                                   _%hd3729137394%_
                                                   _%tl3729237397%_
                                                   _%e3729337400%_
                                                   _%hd3729437404%_
                                                   _%tl3729537407%_
                                                   _%e3729637410%_
                                                   _%hd3729737414%_
                                                   _%tl3729837417%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3728237316%_)))))
                                          (if (gx#stx-null? _%tl3729537407%_)
                                              (_%__kont3978039781%_
                                               _%hd3729437404%_
                                               _%hd3729137394%_
                                               _%hd3728837384%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3728237316%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3728237316%_)))))
                          (let () (declare (not safe)) (_%g3728237316%_)))))
                  (let () (declare (not safe)) (_%g3728237316%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx37445%_)
        (let* ((_%g3744937464%_
                (lambda (_%g3745037460%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3745037460%_)))
               (_%g3744837507%_
                (lambda (_%g3745037468%_)
                  (if (gx#stx-pair? _%g3745037468%_)
                      (let ((_%e3745337471%_ (gx#syntax-e _%g3745037468%_)))
                        (let ((_%hd3745437475%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3745337471%_)))
                              (_%tl3745537478%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3745337471%_))))
                          (if (gx#stx-pair? _%tl3745537478%_)
                              (let ((_%e3745637481%_
                                     (gx#syntax-e _%tl3745537478%_)))
                                (let ((_%hd3745737485%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3745637481%_)))
                                      (_%tl3745837488%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3745637481%_))))
                                  ((lambda (_%L37491%_ _%L37493%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%L37493%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%L37491%_)
                                                       '()))))
                                   _%tl3745837488%_
                                   _%hd3745737485%_)))
                              (_%g3744937464%_ _%g3745037468%_))))
                      (_%g3744937464%_ _%g3745037468%_)))))
          (_%g3744837507%_ _%$stx37445%_))))))
