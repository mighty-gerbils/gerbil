(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g39838_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39839_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39840_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39841_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39842_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39843_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39844_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39845_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39846_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39847_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39848_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39849_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39850_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39851_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39852_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39865_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39873_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39874_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39875_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39880_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39881_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39882_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39883_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39884_|
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
      (lambda _%$args35137%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35137%_)))
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
      (lambda (_%stx35134%_)
        (if (gx#identifier? _%stx35134%_)
            (let ((__tmp39837 (gx#syntax-local-value _%stx35134%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp39837))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx33434%_ _%match-stx33436%_)
        (letrec ((_%parse133438%_
                  (lambda (_%hd33797%_)
                    (let* ((_%__stx3762537626%_ _%hd33797%_)
                           (_%g3382333965%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3762537626%_))))
                      (let ((_%__kont3762837629%_
                             (lambda (_%L34897%_ _%L34899%_)
                               (let* ((_%__stx3754537546%_ _%L34897%_)
                                      (_%g3491634949%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3754537546%_))))
                                 (let ((_%__kont3754837549%_
                                        (lambda ()
                                          (cons '?: (cons _%L34899%_ '()))))
                                       (_%__kont3755037551%_
                                        (lambda (_%L35090%_)
                                          (cons '?:
                                                (cons _%L34899%_
                                                      (cons (_%parse133438%_
                                                             _%L35090%_)
                                                            '())))))
                                       (_%__kont3755237553%_
                                        (lambda (_%L35060%_)
                                          (cons '?:
                                                (cons _%L34899%_
                                                      (cons '=>:
                                                            (cons (_%parse133438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L35060%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3755437555%_
                                        (lambda (_%L35011%_ _%L35013%_)
                                          (cons '?:
                                                (cons _%L34899%_
                                                      (cons '::
                                                            (cons _%L35013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse133438%_ _%L35011%_) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3755637557%_
                                        (lambda ()
                                          (_%parse-error33445%_ _%hd33797%_))))
                                   (let ((_%g3491235101%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3754537546%_)
                                                (let ((_%e3491935080%_
                                                       (gx#syntax-e
                                                        _%__stx3754537546%_)))
                                                  (let ((_%tl3492135087%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3491935080%_)))
                                                        (_%hd3492035084%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3491935080%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3492135087%_)
                                                        (_%__kont3755037551%_
                                                         _%hd3492035084%_)
                                                        (if (gx#identifier?
                                                             _%hd3492035084%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39838_|
                         _%hd3492035084%_)
                        (if (gx#stx-pair? _%tl3492135087%_)
                            (let ((_%e3492635050%_
                                   (gx#syntax-e _%tl3492135087%_)))
                              (let ((_%tl3492835057%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3492635050%_)))
                                    (_%hd3492735054%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3492635050%_))))
                                (if (gx#stx-null? _%tl3492835057%_)
                                    (_%__kont3755237553%_ _%hd3492735054%_)
                                    (_%__kont3755637557%_))))
                            (_%__kont3755637557%_))
                        (_%__kont3755637557%_))
                    (if (gx#stx-datum? _%hd3492035084%_)
                        (let ((_%e3493434977%_ (gx#stx-e _%hd3492035084%_)))
                          (if (equal? _%e3493434977%_ '::)
                              (if (gx#stx-pair? _%tl3492135087%_)
                                  (let ((_%e3493534981%_
                                         (gx#syntax-e _%tl3492135087%_)))
                                    (let ((_%tl3493734988%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3493534981%_)))
                                          (_%hd3493634985%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3493534981%_))))
                                      (if (gx#stx-pair? _%tl3493734988%_)
                                          (let ((_%e3493834991%_
                                                 (gx#syntax-e
                                                  _%tl3493734988%_)))
                                            (let ((_%tl3494034998%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3493834991%_)))
                                                  (_%hd3493934995%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3493834991%_))))
                                              (if (gx#identifier?
                                                   _%hd3493934995%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39839_|
                                                       _%hd3493934995%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3494034998%_)
                                                          (let ((_%e3494135001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3494034998%_)))
                    (let ((_%tl3494335008%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3494135001%_)))
                          (_%hd3494235005%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3494135001%_))))
                      (if (gx#stx-null? _%tl3494335008%_)
                          (_%__kont3755437555%_
                           _%hd3494235005%_
                           _%hd3493634985%_)
                          (_%__kont3755637557%_))))
                  (_%__kont3755637557%_))
              (_%__kont3755637557%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3755637557%_))))
                                          (_%__kont3755637557%_))))
                                  (_%__kont3755637557%_))
                              (_%__kont3755637557%_)))
                        (_%__kont3755637557%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3755637557%_)))))
                                     (if (gx#stx-null? _%__stx3754537546%_)
                                         (_%__kont3754837549%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3491235101%_))))))))
                            (_%__kont3763037631%_
                             (lambda (_%L34802%_)
                               (let* ((_%__stx3752737528%_ _%L34802%_)
                                      (_%g3481434825%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3752737528%_))))
                                 (let ((_%__kont3753037531%_
                                        (lambda (_%L34853%_)
                                          (_%parse133438%_ _%L34853%_)))
                                       (_%__kont3753237533%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse133438%_
                                                 _%L34802%_)))))
                                   (if (gx#stx-pair? _%__stx3752737528%_)
                                       (let ((_%e3481734843%_
                                              (gx#syntax-e
                                               _%__stx3752737528%_)))
                                         (let ((_%tl3481934850%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3481734843%_)))
                                               (_%hd3481834847%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3481734843%_))))
                                           (if (gx#stx-null? _%tl3481934850%_)
                                               (_%__kont3753037531%_
                                                _%hd3481834847%_)
                                               (_%__kont3753237533%_))))
                                       (_%__kont3753237533%_))))))
                            (_%__kont3763237633%_
                             (lambda (_%L34717%_)
                               (let* ((_%__stx3750937510%_ _%L34717%_)
                                      (_%g3472934740%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3750937510%_))))
                                 (let ((_%__kont3751237513%_
                                        (lambda (_%L34768%_)
                                          (_%parse133438%_ _%L34768%_)))
                                       (_%__kont3751437515%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse133438%_
                                                 _%L34717%_)))))
                                   (if (gx#stx-pair? _%__stx3750937510%_)
                                       (let ((_%e3473234758%_
                                              (gx#syntax-e
                                               _%__stx3750937510%_)))
                                         (let ((_%tl3473434765%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3473234758%_)))
                                               (_%hd3473334762%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3473234758%_))))
                                           (if (gx#stx-null? _%tl3473434765%_)
                                               (_%__kont3751237513%_
                                                _%hd3473334762%_)
                                               (_%__kont3751437515%_))))
                                       (_%__kont3751437515%_))))))
                            (_%__kont3763437635%_
                             (lambda (_%L34687%_)
                               (cons 'not:
                                     (cons (_%parse133438%_ _%L34687%_) '()))))
                            (_%__kont3763637637%_
                             (lambda (_%L34643%_ _%L34645%_)
                               (cons 'cons:
                                     (cons (_%parse133438%_ _%L34645%_)
                                           (cons (_%parse133438%_ _%L34643%_)
                                                 '())))))
                            (_%__kont3763837639%_
                             (lambda (_%L34587%_ _%L34589%_ _%L34590%_)
                               (if (gx#stx-null? _%L34587%_)
                                   (cons 'cons:
                                         (cons (_%parse133438%_ _%L34590%_)
                                               (cons (_%parse133438%_
                                                      _%L34589%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse133438%_ _%L34590%_)
                                               (cons (_%parse133438%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%L34589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L34587%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3764037641%_
                             (lambda (_%L34539%_)
                               (_%parse-list33440%_ _%L34539%_)))
                            (_%__kont3764237643%_
                             (lambda (_%L34509%_)
                               (cons 'box:
                                     (cons (_%parse133438%_ _%L34509%_) '()))))
                            (_%__kont3764437645%_
                             (lambda (_%L34472%_)
                               (cons 'box:
                                     (cons (_%parse133438%_ _%L34472%_) '()))))
                            (_%__kont3764637647%_
                             (lambda (_%L34448%_)
                               (_%parse133438%_ _%L34448%_)))
                            (_%__kont3764837649%_
                             (lambda (_%L34410%_)
                               (cons 'values:
                                     (cons (_%parse-vector33441%_ _%L34410%_)
                                           '()))))
                            (_%__kont3765037651%_
                             (lambda (_%L34382%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33441%_ _%L34382%_)
                                           '()))))
                            (_%__kont3765237653%_
                             (lambda (_%L34343%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33441%_
                                            (foldr (lambda (_%g3435634359%_
                                                            _%g3435734362%_)
                                                     (cons _%g3435634359%_
                                                           _%g3435734362%_))
                                                   '()
                                                   _%L34343%_))
                                           '()))))
                            (_%__kont3765637657%_
                             (lambda (_%L34289%_ _%L34291%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _%L34291%_)
                                           (cons (_%parse-vector33441%_
                                                  _%L34289%_)
                                                 '())))))
                            (_%__kont3765837659%_
                             (lambda (_%L34259%_ _%L34261%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _%L34261%_)
                                           (cons (_%parse-class-body33443%_
                                                  _%L34259%_)
                                                 '())))))
                            (_%__kont3766037661%_
                             (lambda (_%L34219%_ _%L34221%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%L34221%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%L34219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3766237663%_
                             (lambda (_%L34179%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L34179%_) '()))))
                            (_%__kont3766437665%_
                             (lambda (_%L34139%_)
                               (_%parse-qq33444%_ _%L34139%_)))
                            (_%__kont3766637667%_
                             (lambda (_%L34095%_ _%L34097%_)
                               (cons 'apply:
                                     (cons _%L34097%_
                                           (cons (_%parse133438%_ _%L34095%_)
                                                 '())))))
                            (_%__kont3766837669%_
                             (lambda (_%L34043%_)
                               (_%parse133438%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%L34043%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd33797%_)
                                  (let ((_%$e34054%_
                                         (gx#stx-source _%hd33797%_)))
                                    (if _%$e34054%_
                                        _%$e34054%_
                                        (gx#stx-source _%stx33434%_))))))))
                            (_%__kont3767037671%_
                             (lambda (_%L34017%_) (cons 'any: '())))
                            (_%__kont3767237673%_
                             (lambda (_%L34001%_)
                               (cons 'var: (cons _%L34001%_ '()))))
                            (_%__kont3767437675%_
                             (lambda (_%L33983%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L33983%_) '()))))
                            (_%__kont3767637677%_
                             (lambda () (_%parse-error33445%_ _%hd33797%_))))
                        (let* ((_%g3382133994%_
                                (lambda ()
                                  (let ((_%L33983%_ _%__stx3762537626%_))
                                    (if (gx#stx-datum? _%L33983%_)
                                        (_%__kont3767437675%_ _%L33983%_)
                                        (_%__kont3767637677%_)))))
                               (_%g3382034010%_
                                (lambda ()
                                  (let ((_%L34001%_ _%__stx3762537626%_))
                                    (if (and (gx#identifier? _%L34001%_)
                                             (not (gx#ellipsis? _%L34001%_)))
                                        (_%__kont3767237673%_ _%L34001%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3382133994%_))))))
                               (_%g3381934026%_
                                (lambda ()
                                  (let ((_%L34017%_ _%__stx3762537626%_))
                                    (if (gx#underscore? _%L34017%_)
                                        (_%__kont3767037671%_ _%L34017%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3382034010%_))))))
                               (_%__match3795237953%_
                                (lambda (_%e3395434033%_
                                         _%hd3395534037%_
                                         _%tl3395634040%_)
                                  (let ((_%L34043%_ _%hd3395534037%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%L34043%_)
                                        (_%__kont3766837669%_ _%L34043%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3381934026%_))))))
                               (_%__match3788637887%_
                                (lambda (_%e3392234199%_
                                         _%hd3392334203%_
                                         _%tl3392434206%_
                                         _%e3392534209%_
                                         _%hd3392634213%_
                                         _%tl3392734216%_)
                                  (let ((_%L34219%_ _%hd3392634213%_)
                                        (_%L34221%_ _%hd3392334203%_))
                                    (if (and (gx#identifier? _%L34221%_)
                                             (or (gx#free-identifier=?
                                                  _%L34221%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%L34221%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%L34221%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3766037661%_
                                         _%L34219%_
                                         _%L34221%_)
                                        (if (gx#identifier? _%hd3392334203%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39840_|
                                                 _%hd3392334203%_)
                                                (_%__kont3766237663%_
                                                 _%hd3392634213%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g39841_|
                                                     _%hd3392334203%_)
                                                    (_%__kont3766437665%_
                                                     _%hd3392634213%_)
                                                    (_%__match3795237953%_
                                                     _%e3392234199%_
                                                     _%hd3392334203%_
                                                     _%tl3392434206%_)))
                                            (_%__match3795237953%_
                                             _%e3392234199%_
                                             _%hd3392334203%_
                                             _%tl3392434206%_))))))
                               (_%__match3787237873%_
                                (lambda (_%e3391734249%_
                                         _%hd3391834253%_
                                         _%tl3391934256%_)
                                  (let ((_%L34259%_ _%tl3391934256%_)
                                        (_%L34261%_ _%hd3391834253%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%L34261%_))
                                        (_%__kont3765837659%_
                                         _%L34259%_
                                         _%L34261%_)
                                        (if (gx#stx-pair? _%tl3391934256%_)
                                            (let ((_%e3392534209%_
                                                   (gx#syntax-e
                                                    _%tl3391934256%_)))
                                              (let ((_%tl3392734216%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3392534209%_)))
                                                    (_%hd3392634213%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3392534209%_))))
                                                (if (gx#stx-null?
                                                     _%tl3392734216%_)
                                                    (_%__match3788637887%_
                                                     _%e3391734249%_
                                                     _%hd3391834253%_
                                                     _%tl3391934256%_
                                                     _%e3392534209%_
                                                     _%hd3392634213%_
                                                     _%tl3392734216%_)
                                                    (if (gx#identifier?
                                                         _%hd3391834253%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g39840_|
                                                             _%hd3391834253%_)
                                                            (_%__match3795237953%_
                                                             _%e3391734249%_
                                                             _%hd3391834253%_
                                                             _%tl3391934256%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39841_|
                         _%hd3391834253%_)
                        (_%__match3795237953%_
                         _%e3391734249%_
                         _%hd3391834253%_
                         _%tl3391934256%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39842_|
                             _%hd3391834253%_)
                            (if (gx#stx-pair? _%tl3392734216%_)
                                (let ((_%e3395034085%_
                                       (gx#syntax-e _%tl3392734216%_)))
                                  (let ((_%tl3395234092%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3395034085%_)))
                                        (_%hd3395134089%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3395034085%_))))
                                    (if (gx#stx-null? _%tl3395234092%_)
                                        (_%__kont3766637667%_
                                         _%hd3395134089%_
                                         _%hd3392634213%_)
                                        (_%__match3795237953%_
                                         _%e3391734249%_
                                         _%hd3391834253%_
                                         _%tl3391934256%_))))
                                (_%__match3795237953%_
                                 _%e3391734249%_
                                 _%hd3391834253%_
                                 _%tl3391934256%_))
                            (_%__match3795237953%_
                             _%e3391734249%_
                             _%hd3391834253%_
                             _%tl3391934256%_))))
                (_%__match3795237953%_
                 _%e3391734249%_
                 _%hd3391834253%_
                 _%tl3391934256%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3795237953%_
                                             _%e3391734249%_
                                             _%hd3391834253%_
                                             _%tl3391934256%_))))))
                               (_%__match3786637867%_
                                (lambda (_%e3391234279%_
                                         _%hd3391334283%_
                                         _%tl3391434286%_)
                                  (let ((_%L34289%_ _%tl3391434286%_)
                                        (_%L34291%_ _%hd3391334283%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%L34291%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3765637657%_
                                         _%L34289%_
                                         _%L34291%_)
                                        (_%__match3787237873%_
                                         _%e3391234279%_
                                         _%hd3391334283%_
                                         _%tl3391434286%_)))))
                               (_%__match3786037861%_
                                (lambda (_%e3390034309%_
                                         _%__splice3765437655%_
                                         _%target3390134313%_
                                         _%tl3390334316%_)
                                  (letrec ((_%loop3390434319%_
                                            (lambda (_%hd3390234323%_
                                                     _%body3390834326%_)
                                              (if (gx#stx-pair?
                                                   _%hd3390234323%_)
                                                  (let ((_%e3390534329%_
                                                         (gx#syntax-e
                                                          _%hd3390234323%_)))
                                                    (let ((_%lp-tl3390734336%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3390534329%_)))
                                                          (_%lp-hd3390634333%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3390534329%_))))
                                                      (_%loop3390434319%_
                                                       _%lp-tl3390734336%_
                                                       (cons _%lp-hd3390634333%_
                                                             _%body3390834326%_))))
                                                  (let ((_%body3390934339%_
                                                         (reverse _%body3390834326%_)))
                                                    (_%__kont3765237653%_
                                                     _%body3390934339%_))))))
                                    (_%loop3390434319%_
                                     _%target3390134313%_
                                     '()))))
                               (_%g3381134365%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3762537626%_)
                                      (let ((_%e3390034309%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3762537626%_))))
                                        (if (gx#stx-pair/null? _%e3390034309%_)
                                            (let ((_%__splice3765437655%_
                                                   (gx#syntax-split-splice
                                                    _%e3390034309%_
                                                    '0)))
                                              (let ((_%tl3390334316%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3765437655%_
                                                        '1)))
                                                    (_%target3390134313%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3765437655%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3390334316%_)
                                                    (_%__match3786037861%_
                                                     _%e3390034309%_
                                                     _%__splice3765437655%_
                                                     _%target3390134313%_
                                                     _%tl3390334316%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3381934026%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3381934026%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3381934026%_)))))
                               (_%g3380734482%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3762537626%_)
                                      (let ((_%e3388334468%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3762537626%_))))
                                        (_%__kont3764437645%_ _%e3388334468%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3381134365%_)))))
                               (_%__match3771437715%_
                                (lambda (_%e3383834707%_
                                         _%hd3383934711%_
                                         _%tl3384034714%_)
                                  (let ((_%L34717%_ _%tl3384034714%_))
                                    (if (gx#stx-list? _%L34717%_)
                                        (_%__kont3763237633%_ _%L34717%_)
                                        (_%__match3786637867%_
                                         _%e3383834707%_
                                         _%hd3383934711%_
                                         _%tl3384034714%_)))))
                               (_%__match3770437705%_
                                (lambda (_%e3383434792%_
                                         _%hd3383534796%_
                                         _%tl3383634799%_)
                                  (let ((_%L34802%_ _%tl3383634799%_))
                                    (if (gx#stx-list? _%L34802%_)
                                        (_%__kont3763037631%_ _%L34802%_)
                                        (_%__match3786637867%_
                                         _%e3383434792%_
                                         _%hd3383534796%_
                                         _%tl3383634799%_))))))
                          (if (gx#stx-pair? _%__stx3762537626%_)
                              (let ((_%e3382734877%_
                                     (gx#syntax-e _%__stx3762537626%_)))
                                (let ((_%tl3382934884%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3382734877%_)))
                                      (_%hd3382834881%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3382734877%_))))
                                  (if (gx#identifier? _%hd3382834881%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39843_|
                                           _%hd3382834881%_)
                                          (if (gx#stx-pair? _%tl3382934884%_)
                                              (let ((_%e3383034887%_
                                                     (gx#syntax-e
                                                      _%tl3382934884%_)))
                                                (let ((_%tl3383234894%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3383034887%_)))
                                                      (_%hd3383134891%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3383034887%_))))
                                                  (_%__kont3762837629%_
                                                   _%tl3383234894%_
                                                   _%hd3383134891%_)))
                                              (_%__match3786637867%_
                                               _%e3382734877%_
                                               _%hd3382834881%_
                                               _%tl3382934884%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39844_|
                                               _%hd3382834881%_)
                                              (_%__match3770437705%_
                                               _%e3382734877%_
                                               _%hd3382834881%_
                                               _%tl3382934884%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39845_|
                                                   _%hd3382834881%_)
                                                  (_%__match3771437715%_
                                                   _%e3382734877%_
                                                   _%hd3382834881%_
                                                   _%tl3382934884%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39846_|
                                                       _%hd3382834881%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3382934884%_)
                                                          (let ((_%e3384534677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3382934884%_)))
                    (let ((_%tl3384734684%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3384534677%_)))
                          (_%hd3384634681%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3384534677%_))))
                      (if (gx#stx-null? _%tl3384734684%_)
                          (_%__kont3763437635%_ _%hd3384634681%_)
                          (_%__match3786637867%_
                           _%e3382734877%_
                           _%hd3382834881%_
                           _%tl3382934884%_))))
                  (_%__match3786637867%_
                   _%e3382734877%_
                   _%hd3382834881%_
                   _%tl3382934884%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g39847_|
                   _%hd3382834881%_)
                  (if (gx#stx-pair? _%tl3382934884%_)
                      (let ((_%e3385334623%_ (gx#syntax-e _%tl3382934884%_)))
                        (let ((_%tl3385534630%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3385334623%_)))
                              (_%hd3385434627%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3385334623%_))))
                          (if (gx#stx-pair? _%tl3385534630%_)
                              (let ((_%e3385634633%_
                                     (gx#syntax-e _%tl3385534630%_)))
                                (let ((_%tl3385834640%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3385634633%_)))
                                      (_%hd3385734637%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3385634633%_))))
                                  (if (gx#stx-null? _%tl3385834640%_)
                                      (_%__kont3763637637%_
                                       _%hd3385734637%_
                                       _%hd3385434627%_)
                                      (_%__match3786637867%_
                                       _%e3382734877%_
                                       _%hd3382834881%_
                                       _%tl3382934884%_))))
                              (_%__match3786637867%_
                               _%e3382734877%_
                               _%hd3382834881%_
                               _%tl3382934884%_))))
                      (_%__match3786637867%_
                       _%e3382734877%_
                       _%hd3382834881%_
                       _%tl3382934884%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g39848_|
                       _%hd3382834881%_)
                      (if (gx#stx-pair? _%tl3382934884%_)
                          (let ((_%e3386534567%_
                                 (gx#syntax-e _%tl3382934884%_)))
                            (let ((_%tl3386734574%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3386534567%_)))
                                  (_%hd3386634571%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3386534567%_))))
                              (if (gx#stx-pair? _%tl3386734574%_)
                                  (let ((_%e3386834577%_
                                         (gx#syntax-e _%tl3386734574%_)))
                                    (let ((_%tl3387034584%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3386834577%_)))
                                          (_%hd3386934581%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3386834577%_))))
                                      (_%__kont3763837639%_
                                       _%tl3387034584%_
                                       _%hd3386934581%_
                                       _%hd3386634571%_)))
                                  (_%__match3786637867%_
                                   _%e3382734877%_
                                   _%hd3382834881%_
                                   _%tl3382934884%_))))
                          (_%__match3786637867%_
                           _%e3382734877%_
                           _%hd3382834881%_
                           _%tl3382934884%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g39849_|
                           _%hd3382834881%_)
                          (_%__kont3764037641%_ _%tl3382934884%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39850_|
                               _%hd3382834881%_)
                              (if (gx#stx-pair? _%tl3382934884%_)
                                  (let ((_%e3387934499%_
                                         (gx#syntax-e _%tl3382934884%_)))
                                    (let ((_%tl3388134506%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3387934499%_)))
                                          (_%hd3388034503%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3387934499%_))))
                                      (if (gx#stx-null? _%tl3388134506%_)
                                          (_%__kont3764237643%_
                                           _%hd3388034503%_)
                                          (_%__match3786637867%_
                                           _%e3382734877%_
                                           _%hd3382834881%_
                                           _%tl3382934884%_))))
                                  (_%__match3786637867%_
                                   _%e3382734877%_
                                   _%hd3382834881%_
                                   _%tl3382934884%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39851_|
                                   _%hd3382834881%_)
                                  (if (gx#stx-pair? _%tl3382934884%_)
                                      (let ((_%e3388834438%_
                                             (gx#syntax-e _%tl3382934884%_)))
                                        (let ((_%tl3389034445%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3388834438%_)))
                                              (_%hd3388934442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3388834438%_))))
                                          (if (gx#stx-null? _%tl3389034445%_)
                                              (_%__kont3764637647%_
                                               _%hd3388934442%_)
                                              (_%__kont3764837649%_
                                               _%tl3382934884%_))))
                                      (_%__kont3764837649%_ _%tl3382934884%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39852_|
                                       _%hd3382834881%_)
                                      (_%__kont3765037651%_ _%tl3382934884%_)
                                      (_%__match3786637867%_
                                       _%e3382734877%_
                                       _%hd3382834881%_
                                       _%tl3382934884%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3786637867%_
                                       _%e3382734877%_
                                       _%hd3382834881%_
                                       _%tl3382934884%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3380734482%_))))))))
                 (_%parse-list33440%_
                  (lambda (_%body33620%_)
                    (let* ((_%__stx3795537956%_ _%body33620%_)
                           (_%g3362633655%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3795537956%_))))
                      (let ((_%__kont3795837959%_
                             (lambda (_%L33779%_)
                               (_%parse133438%_ _%L33779%_)))
                            (_%__kont3796037961%_
                             (lambda (_%L33731%_ _%L33733%_ _%L33734%_)
                               (cons 'splice:
                                     (cons (_%parse133438%_ _%L33734%_)
                                           (cons (_%parse-list33440%_
                                                  _%L33731%_)
                                                 '())))))
                            (_%__kont3796237963%_
                             (lambda (_%L33689%_ _%L33691%_)
                               (cons 'cons:
                                     (cons (_%parse133438%_ _%L33691%_)
                                           (cons (_%parse-list33440%_
                                                  _%L33689%_)
                                                 '())))))
                            (_%__kont3796437965%_
                             (lambda ()
                               (if (gx#stx-null? _%body33620%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body33620%_)
                                       (_%parse-error33445%_ _%body33620%_)
                                       (_%parse133438%_ _%body33620%_))))))
                        (let* ((_%__match3800438005%_
                                (lambda (_%e3364733679%_
                                         _%hd3364833683%_
                                         _%tl3364933686%_)
                                  (let ((_%L33689%_ _%tl3364933686%_)
                                        (_%L33691%_ _%hd3364833683%_))
                                    (if (gx#ellipsis? _%L33691%_)
                                        (_%__kont3796437965%_)
                                        (_%__kont3796237963%_
                                         _%L33689%_
                                         _%L33691%_)))))
                               (_%__match3799837999%_
                                (lambda (_%e3363933711%_
                                         _%hd3364033715%_
                                         _%tl3364133718%_
                                         _%e3364233721%_
                                         _%hd3364333725%_
                                         _%tl3364433728%_)
                                  (let ((_%L33731%_ _%tl3364433728%_)
                                        (_%L33733%_ _%hd3364333725%_)
                                        (_%L33734%_ _%hd3364033715%_))
                                    (if (gx#ellipsis? _%L33733%_)
                                        (_%__kont3796037961%_
                                         _%L33731%_
                                         _%L33733%_
                                         _%L33734%_)
                                        (_%__match3800438005%_
                                         _%e3363933711%_
                                         _%hd3364033715%_
                                         _%tl3364133718%_))))))
                          (if (gx#stx-pair? _%__stx3795537956%_)
                              (let ((_%e3362933755%_
                                     (gx#syntax-e _%__stx3795537956%_)))
                                (let ((_%tl3363133762%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3362933755%_)))
                                      (_%hd3363033759%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3362933755%_))))
                                  (if (gx#stx-datum? _%hd3363033759%_)
                                      (let ((_%e3363233765%_
                                             (gx#stx-e _%hd3363033759%_)))
                                        (if (equal? _%e3363233765%_ '::)
                                            (if (gx#stx-pair? _%tl3363133762%_)
                                                (let ((_%e3363333769%_
                                                       (gx#syntax-e
                                                        _%tl3363133762%_)))
                                                  (let ((_%tl3363533776%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3363333769%_)))
                                                        (_%hd3363433773%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3363333769%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3363533776%_)
                                                        (_%__kont3795837959%_
                                                         _%hd3363433773%_)
                                                        (_%__match3799837999%_
                                                         _%e3362933755%_
                                                         _%hd3363033759%_
                                                         _%tl3363133762%_
                                                         _%e3363333769%_
                                                         _%hd3363433773%_
                                                         _%tl3363533776%_))))
                                                (_%__match3800438005%_
                                                 _%e3362933755%_
                                                 _%hd3363033759%_
                                                 _%tl3363133762%_))
                                            (if (gx#stx-pair? _%tl3363133762%_)
                                                (let ((_%e3364233721%_
                                                       (gx#syntax-e
                                                        _%tl3363133762%_)))
                                                  (let ((_%tl3364433728%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3364233721%_)))
                                                        (_%hd3364333725%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3364233721%_))))
                                                    (_%__match3799837999%_
                                                     _%e3362933755%_
                                                     _%hd3363033759%_
                                                     _%tl3363133762%_
                                                     _%e3364233721%_
                                                     _%hd3364333725%_
                                                     _%tl3364433728%_)))
                                                (_%__match3800438005%_
                                                 _%e3362933755%_
                                                 _%hd3363033759%_
                                                 _%tl3363133762%_))))
                                      (if (gx#stx-pair? _%tl3363133762%_)
                                          (let ((_%e3364233721%_
                                                 (gx#syntax-e
                                                  _%tl3363133762%_)))
                                            (let ((_%tl3364433728%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3364233721%_)))
                                                  (_%hd3364333725%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3364233721%_))))
                                              (_%__match3799837999%_
                                               _%e3362933755%_
                                               _%hd3363033759%_
                                               _%tl3363133762%_
                                               _%e3364233721%_
                                               _%hd3364333725%_
                                               _%tl3364433728%_)))
                                          (_%__match3800438005%_
                                           _%e3362933755%_
                                           _%hd3363033759%_
                                           _%tl3363133762%_)))))
                              (_%__kont3796437965%_)))))))
                 (_%parse-vector33441%_
                  (lambda (_%body33617%_)
                    (if (_%simple-vector?33442%_ _%body33617%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse133438%_ _%body33617%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list33440%_ _%body33617%_)
                                    '())))))
                 (_%simple-vector?33442%_
                  (lambda (_%body33554%_)
                    (let* ((_%__stx3800738008%_ _%body33554%_)
                           (_%g3355833570%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3800738008%_))))
                      (let ((_%__kont3801038011%_
                             (lambda (_%L33598%_ _%L33600%_)
                               (if (gx#ellipsis? _%L33600%_)
                                   '#f
                                   (_%simple-vector?33442%_ _%L33598%_))))
                            (_%__kont3801238013%_
                             (lambda () (gx#stx-null? _%body33554%_))))
                        (if (gx#stx-pair? _%__stx3800738008%_)
                            (let ((_%e3356233588%_
                                   (gx#syntax-e _%__stx3800738008%_)))
                              (let ((_%tl3356433595%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3356233588%_)))
                                    (_%hd3356333592%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3356233588%_))))
                                (_%__kont3801038011%_
                                 _%tl3356433595%_
                                 _%hd3356333592%_)))
                            (_%__kont3801238013%_))))))
                 (_%parse-class-body33443%_
                  (lambda (_%body33463%_)
                    (let _%recur33466%_ ((_%rest33469%_ _%body33463%_))
                      (let* ((_%__stx3802338024%_ _%rest33469%_)
                             (_%g3347333489%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3802338024%_))))
                        (let ((_%__kont3802638027%_
                               (lambda (_%L33527%_ _%L33529%_ _%L33530%_)
                                 (cons _%L33530%_
                                       (cons (_%parse133438%_ _%L33529%_)
                                             (_%recur33466%_ _%L33527%_)))))
                              (_%__kont3802838029%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest33469%_)
                                     '()
                                     (_%parse-error33445%_ _%rest33469%_)))))
                          (let ((_%__match3804238043%_
                                 (lambda (_%e3347833507%_
                                          _%hd3347933511%_
                                          _%tl3348033514%_
                                          _%e3348133517%_
                                          _%hd3348233521%_
                                          _%tl3348333524%_)
                                   (let ((_%L33527%_ _%tl3348333524%_)
                                         (_%L33529%_ _%hd3348233521%_)
                                         (_%L33530%_ _%hd3347933511%_))
                                     (if (gx#stx-keyword? _%L33530%_)
                                         (_%__kont3802638027%_
                                          _%L33527%_
                                          _%L33529%_
                                          _%L33530%_)
                                         (_%__kont3802838029%_))))))
                            (if (gx#stx-pair? _%__stx3802338024%_)
                                (let ((_%e3347833507%_
                                       (gx#syntax-e _%__stx3802338024%_)))
                                  (let ((_%tl3348033514%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3347833507%_)))
                                        (_%hd3347933511%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3347833507%_))))
                                    (if (gx#stx-pair? _%tl3348033514%_)
                                        (let ((_%e3348133517%_
                                               (gx#syntax-e _%tl3348033514%_)))
                                          (let ((_%tl3348333524%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3348133517%_)))
                                                (_%hd3348233521%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3348133517%_))))
                                            (_%__match3804238043%_
                                             _%e3347833507%_
                                             _%hd3347933511%_
                                             _%tl3348033514%_
                                             _%e3348133517%_
                                             _%hd3348233521%_
                                             _%tl3348333524%_)))
                                        (_%__kont3802838029%_))))
                                (_%__kont3802838029%_))))))))
                 (_%parse-qq33444%_
                  (lambda (_%hd33450%_)
                    (let ((_%g3345233459%_
                           (lambda (_%g3345333455%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3345333455%_))))
                      (_%g3345233459%_ _%hd33450%_))))
                 (_%parse-error33445%_
                  (lambda (_%hd33447%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx33436%_
                               (cons _%match-stx33436%_
                                     (cons _%stx33434%_
                                           (cons _%hd33447%_ '())))
                               (cons _%stx33434%_ (cons _%hd33447%_ '())))))))
          (_%parse133438%_ _%stx33434%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35124%_)
        (let ((_%match-stx35127%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35124%_
           _%match-stx35127%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g39854_
        (let ((_g39853_ (let () (declare (not safe)) (##length _g39854_))))
          (cond ((let () (declare (not safe)) (##fx= _g39853_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g39854_))
                ((let () (declare (not safe)) (##fx= _g39853_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g39854_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g39854_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx33419%_)
        (let ((__tmp39855
               (lambda (_%E33422%_)
                 (with-exception-handler
                  (let ((_%E!33425%_ (current-exception-handler)))
                    (lambda (_%e33428%_)
                      (if (syntax-error? _%e33428%_)
                          (_%E33422%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!33425%_ _%e33428%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx33419%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp39855))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32154%_)
        (letrec ((_%loop32157%_
                  (lambda (_%ptree32444%_ _%vars32446%_ _%K32447%_)
                    (let* ((_%__stx3814138142%_ _%ptree32444%_)
                           (_%g3246032570%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3814138142%_))))
                      (let ((_%__kont3814438145%_
                             (lambda (_%L33200%_)
                               (let* ((_%__stx3806138062%_ _%L33200%_)
                                      (_%g3321733251%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3806138062%_))))
                                 (let ((_%__kont3806438065%_
                                        (lambda (_%L33400%_)
                                          (_%loop32157%_
                                           _%L33400%_
                                           _%vars32446%_
                                           _%K32447%_)))
                                       (_%__kont3806638067%_
                                        (lambda (_%L33369%_)
                                          (_%loop32157%_
                                           _%L33369%_
                                           _%vars32446%_
                                           _%K32447%_)))
                                       (_%__kont3806838069%_
                                        (lambda (_%L33317%_)
                                          (_%loop32157%_
                                           _%L33317%_
                                           _%vars32446%_
                                           _%K32447%_)))
                                       (_%__kont3807038071%_
                                        (lambda ()
                                          (_%K32447%_ _%vars32446%_))))
                                   (if (gx#stx-pair? _%__stx3806138062%_)
                                       (let ((_%e3322033390%_
                                              (gx#syntax-e
                                               _%__stx3806138062%_)))
                                         (let ((_%tl3322233397%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3322033390%_)))
                                               (_%hd3322133394%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3322033390%_))))
                                           (if (gx#stx-null? _%tl3322233397%_)
                                               (_%__kont3806438065%_
                                                _%hd3322133394%_)
                                               (if (gx#stx-datum?
                                                    _%hd3322133394%_)
                                                   (let ((_%e3322733355%_
                                                          (gx#stx-e
                                                           _%hd3322133394%_)))
                                                     (if (equal? _%e3322733355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3322233397%_)
                     (let ((_%e3322833359%_ (gx#syntax-e _%tl3322233397%_)))
                       (let ((_%tl3323033366%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3322833359%_)))
                             (_%hd3322933363%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3322833359%_))))
                         (if (gx#stx-null? _%tl3323033366%_)
                             (_%__kont3806638067%_ _%hd3322933363%_)
                             (_%__kont3807038071%_))))
                     (_%__kont3807038071%_))
                 (if (equal? _%e3322733355%_ '::)
                     (if (gx#stx-pair? _%tl3322233397%_)
                         (let ((_%e3323633283%_
                                (gx#syntax-e _%tl3322233397%_)))
                           (let ((_%tl3323833290%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3323633283%_)))
                                 (_%hd3323733287%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3323633283%_))))
                             (if (gx#stx-pair? _%tl3323833290%_)
                                 (let ((_%e3323933293%_
                                        (gx#syntax-e _%tl3323833290%_)))
                                   (let ((_%tl3324133300%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3323933293%_)))
                                         (_%hd3324033297%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3323933293%_))))
                                     (if (gx#stx-datum? _%hd3324033297%_)
                                         (let ((_%e3324233303%_
                                                (gx#stx-e _%hd3324033297%_)))
                                           (if (equal? _%e3324233303%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3324133300%_)
                                                   (let ((_%e3324333307%_
                                                          (gx#syntax-e
                                                           _%tl3324133300%_)))
                                                     (let ((_%tl3324533314%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3324333307%_)))
                                                           (_%hd3324433311%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3324333307%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3324533314%_)
                                                           (_%__kont3806838069%_
                                                            _%hd3324433311%_)
                                                           (_%__kont3807038071%_))))
                                                   (_%__kont3807038071%_))
                                               (_%__kont3807038071%_)))
                                         (_%__kont3807038071%_))))
                                 (_%__kont3807038071%_))))
                         (_%__kont3807038071%_))
                     (_%__kont3807038071%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3807038071%_)))))
                                       (_%__kont3807038071%_))))))
                            (_%__kont3814638147%_
                             (lambda (_%L33087%_ _%L33089%_)
                               (let* ((_%__stx3804538046%_ _%L33087%_)
                                      (_%g3310533117%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3804538046%_))))
                                 (let ((_%__kont3804838049%_
                                        (lambda (_%L33145%_ _%L33147%_)
                                          (_%loop32157%_
                                           _%L33147%_
                                           _%vars32446%_
                                           (lambda (_%g3315933161%_)
                                             (_%loop32157%_
                                              (cons _%L33089%_ _%L33145%_)
                                              _%g3315933161%_
                                              _%K32447%_)))))
                                       (_%__kont3805038051%_
                                        (lambda ()
                                          (_%K32447%_ _%vars32446%_))))
                                   (if (gx#stx-pair? _%__stx3804538046%_)
                                       (let ((_%e3310933135%_
                                              (gx#syntax-e
                                               _%__stx3804538046%_)))
                                         (let ((_%tl3311133142%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3310933135%_)))
                                               (_%hd3311033139%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3310933135%_))))
                                           (_%__kont3804838049%_
                                            _%tl3311133142%_
                                            _%hd3311033139%_)))
                                       (_%__kont3805038051%_))))))
                            (_%__kont3814838149%_
                             (lambda (_%L33056%_)
                               (_%loop32157%_
                                _%L33056%_
                                _%vars32446%_
                                _%K32447%_)))
                            (_%__kont3815038151%_
                             (lambda (_%L33002%_ _%L33004%_)
                               (_%loop32157%_
                                _%L33004%_
                                _%vars32446%_
                                (lambda (_%g3301933021%_)
                                  (_%loop32157%_
                                   _%L33002%_
                                   _%g3301933021%_
                                   _%K32447%_)))))
                            (_%__kont3815238153%_
                             (lambda (_%L32938%_ _%L32940%_)
                               (_%loop32157%_
                                _%L32940%_
                                _%vars32446%_
                                (lambda (_%g3295532957%_)
                                  (_%loop32157%_
                                   _%L32938%_
                                   _%g3295532957%_
                                   _%K32447%_)))))
                            (_%__kont3815438155%_
                             (lambda (_%L32883%_)
                               (_%loop32157%_
                                _%L32883%_
                                _%vars32446%_
                                _%K32447%_)))
                            (_%__kont3815638157%_
                             (lambda (_%L32833%_ _%L32835%_)
                               (_%loop-vector32159%_
                                _%L32833%_
                                _%vars32446%_
                                _%K32447%_)))
                            (_%__kont3815838159%_
                             (lambda (_%L32790%_)
                               (_%loop-vector32159%_
                                _%L32790%_
                                _%vars32446%_
                                _%K32447%_)))
                            (_%__kont3816038161%_
                             (lambda (_%L32733%_)
                               (_%loop-class-list32161%_
                                _%L32733%_
                                _%vars32446%_
                                _%K32447%_)))
                            (_%__kont3816238163%_
                             (lambda (_%L32674%_ _%L32676%_)
                               (_%loop32157%_
                                _%L32674%_
                                _%vars32446%_
                                _%K32447%_)))
                            (_%__kont3816438165%_
                             (lambda (_%L32612%_)
                               (if (find (lambda (_%g3262732629%_)
                                           (gx#bound-identifier=?
                                            _%g3262732629%_
                                            _%L32612%_))
                                         _%vars32446%_)
                                   (_%K32447%_ _%vars32446%_)
                                   (_%K32447%_
                                    (cons _%L32612%_ _%vars32446%_)))))
                            (_%__kont3816638167%_
                             (lambda () (_%K32447%_ _%vars32446%_))))
                        (let* ((_%__match3829838299%_
                                (lambda (_%e3251732813%_
                                         _%hd3251832817%_
                                         _%tl3251932820%_
                                         _%e3252032823%_
                                         _%hd3252132827%_
                                         _%tl3252232830%_)
                                  (let ((_%L32833%_ _%hd3252132827%_)
                                        (_%L32835%_ _%hd3251832817%_))
                                    (if (or (gx#stx-eq? 'values: _%L32835%_)
                                            (gx#stx-eq? 'vector: _%L32835%_))
                                        (_%__kont3815638157%_
                                         _%L32833%_
                                         _%L32835%_)
                                        (if (gx#stx-datum? _%hd3251832817%_)
                                            (let ((_%e3252732766%_
                                                   (gx#stx-e
                                                    _%hd3251832817%_)))
                                              (if (equal? _%e3252732766%_
                                                          'struct:)
                                                  (_%__kont3816638167%_)
                                                  (if (equal? _%e3252732766%_
                                                              'class:)
                                                      (_%__kont3816638167%_)
                                                      (if (equal? _%e3252732766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3816638167%_)
                  (if (equal? _%e3252732766%_ 'var:)
                      (_%__kont3816438165%_ _%hd3252132827%_)
                      (_%__kont3816638167%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3816638167%_))))))
                               (_%__match3819238193%_
                                (lambda (_%e3247233077%_
                                         _%hd3247333081%_
                                         _%tl3247433084%_)
                                  (let ((_%L33087%_ _%tl3247433084%_)
                                        (_%L33089%_ _%hd3247333081%_))
                                    (if (or (gx#stx-eq? 'and: _%L33089%_)
                                            (gx#stx-eq? 'or: _%L33089%_))
                                        (_%__kont3814638147%_
                                         _%L33087%_
                                         _%L33089%_)
                                        (if (gx#stx-datum? _%hd3247333081%_)
                                            (let ((_%e3247933042%_
                                                   (gx#stx-e
                                                    _%hd3247333081%_)))
                                              (if (equal? _%e3247933042%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3247433084%_)
                                                      (let ((_%e3248033046%_
                                                             (gx#syntax-e
                                                              _%tl3247433084%_)))
                                                        (let ((_%tl3248233053%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3248033046%_)))
                      (_%hd3248133050%_
                       (let () (declare (not safe)) (##car _%e3248033046%_))))
                  (if (gx#stx-null? _%tl3248233053%_)
                      (_%__kont3814838149%_ _%hd3248133050%_)
                      (_%__kont3816638167%_))))
              (_%__kont3816638167%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3247933042%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3247433084%_)
                                                          (let ((_%e3248932982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3247433084%_)))
                    (let ((_%tl3249132989%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3248932982%_)))
                          (_%hd3249032986%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3248932982%_))))
                      (if (gx#stx-pair? _%tl3249132989%_)
                          (let ((_%e3249232992%_
                                 (gx#syntax-e _%tl3249132989%_)))
                            (let ((_%tl3249432999%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3249232992%_)))
                                  (_%hd3249332996%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3249232992%_))))
                              (if (gx#stx-null? _%tl3249432999%_)
                                  (_%__kont3815038151%_
                                   _%hd3249332996%_
                                   _%hd3249032986%_)
                                  (_%__kont3816638167%_))))
                          (if (gx#stx-null? _%tl3249132989%_)
                              (_%__match3829838299%_
                               _%e3247233077%_
                               _%hd3247333081%_
                               _%tl3247433084%_
                               _%e3248932982%_
                               _%hd3249032986%_
                               _%tl3249132989%_)
                              (_%__kont3816638167%_)))))
                  (_%__kont3816638167%_))
              (if (equal? _%e3247933042%_ 'splice:)
                  (if (gx#stx-pair? _%tl3247433084%_)
                      (let ((_%e3250132918%_ (gx#syntax-e _%tl3247433084%_)))
                        (let ((_%tl3250332925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3250132918%_)))
                              (_%hd3250232922%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3250132918%_))))
                          (if (gx#stx-pair? _%tl3250332925%_)
                              (let ((_%e3250432928%_
                                     (gx#syntax-e _%tl3250332925%_)))
                                (let ((_%tl3250632935%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3250432928%_)))
                                      (_%hd3250532932%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3250432928%_))))
                                  (if (gx#stx-null? _%tl3250632935%_)
                                      (_%__kont3815238153%_
                                       _%hd3250532932%_
                                       _%hd3250232922%_)
                                      (_%__kont3816638167%_))))
                              (if (gx#stx-null? _%tl3250332925%_)
                                  (_%__match3829838299%_
                                   _%e3247233077%_
                                   _%hd3247333081%_
                                   _%tl3247433084%_
                                   _%e3250132918%_
                                   _%hd3250232922%_
                                   _%tl3250332925%_)
                                  (_%__kont3816638167%_)))))
                      (_%__kont3816638167%_))
                  (if (equal? _%e3247933042%_ 'box:)
                      (if (gx#stx-pair? _%tl3247433084%_)
                          (let ((_%e3251232873%_
                                 (gx#syntax-e _%tl3247433084%_)))
                            (let ((_%tl3251432880%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3251232873%_)))
                                  (_%hd3251332877%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3251232873%_))))
                              (if (gx#stx-null? _%tl3251432880%_)
                                  (_%__kont3815438155%_ _%hd3251332877%_)
                                  (_%__kont3816638167%_))))
                          (_%__kont3816638167%_))
                      (if (gx#stx-pair? _%tl3247433084%_)
                          (let ((_%e3252032823%_
                                 (gx#syntax-e _%tl3247433084%_)))
                            (let ((_%tl3252232830%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3252032823%_)))
                                  (_%hd3252132827%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3252032823%_))))
                              (if (gx#stx-null? _%tl3252232830%_)
                                  (_%__match3829838299%_
                                   _%e3247233077%_
                                   _%hd3247333081%_
                                   _%tl3247433084%_
                                   _%e3252032823%_
                                   _%hd3252132827%_
                                   _%tl3252232830%_)
                                  (if (equal? _%e3247933042%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3252232830%_)
                                          (let ((_%e3253132780%_
                                                 (gx#syntax-e
                                                  _%tl3252232830%_)))
                                            (let ((_%tl3253332787%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3253132780%_)))
                                                  (_%hd3253232784%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3253132780%_))))
                                              (if (gx#stx-null?
                                                   _%tl3253332787%_)
                                                  (_%__kont3815838159%_
                                                   _%hd3253232784%_)
                                                  (_%__kont3816638167%_))))
                                          (_%__kont3816638167%_))
                                      (if (equal? _%e3247933042%_ 'class:)
                                          (if (gx#stx-pair? _%tl3252232830%_)
                                              (let ((_%e3254232723%_
                                                     (gx#syntax-e
                                                      _%tl3252232830%_)))
                                                (let ((_%tl3254432730%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3254232723%_)))
                                                      (_%hd3254332727%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3254232723%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3254432730%_)
                                                      (_%__kont3816038161%_
                                                       _%hd3254332727%_)
                                                      (_%__kont3816638167%_))))
                                              (_%__kont3816638167%_))
                                          (if (equal? _%e3247933042%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3252232830%_)
                                                  (let ((_%e3255432664%_
                                                         (gx#syntax-e
                                                          _%tl3252232830%_)))
                                                    (let ((_%tl3255632671%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3255432664%_)))
                                                          (_%hd3255532668%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3255432664%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3255632671%_)
                                                          (_%__kont3816238163%_
                                                           _%hd3255532668%_
                                                           _%hd3252132827%_)
                                                          (_%__kont3816638167%_))))
                                                  (_%__kont3816638167%_))
                                              (_%__kont3816638167%_)))))))
                          (_%__kont3816638167%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3247433084%_)
                                                (let ((_%e3252032823%_
                                                       (gx#syntax-e
                                                        _%tl3247433084%_)))
                                                  (let ((_%tl3252232830%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3252032823%_)))
                                                        (_%hd3252132827%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3252032823%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3252232830%_)
                                                        (_%__match3829838299%_
                                                         _%e3247233077%_
                                                         _%hd3247333081%_
                                                         _%tl3247433084%_
                                                         _%e3252032823%_
                                                         _%hd3252132827%_
                                                         _%tl3252232830%_)
                                                        (_%__kont3816638167%_))))
                                                (_%__kont3816638167%_))))))))
                          (if (gx#stx-pair? _%__stx3814138142%_)
                              (let ((_%e3246333176%_
                                     (gx#syntax-e _%__stx3814138142%_)))
                                (let ((_%tl3246533183%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3246333176%_)))
                                      (_%hd3246433180%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3246333176%_))))
                                  (if (gx#stx-datum? _%hd3246433180%_)
                                      (let ((_%e3246633186%_
                                             (gx#stx-e _%hd3246433180%_)))
                                        (if (equal? _%e3246633186%_ '?:)
                                            (if (gx#stx-pair? _%tl3246533183%_)
                                                (let ((_%e3246733190%_
                                                       (gx#syntax-e
                                                        _%tl3246533183%_)))
                                                  (let ((_%tl3246933197%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3246733190%_)))
                                                        (_%hd3246833194%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3246733190%_))))
                                                    (_%__kont3814438145%_
                                                     _%tl3246933197%_)))
                                                (_%__match3819238193%_
                                                 _%e3246333176%_
                                                 _%hd3246433180%_
                                                 _%tl3246533183%_))
                                            (_%__match3819238193%_
                                             _%e3246333176%_
                                             _%hd3246433180%_
                                             _%tl3246533183%_)))
                                      (_%__match3819238193%_
                                       _%e3246333176%_
                                       _%hd3246433180%_
                                       _%tl3246533183%_))))
                              (_%__kont3816638167%_)))))))
                 (_%loop-vector32159%_
                  (lambda (_%body32320%_ _%vars32322%_ _%K32323%_)
                    (let* ((_%__stx3839938400%_ _%body32320%_)
                           (_%g3232632349%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3839938400%_))))
                      (let ((_%__kont3840238403%_
                             (lambda (_%L32426%_)
                               (_%loop-list32160%_
                                _%L32426%_
                                _%vars32322%_
                                _%K32323%_)))
                            (_%__kont3840438405%_
                             (lambda (_%L32380%_)
                               (_%loop32157%_
                                _%L32380%_
                                _%vars32322%_
                                _%K32323%_))))
                        (if (gx#stx-pair? _%__stx3839938400%_)
                            (let ((_%e3232932402%_
                                   (gx#syntax-e _%__stx3839938400%_)))
                              (let ((_%tl3233132409%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3232932402%_)))
                                    (_%hd3233032406%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3232932402%_))))
                                (if (gx#stx-datum? _%hd3233032406%_)
                                    (let ((_%e3233232412%_
                                           (gx#stx-e _%hd3233032406%_)))
                                      (if (equal? _%e3233232412%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3233132409%_)
                                              (let ((_%e3233332416%_
                                                     (gx#syntax-e
                                                      _%tl3233132409%_)))
                                                (let ((_%tl3233532423%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3233332416%_)))
                                                      (_%hd3233432420%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3233332416%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3233532423%_)
                                                      (_%__kont3840238403%_
                                                       _%hd3233432420%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3232632349%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3232632349%_)))
                                          (if (equal? _%e3233232412%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3233132409%_)
                                                  (let ((_%e3234132370%_
                                                         (gx#syntax-e
                                                          _%tl3233132409%_)))
                                                    (let ((_%tl3234332377%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3234132370%_)))
                                                          (_%hd3234232374%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3234132370%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3234332377%_)
                                                          (_%__kont3840438405%_
                                                           _%hd3234232374%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3232632349%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3232632349%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3232632349%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3232632349%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3232632349%_)))))))
                 (_%loop-list32160%_
                  (lambda (_%rest32250%_ _%vars32252%_ _%K32253%_)
                    (let* ((_%__stx3844938450%_ _%rest32250%_)
                           (_%g3225632268%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3844938450%_))))
                      (let ((_%__kont3845238453%_
                             (lambda (_%L32296%_ _%L32298%_)
                               (_%loop32157%_
                                _%L32298%_
                                _%vars32252%_
                                (lambda (_%g3231032312%_)
                                  (_%loop-list32160%_
                                   _%L32296%_
                                   _%g3231032312%_
                                   _%K32253%_)))))
                            (_%__kont3845438455%_
                             (lambda () (_%K32253%_ _%vars32252%_))))
                        (if (gx#stx-pair? _%__stx3844938450%_)
                            (let ((_%e3226032286%_
                                   (gx#syntax-e _%__stx3844938450%_)))
                              (let ((_%tl3226232293%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3226032286%_)))
                                    (_%hd3226132290%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3226032286%_))))
                                (_%__kont3845238453%_
                                 _%tl3226232293%_
                                 _%hd3226132290%_)))
                            (_%__kont3845438455%_))))))
                 (_%loop-class-list32161%_
                  (lambda (_%rest32163%_ _%vars32165%_ _%K32166%_)
                    (let* ((_%__stx3846538466%_ _%rest32163%_)
                           (_%g3216932184%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3846538466%_))))
                      (let ((_%__kont3846838469%_
                             (lambda (_%L32222%_ _%L32224%_)
                               (_%loop32157%_
                                _%L32224%_
                                _%vars32165%_
                                (lambda (_%g3224032242%_)
                                  (_%loop-class-list32161%_
                                   _%L32222%_
                                   _%g3224032242%_
                                   _%K32166%_)))))
                            (_%__kont3847038471%_
                             (lambda () (_%K32166%_ _%vars32165%_))))
                        (if (gx#stx-pair? _%__stx3846538466%_)
                            (let ((_%e3217332202%_
                                   (gx#syntax-e _%__stx3846538466%_)))
                              (let ((_%tl3217532209%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3217332202%_)))
                                    (_%hd3217432206%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3217332202%_))))
                                (if (gx#stx-pair? _%tl3217532209%_)
                                    (let ((_%e3217632212%_
                                           (gx#syntax-e _%tl3217532209%_)))
                                      (let ((_%tl3217832219%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3217632212%_)))
                                            (_%hd3217732216%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3217632212%_))))
                                        (_%__kont3846838469%_
                                         _%tl3217832219%_
                                         _%hd3217732216%_)))
                                    (_%__kont3847038471%_))))
                            (_%__kont3847038471%_)))))))
          (_%loop32157%_ _%ptree32154%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29099%_ _%tgt29101%_ _%ptree29102%_ _%K29103%_ _%E29104%_)
        (letrec ((_%generate129106%_
                  (lambda (_%tgt30353%_ _%ptree30355%_ _%K30356%_ _%E30357%_)
                    (let* ((_%g3035930367%_
                            (lambda (_%g3036030363%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3036030363%_)))
                           (_%g3035832150%_
                            (lambda (_%g3036030371%_)
                              ((lambda (_%L30374%_)
                                 (let* ((_%__stx3870138702%_ _%ptree30355%_)
                                        (_%g3040130543%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3870138702%_))))
                                   (let ((_%__kont3870438705%_
                                          (lambda (_%L31865%_ _%L31867%_)
                                            (let* ((_%__stx3861938620%_
                                                    _%L31865%_)
                                                   (_%g3188431919%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3861938620%_))))
                                              (let ((_%__kont3862238623%_
                                                     (lambda ()
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%L31867%_ (cons _%L30374%_ '())))
                           (cons _%K30356%_ (cons _%E30357%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3862438625%_
                                                     (lambda (_%L32120%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%L31867%_ (cons _%L30374%_ '())))
                           (cons (_%generate129106%_
                                  _%tgt30353%_
                                  _%L32120%_
                                  _%K30356%_
                                  _%E30357%_)
                                 (cons _%E30357%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3862638627%_
                                                     (lambda (_%L32058%_)
                                                       (let* ((_%g3207232080%_
                                                               (lambda (_%g3207332076%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3207332076%_)))
                      (_%g3207132099%_
                       (lambda (_%g3207332084%_)
                         ((lambda (_%L32087%_)
                            (cons 'let
                                  (cons (cons (cons _%L32087%_
                                                    (cons (cons _%L31867%_
                                                                (cons _%L30374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons 'if
                                                    (cons _%L32087%_
                                                          (cons (_%generate129106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L32087%_
                         _%L32058%_
                         _%K30356%_
                         _%E30357%_)
                        (cons _%E30357%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _%g3207332084%_))))
                 (_%g3207132099%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3862838629%_
                                                     (lambda (_%L31974%_
                                                              _%L31976%_)
                                                       (let* ((_%g3199632004%_
                                                               (lambda (_%g3199732000%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3199732000%_)))
                      (_%g3199532023%_
                       (lambda (_%g3199732008%_)
                         ((lambda (_%L32011%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '?)
                                              (cons _%L31867%_
                                                    (cons _%L30374%_ '())))
                                        (cons (cons 'let
                                                    (cons (cons (cons _%L32011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons _%L31976%_ (cons _%L30374%_ '()))
                                    '()))
                        '())
                  (cons (_%generate129106%_
                         _%L32011%_
                         _%L31974%_
                         _%K30356%_
                         _%E30357%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30357%_ '())))))
                          _%g3199732008%_))))
                 (_%g3199532023%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%g3188132131%_
                                                       (lambda ()
                                                         (if (gx#stx-pair?
                                                              _%__stx3861938620%_)
                                                             (let ((_%e3188732110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%__stx3861938620%_)))
                       (let ((_%tl3188932117%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3188732110%_)))
                             (_%hd3188832114%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3188732110%_))))
                         (if (gx#stx-null? _%tl3188932117%_)
                             (_%__kont3862438625%_ _%hd3188832114%_)
                             (if (gx#stx-datum? _%hd3188832114%_)
                                 (let ((_%e3189432044%_
                                        (gx#stx-e _%hd3188832114%_)))
                                   (if (equal? _%e3189432044%_ '=>:)
                                       (if (gx#stx-pair? _%tl3188932117%_)
                                           (let ((_%e3189532048%_
                                                  (gx#syntax-e
                                                   _%tl3188932117%_)))
                                             (let ((_%tl3189732055%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3189532048%_)))
                                                   (_%hd3189632052%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3189532048%_))))
                                               (if (gx#stx-null?
                                                    _%tl3189732055%_)
                                                   (_%__kont3862638627%_
                                                    _%hd3189632052%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3188431919%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3188431919%_)))
                                       (if (equal? _%e3189432044%_ '::)
                                           (if (gx#stx-pair? _%tl3188932117%_)
                                               (let ((_%e3190431940%_
                                                      (gx#syntax-e
                                                       _%tl3188932117%_)))
                                                 (let ((_%tl3190631947%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3190431940%_)))
                                                       (_%hd3190531944%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3190431940%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3190631947%_)
                                                       (let ((_%e3190731950%_
                                                              (gx#syntax-e
                                                               _%tl3190631947%_)))
                                                         (let ((_%tl3190931957%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3190731950%_)))
                       (_%hd3190831954%_
                        (let () (declare (not safe)) (##car _%e3190731950%_))))
                   (if (gx#stx-datum? _%hd3190831954%_)
                       (let ((_%e3191031960%_ (gx#stx-e _%hd3190831954%_)))
                         (if (equal? _%e3191031960%_ '=>:)
                             (if (gx#stx-pair? _%tl3190931957%_)
                                 (let ((_%e3191131964%_
                                        (gx#syntax-e _%tl3190931957%_)))
                                   (let ((_%tl3191331971%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3191131964%_)))
                                         (_%hd3191231968%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3191131964%_))))
                                     (if (gx#stx-null? _%tl3191331971%_)
                                         (_%__kont3862838629%_
                                          _%hd3191231968%_
                                          _%hd3190531944%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3188431919%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3188431919%_)))
                             (let () (declare (not safe)) (_%g3188431919%_))))
                       (let () (declare (not safe)) (_%g3188431919%_)))))
               (let () (declare (not safe)) (_%g3188431919%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3188431919%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3188431919%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3188431919%_))))))
                     (let () (declare (not safe)) (_%g3188431919%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%__stx3861938620%_)
                                                      (_%__kont3862238623%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3188132131%_))))))))
                                         (_%__kont3870638707%_
                                          (lambda (_%L31762%_)
                                            (let* ((_%__stx3860338604%_
                                                    _%L31762%_)
                                                   (_%g3177531787%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3860338604%_))))
                                              (let ((_%__kont3860638607%_
                                                     (lambda (_%L31815%_
                                                              _%L31817%_)
                                                       (_%generate129106%_
                                                        _%tgt30353%_
                                                        _%L31817%_
                                                        (_%generate129106%_
                                                         _%tgt30353%_
                                                         (cons 'and:
                                                               _%L31815%_)
                                                         _%K30356%_
                                                         _%E30357%_)
                                                        _%E30357%_)))
                                                    (_%__kont3860838609%_
                                                     (lambda () _%K30356%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3860338604%_)
                                                    (let ((_%e3177931805%_
                                                           (gx#syntax-e
                                                            _%__stx3860338604%_)))
                                                      (let ((_%tl3178131812%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3177931805%_)))
                    (_%hd3178031809%_
                     (let () (declare (not safe)) (##car _%e3177931805%_))))
                (_%__kont3860638607%_ _%tl3178131812%_ _%hd3178031809%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3860838609%_))))))
                                         (_%__kont3870838709%_
                                          (lambda (_%L31669%_)
                                            (let* ((_%__stx3858738588%_
                                                    _%L31669%_)
                                                   (_%g3168231694%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3858738588%_))))
                                              (let ((_%__kont3859038591%_
                                                     (lambda (_%L31722%_
                                                              _%L31724%_)
                                                       (_%generate129106%_
                                                        _%tgt30353%_
                                                        _%L31724%_
                                                        _%K30356%_
                                                        (_%generate129106%_
                                                         _%tgt30353%_
                                                         (cons 'or: _%L31722%_)
                                                         _%K30356%_
                                                         _%E30357%_))))
                                                    (_%__kont3859238593%_
                                                     (lambda () _%E30357%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3858738588%_)
                                                    (let ((_%e3168631712%_
                                                           (gx#syntax-e
                                                            _%__stx3858738588%_)))
                                                      (let ((_%tl3168831719%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3168631712%_)))
                    (_%hd3168731716%_
                     (let () (declare (not safe)) (##car _%e3168631712%_))))
                (_%__kont3859038591%_ _%tl3168831719%_ _%hd3168731716%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3859238593%_))))))
                                         (_%__kont3871038711%_
                                          (lambda (_%L31634%_)
                                            (_%generate129106%_
                                             _%tgt30353%_
                                             _%L31634%_
                                             _%E30357%_
                                             _%K30356%_)))
                                         (_%__kont3871238713%_
                                          (lambda (_%L31508%_ _%L31510%_)
                                            (let* ((_%g3152731542%_
                                                    (lambda (_%g3152831538%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3152831538%_)))
                                                   (_%g3152631599%_
                                                    (lambda (_%g3152831546%_)
                                                      (if (gx#stx-pair?
                                                           _%g3152831546%_)
                                                          (let ((_%e3153131549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%g3152831546%_)))
                    (let ((_%hd3153231553%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3153131549%_)))
                          (_%tl3153331556%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3153131549%_))))
                      (if (gx#stx-pair? _%tl3153331556%_)
                          (let ((_%e3153431559%_
                                 (gx#syntax-e _%tl3153331556%_)))
                            (let ((_%hd3153531563%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3153431559%_)))
                                  (_%tl3153631566%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3153431559%_))))
                              (if (gx#stx-null? _%tl3153631566%_)
                                  ((lambda (_%L31569%_ _%L31571%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'pair?)
                                                       (cons _%L30374%_ '()))
                                                 (cons (let ((_%hd-pat31587%_
                                                              (gx#stx-e
                                                               _%L31510%_))
                                                             (_%tl-pat31589%_
                                                              (gx#stx-e
                                                               _%L31508%_)))
                                                         (if (and (equal? _%hd-pat31587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat31589%_ '(any:)))
                     _%K30356%_
                     (if (equal? _%tl-pat31589%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%L31571%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%L30374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate129106%_
                                            _%L31571%_
                                            _%L31510%_
                                            _%K30356%_
                                            _%E30357%_)
                                           '())))
                         (if (equal? _%hd-pat31587%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%L31569%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%L30374%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate129106%_
                                                _%L31569%_
                                                _%L31508%_
                                                _%K30356%_
                                                _%E30357%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%L31571%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%L30374%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L31569%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%L30374%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate129106%_
                                                _%L31571%_
                                                _%L31510%_
                                                (_%generate129106%_
                                                 _%L31569%_
                                                 _%L31508%_
                                                 _%K30356%_
                                                 _%E30357%_)
                                                _%E30357%_)
                                               '())))))))
               (cons _%E30357%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd3153531563%_
                                   _%hd3153231553%_)
                                  (_%g3152731542%_ _%g3152831546%_))))
                          (_%g3152731542%_ _%g3152831546%_))))
                  (_%g3152731542%_ _%g3152831546%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3152631599%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl))))))
                                         (_%__kont3871438715%_
                                          (lambda ()
                                            (cons 'if
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'null?)
                                                              (cons _%L30374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%K30356%_ (cons _%E30357%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3871638717%_
                                          (lambda (_%L31424%_ _%L31426%_)
                                            (_%generate-splice29108%_
                                             _%tgt30353%_
                                             _%L31426%_
                                             _%L31424%_
                                             _%K30356%_
                                             _%E30357%_)))
                                         (_%__kont3871838719%_
                                          (lambda (_%L31338%_)
                                            (let* ((_%g3135231360%_
                                                    (lambda (_%g3135331356%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3135331356%_)))
                                                   (_%g3135131379%_
                                                    (lambda (_%g3135331364%_)
                                                      ((lambda (_%L31367%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'box?)
                                   (cons _%L30374%_ '()))
                             (cons (cons 'let
                                         (cons (cons (cons _%L31367%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##unbox)
                               (cons _%L30374%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (_%generate129106%_
                                                      _%L31367%_
                                                      _%L31338%_
                                                      _%K30356%_
                                                      _%E30357%_)
                                                     '())))
                                   (cons _%E30357%_ '())))))
               _%g3135331364%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3135131379%_
                                               (gx#genident 'e)))))
                                         (_%__kont3872038721%_
                                          (lambda (_%L31143%_)
                                            (let* ((_%__stx3853738538%_
                                                    _%L31143%_)
                                                   (_%g3115831181%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3853738538%_))))
                                              (let ((_%__kont3854038541%_
                                                     (lambda (_%L31258%_)
                                                       (let* ((_%g3127231280%_
                                                               (lambda (_%g3127331276%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3127331276%_)))
                      (_%g3127131299%_
                       (lambda (_%g3127331284%_)
                         ((lambda (_%L31287%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'values-count)
                                                          (cons _%L30374%_
                                                                '()))
                                                    (cons _%L31287%_ '())))
                                        (cons (_%generate-simple-vector29109%_
                                               _%tgt30353%_
                                               _%L31258%_
                                               '0
                                               _%K30356%_
                                               _%E30357%_)
                                              (cons _%E30357%_ '())))))
                          _%g3127331284%_))))
                 (_%g3127131299%_ (gx#stx-length _%L31258%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3854238543%_
                                                     (lambda (_%L31212%_)
                                                       (_%generate-list-vector29110%_
                                                        _%tgt30353%_
                                                        _%L31212%_
                                                        'values->list
                                                        _%K30356%_
                                                        _%E30357%_))))
                                                (if (gx#stx-pair?
                                                     _%__stx3853738538%_)
                                                    (let ((_%e3116131234%_
                                                           (gx#syntax-e
                                                            _%__stx3853738538%_)))
                                                      (let ((_%tl3116331241%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3116131234%_)))
                    (_%hd3116231238%_
                     (let () (declare (not safe)) (##car _%e3116131234%_))))
                (if (gx#stx-datum? _%hd3116231238%_)
                    (let ((_%e3116431244%_ (gx#stx-e _%hd3116231238%_)))
                      (if (equal? _%e3116431244%_ 'simple:)
                          (if (gx#stx-pair? _%tl3116331241%_)
                              (let ((_%e3116531248%_
                                     (gx#syntax-e _%tl3116331241%_)))
                                (let ((_%tl3116731255%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3116531248%_)))
                                      (_%hd3116631252%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3116531248%_))))
                                  (if (gx#stx-null? _%tl3116731255%_)
                                      (_%__kont3854038541%_ _%hd3116631252%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3115831181%_)))))
                              (let () (declare (not safe)) (_%g3115831181%_)))
                          (if (equal? _%e3116431244%_ 'list:)
                              (if (gx#stx-pair? _%tl3116331241%_)
                                  (let ((_%e3117331202%_
                                         (gx#syntax-e _%tl3116331241%_)))
                                    (let ((_%tl3117531209%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3117331202%_)))
                                          (_%hd3117431206%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3117331202%_))))
                                      (if (gx#stx-null? _%tl3117531209%_)
                                          (_%__kont3854238543%_
                                           _%hd3117431206%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3115831181%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3115831181%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3115831181%_)))))
                    (let () (declare (not safe)) (_%g3115831181%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3115831181%_)))))))
                                         (_%__kont3872238723%_
                                          (lambda (_%L30948%_)
                                            (let* ((_%__stx3848738488%_
                                                    _%L30948%_)
                                                   (_%g3096330986%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3848738488%_))))
                                              (let ((_%__kont3849038491%_
                                                     (lambda (_%L31063%_)
                                                       (let* ((_%g3107731085%_
                                                               (lambda (_%g3107831081%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3107831081%_)))
                      (_%g3107631104%_
                       (lambda (_%g3107831089%_)
                         ((lambda (_%L31092%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f 'vector?)
                                              (cons _%L30374%_ '()))
                                        (cons (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _%L30374%_ '()))
                              (cons _%L31092%_ '())))
                  (cons (_%generate-simple-vector29109%_
                         _%tgt30353%_
                         _%L31063%_
                         '0
                         _%K30356%_
                         _%E30357%_)
                        (cons _%E30357%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30357%_ '())))))
                          _%g3107831089%_))))
                 (_%g3107631104%_ (gx#stx-length _%L31063%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3849238493%_
                                                     (lambda (_%L31017%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'vector?)
                                 (cons _%L30374%_ '()))
                           (cons (_%generate-list-vector29110%_
                                  _%tgt30353%_
                                  _%L31017%_
                                  'vector->list
                                  _%K30356%_
                                  _%E30357%_)
                                 (cons _%E30357%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx3848738488%_)
                                                    (let ((_%e3096631039%_
                                                           (gx#syntax-e
                                                            _%__stx3848738488%_)))
                                                      (let ((_%tl3096831046%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3096631039%_)))
                    (_%hd3096731043%_
                     (let () (declare (not safe)) (##car _%e3096631039%_))))
                (if (gx#stx-datum? _%hd3096731043%_)
                    (let ((_%e3096931049%_ (gx#stx-e _%hd3096731043%_)))
                      (if (equal? _%e3096931049%_ 'simple:)
                          (if (gx#stx-pair? _%tl3096831046%_)
                              (let ((_%e3097031053%_
                                     (gx#syntax-e _%tl3096831046%_)))
                                (let ((_%tl3097231060%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3097031053%_)))
                                      (_%hd3097131057%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3097031053%_))))
                                  (if (gx#stx-null? _%tl3097231060%_)
                                      (_%__kont3849038491%_ _%hd3097131057%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3096330986%_)))))
                              (let () (declare (not safe)) (_%g3096330986%_)))
                          (if (equal? _%e3096931049%_ 'list:)
                              (if (gx#stx-pair? _%tl3096831046%_)
                                  (let ((_%e3097831007%_
                                         (gx#syntax-e _%tl3096831046%_)))
                                    (let ((_%tl3098031014%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3097831007%_)))
                                          (_%hd3097931011%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3097831007%_))))
                                      (if (gx#stx-null? _%tl3098031014%_)
                                          (_%__kont3849238493%_
                                           _%hd3097931011%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3096330986%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3096330986%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3096330986%_)))))
                    (let () (declare (not safe)) (_%g3096330986%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3096330986%_)))))))
                                         (_%__kont3872438725%_
                                          (lambda (_%L30899%_ _%L30901%_)
                                            (_%generate-struct29111%_
                                             (gx#stx-e _%L30901%_)
                                             _%tgt30353%_
                                             _%L30899%_
                                             _%K30356%_
                                             _%E30357%_)))
                                         (_%__kont3872638727%_
                                          (lambda (_%L30840%_ _%L30842%_)
                                            (_%generate-class29114%_
                                             (gx#stx-e _%L30842%_)
                                             _%tgt30353%_
                                             _%L30840%_
                                             _%K30356%_
                                             _%E30357%_)))
                                         (_%__kont3872838729%_
                                          (lambda (_%L30737%_)
                                            (let* ((_%g3075130759%_
                                                    (lambda (_%g3075230755%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3075230755%_)))
                                                   (_%g3075030778%_
                                                    (lambda (_%g3075230763%_)
                                                      ((lambda (_%L30766%_)
                                                         (cons 'if
                                                               (cons (cons _%L30766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%L30374%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L30737%_ '()))
                                               '())))
                             (cons _%K30356%_ (cons _%E30357%_ '())))))
               _%g3075230763%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3075030778%_
                                               (let ((_%e30782%_
                                                      (gx#stx-e _%L30737%_)))
                                                 (if (or (symbol? _%e30782%_)
                                                         (keyword? _%e30782%_)
                                                         (immediate?
                                                          _%e30782%_))
                                                     '##eq?
                                                     (if (number? _%e30782%_)
                                                         'eqv?
                                                         'equal?)))))))
                                         (_%__kont3873038731%_
                                          (lambda (_%L30657%_ _%L30659%_)
                                            (let* ((_%g3067530683%_
                                                    (lambda (_%g3067630679%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3067630679%_)))
                                                   (_%g3067430702%_
                                                    (lambda (_%g3067630687%_)
                                                      ((lambda (_%L30690%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%L30690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%L30659%_
                                                     (cons _%L30374%_ '()))
                                               '()))
                                   '())
                             (cons (_%generate129106%_
                                    _%L30690%_
                                    _%L30657%_
                                    _%K30356%_
                                    _%E30357%_)
                                   '()))))
               _%g3067630687%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3067430702%_
                                               (gx#genident 'e)))))
                                         (_%__kont3873238733%_
                                          (lambda (_%L30599%_)
                                            (cons 'let
                                                  (cons (cons (cons _%L30599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L30374%_ '()))
                      '())
                (cons _%K30356%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3873438735%_
                                          (lambda () _%K30356%_)))
                                     (if (gx#stx-pair? _%__stx3870138702%_)
                                         (let ((_%e3040531841%_
                                                (gx#syntax-e
                                                 _%__stx3870138702%_)))
                                           (let ((_%tl3040731848%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e3040531841%_)))
                                                 (_%hd3040631845%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e3040531841%_))))
                                             (if (gx#stx-datum?
                                                  _%hd3040631845%_)
                                                 (let ((_%e3040831851%_
                                                        (gx#stx-e
                                                         _%hd3040631845%_)))
                                                   (if (equal? _%e3040831851%_
                                                               '?:)
                                                       (if (gx#stx-pair?
                                                            _%tl3040731848%_)
                                                           (let ((_%e3040931855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3040731848%_)))
                     (let ((_%tl3041131862%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3040931855%_)))
                           (_%hd3041031859%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3040931855%_))))
                       (_%__kont3870438705%_
                        _%tl3041131862%_
                        _%hd3041031859%_)))
                   (let () (declare (not safe)) (_%g3040130543%_)))
               (if (equal? _%e3040831851%_ 'and:)
                   (_%__kont3870638707%_ _%tl3040731848%_)
                   (if (equal? _%e3040831851%_ 'or:)
                       (_%__kont3870838709%_ _%tl3040731848%_)
                       (if (equal? _%e3040831851%_ 'not:)
                           (if (gx#stx-pair? _%tl3040731848%_)
                               (let ((_%e3042731624%_
                                      (gx#syntax-e _%tl3040731848%_)))
                                 (let ((_%tl3042931631%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3042731624%_)))
                                       (_%hd3042831628%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3042731624%_))))
                                   (if (gx#stx-null? _%tl3042931631%_)
                                       (_%__kont3871038711%_ _%hd3042831628%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3040130543%_)))))
                               (let () (declare (not safe)) (_%g3040130543%_)))
                           (if (equal? _%e3040831851%_ 'cons:)
                               (if (gx#stx-pair? _%tl3040731848%_)
                                   (let ((_%e3043631488%_
                                          (gx#syntax-e _%tl3040731848%_)))
                                     (let ((_%tl3043831495%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3043631488%_)))
                                           (_%hd3043731492%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3043631488%_))))
                                       (if (gx#stx-pair? _%tl3043831495%_)
                                           (let ((_%e3043931498%_
                                                  (gx#syntax-e
                                                   _%tl3043831495%_)))
                                             (let ((_%tl3044131505%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3043931498%_)))
                                                   (_%hd3044031502%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3043931498%_))))
                                               (if (gx#stx-null?
                                                    _%tl3044131505%_)
                                                   (_%__kont3871238713%_
                                                    _%hd3044031502%_
                                                    _%hd3043731492%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3040130543%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3040130543%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3040130543%_)))
                               (if (equal? _%e3040831851%_ 'null:)
                                   (if (gx#stx-null? _%tl3040731848%_)
                                       (_%__kont3871438715%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3040130543%_)))
                                   (if (equal? _%e3040831851%_ 'splice:)
                                       (if (gx#stx-pair? _%tl3040731848%_)
                                           (let ((_%e3045231404%_
                                                  (gx#syntax-e
                                                   _%tl3040731848%_)))
                                             (let ((_%tl3045431411%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3045231404%_)))
                                                   (_%hd3045331408%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3045231404%_))))
                                               (if (gx#stx-pair?
                                                    _%tl3045431411%_)
                                                   (let ((_%e3045531414%_
                                                          (gx#syntax-e
                                                           _%tl3045431411%_)))
                                                     (let ((_%tl3045731421%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3045531414%_)))
                                                           (_%hd3045631418%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3045531414%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3045731421%_)
                                                           (_%__kont3871638717%_
                                                            _%hd3045631418%_
                                                            _%hd3045331408%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3040130543%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3040130543%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3040130543%_)))
                                       (if (equal? _%e3040831851%_ 'box:)
                                           (if (gx#stx-pair? _%tl3040731848%_)
                                               (let ((_%e3046331328%_
                                                      (gx#syntax-e
                                                       _%tl3040731848%_)))
                                                 (let ((_%tl3046531335%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3046331328%_)))
                                                       (_%hd3046431332%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3046331328%_))))
                                                   (if (gx#stx-null?
                                                        _%tl3046531335%_)
                                                       (_%__kont3871838719%_
                                                        _%hd3046431332%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g3040130543%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3040130543%_)))
                                           (if (equal? _%e3040831851%_
                                                       'values:)
                                               (if (gx#stx-pair?
                                                    _%tl3040731848%_)
                                                   (let ((_%e3047131133%_
                                                          (gx#syntax-e
                                                           _%tl3040731848%_)))
                                                     (let ((_%tl3047331140%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3047131133%_)))
                                                           (_%hd3047231137%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3047131133%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3047331140%_)
                                                           (_%__kont3872038721%_
                                                            _%hd3047231137%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3040130543%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3040130543%_)))
                                               (if (equal? _%e3040831851%_
                                                           'vector:)
                                                   (if (gx#stx-pair?
                                                        _%tl3040731848%_)
                                                       (let ((_%e3047930938%_
                                                              (gx#syntax-e
                                                               _%tl3040731848%_)))
                                                         (let ((_%tl3048130945%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3047930938%_)))
                       (_%hd3048030942%_
                        (let () (declare (not safe)) (##car _%e3047930938%_))))
                   (if (gx#stx-null? _%tl3048130945%_)
                       (_%__kont3872238723%_ _%hd3048030942%_)
                       (let () (declare (not safe)) (_%g3040130543%_)))))
               (let () (declare (not safe)) (_%g3040130543%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (equal? _%e3040831851%_
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _%tl3040731848%_)
                                                           (let ((_%e3048830879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3040731848%_)))
                     (let ((_%tl3049030886%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3048830879%_)))
                           (_%hd3048930883%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3048830879%_))))
                       (if (gx#stx-pair? _%tl3049030886%_)
                           (let ((_%e3049130889%_
                                  (gx#syntax-e _%tl3049030886%_)))
                             (let ((_%tl3049330896%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3049130889%_)))
                                   (_%hd3049230893%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3049130889%_))))
                               (if (gx#stx-null? _%tl3049330896%_)
                                   (_%__kont3872438725%_
                                    _%hd3049230893%_
                                    _%hd3048930883%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3040130543%_)))))
                           (let () (declare (not safe)) (_%g3040130543%_)))))
                   (let () (declare (not safe)) (_%g3040130543%_)))
               (if (equal? _%e3040831851%_ 'class:)
                   (if (gx#stx-pair? _%tl3040731848%_)
                       (let ((_%e3050030820%_ (gx#syntax-e _%tl3040731848%_)))
                         (let ((_%tl3050230827%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3050030820%_)))
                               (_%hd3050130824%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3050030820%_))))
                           (if (gx#stx-pair? _%tl3050230827%_)
                               (let ((_%e3050330830%_
                                      (gx#syntax-e _%tl3050230827%_)))
                                 (let ((_%tl3050530837%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3050330830%_)))
                                       (_%hd3050430834%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3050330830%_))))
                                   (if (gx#stx-null? _%tl3050530837%_)
                                       (_%__kont3872638727%_
                                        _%hd3050430834%_
                                        _%hd3050130824%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3040130543%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g3040130543%_)))))
                       (let () (declare (not safe)) (_%g3040130543%_)))
                   (if (equal? _%e3040831851%_ 'datum:)
                       (if (gx#stx-pair? _%tl3040731848%_)
                           (let ((_%e3051130727%_
                                  (gx#syntax-e _%tl3040731848%_)))
                             (let ((_%tl3051330734%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3051130727%_)))
                                   (_%hd3051230731%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3051130727%_))))
                               (if (gx#stx-null? _%tl3051330734%_)
                                   (_%__kont3872838729%_ _%hd3051230731%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3040130543%_)))))
                           (let () (declare (not safe)) (_%g3040130543%_)))
                       (if (equal? _%e3040831851%_ 'apply:)
                           (if (gx#stx-pair? _%tl3040731848%_)
                               (let ((_%e3052030637%_
                                      (gx#syntax-e _%tl3040731848%_)))
                                 (let ((_%tl3052230644%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3052030637%_)))
                                       (_%hd3052130641%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3052030637%_))))
                                   (if (gx#stx-pair? _%tl3052230644%_)
                                       (let ((_%e3052330647%_
                                              (gx#syntax-e _%tl3052230644%_)))
                                         (let ((_%tl3052530654%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3052330647%_)))
                                               (_%hd3052430651%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3052330647%_))))
                                           (if (gx#stx-null? _%tl3052530654%_)
                                               (_%__kont3873038731%_
                                                _%hd3052430651%_
                                                _%hd3052130641%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3040130543%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g3040130543%_)))))
                               (let () (declare (not safe)) (_%g3040130543%_)))
                           (if (equal? _%e3040831851%_ 'var:)
                               (if (gx#stx-pair? _%tl3040731848%_)
                                   (let ((_%e3053130589%_
                                          (gx#syntax-e _%tl3040731848%_)))
                                     (let ((_%tl3053330596%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3053130589%_)))
                                           (_%hd3053230593%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3053130589%_))))
                                       (if (gx#stx-null? _%tl3053330596%_)
                                           (_%__kont3873238733%_
                                            _%hd3053230593%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g3040130543%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3040130543%_)))
                               (if (equal? _%e3040831851%_ 'any:)
                                   (if (gx#stx-null? _%tl3040731848%_)
                                       (_%__kont3873438735%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3040130543%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3040130543%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3040130543%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3040130543%_))))))
                               _%g3036030371%_))))
                      (_%g3035832150%_ _%tgt30353%_))))
                 (_%generate-splice29108%_
                  (lambda (_%tgt29725%_
                           _%hd29727%_
                           _%rest29728%_
                           _%K29729%_
                           _%E29730%_)
                    (let* ((_%g2973229749%_
                            (lambda (_%g2973329745%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2973329745%_)))
                           (_%g2973130349%_
                            (lambda (_%g2973329753%_)
                              (if (gx#stx-pair/null? _%g2973329753%_)
                                  (let ((_g39856_
                                         (gx#syntax-split-splice
                                          _%g2973329753%_
                                          '0)))
                                    (begin
                                      (let ((_g39857_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g39856_)
                                                   (##vector-length _g39856_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g39857_ 2)))
                                            (error "Context expects 2 values"
                                                   _g39857_)))
                                      (let ((_%target2973529756%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g39856_ 0)))
                                            (_%tl2973729759%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g39856_ 1))))
                                        (if (gx#stx-null? _%tl2973729759%_)
                                            (letrec ((_%loop2973829762%_
                                                      (lambda (_%hd2973629766%_
                                                               _%var2974229769%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2973629766%_)
                                                            (let ((_%e2973929772%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2973629766%_)))
                      (let ((_%lp-hd2974029776%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2973929772%_)))
                            (_%lp-tl2974129779%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2973929772%_))))
                        (_%loop2973829762%_
                         _%lp-tl2974129779%_
                         (cons _%lp-hd2974029776%_ _%var2974229769%_))))
                    (let ((_%var2974329782%_ (reverse _%var2974229769%_)))
                      ((lambda (_%L29786%_)
                         (let* ((_%g2980229819%_
                                 (lambda (_%g2980329815%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2980329815%_)))
                                (_%g2980130337%_
                                 (lambda (_%g2980329823%_)
                                   (if (gx#stx-pair/null? _%g2980329823%_)
                                       (let ((_g39858_
                                              (gx#syntax-split-splice
                                               _%g2980329823%_
                                               '0)))
                                         (begin
                                           (let ((_g39859_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g39858_)
                                                        (##vector-length
                                                         _g39858_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g39859_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g39859_)))
                                           (let ((_%target2980529826%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g39858_ 0)))
                                                 (_%tl2980729829%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g39858_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2980729829%_)
                                                 (letrec ((_%loop2980829832%_
                                                           (lambda (_%hd2980629836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%var-r2981229839%_)
                     (if (gx#stx-pair? _%hd2980629836%_)
                         (let ((_%e2980929842%_
                                (gx#syntax-e _%hd2980629836%_)))
                           (let ((_%lp-hd2981029846%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2980929842%_)))
                                 (_%lp-tl2981129849%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2980929842%_))))
                             (_%loop2980829832%_
                              _%lp-tl2981129849%_
                              (cons _%lp-hd2981029846%_ _%var-r2981229839%_))))
                         (let ((_%var-r2981329852%_
                                (reverse _%var-r2981229839%_)))
                           ((lambda (_%L29856%_)
                              (let* ((_%g2987329890%_
                                      (lambda (_%g2987429886%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2987429886%_)))
                                     (_%g2987230325%_
                                      (lambda (_%g2987429894%_)
                                        (if (gx#stx-pair/null? _%g2987429894%_)
                                            (let ((_g39860_
                                                   (gx#syntax-split-splice
                                                    _%g2987429894%_
                                                    '0)))
                                              (begin
                                                (let ((_g39861_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g39860_)
                                                             (##vector-length
                                                              _g39860_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g39861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g39861_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2987629897%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g39860_
                                                          0)))
                                                      (_%tl2987829900%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g39860_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2987829900%_)
                                                      (letrec ((_%loop2987929903%_
                                                                (lambda (_%hd2987729907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%init2988329910%_)
                          (if (gx#stx-pair? _%hd2987729907%_)
                              (let ((_%e2988029913%_
                                     (gx#syntax-e _%hd2987729907%_)))
                                (let ((_%lp-hd2988129917%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2988029913%_)))
                                      (_%lp-tl2988229920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2988029913%_))))
                                  (_%loop2987929903%_
                                   _%lp-tl2988229920%_
                                   (cons _%lp-hd2988129917%_
                                         _%init2988329910%_))))
                              (let ((_%init2988429923%_
                                     (reverse _%init2988329910%_)))
                                ((lambda (_%L29927%_)
                                   (let* ((_%g2994429952%_
                                           (lambda (_%g2994529948%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2994529948%_)))
                                          (_%g2994330321%_
                                           (lambda (_%g2994529956%_)
                                             ((lambda (_%L29959%_)
                                                (let* ((_%g2997229980%_
                                                        (lambda (_%g2997329976%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2997329976%_)))
                                                       (_%g2997130317%_
                                                        (lambda (_%g2997329984%_)
                                                          ((lambda (_%L29987%_)
                                                             (let* ((_%g3000030008%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g3000130004%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g3000130004%_)))
                            (_%g2999930313%_
                             (lambda (_%g3000130012%_)
                               ((lambda (_%L30015%_)
                                  (let* ((_%g3002830036%_
                                          (lambda (_%g3002930032%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3002930032%_)))
                                         (_%g3002730309%_
                                          (lambda (_%g3002930040%_)
                                            ((lambda (_%L30043%_)
                                               (let* ((_%g3005630064%_
                                                       (lambda (_%g3005730060%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g3005730060%_)))
                                                      (_%g3005530305%_
                                                       (lambda (_%g3005730068%_)
                                                         ((lambda (_%L30071%_)
                                                            (let* ((_%g3008430092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3008530088%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3008530088%_)))
                           (_%g3008330301%_
                            (lambda (_%g3008530096%_)
                              ((lambda (_%L30099%_)
                                 (let* ((_%g3011230120%_
                                         (lambda (_%g3011330116%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3011330116%_)))
                                        (_%g3011130297%_
                                         (lambda (_%g3011330124%_)
                                           ((lambda (_%L30127%_)
                                              (let* ((_%g3014030148%_
                                                      (lambda (_%g3014130144%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3014130144%_)))
                                                     (_%g3013930282%_
                                                      (lambda (_%g3014130152%_)
                                                        ((lambda (_%L30155%_)
                                                           (let* ((_%g3016830176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g3016930172%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3016930172%_)))
                          (_%g3016730270%_
                           (lambda (_%g3016930180%_)
                             ((lambda (_%L30183%_)
                                (let* ((_%g3019630204%_
                                        (lambda (_%g3019730200%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3019730200%_)))
                                       (_%g3019530266%_
                                        (lambda (_%g3019730208%_)
                                          ((lambda (_%L30211%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%L29987%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%L30099%_
                                                     (foldr (lambda (_%g3023330236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g3023430239%_)
                      (cons _%g3023330236%_ _%g3023430239%_))
                    '()
                    _%L29786%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L30127%_ '())))
                                   '()))
                       (cons (cons _%L30043%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%L30071%_
                                                           (cons _%L30099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3023130242%_ _%g3023230245%_)
                                  (cons _%g3023130242%_ _%g3023230245%_))
                                '()
                                _%L29856%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%L30211%_ '())))
                                         '()))
                             (cons (cons _%L30015%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%L30099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3022930248%_ _%g3023030251%_)
                                  (cons _%g3022930248%_ _%g3023030251%_))
                                '()
                                _%L29856%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%L30099%_ '()))
                                     (cons (cons _%L30043%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%L30099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%L30099%_
                     (foldr (lambda (_%g3022730254%_ _%g3022830257%_)
                              (cons _%g3022730254%_ _%g3022830257%_))
                            '()
                            _%L29856%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%L30183%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%L30015%_
                             (cons _%L29959%_
                                   (foldr (lambda (_%g3022530260%_
                                                   _%g3022630263%_)
                                            (cons _%g3022530260%_
                                                  _%g3022630263%_))
                                          '()
                                          _%L29927%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3019730208%_))))
                                  (_%g3019530266%_
                                   (_%generate129106%_
                                    _%L30071%_
                                    _%hd29727%_
                                    _%L30155%_
                                    _%L30183%_))))
                              _%g3016930180%_))))
                     (_%g3016730270%_
                      (cons _%L29987%_
                            (cons _%L30099%_
                                  (foldr (lambda (_%g3027330276%_
                                                  _%g3027430279%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%g3027330276%_
                                                             '()))
                                                 _%g3027430279%_))
                                         '()
                                         _%L29856%_))))))
                 _%g3014130152%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3013930282%_
                                                 (cons _%L30015%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%L30099%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets _%L29856%_ _%L29786%_)
                       (foldr (lambda (_%g3028530289%_
                                       _%g3028630292%_
                                       _%g3028730294%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%g3028630292%_
                                                  (cons _%g3028530289%_ '())))
                                      _%g3028730294%_))
                              '()
                              _%L29856%_
                              _%L29786%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g3011330124%_))))
                                   (_%g3011130297%_
                                    (_%generate129106%_
                                     _%L30099%_
                                     _%rest29728%_
                                     _%K29729%_
                                     _%E29730%_))))
                               _%g3008530096%_))))
                      (_%g3008330301%_ (gx#genident 'rest))))
                  _%g3005730068%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3005530305%_
                                                  (gx#genident 'hd))))
                                             _%g3002930040%_))))
                                    (_%g3002730309%_
                                     (gx#genident 'splice-try))))
                                _%g3000130012%_))))
                       (_%g2999930313%_ (gx#genident 'splice-loop))))
                   _%g2997329984%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2997130317%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%g2994529956%_))))
                                     (_%g2994330321%_ _%tgt29725%_)))
                                 _%init2988429923%_))))))
                (_%loop2987929903%_ _%target2987629897%_ '()))
              (_%g2987329890%_ _%g2987429894%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2987329890%_
                                             _%g2987429894%_)))))
                                (_%g2987230325%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%g3032830331%_
                                                   _%g3032930334%_)
                                            (cons _%g3032830331%_
                                                  _%g3032930334%_))
                                          '()
                                          _%L29786%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%var-r2981329852%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2980829832%_
                                                    _%target2980529826%_
                                                    '()))
                                                 (_%g2980229819%_
                                                  _%g2980329823%_)))))
                                       (_%g2980229819%_ _%g2980329823%_)))))
                           (_%g2980130337%_
                            (gx#gentemps
                             (foldr (lambda (_%g3034030343%_ _%g3034130346%_)
                                      (cons _%g3034030343%_ _%g3034130346%_))
                                    '()
                                    _%L29786%_)))))
                       _%var2974329782%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2973829762%_
                                               _%target2973529756%_
                                               '()))
                                            (_%g2973229749%_
                                             _%g2973329753%_)))))
                                  (_%g2973229749%_ _%g2973329753%_)))))
                      (_%g2973130349%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd29727%_)))))
                 (_%generate-simple-vector29109%_
                  (lambda (_%tgt29567%_
                           _%body29569%_
                           _%start29570%_
                           _%K29571%_
                           _%E29572%_)
                    (let _%recur29574%_ ((_%rest29577%_ _%body29569%_)
                                         (_%off29579%_ _%start29570%_))
                      (let* ((_%__stx3905939060%_ _%rest29577%_)
                             (_%g2958229594%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3905939060%_))))
                        (let ((_%__kont3906239063%_
                               (lambda (_%L29622%_ _%L29624%_)
                                 (let* ((_%g2963929658%_
                                         (lambda (_%g2964029654%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2964029654%_)))
                                        (_%g2963829717%_
                                         (lambda (_%g2964029662%_)
                                           (if (gx#stx-pair? _%g2964029662%_)
                                               (let ((_%e2964429665%_
                                                      (gx#syntax-e
                                                       _%g2964029662%_)))
                                                 (let ((_%hd2964529669%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2964429665%_)))
                                                       (_%tl2964629672%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2964429665%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2964629672%_)
                                                       (let ((_%e2964729675%_
                                                              (gx#syntax-e
                                                               _%tl2964629672%_)))
                                                         (let ((_%hd2964829679%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2964729675%_)))
                       (_%tl2964929682%_
                        (let () (declare (not safe)) (##cdr _%e2964729675%_))))
                   (if (gx#stx-pair? _%tl2964929682%_)
                       (let ((_%e2965029685%_ (gx#syntax-e _%tl2964929682%_)))
                         (let ((_%hd2965129689%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e2965029685%_)))
                               (_%tl2965229692%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e2965029685%_))))
                           (if (gx#stx-null? _%tl2965229692%_)
                               ((lambda (_%L29695%_ _%L29697%_ _%L29698%_)
                                  (cons 'let
                                        (cons (cons (cons _%L29698%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##vector-ref)
                              (cons _%L29697%_ (cons _%L29695%_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (_%generate129106%_
                                                     _%L29698%_
                                                     _%L29624%_
                                                     (_%recur29574%_
                                                      _%L29622%_
                                                      (fx1+ _%off29579%_))
                                                     _%E29572%_)
                                                    '()))))
                                _%hd2965129689%_
                                _%hd2964829679%_
                                _%hd2964529669%_)
                               (_%g2963929658%_ _%g2964029662%_))))
                       (_%g2963929658%_ _%g2964029662%_))))
               (_%g2963929658%_ _%g2964029662%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2963929658%_
                                                _%g2964029662%_)))))
                                   (_%g2963829717%_
                                    (list (gx#genident 'e)
                                          _%tgt29567%_
                                          _%off29579%_)))))
                              (_%__kont3906439065%_ (lambda () _%K29571%_)))
                          (if (gx#stx-pair? _%__stx3905939060%_)
                              (let ((_%e2958629612%_
                                     (gx#syntax-e _%__stx3905939060%_)))
                                (let ((_%tl2958829619%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2958629612%_)))
                                      (_%hd2958729616%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2958629612%_))))
                                  (_%__kont3906239063%_
                                   _%tl2958829619%_
                                   _%hd2958729616%_)))
                              (_%__kont3906439065%_)))))))
                 (_%generate-list-vector29110%_
                  (lambda (_%tgt29459%_
                           _%body29461%_
                           _%->list29462%_
                           _%K29463%_
                           _%E29464%_)
                    (let* ((_%g2946629474%_
                            (lambda (_%g2946729470%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2946729470%_)))
                           (_%g2946529563%_
                            (lambda (_%g2946729478%_)
                              ((lambda (_%L29481%_)
                                 (let* ((_%g2949329501%_
                                         (lambda (_%g2949429497%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2949429497%_)))
                                        (_%g2949229559%_
                                         (lambda (_%g2949429505%_)
                                           ((lambda (_%L29508%_)
                                              (let* ((_%g2952129529%_
                                                      (lambda (_%g2952229525%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2952229525%_)))
                                                     (_%g2952029551%_
                                                      (lambda (_%g2952229533%_)
                                                        ((lambda (_%L29536%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%L29481%_ (cons _%L29536%_ '()))
                                     '())
                               (cons (_%generate129106%_
                                      _%L29481%_
                                      _%body29461%_
                                      _%K29463%_
                                      _%E29464%_)
                                     '()))))
                 _%g2952229533%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2952029551%_
                                                 (let ((_%$e29555%_
                                                        _%->list29462%_))
                                                   (if (eq? 'values->list
                                                            _%$e29555%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%L29508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e29555%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%L29508%_ '()))
                   (if (eq? 'struct->list _%$e29555%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          '##structure->list)
                                         (cons _%L29508%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx29099%_
                        _%->list29462%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2949429505%_))))
                                   (_%g2949229559%_ _%tgt29459%_)))
                               _%g2946729478%_))))
                      (_%g2946529563%_ (gx#genident 'e)))))
                 (_%generate-struct29111%_
                  (lambda (_%info29330%_
                           _%tgt29332%_
                           _%body29333%_
                           _%K29334%_
                           _%E29335%_)
                    (let* ((_%__stx3907539076%_ _%body29333%_)
                           (_%g2933829361%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3907539076%_))))
                      (let ((_%__kont3907839079%_
                             (lambda (_%L29438%_)
                               (let ((_%fields29452%_
                                      (_%struct-field-accessors29113%_
                                       _%info29330%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj39829
                                                          _%info29330%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj39829
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj39829
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj39829
                                                          'predicate)))
                                                   (cons _%tgt29332%_ '()))
                                             (cons (_%generate-simple-struct-body29112%_
                                                    _%info29330%_
                                                    _%tgt29332%_
                                                    _%L29438%_
                                                    _%K29334%_
                                                    _%E29335%_)
                                                   (cons _%E29335%_ '())))))))
                            (_%__kont3908039081%_
                             (lambda (_%L29392%_)
                               (cons 'if
                                     (cons (cons (let ((__obj39830
                                                        _%info29330%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj39830
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj39830
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj39830
                                                        'predicate)))
                                                 (cons _%tgt29332%_ '()))
                                           (cons (_%generate-list-vector29110%_
                                                  _%tgt29332%_
                                                  _%L29392%_
                                                  'struct->list
                                                  _%K29334%_
                                                  _%E29335%_)
                                                 (cons _%E29335%_ '())))))))
                        (if (gx#stx-pair? _%__stx3907539076%_)
                            (let ((_%e2934129414%_
                                   (gx#syntax-e _%__stx3907539076%_)))
                              (let ((_%tl2934329421%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2934129414%_)))
                                    (_%hd2934229418%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2934129414%_))))
                                (if (gx#stx-datum? _%hd2934229418%_)
                                    (let ((_%e2934429424%_
                                           (gx#stx-e _%hd2934229418%_)))
                                      (if (equal? _%e2934429424%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2934329421%_)
                                              (let ((_%e2934529428%_
                                                     (gx#syntax-e
                                                      _%tl2934329421%_)))
                                                (let ((_%tl2934729435%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2934529428%_)))
                                                      (_%hd2934629432%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2934529428%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2934729435%_)
                                                      (_%__kont3907839079%_
                                                       _%hd2934629432%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2933829361%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2933829361%_)))
                                          (if (equal? _%e2934429424%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2934329421%_)
                                                  (let ((_%e2935329382%_
                                                         (gx#syntax-e
                                                          _%tl2934329421%_)))
                                                    (let ((_%tl2935529389%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2935329382%_)))
                                                          (_%hd2935429386%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2935329382%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2935529389%_)
                                                          (_%__kont3908039081%_
                                                           _%hd2935429386%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2933829361%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2933829361%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2933829361%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2933829361%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2933829361%_)))))))
                 (_%generate-simple-struct-body29112%_
                  (lambda (_%info29250%_
                           _%tgt29252%_
                           _%body29253%_
                           _%K29254%_
                           _%E29255%_)
                    (let _%recur29257%_ ((_%rest29260%_ _%body29253%_)
                                         (_%fields29262%_
                                          (_%struct-field-accessors29113%_
                                           _%info29250%_)))
                      (let* ((_%__stx3912539126%_ _%rest29260%_)
                             (_%g2926529277%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3912539126%_))))
                        (let ((_%__kont3912839129%_
                               (lambda (_%L29305%_ _%L29307%_)
                                 (if (null? _%fields29262%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29099%_
                                      _%info29250%_
                                      (let ((__obj39831 _%info29250%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39831
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39831
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39831
                                             'name))))
                                     (let ((_%$tgt29322%_ (gx#genident 'e))
                                           (_%getf29324%_
                                            (car _%fields29262%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29322%_
                                                               (cons (cons _%getf29324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29252%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129106%_
                                                          _%$tgt29322%_
                                                          _%L29307%_
                                                          (_%recur29257%_
                                                           _%L29305%_
                                                           (cdr _%fields29262%_))
                                                          _%E29255%_)
                                                         '())))))))
                              (_%__kont3913039131%_ (lambda () _%K29254%_)))
                          (if (gx#stx-pair? _%__stx3912539126%_)
                              (let ((_%e2926929295%_
                                     (gx#syntax-e _%__stx3912539126%_)))
                                (let ((_%tl2927129302%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2926929295%_)))
                                      (_%hd2927029299%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2926929295%_))))
                                  (_%__kont3912839129%_
                                   _%tl2927129302%_
                                   _%hd2927029299%_)))
                              (_%__kont3913039131%_)))))))
                 (_%struct-field-accessors29113%_
                  (lambda (_%info29231%_)
                    (let _%recur29234%_ ((_%next29237%_
                                          (cons _%info29231%_ '())))
                      (if (null? _%next29237%_)
                          '()
                          (let ((_%ti29240%_ (car _%next29237%_)))
                            (let ((__tmp39863
                                   (_%recur29234%_
                                    (map gx#syntax-local-value
                                         (let ((__obj39832 _%ti29240%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj39832
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj39832
                                                  '3
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj39832
                                                'super))))))
                                  (__tmp39862
                                   (map (lambda (_%slot29243%_)
                                          (let ((_%$e29246%_
                                                 (agetq _%slot29243%_
                                                        (let ((__obj39833
                                                               _%ti29240%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj39833
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj39833 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj39833
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29246%_
                                                _%$e29246%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29099%_
                                                 _%info29231%_
                                                 _%slot29243%_))))
                                        (let ((__obj39834 _%ti29240%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj39834
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj39834
                                                 '4
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj39834
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp39863 __tmp39862)))))))
                 (_%generate-class29114%_
                  (lambda (_%info29224%_
                           _%tgt29226%_
                           _%body29227%_
                           _%K29228%_
                           _%E29229%_)
                    (cons 'if
                          (cons (cons (let ((__obj39835 _%info29224%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39835
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39835
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39835
                                             'predicate)))
                                      (cons _%tgt29226%_ '()))
                                (cons (_%generate-class-body29115%_
                                       _%info29224%_
                                       _%tgt29226%_
                                       _%body29227%_
                                       _%K29228%_
                                       _%E29229%_)
                                      (cons _%E29229%_ '()))))))
                 (_%generate-class-body29115%_
                  (lambda (_%info29117%_
                           _%tgt29119%_
                           _%body29120%_
                           _%K29121%_
                           _%E29122%_)
                    (let _%recur29124%_ ((_%rest29127%_ _%body29120%_))
                      (let* ((_%__stx3914139142%_ _%rest29127%_)
                             (_%g2913129147%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3914139142%_))))
                        (let ((_%__kont3914439145%_
                               (lambda (_%L29185%_ _%L29187%_ _%L29188%_)
                                 (let ((_%$e29208%_
                                        (agetq (let ((__tmp39864
                                                      (keyword->string
                                                       (gx#stx-e _%L29188%_))))
                                                 (declare (not safe))
                                                 (##string->symbol __tmp39864))
                                               (let ((__obj39836
                                                      _%info29117%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj39836
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj39836
                                                        '17
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj39836
                                                      'unchecked-accessors))))))
                                   (if _%$e29208%_
                                       ((lambda (_%getf29212%_)
                                          (let ((_%$tgt29215%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt29215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf29212%_ (cons _%tgt29119%_ '()))
                                  '()))
                      '())
                (cons (_%generate129106%_
                       _%$tgt29215%_
                       _%L29187%_
                       (_%recur29124%_ _%L29185%_)
                       _%E29122%_)
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e29208%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx29099%_
                                        _%info29117%_
                                        _%L29188%_)))))
                              (_%__kont3914639147%_ (lambda () _%K29121%_)))
                          (if (gx#stx-pair? _%__stx3914139142%_)
                              (let ((_%e2913629165%_
                                     (gx#syntax-e _%__stx3914139142%_)))
                                (let ((_%tl2913829172%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2913629165%_)))
                                      (_%hd2913729169%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2913629165%_))))
                                  (if (gx#stx-pair? _%tl2913829172%_)
                                      (let ((_%e2913929175%_
                                             (gx#syntax-e _%tl2913829172%_)))
                                        (let ((_%tl2914129182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2913929175%_)))
                                              (_%hd2914029179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2913929175%_))))
                                          (_%__kont3914439145%_
                                           _%tl2914129182%_
                                           _%hd2914029179%_
                                           _%hd2913729169%_)))
                                      (_%__kont3914639147%_))))
                              (_%__kont3914639147%_))))))))
          (_%generate129106%_
           _%tgt29101%_
           _%ptree29102%_
           _%K29103%_
           _%E29104%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx27912%_ _%tgt-lst27914%_ _%clauses27915%_)
        (letrec ((_%parse-body27917%_
                  (lambda (_%hd-len28921%_)
                    (let _%lp28924%_ ((_%rest28927%_ _%clauses27915%_)
                                      (_%r28929%_ '()))
                      (let* ((_%__stx3919139192%_ _%rest28927%_)
                             (_%g2893228944%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3919139192%_))))
                        (let ((_%__kont3919439195%_
                               (lambda (_%L28972%_ _%L28974%_)
                                 (let* ((_%__stx3916339164%_ _%L28974%_)
                                        (_%g2899129007%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3916339164%_))))
                                   (let ((_%__kont3916639167%_
                                          (lambda (_%L29076%_)
                                            (if (gx#stx-null? _%L28972%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%L29076%_)
                                 (let ((_%$e29087%_
                                        (gx#stx-source _%L28974%_)))
                                   (if _%$e29087%_
                                       _%$e29087%_
                                       (gx#stx-source _%stx27912%_))))
                                '())))
              _%r28929%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx27912%_
                                                 _%L28974%_))))
                                         (_%__kont3916839169%_
                                          (lambda (_%L29035%_ _%L29037%_)
                                            (_%lp28924%_
                                             _%L28972%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g2904929051%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g2904929051%_
                           _%stx27912%_))
                        _%L29037%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin) _%L29035%_)
                              (let ((_%$e29055%_ (gx#stx-source _%L28974%_)))
                                (if _%$e29055%_
                                    _%$e29055%_
                                    (gx#stx-source _%stx27912%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r28929%_))))
                                         (_%__kont3917039171%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx27912%_
                                             _%L28974%_))))
                                     (let* ((_%__match3918839189%_
                                             (lambda (_%e2899929025%_
                                                      _%hd2900029029%_
                                                      _%tl2900129032%_)
                                               (let ((_%L29035%_
                                                      _%tl2900129032%_)
                                                     (_%L29037%_
                                                      _%hd2900029029%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29037%_)
                                                          (fx= (gx#stx-length
                                                                _%L29037%_)
                                                               _%hd-len28921%_)
                                                          (gx#stx-list?
                                                           _%L29035%_)
                                                          (not (gx#stx-null?
                                                                _%L29035%_)))
                                                     (_%__kont3916839169%_
                                                      _%L29035%_
                                                      _%L29037%_)
                                                     (_%__kont3917039171%_)))))
                                            (_%__match3918239183%_
                                             (lambda (_%e2899429066%_
                                                      _%hd2899529070%_
                                                      _%tl2899629073%_)
                                               (let ((_%L29076%_
                                                      _%tl2899629073%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29076%_)
                                                          (not (gx#stx-null?
                                                                _%L29076%_)))
                                                     (_%__kont3916639167%_
                                                      _%L29076%_)
                                                     (_%__match3918839189%_
                                                      _%e2899429066%_
                                                      _%hd2899529070%_
                                                      _%tl2899629073%_))))))
                                       (if (gx#stx-pair? _%__stx3916339164%_)
                                           (let ((_%e2899429066%_
                                                  (gx#syntax-e
                                                   _%__stx3916339164%_)))
                                             (let ((_%tl2899629073%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2899429066%_)))
                                                   (_%hd2899529070%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2899429066%_))))
                                               (if (gx#identifier?
                                                    _%hd2899529070%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g39865_|
                                                        _%hd2899529070%_)
                                                       (_%__match3918239183%_
                                                        _%e2899429066%_
                                                        _%hd2899529070%_
                                                        _%tl2899629073%_)
                                                       (_%__match3918839189%_
                                                        _%e2899429066%_
                                                        _%hd2899529070%_
                                                        _%tl2899629073%_))
                                                   (_%__match3918839189%_
                                                    _%e2899429066%_
                                                    _%hd2899529070%_
                                                    _%tl2899629073%_))))
                                           (_%__kont3917039171%_)))))))
                              (_%__kont3919639197%_ (lambda () _%r28929%_)))
                          (if (gx#stx-pair? _%__stx3919139192%_)
                              (let ((_%e2893628962%_
                                     (gx#syntax-e _%__stx3919139192%_)))
                                (let ((_%tl2893828969%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2893628962%_)))
                                      (_%hd2893728966%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2893628962%_))))
                                  (_%__kont3919439195%_
                                   _%tl2893828969%_
                                   _%hd2893728966%_)))
                              (_%__kont3919639197%_)))))))
                 (_%generate-body27919%_
                  (lambda (_%body28623%_)
                    (let* ((_%g2862628634%_
                            (lambda (_%g2862728630%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2862728630%_)))
                           (_%g2862528917%_
                            (lambda (_%g2862728638%_)
                              ((lambda (_%L28641%_)
                                 (let* ((_%g2865328670%_
                                         (lambda (_%g2865428666%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2865428666%_)))
                                        (_%g2865228913%_
                                         (lambda (_%g2865428674%_)
                                           (if (gx#stx-pair/null?
                                                _%g2865428674%_)
                                               (let ((_g39866_
                                                      (gx#syntax-split-splice
                                                       _%g2865428674%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39867_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39866_)
                        (##vector-length _g39866_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39867_ 2)))
                 (error "Context expects 2 values" _g39867_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target2865628677%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g39866_
                                                             0)))
                                                         (_%tl2865828680%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g39866_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl2865828680%_)
                                                         (letrec ((_%loop2865928683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd2865728687%_ _%target2866328690%_)
                             (if (gx#stx-pair? _%hd2865728687%_)
                                 (let ((_%e2866028693%_
                                        (gx#syntax-e _%hd2865728687%_)))
                                   (let ((_%lp-hd2866128697%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2866028693%_)))
                                         (_%lp-tl2866228700%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2866028693%_))))
                                     (_%loop2865928683%_
                                      _%lp-tl2866228700%_
                                      (cons _%lp-hd2866128697%_
                                            _%target2866328690%_))))
                                 (let ((_%target2866428703%_
                                        (reverse _%target2866328690%_)))
                                   ((lambda (_%L28707%_)
                                      (let* ((_%g2872428741%_
                                              (lambda (_%g2872528737%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2872528737%_)))
                                             (_%g2872328909%_
                                              (lambda (_%g2872528745%_)
                                                (if (gx#stx-pair/null?
                                                     _%g2872528745%_)
                                                    (let ((_g39868_
                                                           (gx#syntax-split-splice
                                                            _%g2872528745%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g39869_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g39868_)
                             (##vector-length _g39868_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g39869_ 2)))
                      (error "Context expects 2 values" _g39869_)))
                (let ((_%target2872728748%_
                       (let () (declare (not safe)) (##vector-ref _g39868_ 0)))
                      (_%tl2872928751%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g39868_ 1))))
                  (if (gx#stx-null? _%tl2872928751%_)
                      (letrec ((_%loop2873028754%_
                                (lambda (_%hd2872828758%_
                                         _%fail-diagnostic2873428761%_)
                                  (if (gx#stx-pair? _%hd2872828758%_)
                                      (let ((_%e2873128764%_
                                             (gx#syntax-e _%hd2872828758%_)))
                                        (let ((_%lp-hd2873228768%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2873128764%_)))
                                              (_%lp-tl2873328771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2873128764%_))))
                                          (_%loop2873028754%_
                                           _%lp-tl2873328771%_
                                           (cons _%lp-hd2873228768%_
                                                 _%fail-diagnostic2873428761%_))))
                                      (let ((_%fail-diagnostic2873528774%_
                                             (reverse _%fail-diagnostic2873428761%_)))
                                        ((lambda (_%L28778%_)
                                           (let* ((_%g2879528803%_
                                                   (lambda (_%g2879628799%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2879628799%_)))
                                                  (_%g2879428889%_
                                                   (lambda (_%g2879628807%_)
                                                     ((lambda (_%L28810%_)
                                                        (let* ((_%g2882328831%_
                                                                (lambda (_%g2882428827%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2882428827%_)))
                       (_%g2882228885%_
                        (lambda (_%g2882428835%_)
                          ((lambda (_%L28838%_)
                             (let* ((_%g2885128859%_
                                     (lambda (_%g2885228855%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2885228855%_)))
                                    (_%g2885028881%_
                                     (lambda (_%g2885228863%_)
                                       ((lambda (_%L28866%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%L28866%_ '()))))
                                        _%g2885228863%_))))
                               (_%g2885028881%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%L28641%_
                                                         (cons _%L28810%_ '()))
                                                   '())
                                             (cons _%L28838%_ '())))
                                 (gx#stx-source _%stx27912%_)))))
                           _%g2882428835%_))))
                  (_%g2882228885%_
                   (_%generate-clauses27920%_
                    _%body28623%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%L28641%_ '()) '())))))))
              _%g2879628807%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2879428889%_
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
                                     (foldr (lambda (_%g2889228897%_
                                                     _%g2889328900%_)
                                              (cons _%g2889228897%_
                                                    _%g2889328900%_))
                                            (foldr (lambda (_%g2889428903%_
                                                            _%g2889528906%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g2889428903%_ '()))
                   _%g2889528906%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%L28778%_)
                                            _%L28707%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx27912%_)))))
                                         _%fail-diagnostic2873528774%_))))))
                        (_%loop2873028754%_ _%target2872728748%_ '()))
                      (_%g2872428741%_ _%g2872528745%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2872428741%_
                                                     _%g2872528745%_)))))
                                        (_%g2872328909%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses27915%_))))
                                    _%target2866428703%_))))))
                   (_%loop2865928683%_ _%target2865628677%_ '()))
                 (_%g2865328670%_ _%g2865428674%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2865328670%_
                                                _%g2865428674%_)))))
                                   (_%g2865228913%_ _%tgt-lst27914%_)))
                               _%g2862728638%_))))
                      (_%g2862528917%_ (gx#genident 'E)))))
                 (_%generate-clauses27920%_
                  (lambda (_%rest28275%_ _%E28277%_)
                    (let* ((_%__stx3920739208%_ _%rest28275%_)
                           (_%g2828128297%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3920739208%_))))
                      (let ((_%__kont3921039211%_
                             (lambda (_%L28531%_)
                               (let* ((_%g2854228560%_
                                       (lambda (_%g2854328556%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2854328556%_)))
                                      (_%g2854128615%_
                                       (lambda (_%g2854328564%_)
                                         (if (gx#stx-pair? _%g2854328564%_)
                                             (let ((_%e2854628567%_
                                                    (gx#syntax-e
                                                     _%g2854328564%_)))
                                               (let ((_%hd2854728571%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2854628567%_)))
                                                     (_%tl2854828574%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2854628567%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2854828574%_)
                                                     (let ((_%e2854928577%_
                                                            (gx#syntax-e
                                                             _%tl2854828574%_)))
                                                       (let ((_%hd2855028581%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2854928577%_)))
                     (_%tl2855128584%_
                      (let () (declare (not safe)) (##cdr _%e2854928577%_))))
                 (if (gx#stx-pair? _%tl2855128584%_)
                     (let ((_%e2855228587%_ (gx#syntax-e _%tl2855128584%_)))
                       (let ((_%hd2855328591%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2855228587%_)))
                             (_%tl2855428594%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2855228587%_))))
                         (if (gx#stx-null? _%tl2855428594%_)
                             ((lambda (_%L28597%_ _%L28599%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _%L28599%_)
                                                      (_%generate127921%_
                                                       _%L28599%_
                                                       _%L28597%_
                                                       _%E28277%_)
                                                      _%L28597%_)
                                                  '()))))
                              _%hd2855328591%_
                              _%hd2855028581%_)
                             (_%g2854228560%_ _%g2854328564%_))))
                     (_%g2854228560%_ _%g2854328564%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2854228560%_
                                                      _%g2854328564%_))))
                                             (_%g2854228560%_
                                              _%g2854328564%_)))))
                                 (_%g2854128615%_ _%L28531%_))))
                            (_%__kont3921239213%_
                             (lambda (_%L28325%_ _%L28327%_)
                               (let* ((_%g2834028359%_
                                       (lambda (_%g2834128355%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2834128355%_)))
                                      (_%g2833928510%_
                                       (lambda (_%g2834128363%_)
                                         (if (gx#stx-pair? _%g2834128363%_)
                                             (let ((_%e2834528366%_
                                                    (gx#syntax-e
                                                     _%g2834128363%_)))
                                               (let ((_%hd2834628370%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2834528366%_)))
                                                     (_%tl2834728373%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2834528366%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2834728373%_)
                                                     (let ((_%e2834828376%_
                                                            (gx#syntax-e
                                                             _%tl2834728373%_)))
                                                       (let ((_%hd2834928380%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2834828376%_)))
                     (_%tl2835028383%_
                      (let () (declare (not safe)) (##cdr _%e2834828376%_))))
                 (if (gx#stx-pair? _%tl2835028383%_)
                     (let ((_%e2835128386%_ (gx#syntax-e _%tl2835028383%_)))
                       (let ((_%hd2835228390%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2835128386%_)))
                             (_%tl2835328393%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2835128386%_))))
                         (if (gx#stx-null? _%tl2835328393%_)
                             ((lambda (_%L28396%_ _%L28398%_ _%L28399%_)
                                (if (gx#stx-e _%L28398%_)
                                    (let* ((_%g2841628431%_
                                            (lambda (_%g2841728427%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2841728427%_)))
                                           (_%g2841528476%_
                                            (lambda (_%g2841728435%_)
                                              (if (gx#stx-pair?
                                                   _%g2841728435%_)
                                                  (let ((_%e2842028438%_
                                                         (gx#syntax-e
                                                          _%g2841728435%_)))
                                                    (let ((_%hd2842128442%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2842028438%_)))
                                                          (_%tl2842228445%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2842028438%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl2842228445%_)
                                                          (let ((_%e2842328448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2842228445%_)))
                    (let ((_%hd2842428452%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2842328448%_)))
                          (_%tl2842528455%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2842328448%_))))
                      (if (gx#stx-null? _%tl2842528455%_)
                          ((lambda (_%L28458%_ _%L28460%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _%L28399%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%L28460%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L28458%_ '()))))
                           _%hd2842428452%_
                           _%hd2842128442%_)
                          (_%g2841628431%_ _%g2841728435%_))))
                  (_%g2841628431%_ _%g2841728435%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2841628431%_
                                                   _%g2841728435%_)))))
                                      (_%g2841528476%_
                                       (list (_%generate127921%_
                                              _%L28398%_
                                              _%L28396%_
                                              _%E28277%_)
                                             (_%generate-clauses27920%_
                                              _%L28325%_
                                              (cons _%L28399%_ '())))))
                                    (let* ((_%g2848028488%_
                                            (lambda (_%g2848128484%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2848128484%_)))
                                           (_%g2847928506%_
                                            (lambda (_%g2848128492%_)
                                              ((lambda (_%L28495%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L28399%_
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
                             (cons _%L28396%_ '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons _%L28495%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2848128492%_))))
                                      (_%g2847928506%_
                                       (_%generate-clauses27920%_
                                        _%L28325%_
                                        (cons _%L28399%_ '()))))))
                              _%hd2835228390%_
                              _%hd2834928380%_
                              _%hd2834628370%_)
                             (_%g2834028359%_ _%g2834128363%_))))
                     (_%g2834028359%_ _%g2834128363%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2834028359%_
                                                      _%g2834128363%_))))
                                             (_%g2834028359%_
                                              _%g2834128363%_)))))
                                 (_%g2833928510%_ _%L28327%_))))
                            (_%__kont3921439215%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28277%_ '()))))))
                        (if (gx#stx-pair? _%__stx3920739208%_)
                            (let ((_%e2828428521%_
                                   (gx#syntax-e _%__stx3920739208%_)))
                              (let ((_%tl2828628528%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2828428521%_)))
                                    (_%hd2828528525%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2828428521%_))))
                                (if (gx#stx-null? _%tl2828628528%_)
                                    (_%__kont3921039211%_ _%hd2828528525%_)
                                    (_%__kont3921239213%_
                                     _%tl2828628528%_
                                     _%hd2828528525%_))))
                            (_%__kont3921439215%_))))))
                 (_%generate127921%_
                  (lambda (_%clause27923%_ _%body27925%_ _%E27926%_)
                    (let* ((_%g2792827952%_
                            (lambda (_%g2792927948%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2792927948%_)))
                           (_%g2792728271%_
                            (lambda (_%g2792927956%_)
                              (if (gx#stx-pair? _%g2792927956%_)
                                  (let ((_%e2793227959%_
                                         (gx#syntax-e _%g2792927956%_)))
                                    (let ((_%hd2793327963%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2793227959%_)))
                                          (_%tl2793427966%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2793227959%_))))
                                      (if (gx#stx-pair? _%tl2793427966%_)
                                          (let ((_%e2793527969%_
                                                 (gx#syntax-e
                                                  _%tl2793427966%_)))
                                            (let ((_%hd2793627973%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2793527969%_)))
                                                  (_%tl2793727976%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2793527969%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2793627973%_)
                                                  (let ((_g39870_
                                                         (gx#syntax-split-splice
                                                          _%hd2793627973%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g39871_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g39870_)
                           (##vector-length _g39870_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g39871_ 2)))
                    (error "Context expects 2 values" _g39871_)))
              (let ((_%target2793827979%_
                     (let () (declare (not safe)) (##vector-ref _g39870_ 0)))
                    (_%tl2794027982%_
                     (let () (declare (not safe)) (##vector-ref _g39870_ 1))))
                (if (gx#stx-null? _%tl2794027982%_)
                    (letrec ((_%loop2794127985%_
                              (lambda (_%hd2793927989%_ _%var2794527992%_)
                                (if (gx#stx-pair? _%hd2793927989%_)
                                    (let ((_%e2794227995%_
                                           (gx#syntax-e _%hd2793927989%_)))
                                      (let ((_%lp-hd2794327999%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2794227995%_)))
                                            (_%lp-tl2794428002%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2794227995%_))))
                                        (_%loop2794127985%_
                                         _%lp-tl2794428002%_
                                         (cons _%lp-hd2794327999%_
                                               _%var2794527992%_))))
                                    (let ((_%var2794628005%_
                                           (reverse _%var2794527992%_)))
                                      (if (gx#stx-null? _%tl2793727976%_)
                                          ((lambda (_%L28009%_ _%L28011%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g2803228035%_
                                                                _%g2803328038%_)
                                                         (cons _%g2803228035%_
                                                               _%g2803328038%_))
                                                       '()
                                                       _%L28009%_)
                                                _%stx27912%_)
                                               (let* ((_%g2804128049%_
                                                       (lambda (_%g2804228045%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2804228045%_)))
                                                      (_%g2804028143%_
                                                       (lambda (_%g2804228053%_)
                                                         ((lambda (_%L28056%_)
                                                            (let* ((_%g2806928077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2807028073%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2807028073%_)))
                           (_%g2806828139%_
                            (lambda (_%g2807028081%_)
                              ((lambda (_%L28084%_)
                                 (let* ((_%g2809728105%_
                                         (lambda (_%g2809828101%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2809828101%_)))
                                        (_%g2809628127%_
                                         (lambda (_%g2809828109%_)
                                           ((lambda (_%L28112%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L28011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L28112%_ '()))
                   (cons _%L28056%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx27912%_)))
                                            _%g2809828109%_))))
                                   (_%g2809628127%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%g2813028133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2813128136%_)
                  (cons _%g2813028133%_ _%g2813128136%_))
                '()
                _%L28009%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L28084%_ '())))
                                     (gx#stx-source _%stx27912%_)))))
                               _%g2807028081%_))))
                      (_%g2806828139%_ _%body27925%_)))
                  _%g2804228053%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2804028143%_
                                                  (let _%recur28147%_ ((_%rest28150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%clause27923%_)
                               (_%rest-targets28152%_ _%tgt-lst27914%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%__stx3923339234%_
                                                            _%rest28150%_)
                                                           (_%g2815528167%_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx3923339234%_))))
                                                      (let ((_%__kont3923639237%_
                                                             (lambda (_%L28203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L28205%_)
                       (let* ((_%g2822028232%_
                               (lambda (_%g2822128228%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2822128228%_)))
                              (_%g2821928263%_
                               (lambda (_%g2822128236%_)
                                 (if (gx#stx-pair? _%g2822128236%_)
                                     (let ((_%e2822428239%_
                                            (gx#syntax-e _%g2822128236%_)))
                                       (let ((_%hd2822528243%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2822428239%_)))
                                             (_%tl2822628246%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2822428239%_))))
                                         ((lambda (_%L28249%_ _%L28251%_)
                                            (|gerbil/core/match[1]#generate-match1|
                                             _%stx27912%_
                                             _%L28251%_
                                             _%L28205%_
                                             (_%recur28147%_
                                              _%L28203%_
                                              _%L28249%_)
                                             _%E27926%_))
                                          _%tl2822628246%_
                                          _%hd2822528243%_)))
                                     (_%g2822028232%_ _%g2822128236%_)))))
                         (_%g2821928263%_ _%rest-targets28152%_))))
                    (_%__kont3923839239%_
                     (lambda ()
                       (cons _%L28011%_
                             (foldr (lambda (_%g2817728180%_ _%g2817828183%_)
                                      (cons _%g2817728180%_ _%g2817828183%_))
                                    '()
                                    _%L28009%_)))))
                (if (gx#stx-pair? _%__stx3923339234%_)
                    (let ((_%e2815928193%_ (gx#syntax-e _%__stx3923339234%_)))
                      (let ((_%tl2816128200%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2815928193%_)))
                            (_%hd2816028197%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2815928193%_))))
                        (_%__kont3923639237%_
                         _%tl2816128200%_
                         _%hd2816028197%_)))
                    (_%__kont3923839239%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%var2794628005%_
                                           _%hd2793327963%_)
                                          (_%g2792827952%_
                                           _%g2792927956%_)))))))
                      (_%loop2794127985%_ _%target2793827979%_ '()))
                    (_%g2792827952%_ _%g2792927956%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2792827952%_
                                                   _%g2792927956%_))))
                                          (_%g2792827952%_ _%g2792927956%_))))
                                  (_%g2792827952%_ _%g2792927956%_)))))
                      (_%g2792728271%_
                       (list (gx#genident 'K)
                             (let ((__tmp39872
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause27923%_)))
                               (declare (not safe))
                               (##apply append __tmp39872))))))))
          (_%generate-body27919%_
           (_%parse-body27917%_ (gx#stx-length _%tgt-lst27914%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx27814%_ _%tgt27816%_ _%clauses27817%_)
        (letrec ((_%reclause27819%_
                  (lambda (_%clause27822%_)
                    (let* ((_%__stx3924939250%_ _%clause27822%_)
                           (_%g2782727842%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3924939250%_))))
                      (let ((_%__kont3925239253%_ (lambda () _%clause27822%_))
                            (_%__kont3925439255%_
                             (lambda (_%L27870%_ _%L27872%_)
                               (gx#stx-wrap-source
                                (cons (cons _%L27872%_ '()) _%L27870%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3925639257%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx27814%_
                                _%clause27822%_))))
                        (if (gx#stx-pair? _%__stx3924939250%_)
                            (let ((_%e2782927894%_
                                   (gx#syntax-e _%__stx3924939250%_)))
                              (let ((_%tl2783127901%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2782927894%_)))
                                    (_%hd2783027898%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2782927894%_))))
                                (if (gx#identifier? _%hd2783027898%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39873_|
                                         _%hd2783027898%_)
                                        (_%__kont3925239253%_)
                                        (_%__kont3925439255%_
                                         _%tl2783127901%_
                                         _%hd2783027898%_))
                                    (_%__kont3925439255%_
                                     _%tl2783127901%_
                                     _%hd2783027898%_))))
                            (_%__kont3925639257%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx27814%_
           (cons _%tgt27816%_ '())
           (gx#stx-map _%reclause27819%_ _%clauses27817%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35150%_)
        (let* ((_%__stx3927739278%_ _%stx35150%_)
               (_%g3515535184%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3927739278%_))))
          (let ((_%__kont3928039281%_
                 (lambda (_%L35424%_)
                   (let* ((_%g3543735445%_
                           (lambda (_%g3543835441%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3543835441%_)))
                          (_%g3543635498%_
                           (lambda (_%g3543835449%_)
                             ((lambda (_%L35452%_)
                                (let* ((_%g3546435472%_
                                        (lambda (_%g3546535468%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3546535468%_)))
                                       (_%g3546335494%_
                                        (lambda (_%g3546535476%_)
                                          ((lambda (_%L35479%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%L35452%_ '())
                                                         (cons _%L35479%_
                                                               '()))))
                                           _%g3546535476%_))))
                                  (_%g3546335494%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%L35452%_ _%L35424%_))
                                    (gx#stx-source _%stx35150%_)))))
                              _%g3543835449%_))))
                     (_%g3543635498%_ (gx#genident 'e)))))
                (_%__kont3928239283%_
                 (lambda (_%L35319%_)
                   (let* ((_%g3533235340%_
                           (lambda (_%g3533335336%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3533335336%_)))
                          (_%g3533135393%_
                           (lambda (_%g3533335344%_)
                             ((lambda (_%L35347%_)
                                (let* ((_%g3535935367%_
                                        (lambda (_%g3536035363%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3536035363%_)))
                                       (_%g3535835389%_
                                        (lambda (_%g3536035371%_)
                                          ((lambda (_%L35374%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%L35347%_
                                                         (cons _%L35374%_
                                                               '()))))
                                           _%g3536035371%_))))
                                  (_%g3535835389%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%L35347%_ _%L35319%_))
                                    (gx#stx-source _%stx35150%_)))))
                              _%g3533335344%_))))
                     (_%g3533135393%_ (gx#genident 'args)))))
                (_%__kont3928439285%_
                 (lambda (_%L35211%_ _%L35213%_)
                   (let* ((_%g3522735235%_
                           (lambda (_%g3522835231%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3522835231%_)))
                          (_%g3522635288%_
                           (lambda (_%g3522835239%_)
                             ((lambda (_%L35242%_)
                                (let* ((_%g3525435262%_
                                        (lambda (_%g3525535258%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3525535258%_)))
                                       (_%g3525335284%_
                                        (lambda (_%g3525535266%_)
                                          ((lambda (_%L35269%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L35242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L35213%_ '()))
                       '())
                 (cons _%L35269%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3525535266%_))))
                                  (_%g3525335284%_
                                   (|gerbil/core/match[1]#generate-match|
                                    _%stx35150%_
                                    _%L35242%_
                                    _%L35211%_))))
                              _%g3522835239%_))))
                     (_%g3522635288%_ (gx#genident _%L35213%_))))))
            (let* ((_%__match3933039331%_
                    (lambda (_%e3517335191%_
                             _%hd3517435195%_
                             _%tl3517535198%_
                             _%e3517635201%_
                             _%hd3517735205%_
                             _%tl3517835208%_)
                      (let ((_%L35211%_ _%tl3517835208%_)
                            (_%L35213%_ _%hd3517735205%_))
                        (if (gx#stx-list? _%L35211%_)
                            (_%__kont3928439285%_ _%L35211%_ _%L35213%_)
                            (let () (declare (not safe)) (_%g3515535184%_))))))
                   (_%__match3931839319%_
                    (lambda (_%e3516535299%_
                             _%hd3516635303%_
                             _%tl3516735306%_
                             _%e3516835309%_
                             _%hd3516935313%_
                             _%tl3517035316%_)
                      (let ((_%L35319%_ _%tl3517035316%_))
                        (if (gx#stx-list? _%L35319%_)
                            (_%__kont3928239283%_ _%L35319%_)
                            (_%__match3933039331%_
                             _%e3516535299%_
                             _%hd3516635303%_
                             _%tl3516735306%_
                             _%e3516835309%_
                             _%hd3516935313%_
                             _%tl3517035316%_)))))
                   (_%__match3930239303%_
                    (lambda (_%e3515835404%_
                             _%hd3515935408%_
                             _%tl3516035411%_
                             _%e3516135414%_
                             _%hd3516235418%_
                             _%tl3516335421%_)
                      (let ((_%L35424%_ _%tl3516335421%_))
                        (if (gx#stx-list? _%L35424%_)
                            (_%__kont3928039281%_ _%L35424%_)
                            (_%__match3933039331%_
                             _%e3515835404%_
                             _%hd3515935408%_
                             _%tl3516035411%_
                             _%e3516135414%_
                             _%hd3516235418%_
                             _%tl3516335421%_))))))
              (if (gx#stx-pair? _%__stx3927739278%_)
                  (let ((_%e3515835404%_ (gx#syntax-e _%__stx3927739278%_)))
                    (let ((_%tl3516035411%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3515835404%_)))
                          (_%hd3515935408%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3515835404%_))))
                      (if (gx#stx-pair? _%tl3516035411%_)
                          (let ((_%e3516135414%_
                                 (gx#syntax-e _%tl3516035411%_)))
                            (let ((_%tl3516335421%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3516135414%_)))
                                  (_%hd3516235418%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3516135414%_))))
                              (if (gx#identifier? _%hd3516235418%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39874_|
                                       _%hd3516235418%_)
                                      (_%__match3930239303%_
                                       _%e3515835404%_
                                       _%hd3515935408%_
                                       _%tl3516035411%_
                                       _%e3516135414%_
                                       _%hd3516235418%_
                                       _%tl3516335421%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39875_|
                                           _%hd3516235418%_)
                                          (_%__match3931839319%_
                                           _%e3515835404%_
                                           _%hd3515935408%_
                                           _%tl3516035411%_
                                           _%e3516135414%_
                                           _%hd3516235418%_
                                           _%tl3516335421%_)
                                          (_%__match3933039331%_
                                           _%e3515835404%_
                                           _%hd3515935408%_
                                           _%tl3516035411%_
                                           _%e3516135414%_
                                           _%hd3516235418%_
                                           _%tl3516335421%_)))
                                  (_%__match3933039331%_
                                   _%e3515835404%_
                                   _%hd3515935408%_
                                   _%tl3516035411%_
                                   _%e3516135414%_
                                   _%hd3516235418%_
                                   _%tl3516335421%_))))
                          (let () (declare (not safe)) (_%g3515535184%_)))))
                  (let () (declare (not safe)) (_%g3515535184%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx35506%_)
        (let* ((_%g3550935533%_
                (lambda (_%g3551035529%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3551035529%_)))
               (_%g3550835745%_
                (lambda (_%g3551035537%_)
                  (if (gx#stx-pair? _%g3551035537%_)
                      (let ((_%e3551335540%_ (gx#syntax-e _%g3551035537%_)))
                        (let ((_%hd3551435544%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3551335540%_)))
                              (_%tl3551535547%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3551335540%_))))
                          (if (gx#stx-pair? _%tl3551535547%_)
                              (let ((_%e3551635550%_
                                     (gx#syntax-e _%tl3551535547%_)))
                                (let ((_%hd3551735554%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3551635550%_)))
                                      (_%tl3551835557%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3551635550%_))))
                                  (if (gx#stx-pair/null? _%hd3551735554%_)
                                      (let ((_g39876_
                                             (gx#syntax-split-splice
                                              _%hd3551735554%_
                                              '0)))
                                        (begin
                                          (let ((_g39877_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39876_)
                                                       (##vector-length
                                                        _g39876_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39877_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39877_)))
                                          (let ((_%target3551935560%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g39876_ 0)))
                                                (_%tl3552135563%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g39876_ 1))))
                                            (if (gx#stx-null? _%tl3552135563%_)
                                                (letrec ((_%loop3552235566%_
                                                          (lambda (_%hd3552035570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3552635573%_)
                    (if (gx#stx-pair? _%hd3552035570%_)
                        (let ((_%e3552335576%_ (gx#syntax-e _%hd3552035570%_)))
                          (let ((_%lp-hd3552435580%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3552335576%_)))
                                (_%lp-tl3552535583%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3552335576%_))))
                            (_%loop3552235566%_
                             _%lp-tl3552535583%_
                             (cons _%lp-hd3552435580%_ _%e3552635573%_))))
                        (let ((_%e3552735586%_ (reverse _%e3552635573%_)))
                          ((lambda (_%L35590%_ _%L35592%_)
                             (if (gx#stx-list? _%L35590%_)
                                 (let* ((_%g3561035627%_
                                         (lambda (_%g3561135623%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3561135623%_)))
                                        (_%g3560935733%_
                                         (lambda (_%g3561135631%_)
                                           (if (gx#stx-pair/null?
                                                _%g3561135631%_)
                                               (let ((_g39878_
                                                      (gx#syntax-split-splice
                                                       _%g3561135631%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39879_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39878_)
                        (##vector-length _g39878_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39879_ 2)))
                 (error "Context expects 2 values" _g39879_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3561335634%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g39878_
                                                             0)))
                                                         (_%tl3561535637%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g39878_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3561535637%_)
                                                         (letrec ((_%loop3561635640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3561435644%_ _%$e3562035647%_)
                             (if (gx#stx-pair? _%hd3561435644%_)
                                 (let ((_%e3561735650%_
                                        (gx#syntax-e _%hd3561435644%_)))
                                   (let ((_%lp-hd3561835654%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3561735650%_)))
                                         (_%lp-tl3561935657%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3561735650%_))))
                                     (_%loop3561635640%_
                                      _%lp-tl3561935657%_
                                      (cons _%lp-hd3561835654%_
                                            _%$e3562035647%_))))
                                 (let ((_%$e3562135660%_
                                        (reverse _%$e3562035647%_)))
                                   ((lambda (_%L35664%_)
                                      (let* ((_%g3568035688%_
                                              (lambda (_%g3568135684%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g3568135684%_)))
                                             (_%g3567935721%_
                                              (lambda (_%g3568135692%_)
                                                ((lambda (_%L35695%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _%L35592%_ _%L35664%_)
                         (foldr (lambda (_%g3570935713%_
                                         _%g3571035716%_
                                         _%g3571135718%_)
                                  (cons (cons _%g3571035716%_
                                              (cons _%g3570935713%_ '()))
                                        _%g3571135718%_))
                                '()
                                _%L35592%_
                                _%L35664%_))
                       (cons _%L35695%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g3568135692%_))))
                                        (_%g3567935721%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx35506%_
                                          (foldr (lambda (_%g3572435727%_
                                                          _%g3572535730%_)
                                                   (cons _%g3572435727%_
                                                         _%g3572535730%_))
                                                 '()
                                                 _%L35664%_)
                                          _%L35590%_))))
                                    _%$e3562135660%_))))))
                   (_%loop3561635640%_ _%target3561335634%_ '()))
                 (_%g3561035627%_ _%g3561135631%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3561035627%_
                                                _%g3561135631%_)))))
                                   (_%g3560935733%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g3573635739%_
                                                     _%g3573735742%_)
                                              (cons _%g3573635739%_
                                                    _%g3573735742%_))
                                            '()
                                            _%L35592%_))))
                                 (_%g3550935533%_ _%g3551035537%_)))
                           _%tl3551835557%_
                           _%e3552735586%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3552235566%_
                                                   _%target3551935560%_
                                                   '()))
                                                (_%g3550935533%_
                                                 _%g3551035537%_)))))
                                      (_%g3550935533%_ _%g3551035537%_))))
                              (_%g3550935533%_ _%g3551035537%_))))
                      (_%g3550935533%_ _%g3551035537%_)))))
          (_%g3550835745%_ _%stx35506%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx35751%_)
        (let* ((_%__stx3933339334%_ _%$stx35751%_)
               (_%g3575735840%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3933339334%_))))
          (let ((_%__kont3933639337%_
                 (lambda (_%L36170%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3618636189%_ _%g3618736192%_)
                                        (cons _%g3618636189%_ _%g3618736192%_))
                                      '()
                                      _%L36170%_)))))
                (_%__kont3934039341%_
                 (lambda (_%L36078%_ _%L36080%_ _%L36081%_ _%L36082%_)
                   (cons _%L36082%_
                         (cons (cons (cons _%L36081%_ (cons _%L36080%_ '()))
                                     '())
                               (foldr (lambda (_%g3610436107%_ _%g3610536110%_)
                                        (cons _%g3610436107%_ _%g3610536110%_))
                                      '()
                                      _%L36078%_)))))
                (_%__kont3934439345%_
                 (lambda (_%L35951%_ _%L35953%_ _%L35954%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3598035983%_ _%g3598135986%_)
                                        (cons _%g3598035983%_ _%g3598135986%_))
                                      '()
                                      _%L35953%_)
                               (cons (cons (foldr (lambda (_%g3597835989%_
                                                           _%g3597935992%_)
                                                    (cons _%g3597835989%_
                                                          _%g3597935992%_))
                                                  '()
                                                  _%L35954%_)
                                           (foldr (lambda (_%g3597635995%_
                                                           _%g3597735998%_)
                                                    (cons _%g3597635995%_
                                                          _%g3597735998%_))
                                                  '()
                                                  _%L35951%_))
                                     '()))))))
            (let* ((_%__match3942639427%_
                    (lambda (_%e3580335847%_
                             _%hd3580435851%_
                             _%tl3580535854%_
                             _%e3580635857%_
                             _%hd3580735861%_
                             _%tl3580835864%_
                             _%__splice3934639347%_
                             _%target3580935867%_
                             _%tl3581135870%_)
                      (letrec ((_%loop3581235873%_
                                (lambda (_%hd3581035877%_
                                         _%expr3581635880%_
                                         _%hd3581735882%_)
                                  (if (gx#stx-pair? _%hd3581035877%_)
                                      (let ((_%e3581335885%_
                                             (gx#syntax-e _%hd3581035877%_)))
                                        (let ((_%lp-tl3581535892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3581335885%_)))
                                              (_%lp-hd3581435889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3581335885%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3581435889%_)
                                              (let ((_%e3582935895%_
                                                     (gx#syntax-e
                                                      _%lp-hd3581435889%_)))
                                                (let ((_%tl3583135902%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3582935895%_)))
                                                      (_%hd3583035899%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3582935895%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3583135902%_)
                                                      (let ((_%e3583235905%_
                                                             (gx#syntax-e
                                                              _%tl3583135902%_)))
                                                        (let ((_%tl3583435912%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3583235905%_)))
                      (_%hd3583335909%_
                       (let () (declare (not safe)) (##car _%e3583235905%_))))
                  (if (gx#stx-null? _%tl3583435912%_)
                      (_%loop3581235873%_
                       _%lp-tl3581535892%_
                       (cons _%hd3583335909%_ _%expr3581635880%_)
                       (cons _%hd3583035899%_ _%hd3581735882%_))
                      (let () (declare (not safe)) (_%g3575735840%_)))))
              (let () (declare (not safe)) (_%g3575735840%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3575735840%_)))))
                                      (let ((_%hd3581935918%_
                                             (reverse _%hd3581735882%_))
                                            (_%expr3581835915%_
                                             (reverse _%expr3581635880%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3580835864%_)
                                            (let ((_%__splice3934839349%_
                                                   (gx#syntax-split-splice
                                                    _%tl3580835864%_
                                                    '0)))
                                              (let ((_%tl3582235924%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3934839349%_
                                                        '1)))
                                                    (_%target3582035921%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3934839349%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3582235924%_)
                                                    (letrec ((_%loop3582335927%_
                                                              (lambda (_%hd3582135931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3582735934%_)
                        (if (gx#stx-pair? _%hd3582135931%_)
                            (let ((_%e3582435937%_
                                   (gx#syntax-e _%hd3582135931%_)))
                              (let ((_%lp-tl3582635944%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3582435937%_)))
                                    (_%lp-hd3582535941%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3582435937%_))))
                                (_%loop3582335927%_
                                 _%lp-tl3582635944%_
                                 (cons _%lp-hd3582535941%_
                                       _%body3582735934%_))))
                            (let ((_%body3582835947%_
                                   (reverse _%body3582735934%_)))
                              (_%__kont3934439345%_
                               _%body3582835947%_
                               _%expr3581835915%_
                               _%hd3581935918%_))))))
              (_%loop3582335927%_ _%target3582035921%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3575735840%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3575735840%_))))))))
                        (_%loop3581235873%_ _%target3580935867%_ '() '()))))
                   (_%__match3941839419%_
                    (lambda (_%e3580335847%_
                             _%hd3580435851%_
                             _%tl3580535854%_
                             _%e3580635857%_
                             _%hd3580735861%_
                             _%tl3580835864%_)
                      (if (gx#stx-pair/null? _%hd3580735861%_)
                          (let ((_%__splice3934639347%_
                                 (gx#syntax-split-splice _%hd3580735861%_ '0)))
                            (let ((_%tl3581135870%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3934639347%_ '1)))
                                  (_%target3580935867%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3934639347%_
                                      '0))))
                              (if (gx#stx-null? _%tl3581135870%_)
                                  (_%__match3942639427%_
                                   _%e3580335847%_
                                   _%hd3580435851%_
                                   _%tl3580535854%_
                                   _%e3580635857%_
                                   _%hd3580735861%_
                                   _%tl3580835864%_
                                   _%__splice3934639347%_
                                   _%target3580935867%_
                                   _%tl3581135870%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3575735840%_)))))
                          (let () (declare (not safe)) (_%g3575735840%_)))))
                   (_%__match3940639407%_
                    (lambda (_%e3577936008%_
                             _%hd3578036012%_
                             _%tl3578136015%_
                             _%e3578236018%_
                             _%hd3578336022%_
                             _%tl3578436025%_
                             _%e3578536028%_
                             _%hd3578636032%_
                             _%tl3578736035%_
                             _%e3578836038%_
                             _%hd3578936042%_
                             _%tl3579036045%_
                             _%__splice3934239343%_
                             _%target3579136048%_
                             _%tl3579336051%_)
                      (letrec ((_%loop3579436054%_
                                (lambda (_%hd3579236058%_ _%body3579836061%_)
                                  (if (gx#stx-pair? _%hd3579236058%_)
                                      (let ((_%e3579536064%_
                                             (gx#syntax-e _%hd3579236058%_)))
                                        (let ((_%lp-tl3579736071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3579536064%_)))
                                              (_%lp-hd3579636068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3579536064%_))))
                                          (_%loop3579436054%_
                                           _%lp-tl3579736071%_
                                           (cons _%lp-hd3579636068%_
                                                 _%body3579836061%_))))
                                      (let ((_%body3579936074%_
                                             (reverse _%body3579836061%_)))
                                        (let ((_%L36078%_ _%body3579936074%_)
                                              (_%L36080%_ _%hd3578936042%_)
                                              (_%L36081%_ _%hd3578636032%_)
                                              (_%L36082%_ _%hd3578036012%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%L36081%_)
                                              (_%__kont3934039341%_
                                               _%L36078%_
                                               _%L36080%_
                                               _%L36081%_
                                               _%L36082%_)
                                              (_%__match3941839419%_
                                               _%e3577936008%_
                                               _%hd3578036012%_
                                               _%tl3578136015%_
                                               _%e3578236018%_
                                               _%hd3578336022%_
                                               _%tl3578436025%_))))))))
                        (_%loop3579436054%_ _%target3579136048%_ '()))))
                   (_%__match3937239373%_
                    (lambda (_%e3576036120%_
                             _%hd3576136124%_
                             _%tl3576236127%_
                             _%e3576336130%_
                             _%hd3576436134%_
                             _%tl3576536137%_
                             _%__splice3933839339%_
                             _%target3576636140%_
                             _%tl3576836143%_)
                      (letrec ((_%loop3576936146%_
                                (lambda (_%hd3576736150%_ _%body3577336153%_)
                                  (if (gx#stx-pair? _%hd3576736150%_)
                                      (let ((_%e3577036156%_
                                             (gx#syntax-e _%hd3576736150%_)))
                                        (let ((_%lp-tl3577236163%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3577036156%_)))
                                              (_%lp-hd3577136160%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3577036156%_))))
                                          (_%loop3576936146%_
                                           _%lp-tl3577236163%_
                                           (cons _%lp-hd3577136160%_
                                                 _%body3577336153%_))))
                                      (let ((_%body3577436166%_
                                             (reverse _%body3577336153%_)))
                                        (_%__kont3933639337%_
                                         _%body3577436166%_))))))
                        (_%loop3576936146%_ _%target3576636140%_ '())))))
              (if (gx#stx-pair? _%__stx3933339334%_)
                  (let ((_%e3576036120%_ (gx#syntax-e _%__stx3933339334%_)))
                    (let ((_%tl3576236127%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3576036120%_)))
                          (_%hd3576136124%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3576036120%_))))
                      (if (gx#stx-pair? _%tl3576236127%_)
                          (let ((_%e3576336130%_
                                 (gx#syntax-e _%tl3576236127%_)))
                            (let ((_%tl3576536137%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3576336130%_)))
                                  (_%hd3576436134%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3576336130%_))))
                              (if (gx#stx-null? _%hd3576436134%_)
                                  (if (gx#stx-pair/null? _%tl3576536137%_)
                                      (let ((_%__splice3933839339%_
                                             (gx#syntax-split-splice
                                              _%tl3576536137%_
                                              '0)))
                                        (let ((_%tl3576836143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3933839339%_
                                                  '1)))
                                              (_%target3576636140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3933839339%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3576836143%_)
                                              (_%__match3937239373%_
                                               _%e3576036120%_
                                               _%hd3576136124%_
                                               _%tl3576236127%_
                                               _%e3576336130%_
                                               _%hd3576436134%_
                                               _%tl3576536137%_
                                               _%__splice3933839339%_
                                               _%target3576636140%_
                                               _%tl3576836143%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3576436134%_)
                                                  (let ((_%__splice3934639347%_
                                                         (gx#syntax-split-splice
                                                          _%hd3576436134%_
                                                          '0)))
                                                    (let ((_%tl3581135870%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3934639347%_
                                                              '1)))
                                                          (_%target3580935867%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3934639347%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3581135870%_)
                                                          (_%__match3942639427%_
                                                           _%e3576036120%_
                                                           _%hd3576136124%_
                                                           _%tl3576236127%_
                                                           _%e3576336130%_
                                                           _%hd3576436134%_
                                                           _%tl3576536137%_
                                                           _%__splice3934639347%_
                                                           _%target3580935867%_
                                                           _%tl3581135870%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3575735840%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3575735840%_))))))
                                      (if (gx#stx-pair/null? _%hd3576436134%_)
                                          (let ((_%__splice3934639347%_
                                                 (gx#syntax-split-splice
                                                  _%hd3576436134%_
                                                  '0)))
                                            (let ((_%tl3581135870%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3934639347%_
                                                      '1)))
                                                  (_%target3580935867%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3934639347%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3581135870%_)
                                                  (_%__match3942639427%_
                                                   _%e3576036120%_
                                                   _%hd3576136124%_
                                                   _%tl3576236127%_
                                                   _%e3576336130%_
                                                   _%hd3576436134%_
                                                   _%tl3576536137%_
                                                   _%__splice3934639347%_
                                                   _%target3580935867%_
                                                   _%tl3581135870%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3575735840%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3575735840%_))))
                                  (if (gx#stx-pair? _%hd3576436134%_)
                                      (let ((_%e3578536028%_
                                             (gx#syntax-e _%hd3576436134%_)))
                                        (let ((_%tl3578736035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3578536028%_)))
                                              (_%hd3578636032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3578536028%_))))
                                          (if (gx#stx-pair? _%tl3578736035%_)
                                              (let ((_%e3578836038%_
                                                     (gx#syntax-e
                                                      _%tl3578736035%_)))
                                                (let ((_%tl3579036045%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3578836038%_)))
                                                      (_%hd3578936042%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3578836038%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3579036045%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3576536137%_)
                                                          (let ((_%__splice3934239343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl3576536137%_ '0)))
                    (let ((_%tl3579336051%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3934239343%_ '1)))
                          (_%target3579136048%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3934239343%_ '0))))
                      (if (gx#stx-null? _%tl3579336051%_)
                          (_%__match3940639407%_
                           _%e3576036120%_
                           _%hd3576136124%_
                           _%tl3576236127%_
                           _%e3576336130%_
                           _%hd3576436134%_
                           _%tl3576536137%_
                           _%e3578536028%_
                           _%hd3578636032%_
                           _%tl3578736035%_
                           _%e3578836038%_
                           _%hd3578936042%_
                           _%tl3579036045%_
                           _%__splice3934239343%_
                           _%target3579136048%_
                           _%tl3579336051%_)
                          (if (gx#stx-pair/null? _%hd3576436134%_)
                              (let ((_%__splice3934639347%_
                                     (gx#syntax-split-splice
                                      _%hd3576436134%_
                                      '0)))
                                (let ((_%tl3581135870%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3934639347%_
                                          '1)))
                                      (_%target3580935867%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3934639347%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3581135870%_)
                                      (_%__match3942639427%_
                                       _%e3576036120%_
                                       _%hd3576136124%_
                                       _%tl3576236127%_
                                       _%e3576336130%_
                                       _%hd3576436134%_
                                       _%tl3576536137%_
                                       _%__splice3934639347%_
                                       _%target3580935867%_
                                       _%tl3581135870%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3575735840%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3575735840%_))))))
                  (if (gx#stx-pair/null? _%hd3576436134%_)
                      (let ((_%__splice3934639347%_
                             (gx#syntax-split-splice _%hd3576436134%_ '0)))
                        (let ((_%tl3581135870%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3934639347%_ '1)))
                              (_%target3580935867%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3934639347%_ '0))))
                          (if (gx#stx-null? _%tl3581135870%_)
                              (_%__match3942639427%_
                               _%e3576036120%_
                               _%hd3576136124%_
                               _%tl3576236127%_
                               _%e3576336130%_
                               _%hd3576436134%_
                               _%tl3576536137%_
                               _%__splice3934639347%_
                               _%target3580935867%_
                               _%tl3581135870%_)
                              (let ()
                                (declare (not safe))
                                (_%g3575735840%_)))))
                      (let () (declare (not safe)) (_%g3575735840%_))))
              (if (gx#stx-pair/null? _%hd3576436134%_)
                  (let ((_%__splice3934639347%_
                         (gx#syntax-split-splice _%hd3576436134%_ '0)))
                    (let ((_%tl3581135870%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3934639347%_ '1)))
                          (_%target3580935867%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3934639347%_ '0))))
                      (if (gx#stx-null? _%tl3581135870%_)
                          (_%__match3942639427%_
                           _%e3576036120%_
                           _%hd3576136124%_
                           _%tl3576236127%_
                           _%e3576336130%_
                           _%hd3576436134%_
                           _%tl3576536137%_
                           _%__splice3934639347%_
                           _%target3580935867%_
                           _%tl3581135870%_)
                          (let () (declare (not safe)) (_%g3575735840%_)))))
                  (let () (declare (not safe)) (_%g3575735840%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3576436134%_)
                                                  (let ((_%__splice3934639347%_
                                                         (gx#syntax-split-splice
                                                          _%hd3576436134%_
                                                          '0)))
                                                    (let ((_%tl3581135870%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3934639347%_
                                                              '1)))
                                                          (_%target3580935867%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3934639347%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3581135870%_)
                                                          (_%__match3942639427%_
                                                           _%e3576036120%_
                                                           _%hd3576136124%_
                                                           _%tl3576236127%_
                                                           _%e3576336130%_
                                                           _%hd3576436134%_
                                                           _%tl3576536137%_
                                                           _%__splice3934639347%_
                                                           _%target3580935867%_
                                                           _%tl3581135870%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3575735840%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3575735840%_))))))
                                      (if (gx#stx-pair/null? _%hd3576436134%_)
                                          (let ((_%__splice3934639347%_
                                                 (gx#syntax-split-splice
                                                  _%hd3576436134%_
                                                  '0)))
                                            (let ((_%tl3581135870%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3934639347%_
                                                      '1)))
                                                  (_%target3580935867%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3934639347%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3581135870%_)
                                                  (_%__match3942639427%_
                                                   _%e3576036120%_
                                                   _%hd3576136124%_
                                                   _%tl3576236127%_
                                                   _%e3576336130%_
                                                   _%hd3576436134%_
                                                   _%tl3576536137%_
                                                   _%__splice3934639347%_
                                                   _%target3580935867%_
                                                   _%tl3581135870%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3575735840%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3575735840%_)))))))
                          (let () (declare (not safe)) (_%g3575735840%_)))))
                  (let () (declare (not safe)) (_%g3575735840%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36203%_)
        (let* ((_%__stx3942939430%_ _%$stx36203%_)
               (_%g3620836260%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3942939430%_))))
          (let ((_%__kont3943239433%_
                 (lambda (_%L36430%_
                          _%L36432%_
                          _%L36433%_
                          _%L36434%_
                          _%L36435%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%L36434%_ (cons _%L36433%_ '()))
                                     '())
                               (cons (cons _%L36435%_
                                           (cons _%L36432%_
                                                 (foldr (lambda (_%g3646036463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3646136466%_)
                  (cons _%g3646036463%_ _%g3646136466%_))
                '()
                _%L36430%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3943639437%_
                 (lambda (_%L36317%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3633436337%_ _%g3633536340%_)
                                        (cons _%g3633436337%_ _%g3633536340%_))
                                      '()
                                      _%L36317%_))))))
            (let* ((_%__match3950239503%_
                    (lambda (_%e3624036267%_
                             _%hd3624136271%_
                             _%tl3624236274%_
                             _%e3624336277%_
                             _%hd3624436281%_
                             _%tl3624536284%_
                             _%__splice3943839439%_
                             _%target3624636287%_
                             _%tl3624836290%_)
                      (letrec ((_%loop3624936293%_
                                (lambda (_%hd3624736297%_ _%body3625336300%_)
                                  (if (gx#stx-pair? _%hd3624736297%_)
                                      (let ((_%e3625036303%_
                                             (gx#syntax-e _%hd3624736297%_)))
                                        (let ((_%lp-tl3625236310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3625036303%_)))
                                              (_%lp-hd3625136307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3625036303%_))))
                                          (_%loop3624936293%_
                                           _%lp-tl3625236310%_
                                           (cons _%lp-hd3625136307%_
                                                 _%body3625336300%_))))
                                      (let ((_%body3625436313%_
                                             (reverse _%body3625336300%_)))
                                        (_%__kont3943639437%_
                                         _%body3625436313%_))))))
                        (_%loop3624936293%_ _%target3624636287%_ '()))))
                   (_%__match3948039481%_
                    (lambda (_%e3621536350%_
                             _%hd3621636354%_
                             _%tl3621736357%_
                             _%e3621836360%_
                             _%hd3621936364%_
                             _%tl3622036367%_
                             _%e3622136370%_
                             _%hd3622236374%_
                             _%tl3622336377%_
                             _%e3622436380%_
                             _%hd3622536384%_
                             _%tl3622636387%_
                             _%e3622736390%_
                             _%hd3622836394%_
                             _%tl3622936397%_
                             _%__splice3943439435%_
                             _%target3623036400%_
                             _%tl3623236403%_)
                      (letrec ((_%loop3623336406%_
                                (lambda (_%hd3623136410%_ _%body3623736413%_)
                                  (if (gx#stx-pair? _%hd3623136410%_)
                                      (let ((_%e3623436416%_
                                             (gx#syntax-e _%hd3623136410%_)))
                                        (let ((_%lp-tl3623636423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3623436416%_)))
                                              (_%lp-hd3623536420%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3623436416%_))))
                                          (_%loop3623336406%_
                                           _%lp-tl3623636423%_
                                           (cons _%lp-hd3623536420%_
                                                 _%body3623736413%_))))
                                      (let ((_%body3623836426%_
                                             (reverse _%body3623736413%_)))
                                        (_%__kont3943239433%_
                                         _%body3623836426%_
                                         _%tl3622336377%_
                                         _%hd3622836394%_
                                         _%hd3622536384%_
                                         _%hd3621636354%_))))))
                        (_%loop3623336406%_ _%target3623036400%_ '())))))
              (if (gx#stx-pair? _%__stx3942939430%_)
                  (let ((_%e3621536350%_ (gx#syntax-e _%__stx3942939430%_)))
                    (let ((_%tl3621736357%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3621536350%_)))
                          (_%hd3621636354%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3621536350%_))))
                      (if (gx#stx-pair? _%tl3621736357%_)
                          (let ((_%e3621836360%_
                                 (gx#syntax-e _%tl3621736357%_)))
                            (let ((_%tl3622036367%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3621836360%_)))
                                  (_%hd3621936364%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3621836360%_))))
                              (if (gx#stx-pair? _%hd3621936364%_)
                                  (let ((_%e3622136370%_
                                         (gx#syntax-e _%hd3621936364%_)))
                                    (let ((_%tl3622336377%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3622136370%_)))
                                          (_%hd3622236374%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3622136370%_))))
                                      (if (gx#stx-pair? _%hd3622236374%_)
                                          (let ((_%e3622436380%_
                                                 (gx#syntax-e
                                                  _%hd3622236374%_)))
                                            (let ((_%tl3622636387%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3622436380%_)))
                                                  (_%hd3622536384%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3622436380%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3622636387%_)
                                                  (let ((_%e3622736390%_
                                                         (gx#syntax-e
                                                          _%tl3622636387%_)))
                                                    (let ((_%tl3622936397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3622736390%_)))
                                                          (_%hd3622836394%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3622736390%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3622936397%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3622036367%_)
                                                              (let ((_%__splice3943439435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl3622036367%_ '0)))
                        (let ((_%tl3623236403%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3943439435%_ '1)))
                              (_%target3623036400%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3943439435%_ '0))))
                          (if (gx#stx-null? _%tl3623236403%_)
                              (_%__match3948039481%_
                               _%e3621536350%_
                               _%hd3621636354%_
                               _%tl3621736357%_
                               _%e3621836360%_
                               _%hd3621936364%_
                               _%tl3622036367%_
                               _%e3622136370%_
                               _%hd3622236374%_
                               _%tl3622336377%_
                               _%e3622436380%_
                               _%hd3622536384%_
                               _%tl3622636387%_
                               _%e3622736390%_
                               _%hd3622836394%_
                               _%tl3622936397%_
                               _%__splice3943439435%_
                               _%target3623036400%_
                               _%tl3623236403%_)
                              (let ()
                                (declare (not safe))
                                (_%g3620836260%_)))))
                      (let () (declare (not safe)) (_%g3620836260%_)))
                  (let () (declare (not safe)) (_%g3620836260%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3620836260%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3620836260%_)))))
                                  (if (gx#stx-null? _%hd3621936364%_)
                                      (if (gx#stx-pair/null? _%tl3622036367%_)
                                          (let ((_%__splice3943839439%_
                                                 (gx#syntax-split-splice
                                                  _%tl3622036367%_
                                                  '0)))
                                            (let ((_%tl3624836290%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3943839439%_
                                                      '1)))
                                                  (_%target3624636287%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3943839439%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3624836290%_)
                                                  (_%__match3950239503%_
                                                   _%e3621536350%_
                                                   _%hd3621636354%_
                                                   _%tl3621736357%_
                                                   _%e3621836360%_
                                                   _%hd3621936364%_
                                                   _%tl3622036367%_
                                                   _%__splice3943839439%_
                                                   _%target3624636287%_
                                                   _%tl3624836290%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3620836260%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3620836260%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3620836260%_))))))
                          (let () (declare (not safe)) (_%g3620836260%_)))))
                  (let () (declare (not safe)) (_%g3620836260%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx36475%_)
        (let* ((_%__stx3950539506%_ _%$stx36475%_)
               (_%g3648636632%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3950539506%_))))
          (let ((_%__kont3950839509%_
                 (lambda (_%L37236%_ _%L37238%_ _%L37239%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3726037263%_ _%g3726137266%_)
                                  (cons (cons _%L37239%_
                                              (cons _%g3726037263%_
                                                    (cons _%L37236%_ '())))
                                        _%g3726137266%_))
                                '()
                                _%L37238%_))))
                (_%__kont3951239513%_
                 (lambda (_%L37126%_ _%L37128%_ _%L37129%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3715037153%_ _%g3715137156%_)
                                  (cons (cons _%L37129%_
                                              (cons _%g3715037153%_
                                                    (cons _%L37126%_ '())))
                                        _%g3715137156%_))
                                '()
                                _%L37128%_))))
                (_%__kont3951639517%_
                 (lambda (_%L37026%_ _%L37028%_ _%L37029%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%L37029%_
                                     (cons _%L37028%_ (cons _%L37026%_ '())))
                               '()))))
                (_%__kont3951839519%_
                 (lambda (_%L36952%_ _%L36954%_)
                   (cons _%L36954%_ (cons _%L36952%_ '()))))
                (_%__kont3952039521%_
                 (lambda (_%L36900%_ _%L36902%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%L36902%_
                                           (cons _%L36900%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont3952239523%_
                 (lambda (_%L36852%_ _%L36854%_ _%L36855%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%L36855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L36854%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36852%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3952439525%_
                 (lambda (_%L36783%_ _%L36785%_ _%L36786%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36786%_
                                                       (cons _%L36785%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36783%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3952639527%_
                 (lambda (_%L36703%_ _%L36705%_ _%L36706%_ _%L36707%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36707%_
                                                       (cons _%L36706%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36703%_
                                                             (cons (cons _%L36705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match3967839679%_
                    (lambda (_%e3657636812%_
                             _%hd3657736816%_
                             _%tl3657836819%_
                             _%e3657936822%_
                             _%hd3658036826%_
                             _%tl3658136829%_
                             _%e3658236832%_
                             _%hd3658336836%_
                             _%tl3658436839%_)
                      (if (gx#identifier? _%hd3658336836%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39880_|
                               _%hd3658336836%_)
                              (if (gx#stx-pair? _%tl3658436839%_)
                                  (let ((_%e3658536842%_
                                         (gx#syntax-e _%tl3658436839%_)))
                                    (let ((_%tl3658736849%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3658536842%_)))
                                          (_%hd3658636846%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3658536842%_))))
                                      (if (gx#stx-null? _%tl3658736849%_)
                                          (_%__kont3952239523%_
                                           _%hd3658636846%_
                                           _%hd3658036826%_
                                           _%hd3657736816%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3648636632%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3648636632%_)))
                              (let () (declare (not safe)) (_%g3648636632%_)))
                          (if (gx#stx-datum? _%hd3658336836%_)
                              (let ((_%e3660036769%_
                                     (gx#stx-e _%hd3658336836%_)))
                                (if (equal? _%e3660036769%_ '::)
                                    (if (gx#stx-pair? _%tl3658436839%_)
                                        (let ((_%e3660136773%_
                                               (gx#syntax-e _%tl3658436839%_)))
                                          (let ((_%tl3660336780%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3660136773%_)))
                                                (_%hd3660236777%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3660136773%_))))
                                            (if (gx#stx-null? _%tl3660336780%_)
                                                (_%__kont3952439525%_
                                                 _%hd3660236777%_
                                                 _%hd3658036826%_
                                                 _%hd3657736816%_)
                                                (if (gx#stx-pair?
                                                     _%tl3660336780%_)
                                                    (let ((_%e3662136683%_
                                                           (gx#syntax-e
                                                            _%tl3660336780%_)))
                                                      (let ((_%tl3662336690%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3662136683%_)))
                    (_%hd3662236687%_
                     (let () (declare (not safe)) (##car _%e3662136683%_))))
                (if (gx#identifier? _%hd3662236687%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39881_|
                         _%hd3662236687%_)
                        (if (gx#stx-pair? _%tl3662336690%_)
                            (let ((_%e3662436693%_
                                   (gx#syntax-e _%tl3662336690%_)))
                              (let ((_%tl3662636700%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3662436693%_)))
                                    (_%hd3662536697%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3662436693%_))))
                                (if (gx#stx-null? _%tl3662636700%_)
                                    (_%__kont3952639527%_
                                     _%hd3662536697%_
                                     _%hd3660236777%_
                                     _%hd3658036826%_
                                     _%hd3657736816%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3648636632%_)))))
                            (let () (declare (not safe)) (_%g3648636632%_)))
                        (let () (declare (not safe)) (_%g3648636632%_)))
                    (let () (declare (not safe)) (_%g3648636632%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3648636632%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3648636632%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3648636632%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3648636632%_))))))
                   (_%__match3965839659%_
                    (lambda (_%e3656736880%_
                             _%hd3656836884%_
                             _%tl3656936887%_
                             _%e3657036890%_
                             _%hd3657136894%_
                             _%tl3657236897%_)
                      (if (gx#stx-null? _%tl3657236897%_)
                          (_%__kont3952039521%_
                           _%hd3657136894%_
                           _%hd3656836884%_)
                          (if (gx#stx-pair? _%tl3657236897%_)
                              (let ((_%e3658236832%_
                                     (gx#syntax-e _%tl3657236897%_)))
                                (let ((_%tl3658436839%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3658236832%_)))
                                      (_%hd3658336836%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3658236832%_))))
                                  (if (gx#identifier? _%hd3658336836%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39880_|
                                           _%hd3658336836%_)
                                          (if (gx#stx-pair? _%tl3658436839%_)
                                              (let ((_%e3658536842%_
                                                     (gx#syntax-e
                                                      _%tl3658436839%_)))
                                                (let ((_%tl3658736849%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3658536842%_)))
                                                      (_%hd3658636846%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3658536842%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3658736849%_)
                                                      (_%__kont3952239523%_
                                                       _%hd3658636846%_
                                                       _%hd3657136894%_
                                                       _%hd3656836884%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3648636632%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3648636632%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3648636632%_)))
                                      (if (gx#stx-datum? _%hd3658336836%_)
                                          (let ((_%e3660036769%_
                                                 (gx#stx-e _%hd3658336836%_)))
                                            (if (equal? _%e3660036769%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3658436839%_)
                                                    (let ((_%e3660136773%_
                                                           (gx#syntax-e
                                                            _%tl3658436839%_)))
                                                      (let ((_%tl3660336780%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3660136773%_)))
                    (_%hd3660236777%_
                     (let () (declare (not safe)) (##car _%e3660136773%_))))
                (if (gx#stx-null? _%tl3660336780%_)
                    (_%__kont3952439525%_
                     _%hd3660236777%_
                     _%hd3657136894%_
                     _%hd3656836884%_)
                    (if (gx#stx-pair? _%tl3660336780%_)
                        (let ((_%e3662136683%_ (gx#syntax-e _%tl3660336780%_)))
                          (let ((_%tl3662336690%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3662136683%_)))
                                (_%hd3662236687%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3662136683%_))))
                            (if (gx#identifier? _%hd3662236687%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39881_|
                                     _%hd3662236687%_)
                                    (if (gx#stx-pair? _%tl3662336690%_)
                                        (let ((_%e3662436693%_
                                               (gx#syntax-e _%tl3662336690%_)))
                                          (let ((_%tl3662636700%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3662436693%_)))
                                                (_%hd3662536697%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3662436693%_))))
                                            (if (gx#stx-null? _%tl3662636700%_)
                                                (_%__kont3952639527%_
                                                 _%hd3662536697%_
                                                 _%hd3660236777%_
                                                 _%hd3657136894%_
                                                 _%hd3656836884%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3648636632%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3648636632%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3648636632%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3648636632%_)))))
                        (let () (declare (not safe)) (_%g3648636632%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3648636632%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3648636632%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3648636632%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3648636632%_))))))
                   (_%__match3958839589%_
                    (lambda (_%e3651537056%_
                             _%hd3651637060%_
                             _%tl3651737063%_
                             _%e3651837066%_
                             _%hd3651937070%_
                             _%tl3652037073%_
                             _%e3652137076%_
                             _%hd3652237080%_
                             _%tl3652337083%_
                             _%__splice3951439515%_
                             _%target3652437086%_
                             _%tl3652637089%_)
                      (letrec ((_%loop3652737092%_
                                (lambda (_%hd3652537096%_ _%pred3653137099%_)
                                  (if (gx#stx-pair? _%hd3652537096%_)
                                      (let ((_%e3652837102%_
                                             (gx#syntax-e _%hd3652537096%_)))
                                        (let ((_%lp-tl3653037109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3652837102%_)))
                                              (_%lp-hd3652937106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3652837102%_))))
                                          (_%loop3652737092%_
                                           _%lp-tl3653037109%_
                                           (cons _%lp-hd3652937106%_
                                                 _%pred3653137099%_))))
                                      (let ((_%pred3653237112%_
                                             (reverse _%pred3653137099%_)))
                                        (if (gx#stx-pair? _%tl3652037073%_)
                                            (let ((_%e3653337116%_
                                                   (gx#syntax-e
                                                    _%tl3652037073%_)))
                                              (let ((_%tl3653537123%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3653337116%_)))
                                                    (_%hd3653437120%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3653337116%_))))
                                                (if (gx#stx-null?
                                                     _%tl3653537123%_)
                                                    (_%__kont3951239513%_
                                                     _%hd3653437120%_
                                                     _%pred3653237112%_
                                                     _%hd3651637060%_)
                                                    (_%__match3967839679%_
                                                     _%e3651537056%_
                                                     _%hd3651637060%_
                                                     _%tl3651737063%_
                                                     _%e3651837066%_
                                                     _%hd3651937070%_
                                                     _%tl3652037073%_
                                                     _%e3653337116%_
                                                     _%hd3653437120%_
                                                     _%tl3653537123%_))))
                                            (_%__match3965839659%_
                                             _%e3651537056%_
                                             _%hd3651637060%_
                                             _%tl3651737063%_
                                             _%e3651837066%_
                                             _%hd3651937070%_
                                             _%tl3652037073%_)))))))
                        (_%loop3652737092%_ _%target3652437086%_ '()))))
                   (_%__match3955839559%_
                    (lambda (_%e3649137166%_
                             _%hd3649237170%_
                             _%tl3649337173%_
                             _%e3649437176%_
                             _%hd3649537180%_
                             _%tl3649637183%_
                             _%e3649737186%_
                             _%hd3649837190%_
                             _%tl3649937193%_
                             _%__splice3951039511%_
                             _%target3650037196%_
                             _%tl3650237199%_)
                      (letrec ((_%loop3650337202%_
                                (lambda (_%hd3650137206%_ _%pred3650737209%_)
                                  (if (gx#stx-pair? _%hd3650137206%_)
                                      (let ((_%e3650437212%_
                                             (gx#syntax-e _%hd3650137206%_)))
                                        (let ((_%lp-tl3650637219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3650437212%_)))
                                              (_%lp-hd3650537216%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3650437212%_))))
                                          (_%loop3650337202%_
                                           _%lp-tl3650637219%_
                                           (cons _%lp-hd3650537216%_
                                                 _%pred3650737209%_))))
                                      (let ((_%pred3650837222%_
                                             (reverse _%pred3650737209%_)))
                                        (if (gx#stx-pair? _%tl3649637183%_)
                                            (let ((_%e3650937226%_
                                                   (gx#syntax-e
                                                    _%tl3649637183%_)))
                                              (let ((_%tl3651137233%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3650937226%_)))
                                                    (_%hd3651037230%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3650937226%_))))
                                                (if (gx#stx-null?
                                                     _%tl3651137233%_)
                                                    (_%__kont3950839509%_
                                                     _%hd3651037230%_
                                                     _%pred3650837222%_
                                                     _%hd3649237170%_)
                                                    (_%__match3967839679%_
                                                     _%e3649137166%_
                                                     _%hd3649237170%_
                                                     _%tl3649337173%_
                                                     _%e3649437176%_
                                                     _%hd3649537180%_
                                                     _%tl3649637183%_
                                                     _%e3650937226%_
                                                     _%hd3651037230%_
                                                     _%tl3651137233%_))))
                                            (_%__match3965839659%_
                                             _%e3649137166%_
                                             _%hd3649237170%_
                                             _%tl3649337173%_
                                             _%e3649437176%_
                                             _%hd3649537180%_
                                             _%tl3649637183%_)))))))
                        (_%loop3650337202%_ _%target3650037196%_ '())))))
              (if (gx#stx-pair? _%__stx3950539506%_)
                  (let ((_%e3649137166%_ (gx#syntax-e _%__stx3950539506%_)))
                    (let ((_%tl3649337173%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3649137166%_)))
                          (_%hd3649237170%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3649137166%_))))
                      (if (gx#stx-pair? _%tl3649337173%_)
                          (let ((_%e3649437176%_
                                 (gx#syntax-e _%tl3649337173%_)))
                            (let ((_%tl3649637183%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3649437176%_)))
                                  (_%hd3649537180%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3649437176%_))))
                              (if (gx#stx-pair? _%hd3649537180%_)
                                  (let ((_%e3649737186%_
                                         (gx#syntax-e _%hd3649537180%_)))
                                    (let ((_%tl3649937193%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3649737186%_)))
                                          (_%hd3649837190%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3649737186%_))))
                                      (if (gx#identifier? _%hd3649837190%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39882_|
                                               _%hd3649837190%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3649937193%_)
                                                  (let ((_%__splice3951039511%_
                                                         (gx#syntax-split-splice
                                                          _%tl3649937193%_
                                                          '0)))
                                                    (let ((_%tl3650237199%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3951039511%_
                                                              '1)))
                                                          (_%target3650037196%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3951039511%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3650237199%_)
                                                          (_%__match3955839559%_
                                                           _%e3649137166%_
                                                           _%hd3649237170%_
                                                           _%tl3649337173%_
                                                           _%e3649437176%_
                                                           _%hd3649537180%_
                                                           _%tl3649637183%_
                                                           _%e3649737186%_
                                                           _%hd3649837190%_
                                                           _%tl3649937193%_
                                                           _%__splice3951039511%_
                                                           _%target3650037196%_
                                                           _%tl3650237199%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3649637183%_)
                                                              (let ((_%e3656236942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3649637183%_)))
                        (let ((_%tl3656436949%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3656236942%_)))
                              (_%hd3656336946%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3656236942%_))))
                          (if (gx#stx-null? _%tl3656436949%_)
                              (_%__kont3951839519%_
                               _%hd3656336946%_
                               _%hd3649537180%_)
                              (if (gx#identifier? _%hd3656336946%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39880_|
                                       _%hd3656336946%_)
                                      (if (gx#stx-pair? _%tl3656436949%_)
                                          (let ((_%e3658536842%_
                                                 (gx#syntax-e
                                                  _%tl3656436949%_)))
                                            (let ((_%tl3658736849%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3658536842%_)))
                                                  (_%hd3658636846%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3658536842%_))))
                                              (if (gx#stx-null?
                                                   _%tl3658736849%_)
                                                  (_%__kont3952239523%_
                                                   _%hd3658636846%_
                                                   _%hd3649537180%_
                                                   _%hd3649237170%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3648636632%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3648636632%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3648636632%_)))
                                  (if (gx#stx-datum? _%hd3656336946%_)
                                      (let ((_%e3660036769%_
                                             (gx#stx-e _%hd3656336946%_)))
                                        (if (equal? _%e3660036769%_ '::)
                                            (if (gx#stx-pair? _%tl3656436949%_)
                                                (let ((_%e3660136773%_
                                                       (gx#syntax-e
                                                        _%tl3656436949%_)))
                                                  (let ((_%tl3660336780%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3660136773%_)))
                                                        (_%hd3660236777%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3660136773%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3660336780%_)
                                                        (_%__kont3952439525%_
                                                         _%hd3660236777%_
                                                         _%hd3649537180%_
                                                         _%hd3649237170%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3660336780%_)
                                                            (let ((_%e3662136683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3660336780%_)))
                      (let ((_%tl3662336690%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3662136683%_)))
                            (_%hd3662236687%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3662136683%_))))
                        (if (gx#identifier? _%hd3662236687%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39881_|
                                 _%hd3662236687%_)
                                (if (gx#stx-pair? _%tl3662336690%_)
                                    (let ((_%e3662436693%_
                                           (gx#syntax-e _%tl3662336690%_)))
                                      (let ((_%tl3662636700%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3662436693%_)))
                                            (_%hd3662536697%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3662436693%_))))
                                        (if (gx#stx-null? _%tl3662636700%_)
                                            (_%__kont3952639527%_
                                             _%hd3662536697%_
                                             _%hd3660236777%_
                                             _%hd3649537180%_
                                             _%hd3649237170%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3648636632%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3648636632%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3648636632%_)))
                            (let () (declare (not safe)) (_%g3648636632%_)))))
                    (let () (declare (not safe)) (_%g3648636632%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3648636632%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3648636632%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3648636632%_)))))))
                      (if (gx#stx-null? _%tl3649637183%_)
                          (_%__kont3952039521%_
                           _%hd3649537180%_
                           _%hd3649237170%_)
                          (let () (declare (not safe)) (_%g3648636632%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3649637183%_)
                                                      (let ((_%e3656236942%_
                                                             (gx#syntax-e
                                                              _%tl3649637183%_)))
                                                        (let ((_%tl3656436949%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3656236942%_)))
                      (_%hd3656336946%_
                       (let () (declare (not safe)) (##car _%e3656236942%_))))
                  (if (gx#stx-null? _%tl3656436949%_)
                      (_%__kont3951839519%_ _%hd3656336946%_ _%hd3649537180%_)
                      (if (gx#identifier? _%hd3656336946%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39880_|
                               _%hd3656336946%_)
                              (if (gx#stx-pair? _%tl3656436949%_)
                                  (let ((_%e3658536842%_
                                         (gx#syntax-e _%tl3656436949%_)))
                                    (let ((_%tl3658736849%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3658536842%_)))
                                          (_%hd3658636846%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3658536842%_))))
                                      (if (gx#stx-null? _%tl3658736849%_)
                                          (_%__kont3952239523%_
                                           _%hd3658636846%_
                                           _%hd3649537180%_
                                           _%hd3649237170%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3648636632%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3648636632%_)))
                              (let () (declare (not safe)) (_%g3648636632%_)))
                          (if (gx#stx-datum? _%hd3656336946%_)
                              (let ((_%e3660036769%_
                                     (gx#stx-e _%hd3656336946%_)))
                                (if (equal? _%e3660036769%_ '::)
                                    (if (gx#stx-pair? _%tl3656436949%_)
                                        (let ((_%e3660136773%_
                                               (gx#syntax-e _%tl3656436949%_)))
                                          (let ((_%tl3660336780%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3660136773%_)))
                                                (_%hd3660236777%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3660136773%_))))
                                            (if (gx#stx-null? _%tl3660336780%_)
                                                (_%__kont3952439525%_
                                                 _%hd3660236777%_
                                                 _%hd3649537180%_
                                                 _%hd3649237170%_)
                                                (if (gx#stx-pair?
                                                     _%tl3660336780%_)
                                                    (let ((_%e3662136683%_
                                                           (gx#syntax-e
                                                            _%tl3660336780%_)))
                                                      (let ((_%tl3662336690%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3662136683%_)))
                    (_%hd3662236687%_
                     (let () (declare (not safe)) (##car _%e3662136683%_))))
                (if (gx#identifier? _%hd3662236687%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39881_|
                         _%hd3662236687%_)
                        (if (gx#stx-pair? _%tl3662336690%_)
                            (let ((_%e3662436693%_
                                   (gx#syntax-e _%tl3662336690%_)))
                              (let ((_%tl3662636700%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3662436693%_)))
                                    (_%hd3662536697%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3662436693%_))))
                                (if (gx#stx-null? _%tl3662636700%_)
                                    (_%__kont3952639527%_
                                     _%hd3662536697%_
                                     _%hd3660236777%_
                                     _%hd3649537180%_
                                     _%hd3649237170%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3648636632%_)))))
                            (let () (declare (not safe)) (_%g3648636632%_)))
                        (let () (declare (not safe)) (_%g3648636632%_)))
                    (let () (declare (not safe)) (_%g3648636632%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3648636632%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3648636632%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3648636632%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3648636632%_)))))))
              (if (gx#stx-null? _%tl3649637183%_)
                  (_%__kont3952039521%_ _%hd3649537180%_ _%hd3649237170%_)
                  (let () (declare (not safe)) (_%g3648636632%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39883_|
                                                   _%hd3649837190%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3649937193%_)
                                                      (let ((_%__splice3951439515%_
                                                             (gx#syntax-split-splice
                                                              _%tl3649937193%_
                                                              '0)))
                                                        (let ((_%tl3652637089%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice3951439515%_ '1)))
                      (_%target3652437086%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice3951439515%_ '0))))
                  (if (gx#stx-null? _%tl3652637089%_)
                      (_%__match3958839589%_
                       _%e3649137166%_
                       _%hd3649237170%_
                       _%tl3649337173%_
                       _%e3649437176%_
                       _%hd3649537180%_
                       _%tl3649637183%_
                       _%e3649737186%_
                       _%hd3649837190%_
                       _%tl3649937193%_
                       _%__splice3951439515%_
                       _%target3652437086%_
                       _%tl3652637089%_)
                      (if (gx#stx-pair? _%tl3649637183%_)
                          (let ((_%e3656236942%_
                                 (gx#syntax-e _%tl3649637183%_)))
                            (let ((_%tl3656436949%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3656236942%_)))
                                  (_%hd3656336946%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3656236942%_))))
                              (if (gx#stx-null? _%tl3656436949%_)
                                  (_%__kont3951839519%_
                                   _%hd3656336946%_
                                   _%hd3649537180%_)
                                  (if (gx#identifier? _%hd3656336946%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39880_|
                                           _%hd3656336946%_)
                                          (if (gx#stx-pair? _%tl3656436949%_)
                                              (let ((_%e3658536842%_
                                                     (gx#syntax-e
                                                      _%tl3656436949%_)))
                                                (let ((_%tl3658736849%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3658536842%_)))
                                                      (_%hd3658636846%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3658536842%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3658736849%_)
                                                      (_%__kont3952239523%_
                                                       _%hd3658636846%_
                                                       _%hd3649537180%_
                                                       _%hd3649237170%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3648636632%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3648636632%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3648636632%_)))
                                      (if (gx#stx-datum? _%hd3656336946%_)
                                          (let ((_%e3660036769%_
                                                 (gx#stx-e _%hd3656336946%_)))
                                            (if (equal? _%e3660036769%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3656436949%_)
                                                    (let ((_%e3660136773%_
                                                           (gx#syntax-e
                                                            _%tl3656436949%_)))
                                                      (let ((_%tl3660336780%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3660136773%_)))
                    (_%hd3660236777%_
                     (let () (declare (not safe)) (##car _%e3660136773%_))))
                (if (gx#stx-null? _%tl3660336780%_)
                    (_%__kont3952439525%_
                     _%hd3660236777%_
                     _%hd3649537180%_
                     _%hd3649237170%_)
                    (if (gx#stx-pair? _%tl3660336780%_)
                        (let ((_%e3662136683%_ (gx#syntax-e _%tl3660336780%_)))
                          (let ((_%tl3662336690%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3662136683%_)))
                                (_%hd3662236687%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3662136683%_))))
                            (if (gx#identifier? _%hd3662236687%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39881_|
                                     _%hd3662236687%_)
                                    (if (gx#stx-pair? _%tl3662336690%_)
                                        (let ((_%e3662436693%_
                                               (gx#syntax-e _%tl3662336690%_)))
                                          (let ((_%tl3662636700%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3662436693%_)))
                                                (_%hd3662536697%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3662436693%_))))
                                            (if (gx#stx-null? _%tl3662636700%_)
                                                (_%__kont3952639527%_
                                                 _%hd3662536697%_
                                                 _%hd3660236777%_
                                                 _%hd3649537180%_
                                                 _%hd3649237170%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3648636632%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3648636632%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3648636632%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3648636632%_)))))
                        (let () (declare (not safe)) (_%g3648636632%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3648636632%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3648636632%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3648636632%_)))))))
                          (if (gx#stx-null? _%tl3649637183%_)
                              (_%__kont3952039521%_
                               _%hd3649537180%_
                               _%hd3649237170%_)
                              (let ()
                                (declare (not safe))
                                (_%g3648636632%_)))))))
              (if (gx#stx-pair? _%tl3649637183%_)
                  (let ((_%e3656236942%_ (gx#syntax-e _%tl3649637183%_)))
                    (let ((_%tl3656436949%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3656236942%_)))
                          (_%hd3656336946%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3656236942%_))))
                      (if (gx#stx-null? _%tl3656436949%_)
                          (_%__kont3951839519%_
                           _%hd3656336946%_
                           _%hd3649537180%_)
                          (if (gx#identifier? _%hd3656336946%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39880_|
                                   _%hd3656336946%_)
                                  (if (gx#stx-pair? _%tl3656436949%_)
                                      (let ((_%e3658536842%_
                                             (gx#syntax-e _%tl3656436949%_)))
                                        (let ((_%tl3658736849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3658536842%_)))
                                              (_%hd3658636846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3658536842%_))))
                                          (if (gx#stx-null? _%tl3658736849%_)
                                              (_%__kont3952239523%_
                                               _%hd3658636846%_
                                               _%hd3649537180%_
                                               _%hd3649237170%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3648636632%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3648636632%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3648636632%_)))
                              (if (gx#stx-datum? _%hd3656336946%_)
                                  (let ((_%e3660036769%_
                                         (gx#stx-e _%hd3656336946%_)))
                                    (if (equal? _%e3660036769%_ '::)
                                        (if (gx#stx-pair? _%tl3656436949%_)
                                            (let ((_%e3660136773%_
                                                   (gx#syntax-e
                                                    _%tl3656436949%_)))
                                              (let ((_%tl3660336780%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3660136773%_)))
                                                    (_%hd3660236777%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3660136773%_))))
                                                (if (gx#stx-null?
                                                     _%tl3660336780%_)
                                                    (_%__kont3952439525%_
                                                     _%hd3660236777%_
                                                     _%hd3649537180%_
                                                     _%hd3649237170%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3660336780%_)
                                                        (let ((_%e3662136683%_
                                                               (gx#syntax-e
                                                                _%tl3660336780%_)))
                                                          (let ((_%tl3662336690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3662136683%_)))
                        (_%hd3662236687%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3662136683%_))))
                    (if (gx#identifier? _%hd3662236687%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39881_|
                             _%hd3662236687%_)
                            (if (gx#stx-pair? _%tl3662336690%_)
                                (let ((_%e3662436693%_
                                       (gx#syntax-e _%tl3662336690%_)))
                                  (let ((_%tl3662636700%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3662436693%_)))
                                        (_%hd3662536697%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3662436693%_))))
                                    (if (gx#stx-null? _%tl3662636700%_)
                                        (_%__kont3952639527%_
                                         _%hd3662536697%_
                                         _%hd3660236777%_
                                         _%hd3649537180%_
                                         _%hd3649237170%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3648636632%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3648636632%_)))
                            (let () (declare (not safe)) (_%g3648636632%_)))
                        (let () (declare (not safe)) (_%g3648636632%_)))))
                (let () (declare (not safe)) (_%g3648636632%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3648636632%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3648636632%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3648636632%_)))))))
                  (if (gx#stx-null? _%tl3649637183%_)
                      (_%__kont3952039521%_ _%hd3649537180%_ _%hd3649237170%_)
                      (let () (declare (not safe)) (_%g3648636632%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39884_|
                                                       _%hd3649837190%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3649937193%_)
                                                          (let ((_%e3654837006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3649937193%_)))
                    (let ((_%tl3655037013%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3654837006%_)))
                          (_%hd3654937010%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3654837006%_))))
                      (if (gx#stx-null? _%tl3655037013%_)
                          (if (gx#stx-pair? _%tl3649637183%_)
                              (let ((_%e3655137016%_
                                     (gx#syntax-e _%tl3649637183%_)))
                                (let ((_%tl3655337023%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3655137016%_)))
                                      (_%hd3655237020%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3655137016%_))))
                                  (if (gx#stx-null? _%tl3655337023%_)
                                      (_%__kont3951639517%_
                                       _%hd3655237020%_
                                       _%hd3654937010%_
                                       _%hd3649237170%_)
                                      (if (gx#identifier? _%hd3655237020%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39880_|
                                               _%hd3655237020%_)
                                              (if (gx#stx-pair?
                                                   _%tl3655337023%_)
                                                  (let ((_%e3658536842%_
                                                         (gx#syntax-e
                                                          _%tl3655337023%_)))
                                                    (let ((_%tl3658736849%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3658536842%_)))
                                                          (_%hd3658636846%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3658536842%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3658736849%_)
                                                          (_%__kont3952239523%_
                                                           _%hd3658636846%_
                                                           _%hd3649537180%_
                                                           _%hd3649237170%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3648636632%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3648636632%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3648636632%_)))
                                          (if (gx#stx-datum? _%hd3655237020%_)
                                              (let ((_%e3660036769%_
                                                     (gx#stx-e
                                                      _%hd3655237020%_)))
                                                (if (equal? _%e3660036769%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3655337023%_)
                                                        (let ((_%e3660136773%_
                                                               (gx#syntax-e
                                                                _%tl3655337023%_)))
                                                          (let ((_%tl3660336780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3660136773%_)))
                        (_%hd3660236777%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3660136773%_))))
                    (if (gx#stx-null? _%tl3660336780%_)
                        (_%__kont3952439525%_
                         _%hd3660236777%_
                         _%hd3649537180%_
                         _%hd3649237170%_)
                        (if (gx#stx-pair? _%tl3660336780%_)
                            (let ((_%e3662136683%_
                                   (gx#syntax-e _%tl3660336780%_)))
                              (let ((_%tl3662336690%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3662136683%_)))
                                    (_%hd3662236687%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3662136683%_))))
                                (if (gx#identifier? _%hd3662236687%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39881_|
                                         _%hd3662236687%_)
                                        (if (gx#stx-pair? _%tl3662336690%_)
                                            (let ((_%e3662436693%_
                                                   (gx#syntax-e
                                                    _%tl3662336690%_)))
                                              (let ((_%tl3662636700%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3662436693%_)))
                                                    (_%hd3662536697%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3662436693%_))))
                                                (if (gx#stx-null?
                                                     _%tl3662636700%_)
                                                    (_%__kont3952639527%_
                                                     _%hd3662536697%_
                                                     _%hd3660236777%_
                                                     _%hd3649537180%_
                                                     _%hd3649237170%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3648636632%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3648636632%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3648636632%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3648636632%_)))))
                            (let () (declare (not safe)) (_%g3648636632%_))))))
                (let () (declare (not safe)) (_%g3648636632%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3648636632%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3648636632%_)))))))
                              (if (gx#stx-null? _%tl3649637183%_)
                                  (_%__kont3952039521%_
                                   _%hd3649537180%_
                                   _%hd3649237170%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3648636632%_))))
                          (if (gx#stx-pair? _%tl3649637183%_)
                              (let ((_%e3656236942%_
                                     (gx#syntax-e _%tl3649637183%_)))
                                (let ((_%tl3656436949%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3656236942%_)))
                                      (_%hd3656336946%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3656236942%_))))
                                  (if (gx#stx-null? _%tl3656436949%_)
                                      (_%__kont3951839519%_
                                       _%hd3656336946%_
                                       _%hd3649537180%_)
                                      (if (gx#identifier? _%hd3656336946%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39880_|
                                               _%hd3656336946%_)
                                              (if (gx#stx-pair?
                                                   _%tl3656436949%_)
                                                  (let ((_%e3658536842%_
                                                         (gx#syntax-e
                                                          _%tl3656436949%_)))
                                                    (let ((_%tl3658736849%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3658536842%_)))
                                                          (_%hd3658636846%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3658536842%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3658736849%_)
                                                          (_%__kont3952239523%_
                                                           _%hd3658636846%_
                                                           _%hd3649537180%_
                                                           _%hd3649237170%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3648636632%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3648636632%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3648636632%_)))
                                          (if (gx#stx-datum? _%hd3656336946%_)
                                              (let ((_%e3660036769%_
                                                     (gx#stx-e
                                                      _%hd3656336946%_)))
                                                (if (equal? _%e3660036769%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3656436949%_)
                                                        (let ((_%e3660136773%_
                                                               (gx#syntax-e
                                                                _%tl3656436949%_)))
                                                          (let ((_%tl3660336780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3660136773%_)))
                        (_%hd3660236777%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3660136773%_))))
                    (if (gx#stx-null? _%tl3660336780%_)
                        (_%__kont3952439525%_
                         _%hd3660236777%_
                         _%hd3649537180%_
                         _%hd3649237170%_)
                        (if (gx#stx-pair? _%tl3660336780%_)
                            (let ((_%e3662136683%_
                                   (gx#syntax-e _%tl3660336780%_)))
                              (let ((_%tl3662336690%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3662136683%_)))
                                    (_%hd3662236687%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3662136683%_))))
                                (if (gx#identifier? _%hd3662236687%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39881_|
                                         _%hd3662236687%_)
                                        (if (gx#stx-pair? _%tl3662336690%_)
                                            (let ((_%e3662436693%_
                                                   (gx#syntax-e
                                                    _%tl3662336690%_)))
                                              (let ((_%tl3662636700%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3662436693%_)))
                                                    (_%hd3662536697%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3662436693%_))))
                                                (if (gx#stx-null?
                                                     _%tl3662636700%_)
                                                    (_%__kont3952639527%_
                                                     _%hd3662536697%_
                                                     _%hd3660236777%_
                                                     _%hd3649537180%_
                                                     _%hd3649237170%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3648636632%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3648636632%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3648636632%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3648636632%_)))))
                            (let () (declare (not safe)) (_%g3648636632%_))))))
                (let () (declare (not safe)) (_%g3648636632%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3648636632%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3648636632%_)))))))
                              (if (gx#stx-null? _%tl3649637183%_)
                                  (_%__kont3952039521%_
                                   _%hd3649537180%_
                                   _%hd3649237170%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3648636632%_)))))))
                  (if (gx#stx-pair? _%tl3649637183%_)
                      (let ((_%e3656236942%_ (gx#syntax-e _%tl3649637183%_)))
                        (let ((_%tl3656436949%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3656236942%_)))
                              (_%hd3656336946%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3656236942%_))))
                          (if (gx#stx-null? _%tl3656436949%_)
                              (_%__kont3951839519%_
                               _%hd3656336946%_
                               _%hd3649537180%_)
                              (if (gx#identifier? _%hd3656336946%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39880_|
                                       _%hd3656336946%_)
                                      (if (gx#stx-pair? _%tl3656436949%_)
                                          (let ((_%e3658536842%_
                                                 (gx#syntax-e
                                                  _%tl3656436949%_)))
                                            (let ((_%tl3658736849%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3658536842%_)))
                                                  (_%hd3658636846%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3658536842%_))))
                                              (if (gx#stx-null?
                                                   _%tl3658736849%_)
                                                  (_%__kont3952239523%_
                                                   _%hd3658636846%_
                                                   _%hd3649537180%_
                                                   _%hd3649237170%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3648636632%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3648636632%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3648636632%_)))
                                  (if (gx#stx-datum? _%hd3656336946%_)
                                      (let ((_%e3660036769%_
                                             (gx#stx-e _%hd3656336946%_)))
                                        (if (equal? _%e3660036769%_ '::)
                                            (if (gx#stx-pair? _%tl3656436949%_)
                                                (let ((_%e3660136773%_
                                                       (gx#syntax-e
                                                        _%tl3656436949%_)))
                                                  (let ((_%tl3660336780%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3660136773%_)))
                                                        (_%hd3660236777%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3660136773%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3660336780%_)
                                                        (_%__kont3952439525%_
                                                         _%hd3660236777%_
                                                         _%hd3649537180%_
                                                         _%hd3649237170%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3660336780%_)
                                                            (let ((_%e3662136683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3660336780%_)))
                      (let ((_%tl3662336690%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3662136683%_)))
                            (_%hd3662236687%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3662136683%_))))
                        (if (gx#identifier? _%hd3662236687%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39881_|
                                 _%hd3662236687%_)
                                (if (gx#stx-pair? _%tl3662336690%_)
                                    (let ((_%e3662436693%_
                                           (gx#syntax-e _%tl3662336690%_)))
                                      (let ((_%tl3662636700%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3662436693%_)))
                                            (_%hd3662536697%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3662436693%_))))
                                        (if (gx#stx-null? _%tl3662636700%_)
                                            (_%__kont3952639527%_
                                             _%hd3662536697%_
                                             _%hd3660236777%_
                                             _%hd3649537180%_
                                             _%hd3649237170%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3648636632%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3648636632%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3648636632%_)))
                            (let () (declare (not safe)) (_%g3648636632%_)))))
                    (let () (declare (not safe)) (_%g3648636632%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3648636632%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3648636632%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3648636632%_)))))))
                      (if (gx#stx-null? _%tl3649637183%_)
                          (_%__kont3952039521%_
                           _%hd3649537180%_
                           _%hd3649237170%_)
                          (let () (declare (not safe)) (_%g3648636632%_)))))
              (if (gx#stx-pair? _%tl3649637183%_)
                  (let ((_%e3656236942%_ (gx#syntax-e _%tl3649637183%_)))
                    (let ((_%tl3656436949%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3656236942%_)))
                          (_%hd3656336946%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3656236942%_))))
                      (if (gx#stx-null? _%tl3656436949%_)
                          (_%__kont3951839519%_
                           _%hd3656336946%_
                           _%hd3649537180%_)
                          (if (gx#identifier? _%hd3656336946%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39880_|
                                   _%hd3656336946%_)
                                  (if (gx#stx-pair? _%tl3656436949%_)
                                      (let ((_%e3658536842%_
                                             (gx#syntax-e _%tl3656436949%_)))
                                        (let ((_%tl3658736849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3658536842%_)))
                                              (_%hd3658636846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3658536842%_))))
                                          (if (gx#stx-null? _%tl3658736849%_)
                                              (_%__kont3952239523%_
                                               _%hd3658636846%_
                                               _%hd3649537180%_
                                               _%hd3649237170%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3648636632%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3648636632%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3648636632%_)))
                              (if (gx#stx-datum? _%hd3656336946%_)
                                  (let ((_%e3660036769%_
                                         (gx#stx-e _%hd3656336946%_)))
                                    (if (equal? _%e3660036769%_ '::)
                                        (if (gx#stx-pair? _%tl3656436949%_)
                                            (let ((_%e3660136773%_
                                                   (gx#syntax-e
                                                    _%tl3656436949%_)))
                                              (let ((_%tl3660336780%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3660136773%_)))
                                                    (_%hd3660236777%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3660136773%_))))
                                                (if (gx#stx-null?
                                                     _%tl3660336780%_)
                                                    (_%__kont3952439525%_
                                                     _%hd3660236777%_
                                                     _%hd3649537180%_
                                                     _%hd3649237170%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3660336780%_)
                                                        (let ((_%e3662136683%_
                                                               (gx#syntax-e
                                                                _%tl3660336780%_)))
                                                          (let ((_%tl3662336690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3662136683%_)))
                        (_%hd3662236687%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3662136683%_))))
                    (if (gx#identifier? _%hd3662236687%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39881_|
                             _%hd3662236687%_)
                            (if (gx#stx-pair? _%tl3662336690%_)
                                (let ((_%e3662436693%_
                                       (gx#syntax-e _%tl3662336690%_)))
                                  (let ((_%tl3662636700%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3662436693%_)))
                                        (_%hd3662536697%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3662436693%_))))
                                    (if (gx#stx-null? _%tl3662636700%_)
                                        (_%__kont3952639527%_
                                         _%hd3662536697%_
                                         _%hd3660236777%_
                                         _%hd3649537180%_
                                         _%hd3649237170%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3648636632%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3648636632%_)))
                            (let () (declare (not safe)) (_%g3648636632%_)))
                        (let () (declare (not safe)) (_%g3648636632%_)))))
                (let () (declare (not safe)) (_%g3648636632%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3648636632%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3648636632%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3648636632%_)))))))
                  (if (gx#stx-null? _%tl3649637183%_)
                      (_%__kont3952039521%_ _%hd3649537180%_ _%hd3649237170%_)
                      (let () (declare (not safe)) (_%g3648636632%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3649637183%_)
                                              (let ((_%e3656236942%_
                                                     (gx#syntax-e
                                                      _%tl3649637183%_)))
                                                (let ((_%tl3656436949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3656236942%_)))
                                                      (_%hd3656336946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3656236942%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3656436949%_)
                                                      (_%__kont3951839519%_
                                                       _%hd3656336946%_
                                                       _%hd3649537180%_)
                                                      (if (gx#identifier?
                                                           _%hd3656336946%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g39880_|
                                                               _%hd3656336946%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3656436949%_)
                          (let ((_%e3658536842%_
                                 (gx#syntax-e _%tl3656436949%_)))
                            (let ((_%tl3658736849%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3658536842%_)))
                                  (_%hd3658636846%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3658536842%_))))
                              (if (gx#stx-null? _%tl3658736849%_)
                                  (_%__kont3952239523%_
                                   _%hd3658636846%_
                                   _%hd3649537180%_
                                   _%hd3649237170%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3648636632%_)))))
                          (let () (declare (not safe)) (_%g3648636632%_)))
                      (let () (declare (not safe)) (_%g3648636632%_)))
                  (if (gx#stx-datum? _%hd3656336946%_)
                      (let ((_%e3660036769%_ (gx#stx-e _%hd3656336946%_)))
                        (if (equal? _%e3660036769%_ '::)
                            (if (gx#stx-pair? _%tl3656436949%_)
                                (let ((_%e3660136773%_
                                       (gx#syntax-e _%tl3656436949%_)))
                                  (let ((_%tl3660336780%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3660136773%_)))
                                        (_%hd3660236777%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3660136773%_))))
                                    (if (gx#stx-null? _%tl3660336780%_)
                                        (_%__kont3952439525%_
                                         _%hd3660236777%_
                                         _%hd3649537180%_
                                         _%hd3649237170%_)
                                        (if (gx#stx-pair? _%tl3660336780%_)
                                            (let ((_%e3662136683%_
                                                   (gx#syntax-e
                                                    _%tl3660336780%_)))
                                              (let ((_%tl3662336690%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3662136683%_)))
                                                    (_%hd3662236687%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3662136683%_))))
                                                (if (gx#identifier?
                                                     _%hd3662236687%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g39881_|
                                                         _%hd3662236687%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3662336690%_)
                                                            (let ((_%e3662436693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3662336690%_)))
                      (let ((_%tl3662636700%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3662436693%_)))
                            (_%hd3662536697%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3662436693%_))))
                        (if (gx#stx-null? _%tl3662636700%_)
                            (_%__kont3952639527%_
                             _%hd3662536697%_
                             _%hd3660236777%_
                             _%hd3649537180%_
                             _%hd3649237170%_)
                            (let () (declare (not safe)) (_%g3648636632%_)))))
                    (let () (declare (not safe)) (_%g3648636632%_)))
                (let () (declare (not safe)) (_%g3648636632%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3648636632%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3648636632%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3648636632%_)))
                            (let () (declare (not safe)) (_%g3648636632%_))))
                      (let () (declare (not safe)) (_%g3648636632%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3649637183%_)
                                                  (_%__kont3952039521%_
                                                   _%hd3649537180%_
                                                   _%hd3649237170%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3648636632%_)))))))
                                  (if (gx#stx-pair? _%tl3649637183%_)
                                      (let ((_%e3656236942%_
                                             (gx#syntax-e _%tl3649637183%_)))
                                        (let ((_%tl3656436949%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3656236942%_)))
                                              (_%hd3656336946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3656236942%_))))
                                          (if (gx#stx-null? _%tl3656436949%_)
                                              (_%__kont3951839519%_
                                               _%hd3656336946%_
                                               _%hd3649537180%_)
                                              (if (gx#identifier?
                                                   _%hd3656336946%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39880_|
                                                       _%hd3656336946%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3656436949%_)
                                                          (let ((_%e3658536842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3656436949%_)))
                    (let ((_%tl3658736849%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3658536842%_)))
                          (_%hd3658636846%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3658536842%_))))
                      (if (gx#stx-null? _%tl3658736849%_)
                          (_%__kont3952239523%_
                           _%hd3658636846%_
                           _%hd3649537180%_
                           _%hd3649237170%_)
                          (let () (declare (not safe)) (_%g3648636632%_)))))
                  (let () (declare (not safe)) (_%g3648636632%_)))
              (let () (declare (not safe)) (_%g3648636632%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3656336946%_)
                                                      (let ((_%e3660036769%_
                                                             (gx#stx-e
                                                              _%hd3656336946%_)))
                                                        (if (equal? _%e3660036769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3656436949%_)
                        (let ((_%e3660136773%_ (gx#syntax-e _%tl3656436949%_)))
                          (let ((_%tl3660336780%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3660136773%_)))
                                (_%hd3660236777%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3660136773%_))))
                            (if (gx#stx-null? _%tl3660336780%_)
                                (_%__kont3952439525%_
                                 _%hd3660236777%_
                                 _%hd3649537180%_
                                 _%hd3649237170%_)
                                (if (gx#stx-pair? _%tl3660336780%_)
                                    (let ((_%e3662136683%_
                                           (gx#syntax-e _%tl3660336780%_)))
                                      (let ((_%tl3662336690%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3662136683%_)))
                                            (_%hd3662236687%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3662136683%_))))
                                        (if (gx#identifier? _%hd3662236687%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39881_|
                                                 _%hd3662236687%_)
                                                (if (gx#stx-pair?
                                                     _%tl3662336690%_)
                                                    (let ((_%e3662436693%_
                                                           (gx#syntax-e
                                                            _%tl3662336690%_)))
                                                      (let ((_%tl3662636700%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3662436693%_)))
                    (_%hd3662536697%_
                     (let () (declare (not safe)) (##car _%e3662436693%_))))
                (if (gx#stx-null? _%tl3662636700%_)
                    (_%__kont3952639527%_
                     _%hd3662536697%_
                     _%hd3660236777%_
                     _%hd3649537180%_
                     _%hd3649237170%_)
                    (let () (declare (not safe)) (_%g3648636632%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3648636632%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3648636632%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3648636632%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3648636632%_))))))
                        (let () (declare (not safe)) (_%g3648636632%_)))
                    (let () (declare (not safe)) (_%g3648636632%_))))
              (let () (declare (not safe)) (_%g3648636632%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3649637183%_)
                                          (_%__kont3952039521%_
                                           _%hd3649537180%_
                                           _%hd3649237170%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3648636632%_)))))))
                          (let () (declare (not safe)) (_%g3648636632%_)))))
                  (let () (declare (not safe)) (_%g3648636632%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37275%_)
        (let* ((_%__stx3977339774%_ _%$stx37275%_)
               (_%g3728037314%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3977339774%_))))
          (let ((_%__kont3977639777%_
                 (lambda (_%L37418%_ _%L37420%_ _%L37421%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%L37421%_
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
                                       (cons _%L37420%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%L37418%_ '()))
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
                (_%__kont3977839779%_
                 (lambda (_%L37351%_ _%L37353%_ _%L37354%_)
                   (cons _%L37354%_
                         (cons _%L37353%_
                               (cons _%L37351%_
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
            (let ((_%__match3980639807%_
                   (lambda (_%e3728537378%_
                            _%hd3728637382%_
                            _%tl3728737385%_
                            _%e3728837388%_
                            _%hd3728937392%_
                            _%tl3729037395%_
                            _%e3729137398%_
                            _%hd3729237402%_
                            _%tl3729337405%_
                            _%e3729437408%_
                            _%hd3729537412%_
                            _%tl3729637415%_)
                     (let ((_%L37418%_ _%hd3729537412%_)
                           (_%L37420%_ _%hd3729237402%_)
                           (_%L37421%_ _%hd3728937392%_))
                       (if (gx#identifier? _%L37421%_)
                           (_%__kont3977639777%_
                            _%L37418%_
                            _%L37420%_
                            _%L37421%_)
                           (let () (declare (not safe)) (_%g3728037314%_)))))))
              (if (gx#stx-pair? _%__stx3977339774%_)
                  (let ((_%e3728537378%_ (gx#syntax-e _%__stx3977339774%_)))
                    (let ((_%tl3728737385%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3728537378%_)))
                          (_%hd3728637382%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3728537378%_))))
                      (if (gx#stx-pair? _%tl3728737385%_)
                          (let ((_%e3728837388%_
                                 (gx#syntax-e _%tl3728737385%_)))
                            (let ((_%tl3729037395%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3728837388%_)))
                                  (_%hd3728937392%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3728837388%_))))
                              (if (gx#stx-pair? _%tl3729037395%_)
                                  (let ((_%e3729137398%_
                                         (gx#syntax-e _%tl3729037395%_)))
                                    (let ((_%tl3729337405%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3729137398%_)))
                                          (_%hd3729237402%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3729137398%_))))
                                      (if (gx#stx-pair? _%tl3729337405%_)
                                          (let ((_%e3729437408%_
                                                 (gx#syntax-e
                                                  _%tl3729337405%_)))
                                            (let ((_%tl3729637415%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3729437408%_)))
                                                  (_%hd3729537412%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3729437408%_))))
                                              (if (gx#stx-null?
                                                   _%tl3729637415%_)
                                                  (_%__match3980639807%_
                                                   _%e3728537378%_
                                                   _%hd3728637382%_
                                                   _%tl3728737385%_
                                                   _%e3728837388%_
                                                   _%hd3728937392%_
                                                   _%tl3729037395%_
                                                   _%e3729137398%_
                                                   _%hd3729237402%_
                                                   _%tl3729337405%_
                                                   _%e3729437408%_
                                                   _%hd3729537412%_
                                                   _%tl3729637415%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3728037314%_)))))
                                          (if (gx#stx-null? _%tl3729337405%_)
                                              (_%__kont3977839779%_
                                               _%hd3729237402%_
                                               _%hd3728937392%_
                                               _%hd3728637382%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3728037314%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3728037314%_)))))
                          (let () (declare (not safe)) (_%g3728037314%_)))))
                  (let () (declare (not safe)) (_%g3728037314%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx37443%_)
        (let* ((_%g3744737462%_
                (lambda (_%g3744837458%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3744837458%_)))
               (_%g3744637505%_
                (lambda (_%g3744837466%_)
                  (if (gx#stx-pair? _%g3744837466%_)
                      (let ((_%e3745137469%_ (gx#syntax-e _%g3744837466%_)))
                        (let ((_%hd3745237473%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3745137469%_)))
                              (_%tl3745337476%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3745137469%_))))
                          (if (gx#stx-pair? _%tl3745337476%_)
                              (let ((_%e3745437479%_
                                     (gx#syntax-e _%tl3745337476%_)))
                                (let ((_%hd3745537483%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3745437479%_)))
                                      (_%tl3745637486%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3745437479%_))))
                                  ((lambda (_%L37489%_ _%L37491%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%L37491%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%L37489%_)
                                                       '()))))
                                   _%tl3745637486%_
                                   _%hd3745537483%_)))
                              (_%g3744737462%_ _%g3744837466%_))))
                      (_%g3744737462%_ _%g3744837466%_)))))
          (_%g3744637505%_ _%$stx37443%_))))))
