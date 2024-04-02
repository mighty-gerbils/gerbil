(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g40048_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40049_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40054_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40055_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40056_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40058_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40059_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40060_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40061_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40062_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40063_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40064_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40065_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40066_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40067_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40134_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40177_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40180_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40181_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40187_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40188_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40189_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40190_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40191_|
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
      (lambda _%$args35347%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35347%_)))
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
      (lambda (_%stx35344%_)
        (if (gx#identifier? _%stx35344%_)
            (let ((__tmp40047 (gx#syntax-local-value _%stx35344%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp40047))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx33644%_ _%match-stx33646%_)
        (letrec ((_%parse133648%_
                  (lambda (_%hd34007%_)
                    (let* ((_%__stx3783537836%_ _%hd34007%_)
                           (_%g3403334175%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3783537836%_))))
                      (let ((_%__kont3783837839%_
                             (lambda (_%L35107%_ _%L35109%_)
                               (let* ((_%__stx3775537756%_ _%L35107%_)
                                      (_%g3512635159%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3775537756%_))))
                                 (let ((_%__kont3775837759%_
                                        (lambda ()
                                          (cons '?: (cons _%L35109%_ '()))))
                                       (_%__kont3776037761%_
                                        (lambda (_%L35300%_)
                                          (cons '?:
                                                (cons _%L35109%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%parse133648%_
                                                               _%L35300%_))
                                                            '())))))
                                       (_%__kont3776237763%_
                                        (lambda (_%L35270%_)
                                          (cons '?:
                                                (cons _%L35109%_
                                                      (cons '=>:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (_%parse133648%_ _%L35270%_))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3776437765%_
                                        (lambda (_%L35221%_ _%L35223%_)
                                          (cons '?:
                                                (cons _%L35109%_
                                                      (cons '::
                                                            (cons _%L35223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (let ()
                                        (declare (not safe))
                                        (_%parse133648%_ _%L35221%_))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3776637767%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_%parse-error33655%_
                                             _%hd34007%_)))))
                                   (let ((_%g3512235311%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3775537756%_)
                                                (let ((_%e3513135290%_
                                                       (gx#syntax-e
                                                        _%__stx3775537756%_)))
                                                  (let ((_%tl3512935297%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3513135290%_)))
                                                        (_%hd3513035294%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3513135290%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3512935297%_)
                                                        (_%__kont3776037761%_
                                                         _%hd3513035294%_)
                                                        (if (gx#identifier?
                                                             _%hd3513035294%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g40048_|
                         _%hd3513035294%_)
                        (if (gx#stx-pair? _%tl3512935297%_)
                            (let ((_%e3513835260%_
                                   (gx#syntax-e _%tl3512935297%_)))
                              (let ((_%tl3513635267%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3513835260%_)))
                                    (_%hd3513735264%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3513835260%_))))
                                (if (gx#stx-null? _%tl3513635267%_)
                                    (_%__kont3776237763%_ _%hd3513735264%_)
                                    (_%__kont3776637767%_))))
                            (_%__kont3776637767%_))
                        (_%__kont3776637767%_))
                    (if (gx#stx-datum? _%hd3513035294%_)
                        (let ((_%e3514435187%_ (gx#stx-e _%hd3513035294%_)))
                          (if (equal? _%e3514435187%_ '::)
                              (if (gx#stx-pair? _%tl3512935297%_)
                                  (let ((_%e3514735191%_
                                         (gx#syntax-e _%tl3512935297%_)))
                                    (let ((_%tl3514535198%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3514735191%_)))
                                          (_%hd3514635195%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3514735191%_))))
                                      (if (gx#stx-pair? _%tl3514535198%_)
                                          (let ((_%e3515035201%_
                                                 (gx#syntax-e
                                                  _%tl3514535198%_)))
                                            (let ((_%tl3514835208%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3515035201%_)))
                                                  (_%hd3514935205%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3515035201%_))))
                                              (if (gx#identifier?
                                                   _%hd3514935205%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40049_|
                                                       _%hd3514935205%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3514835208%_)
                                                          (let ((_%e3515335211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3514835208%_)))
                    (let ((_%tl3515135218%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3515335211%_)))
                          (_%hd3515235215%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3515335211%_))))
                      (if (gx#stx-null? _%tl3515135218%_)
                          (_%__kont3776437765%_
                           _%hd3515235215%_
                           _%hd3514635195%_)
                          (_%__kont3776637767%_))))
                  (_%__kont3776637767%_))
              (_%__kont3776637767%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3776637767%_))))
                                          (_%__kont3776637767%_))))
                                  (_%__kont3776637767%_))
                              (_%__kont3776637767%_)))
                        (_%__kont3776637767%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3776637767%_)))))
                                     (if (gx#stx-null? _%__stx3775537756%_)
                                         (_%__kont3775837759%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3512235311%_))))))))
                            (_%__kont3784037841%_
                             (lambda (_%L35012%_)
                               (let* ((_%__stx3773737738%_ _%L35012%_)
                                      (_%g3502435035%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3773737738%_))))
                                 (let ((_%__kont3774037741%_
                                        (lambda (_%L35063%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%parse133648%_ _%L35063%_))))
                                       (_%__kont3774237743%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse133648%_
                                                 _%L35012%_)))))
                                   (if (gx#stx-pair? _%__stx3773737738%_)
                                       (let ((_%e3502935053%_
                                              (gx#syntax-e
                                               _%__stx3773737738%_)))
                                         (let ((_%tl3502735060%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3502935053%_)))
                                               (_%hd3502835057%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3502935053%_))))
                                           (if (gx#stx-null? _%tl3502735060%_)
                                               (_%__kont3774037741%_
                                                _%hd3502835057%_)
                                               (_%__kont3774237743%_))))
                                       (_%__kont3774237743%_))))))
                            (_%__kont3784237843%_
                             (lambda (_%L34927%_)
                               (let* ((_%__stx3771937720%_ _%L34927%_)
                                      (_%g3493934950%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3771937720%_))))
                                 (let ((_%__kont3772237723%_
                                        (lambda (_%L34978%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%parse133648%_ _%L34978%_))))
                                       (_%__kont3772437725%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse133648%_
                                                 _%L34927%_)))))
                                   (if (gx#stx-pair? _%__stx3771937720%_)
                                       (let ((_%e3494434968%_
                                              (gx#syntax-e
                                               _%__stx3771937720%_)))
                                         (let ((_%tl3494234975%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3494434968%_)))
                                               (_%hd3494334972%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3494434968%_))))
                                           (if (gx#stx-null? _%tl3494234975%_)
                                               (_%__kont3772237723%_
                                                _%hd3494334972%_)
                                               (_%__kont3772437725%_))))
                                       (_%__kont3772437725%_))))))
                            (_%__kont3784437845%_
                             (lambda (_%L34897%_)
                               (cons 'not:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_%parse133648%_ _%L34897%_))
                                           '()))))
                            (_%__kont3784637847%_
                             (lambda (_%L34853%_ _%L34855%_)
                               (cons 'cons:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_%parse133648%_ _%L34855%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%parse133648%_
                                                    _%L34853%_))
                                                 '())))))
                            (_%__kont3784837849%_
                             (lambda (_%L34797%_ _%L34799%_ _%L34800%_)
                               (if (gx#stx-null? _%L34797%_)
                                   (cons 'cons:
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_%parse133648%_ _%L34800%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (_%parse133648%_
                                                        _%L34799%_))
                                                     '())))
                                   (cons 'cons:
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_%parse133648%_ _%L34800%_))
                                               (cons (let ((__tmp40050
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cons*)
                          (cons _%L34799%_ _%L34797%_))))
               (declare (not safe))
               (_%parse133648%_ __tmp40050))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3785037851%_
                             (lambda (_%L34749%_)
                               (let ()
                                 (declare (not safe))
                                 (_%parse-list33650%_ _%L34749%_))))
                            (_%__kont3785237853%_
                             (lambda (_%L34719%_)
                               (cons 'box:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_%parse133648%_ _%L34719%_))
                                           '()))))
                            (_%__kont3785437855%_
                             (lambda (_%L34682%_)
                               (cons 'box:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_%parse133648%_ _%L34682%_))
                                           '()))))
                            (_%__kont3785637857%_
                             (lambda (_%L34658%_)
                               (let ()
                                 (declare (not safe))
                                 (_%parse133648%_ _%L34658%_))))
                            (_%__kont3785837859%_
                             (lambda (_%L34620%_)
                               (cons 'values:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_%parse-vector33651%_
                                              _%L34620%_))
                                           '()))))
                            (_%__kont3786037861%_
                             (lambda (_%L34592%_)
                               (cons 'vector:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_%parse-vector33651%_
                                              _%L34592%_))
                                           '()))))
                            (_%__kont3786237863%_
                             (lambda (_%L34553%_)
                               (cons 'vector:
                                     (cons (let ((__tmp40051
                                                  (foldr (lambda (_%g3456634569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g3456734572%_)
                   (cons _%g3456634569%_ _%g3456734572%_))
                 '()
                 _%L34553%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_%parse-vector33651%_
                                              __tmp40051))
                                           '()))))
                            (_%__kont3786637867%_
                             (lambda (_%L34499%_ _%L34501%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _%L34501%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%parse-vector33651%_
                                                    _%L34499%_))
                                                 '())))))
                            (_%__kont3786837869%_
                             (lambda (_%L34469%_ _%L34471%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _%L34471%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%parse-class-body33653%_
                                                    _%L34469%_))
                                                 '())))))
                            (_%__kont3787037871%_
                             (lambda (_%L34429%_ _%L34431%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%L34431%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%L34429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3787237873%_
                             (lambda (_%L34389%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L34389%_) '()))))
                            (_%__kont3787437875%_
                             (lambda (_%L34349%_)
                               (let ()
                                 (declare (not safe))
                                 (_%parse-qq33654%_ _%L34349%_))))
                            (_%__kont3787637877%_
                             (lambda (_%L34305%_ _%L34307%_)
                               (cons 'apply:
                                     (cons _%L34307%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%parse133648%_
                                                    _%L34305%_))
                                                 '())))))
                            (_%__kont3787837879%_
                             (lambda (_%L34253%_)
                               (let ((__tmp40052
                                      (gx#core-apply-expander
                                       (gx#syntax-local-e _%L34253%_)
                                       (gx#stx-wrap-source
                                        (cons 'match: _%hd34007%_)
                                        (let ((_%$e34264%_
                                               (gx#stx-source _%hd34007%_)))
                                          (if _%$e34264%_
                                              _%$e34264%_
                                              (gx#stx-source
                                               _%stx33644%_)))))))
                                 (declare (not safe))
                                 (_%parse133648%_ __tmp40052))))
                            (_%__kont3788037881%_
                             (lambda (_%L34227%_) (cons 'any: '())))
                            (_%__kont3788237883%_
                             (lambda (_%L34211%_)
                               (cons 'var: (cons _%L34211%_ '()))))
                            (_%__kont3788437885%_
                             (lambda (_%L34193%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L34193%_) '()))))
                            (_%__kont3788637887%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_%parse-error33655%_ _%hd34007%_)))))
                        (let* ((_%g3403134204%_
                                (lambda ()
                                  (let ((_%L34193%_ _%__stx3783537836%_))
                                    (if (gx#stx-datum? _%L34193%_)
                                        (_%__kont3788437885%_ _%L34193%_)
                                        (_%__kont3788637887%_)))))
                               (_%g3403034220%_
                                (lambda ()
                                  (let ((_%L34211%_ _%__stx3783537836%_))
                                    (if (and (gx#identifier? _%L34211%_)
                                             (let ((__tmp40053
                                                    (gx#ellipsis? _%L34211%_)))
                                               (declare (not safe))
                                               (not __tmp40053)))
                                        (_%__kont3788237883%_ _%L34211%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3403134204%_))))))
                               (_%g3402934236%_
                                (lambda ()
                                  (let ((_%L34227%_ _%__stx3783537836%_))
                                    (if (gx#underscore? _%L34227%_)
                                        (_%__kont3788037881%_ _%L34227%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3403034220%_))))))
                               (_%__match3816238163%_
                                (lambda (_%e3416634243%_
                                         _%hd3416534247%_
                                         _%tl3416434250%_)
                                  (let ((_%L34253%_ _%hd3416534247%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core/match[1]#syntax-local-match-macro?|
                                           _%L34253%_))
                                        (_%__kont3787837879%_ _%L34253%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3402934236%_))))))
                               (_%__match3809638097%_
                                (lambda (_%e3413434409%_
                                         _%hd3413334413%_
                                         _%tl3413234416%_
                                         _%e3413734419%_
                                         _%hd3413634423%_
                                         _%tl3413534426%_)
                                  (let ((_%L34429%_ _%hd3413634423%_)
                                        (_%L34431%_ _%hd3413334413%_))
                                    (if (and (gx#identifier? _%L34431%_)
                                             (or (gx#free-identifier=?
                                                  _%L34431%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%L34431%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%L34431%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3787037871%_
                                         _%L34429%_
                                         _%L34431%_)
                                        (if (gx#identifier? _%hd3413334413%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g40054_|
                                                 _%hd3413334413%_)
                                                (_%__kont3787237873%_
                                                 _%hd3413634423%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g40055_|
                                                     _%hd3413334413%_)
                                                    (_%__kont3787437875%_
                                                     _%hd3413634423%_)
                                                    (_%__match3816238163%_
                                                     _%e3413434409%_
                                                     _%hd3413334413%_
                                                     _%tl3413234416%_)))
                                            (_%__match3816238163%_
                                             _%e3413434409%_
                                             _%hd3413334413%_
                                             _%tl3413234416%_))))))
                               (_%__match3808238083%_
                                (lambda (_%e3412934459%_
                                         _%hd3412834463%_
                                         _%tl3412734466%_)
                                  (let ((_%L34469%_ _%tl3412734466%_)
                                        (_%L34471%_ _%hd3412834463%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%L34471%_))
                                        (_%__kont3786837869%_
                                         _%L34469%_
                                         _%L34471%_)
                                        (if (gx#stx-pair? _%tl3412734466%_)
                                            (let ((_%e3413734419%_
                                                   (gx#syntax-e
                                                    _%tl3412734466%_)))
                                              (let ((_%tl3413534426%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3413734419%_)))
                                                    (_%hd3413634423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3413734419%_))))
                                                (if (gx#stx-null?
                                                     _%tl3413534426%_)
                                                    (_%__match3809638097%_
                                                     _%e3412934459%_
                                                     _%hd3412834463%_
                                                     _%tl3412734466%_
                                                     _%e3413734419%_
                                                     _%hd3413634423%_
                                                     _%tl3413534426%_)
                                                    (if (gx#identifier?
                                                         _%hd3412834463%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g40054_|
                                                             _%hd3412834463%_)
                                                            (_%__match3816238163%_
                                                             _%e3412934459%_
                                                             _%hd3412834463%_
                                                             _%tl3412734466%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g40055_|
                         _%hd3412834463%_)
                        (_%__match3816238163%_
                         _%e3412934459%_
                         _%hd3412834463%_
                         _%tl3412734466%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40056_|
                             _%hd3412834463%_)
                            (if (gx#stx-pair? _%tl3413534426%_)
                                (let ((_%e3416234295%_
                                       (gx#syntax-e _%tl3413534426%_)))
                                  (let ((_%tl3416034302%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3416234295%_)))
                                        (_%hd3416134299%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3416234295%_))))
                                    (if (gx#stx-null? _%tl3416034302%_)
                                        (_%__kont3787637877%_
                                         _%hd3416134299%_
                                         _%hd3413634423%_)
                                        (_%__match3816238163%_
                                         _%e3412934459%_
                                         _%hd3412834463%_
                                         _%tl3412734466%_))))
                                (_%__match3816238163%_
                                 _%e3412934459%_
                                 _%hd3412834463%_
                                 _%tl3412734466%_))
                            (_%__match3816238163%_
                             _%e3412934459%_
                             _%hd3412834463%_
                             _%tl3412734466%_))))
                (_%__match3816238163%_
                 _%e3412934459%_
                 _%hd3412834463%_
                 _%tl3412734466%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3816238163%_
                                             _%e3412934459%_
                                             _%hd3412834463%_
                                             _%tl3412734466%_))))))
                               (_%__match3807638077%_
                                (lambda (_%e3412434489%_
                                         _%hd3412334493%_
                                         _%tl3412234496%_)
                                  (let ((_%L34499%_ _%tl3412234496%_)
                                        (_%L34501%_ _%hd3412334493%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%L34501%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3786637867%_
                                         _%L34499%_
                                         _%L34501%_)
                                        (_%__match3808238083%_
                                         _%e3412434489%_
                                         _%hd3412334493%_
                                         _%tl3412234496%_)))))
                               (_%__match3807038071%_
                                (lambda (_%e3411034519%_
                                         _%__splice3786437865%_
                                         _%target3411134523%_
                                         _%tl3411334526%_)
                                  (letrec ((_%loop3411434529%_
                                            (lambda (_%hd3411234533%_
                                                     _%body3411834536%_)
                                              (if (gx#stx-pair?
                                                   _%hd3411234533%_)
                                                  (let ((_%e3411534539%_
                                                         (gx#syntax-e
                                                          _%hd3411234533%_)))
                                                    (let ((_%lp-tl3411734546%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3411534539%_)))
                                                          (_%lp-hd3411634543%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3411534539%_))))
                                                      (let ((__tmp40057
                                                             (cons _%lp-hd3411634543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body3411834536%_)))
                (declare (not safe))
                (_%loop3411434529%_ _%lp-tl3411734546%_ __tmp40057))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%body3411934549%_
                                                         (reverse _%body3411834536%_)))
                                                    (_%__kont3786237863%_
                                                     _%body3411934549%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%loop3411434529%_
                                       _%target3411134523%_
                                       '())))))
                               (_%g3402134575%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3783537836%_)
                                      (let ((_%e3411034519%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3783537836%_))))
                                        (if (gx#stx-pair/null? _%e3411034519%_)
                                            (let ((_%__splice3786437865%_
                                                   (gx#syntax-split-splice
                                                    _%e3411034519%_
                                                    '0)))
                                              (let ((_%tl3411334526%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3786437865%_
                                                        '1)))
                                                    (_%target3411134523%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3786437865%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3411334526%_)
                                                    (_%__match3807038071%_
                                                     _%e3411034519%_
                                                     _%__splice3786437865%_
                                                     _%target3411134523%_
                                                     _%tl3411334526%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3402934236%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3402934236%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3402934236%_)))))
                               (_%g3401734692%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3783537836%_)
                                      (let ((_%e3409334678%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3783537836%_))))
                                        (_%__kont3785437855%_ _%e3409334678%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3402134575%_)))))
                               (_%__match3792437925%_
                                (lambda (_%e3405034917%_
                                         _%hd3404934921%_
                                         _%tl3404834924%_)
                                  (let ((_%L34927%_ _%tl3404834924%_))
                                    (if (gx#stx-list? _%L34927%_)
                                        (_%__kont3784237843%_ _%L34927%_)
                                        (_%__match3807638077%_
                                         _%e3405034917%_
                                         _%hd3404934921%_
                                         _%tl3404834924%_)))))
                               (_%__match3791437915%_
                                (lambda (_%e3404635002%_
                                         _%hd3404535006%_
                                         _%tl3404435009%_)
                                  (let ((_%L35012%_ _%tl3404435009%_))
                                    (if (gx#stx-list? _%L35012%_)
                                        (_%__kont3784037841%_ _%L35012%_)
                                        (_%__match3807638077%_
                                         _%e3404635002%_
                                         _%hd3404535006%_
                                         _%tl3404435009%_))))))
                          (if (gx#stx-pair? _%__stx3783537836%_)
                              (let ((_%e3403935087%_
                                     (gx#syntax-e _%__stx3783537836%_)))
                                (let ((_%tl3403735094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3403935087%_)))
                                      (_%hd3403835091%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3403935087%_))))
                                  (if (gx#identifier? _%hd3403835091%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40058_|
                                           _%hd3403835091%_)
                                          (if (gx#stx-pair? _%tl3403735094%_)
                                              (let ((_%e3404235097%_
                                                     (gx#syntax-e
                                                      _%tl3403735094%_)))
                                                (let ((_%tl3404035104%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3404235097%_)))
                                                      (_%hd3404135101%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3404235097%_))))
                                                  (_%__kont3783837839%_
                                                   _%tl3404035104%_
                                                   _%hd3404135101%_)))
                                              (_%__match3807638077%_
                                               _%e3403935087%_
                                               _%hd3403835091%_
                                               _%tl3403735094%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40059_|
                                               _%hd3403835091%_)
                                              (_%__match3791437915%_
                                               _%e3403935087%_
                                               _%hd3403835091%_
                                               _%tl3403735094%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g40060_|
                                                   _%hd3403835091%_)
                                                  (_%__match3792437925%_
                                                   _%e3403935087%_
                                                   _%hd3403835091%_
                                                   _%tl3403735094%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40061_|
                                                       _%hd3403835091%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3403735094%_)
                                                          (let ((_%e3405734887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3403735094%_)))
                    (let ((_%tl3405534894%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3405734887%_)))
                          (_%hd3405634891%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3405734887%_))))
                      (if (gx#stx-null? _%tl3405534894%_)
                          (_%__kont3784437845%_ _%hd3405634891%_)
                          (_%__match3807638077%_
                           _%e3403935087%_
                           _%hd3403835091%_
                           _%tl3403735094%_))))
                  (_%__match3807638077%_
                   _%e3403935087%_
                   _%hd3403835091%_
                   _%tl3403735094%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g40062_|
                   _%hd3403835091%_)
                  (if (gx#stx-pair? _%tl3403735094%_)
                      (let ((_%e3406534833%_ (gx#syntax-e _%tl3403735094%_)))
                        (let ((_%tl3406334840%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3406534833%_)))
                              (_%hd3406434837%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3406534833%_))))
                          (if (gx#stx-pair? _%tl3406334840%_)
                              (let ((_%e3406834843%_
                                     (gx#syntax-e _%tl3406334840%_)))
                                (let ((_%tl3406634850%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3406834843%_)))
                                      (_%hd3406734847%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3406834843%_))))
                                  (if (gx#stx-null? _%tl3406634850%_)
                                      (_%__kont3784637847%_
                                       _%hd3406734847%_
                                       _%hd3406434837%_)
                                      (_%__match3807638077%_
                                       _%e3403935087%_
                                       _%hd3403835091%_
                                       _%tl3403735094%_))))
                              (_%__match3807638077%_
                               _%e3403935087%_
                               _%hd3403835091%_
                               _%tl3403735094%_))))
                      (_%__match3807638077%_
                       _%e3403935087%_
                       _%hd3403835091%_
                       _%tl3403735094%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g40063_|
                       _%hd3403835091%_)
                      (if (gx#stx-pair? _%tl3403735094%_)
                          (let ((_%e3407734777%_
                                 (gx#syntax-e _%tl3403735094%_)))
                            (let ((_%tl3407534784%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3407734777%_)))
                                  (_%hd3407634781%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3407734777%_))))
                              (if (gx#stx-pair? _%tl3407534784%_)
                                  (let ((_%e3408034787%_
                                         (gx#syntax-e _%tl3407534784%_)))
                                    (let ((_%tl3407834794%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3408034787%_)))
                                          (_%hd3407934791%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3408034787%_))))
                                      (_%__kont3784837849%_
                                       _%tl3407834794%_
                                       _%hd3407934791%_
                                       _%hd3407634781%_)))
                                  (_%__match3807638077%_
                                   _%e3403935087%_
                                   _%hd3403835091%_
                                   _%tl3403735094%_))))
                          (_%__match3807638077%_
                           _%e3403935087%_
                           _%hd3403835091%_
                           _%tl3403735094%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g40064_|
                           _%hd3403835091%_)
                          (_%__kont3785037851%_ _%tl3403735094%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40065_|
                               _%hd3403835091%_)
                              (if (gx#stx-pair? _%tl3403735094%_)
                                  (let ((_%e3409134709%_
                                         (gx#syntax-e _%tl3403735094%_)))
                                    (let ((_%tl3408934716%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3409134709%_)))
                                          (_%hd3409034713%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3409134709%_))))
                                      (if (gx#stx-null? _%tl3408934716%_)
                                          (_%__kont3785237853%_
                                           _%hd3409034713%_)
                                          (_%__match3807638077%_
                                           _%e3403935087%_
                                           _%hd3403835091%_
                                           _%tl3403735094%_))))
                                  (_%__match3807638077%_
                                   _%e3403935087%_
                                   _%hd3403835091%_
                                   _%tl3403735094%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40066_|
                                   _%hd3403835091%_)
                                  (if (gx#stx-pair? _%tl3403735094%_)
                                      (let ((_%e3410034648%_
                                             (gx#syntax-e _%tl3403735094%_)))
                                        (let ((_%tl3409834655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3410034648%_)))
                                              (_%hd3409934652%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3410034648%_))))
                                          (if (gx#stx-null? _%tl3409834655%_)
                                              (_%__kont3785637857%_
                                               _%hd3409934652%_)
                                              (_%__kont3785837859%_
                                               _%tl3403735094%_))))
                                      (_%__kont3785837859%_ _%tl3403735094%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40067_|
                                       _%hd3403835091%_)
                                      (_%__kont3786037861%_ _%tl3403735094%_)
                                      (_%__match3807638077%_
                                       _%e3403935087%_
                                       _%hd3403835091%_
                                       _%tl3403735094%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3807638077%_
                                       _%e3403935087%_
                                       _%hd3403835091%_
                                       _%tl3403735094%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3401734692%_))))))))
                 (_%parse-list33650%_
                  (lambda (_%body33830%_)
                    (let* ((_%__stx3816538166%_ _%body33830%_)
                           (_%g3383633865%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3816538166%_))))
                      (let ((_%__kont3816838169%_
                             (lambda (_%L33989%_)
                               (let ()
                                 (declare (not safe))
                                 (_%parse133648%_ _%L33989%_))))
                            (_%__kont3817038171%_
                             (lambda (_%L33941%_ _%L33943%_ _%L33944%_)
                               (cons 'splice:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_%parse133648%_ _%L33944%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%parse-list33650%_
                                                    _%L33941%_))
                                                 '())))))
                            (_%__kont3817238173%_
                             (lambda (_%L33899%_ _%L33901%_)
                               (cons 'cons:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_%parse133648%_ _%L33901%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%parse-list33650%_
                                                    _%L33899%_))
                                                 '())))))
                            (_%__kont3817438175%_
                             (lambda ()
                               (if (gx#stx-null? _%body33830%_)
                                   (let () (cons 'null: '()))
                                   (if (let ((__tmp40068
                                              (gx#stx-pair? _%body33830%_)))
                                         (declare (not safe))
                                         (not __tmp40068))
                                       (let ()
                                         (let ()
                                           (declare (not safe))
                                           (_%parse133648%_ _%body33830%_)))
                                       (let ()
                                         (let ()
                                           (declare (not safe))
                                           (_%parse-error33655%_
                                            _%body33830%_))))))))
                        (let* ((_%__match3821438215%_
                                (lambda (_%e3385933889%_
                                         _%hd3385833893%_
                                         _%tl3385733896%_)
                                  (let ((_%L33899%_ _%tl3385733896%_)
                                        (_%L33901%_ _%hd3385833893%_))
                                    (if (let ((__tmp40069
                                               (gx#ellipsis? _%L33901%_)))
                                          (declare (not safe))
                                          (not __tmp40069))
                                        (_%__kont3817238173%_
                                         _%L33899%_
                                         _%L33901%_)
                                        (_%__kont3817438175%_)))))
                               (_%__match3820838209%_
                                (lambda (_%e3385133921%_
                                         _%hd3385033925%_
                                         _%tl3384933928%_
                                         _%e3385433931%_
                                         _%hd3385333935%_
                                         _%tl3385233938%_)
                                  (let ((_%L33941%_ _%tl3385233938%_)
                                        (_%L33943%_ _%hd3385333935%_)
                                        (_%L33944%_ _%hd3385033925%_))
                                    (if (gx#ellipsis? _%L33943%_)
                                        (_%__kont3817038171%_
                                         _%L33941%_
                                         _%L33943%_
                                         _%L33944%_)
                                        (_%__match3821438215%_
                                         _%e3385133921%_
                                         _%hd3385033925%_
                                         _%tl3384933928%_))))))
                          (if (gx#stx-pair? _%__stx3816538166%_)
                              (let ((_%e3384133965%_
                                     (gx#syntax-e _%__stx3816538166%_)))
                                (let ((_%tl3383933972%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3384133965%_)))
                                      (_%hd3384033969%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3384133965%_))))
                                  (if (gx#stx-datum? _%hd3384033969%_)
                                      (let ((_%e3384233975%_
                                             (gx#stx-e _%hd3384033969%_)))
                                        (if (equal? _%e3384233975%_ '::)
                                            (if (gx#stx-pair? _%tl3383933972%_)
                                                (let ((_%e3384533979%_
                                                       (gx#syntax-e
                                                        _%tl3383933972%_)))
                                                  (let ((_%tl3384333986%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3384533979%_)))
                                                        (_%hd3384433983%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3384533979%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3384333986%_)
                                                        (_%__kont3816838169%_
                                                         _%hd3384433983%_)
                                                        (_%__match3820838209%_
                                                         _%e3384133965%_
                                                         _%hd3384033969%_
                                                         _%tl3383933972%_
                                                         _%e3384533979%_
                                                         _%hd3384433983%_
                                                         _%tl3384333986%_))))
                                                (_%__match3821438215%_
                                                 _%e3384133965%_
                                                 _%hd3384033969%_
                                                 _%tl3383933972%_))
                                            (if (gx#stx-pair? _%tl3383933972%_)
                                                (let ((_%e3385433931%_
                                                       (gx#syntax-e
                                                        _%tl3383933972%_)))
                                                  (let ((_%tl3385233938%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3385433931%_)))
                                                        (_%hd3385333935%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3385433931%_))))
                                                    (_%__match3820838209%_
                                                     _%e3384133965%_
                                                     _%hd3384033969%_
                                                     _%tl3383933972%_
                                                     _%e3385433931%_
                                                     _%hd3385333935%_
                                                     _%tl3385233938%_)))
                                                (_%__match3821438215%_
                                                 _%e3384133965%_
                                                 _%hd3384033969%_
                                                 _%tl3383933972%_))))
                                      (if (gx#stx-pair? _%tl3383933972%_)
                                          (let ((_%e3385433931%_
                                                 (gx#syntax-e
                                                  _%tl3383933972%_)))
                                            (let ((_%tl3385233938%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3385433931%_)))
                                                  (_%hd3385333935%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3385433931%_))))
                                              (_%__match3820838209%_
                                               _%e3384133965%_
                                               _%hd3384033969%_
                                               _%tl3383933972%_
                                               _%e3385433931%_
                                               _%hd3385333935%_
                                               _%tl3385233938%_)))
                                          (_%__match3821438215%_
                                           _%e3384133965%_
                                           _%hd3384033969%_
                                           _%tl3383933972%_)))))
                              (_%__kont3817438175%_)))))))
                 (_%parse-vector33651%_
                  (lambda (_%body33827%_)
                    (if (let ()
                          (declare (not safe))
                          (_%simple-vector?33652%_ _%body33827%_))
                        (cons 'simple:
                              (cons (gx#stx-map _%parse133648%_ _%body33827%_)
                                    '()))
                        (cons 'list:
                              (cons (let ()
                                      (declare (not safe))
                                      (_%parse-list33650%_ _%body33827%_))
                                    '())))))
                 (_%simple-vector?33652%_
                  (lambda (_%body33764%_)
                    (let* ((_%__stx3821738218%_ _%body33764%_)
                           (_%g3376833780%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3821738218%_))))
                      (let ((_%__kont3822038221%_
                             (lambda (_%L33808%_ _%L33810%_)
                               (if (let ((__tmp40070
                                          (gx#ellipsis? _%L33810%_)))
                                     (declare (not safe))
                                     (not __tmp40070))
                                   (let ()
                                     (declare (not safe))
                                     (_%simple-vector?33652%_ _%L33808%_))
                                   '#f)))
                            (_%__kont3822238223%_
                             (lambda () (gx#stx-null? _%body33764%_))))
                        (if (gx#stx-pair? _%__stx3821738218%_)
                            (let ((_%e3377433798%_
                                   (gx#syntax-e _%__stx3821738218%_)))
                              (let ((_%tl3377233805%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3377433798%_)))
                                    (_%hd3377333802%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3377433798%_))))
                                (_%__kont3822038221%_
                                 _%tl3377233805%_
                                 _%hd3377333802%_)))
                            (_%__kont3822238223%_))))))
                 (_%parse-class-body33653%_
                  (lambda (_%body33673%_)
                    (let _%recur33676%_ ((_%rest33679%_ _%body33673%_))
                      (let* ((_%__stx3823338234%_ _%rest33679%_)
                             (_%g3368333699%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3823338234%_))))
                        (let ((_%__kont3823638237%_
                               (lambda (_%L33737%_ _%L33739%_ _%L33740%_)
                                 (let ((__tmp40071
                                        (let ((__tmp40073
                                               (let ()
                                                 (declare (not safe))
                                                 (_%parse133648%_ _%L33739%_)))
                                              (__tmp40072
                                               (let ()
                                                 (declare (not safe))
                                                 (_%recur33676%_ _%L33737%_))))
                                          (declare (not safe))
                                          (cons __tmp40073 __tmp40072))))
                                   (declare (not safe))
                                   (cons _%L33740%_ __tmp40071))))
                              (_%__kont3823838239%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest33679%_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_%parse-error33655%_
                                        _%rest33679%_))))))
                          (let ((_%__match3825238253%_
                                 (lambda (_%e3369033717%_
                                          _%hd3368933721%_
                                          _%tl3368833724%_
                                          _%e3369333727%_
                                          _%hd3369233731%_
                                          _%tl3369133734%_)
                                   (let ((_%L33737%_ _%tl3369133734%_)
                                         (_%L33739%_ _%hd3369233731%_)
                                         (_%L33740%_ _%hd3368933721%_))
                                     (if (gx#stx-keyword? _%L33740%_)
                                         (_%__kont3823638237%_
                                          _%L33737%_
                                          _%L33739%_
                                          _%L33740%_)
                                         (_%__kont3823838239%_))))))
                            (if (gx#stx-pair? _%__stx3823338234%_)
                                (let ((_%e3369033717%_
                                       (gx#syntax-e _%__stx3823338234%_)))
                                  (let ((_%tl3368833724%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3369033717%_)))
                                        (_%hd3368933721%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3369033717%_))))
                                    (if (gx#stx-pair? _%tl3368833724%_)
                                        (let ((_%e3369333727%_
                                               (gx#syntax-e _%tl3368833724%_)))
                                          (let ((_%tl3369133734%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3369333727%_)))
                                                (_%hd3369233731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3369333727%_))))
                                            (_%__match3825238253%_
                                             _%e3369033717%_
                                             _%hd3368933721%_
                                             _%tl3368833724%_
                                             _%e3369333727%_
                                             _%hd3369233731%_
                                             _%tl3369133734%_)))
                                        (_%__kont3823838239%_))))
                                (_%__kont3823838239%_))))))))
                 (_%parse-qq33654%_
                  (lambda (_%hd33660%_)
                    (let ((_%g3366233669%_
                           (lambda (_%g3366333665%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3366333665%_))))
                      (declare (not safe))
                      (_%g3366233669%_ _%hd33660%_))))
                 (_%parse-error33655%_
                  (lambda (_%hd33657%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx33646%_
                               (cons _%match-stx33646%_
                                     (cons _%stx33644%_
                                           (cons _%hd33657%_ '())))
                               (cons _%stx33644%_ (cons _%hd33657%_ '())))))))
          (let () (declare (not safe)) (_%parse133648%_ _%stx33644%_)))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35334%_)
        (let ((_%match-stx35337%_ '#f))
          (declare (not safe))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35334%_
           _%match-stx35337%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g40075_
        (let ((_g40074_ (let () (declare (not safe)) (##length _g40075_))))
          (cond ((let () (declare (not safe)) (##fx= _g40074_ 1))
                 (apply (lambda (_%stx35334%_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/match[1]#parse-match-pattern__0|
                             _%stx35334%_)))
                        _g40075_))
                ((let () (declare (not safe)) (##fx= _g40074_ 2))
                 (apply (lambda (_%stx35340%_ _%match-stx35342%_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/match[1]#parse-match-pattern__%|
                             _%stx35340%_
                             _%match-stx35342%_)))
                        _g40075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g40075_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx33629%_)
        (let ((__tmp40076
               (lambda (_%E33632%_)
                 (with-exception-handler
                  (let ((_%E!33635%_ (current-exception-handler)))
                    (lambda (_%e33638%_)
                      (if (syntax-error? _%e33638%_)
                          (_%E33632%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!33635%_ _%e33638%_)))))
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/match[1]#parse-match-pattern__0|
                       _%stx33629%_))
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp40076))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32364%_)
        (letrec ((_%loop32367%_
                  (lambda (_%ptree32654%_ _%vars32656%_ _%K32657%_)
                    (let* ((_%__stx3835138352%_ _%ptree32654%_)
                           (_%g3267032780%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3835138352%_))))
                      (let ((_%__kont3835438355%_
                             (lambda (_%L33410%_)
                               (let* ((_%__stx3827138272%_ _%L33410%_)
                                      (_%g3342733461%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3827138272%_))))
                                 (let ((_%__kont3827438275%_
                                        (lambda (_%L33610%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%loop32367%_
                                             _%L33610%_
                                             _%vars32656%_
                                             _%K32657%_))))
                                       (_%__kont3827638277%_
                                        (lambda (_%L33579%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%loop32367%_
                                             _%L33579%_
                                             _%vars32656%_
                                             _%K32657%_))))
                                       (_%__kont3827838279%_
                                        (lambda (_%L33527%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%loop32367%_
                                             _%L33527%_
                                             _%vars32656%_
                                             _%K32657%_))))
                                       (_%__kont3828038281%_
                                        (lambda ()
                                          (_%K32657%_ _%vars32656%_))))
                                   (if (gx#stx-pair? _%__stx3827138272%_)
                                       (let ((_%e3343233600%_
                                              (gx#syntax-e
                                               _%__stx3827138272%_)))
                                         (let ((_%tl3343033607%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3343233600%_)))
                                               (_%hd3343133604%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3343233600%_))))
                                           (if (gx#stx-null? _%tl3343033607%_)
                                               (_%__kont3827438275%_
                                                _%hd3343133604%_)
                                               (if (gx#stx-datum?
                                                    _%hd3343133604%_)
                                                   (let ((_%e3343733565%_
                                                          (gx#stx-e
                                                           _%hd3343133604%_)))
                                                     (if (equal? _%e3343733565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3343033607%_)
                     (let ((_%e3344033569%_ (gx#syntax-e _%tl3343033607%_)))
                       (let ((_%tl3343833576%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3344033569%_)))
                             (_%hd3343933573%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3344033569%_))))
                         (if (gx#stx-null? _%tl3343833576%_)
                             (_%__kont3827638277%_ _%hd3343933573%_)
                             (_%__kont3828038281%_))))
                     (_%__kont3828038281%_))
                 (if (equal? _%e3343733565%_ '::)
                     (if (gx#stx-pair? _%tl3343033607%_)
                         (let ((_%e3344833493%_
                                (gx#syntax-e _%tl3343033607%_)))
                           (let ((_%tl3344633500%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3344833493%_)))
                                 (_%hd3344733497%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3344833493%_))))
                             (if (gx#stx-pair? _%tl3344633500%_)
                                 (let ((_%e3345133503%_
                                        (gx#syntax-e _%tl3344633500%_)))
                                   (let ((_%tl3344933510%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3345133503%_)))
                                         (_%hd3345033507%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3345133503%_))))
                                     (if (gx#stx-datum? _%hd3345033507%_)
                                         (let ((_%e3345233513%_
                                                (gx#stx-e _%hd3345033507%_)))
                                           (if (equal? _%e3345233513%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3344933510%_)
                                                   (let ((_%e3345533517%_
                                                          (gx#syntax-e
                                                           _%tl3344933510%_)))
                                                     (let ((_%tl3345333524%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3345533517%_)))
                                                           (_%hd3345433521%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3345533517%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3345333524%_)
                                                           (_%__kont3827838279%_
                                                            _%hd3345433521%_)
                                                           (_%__kont3828038281%_))))
                                                   (_%__kont3828038281%_))
                                               (_%__kont3828038281%_)))
                                         (_%__kont3828038281%_))))
                                 (_%__kont3828038281%_))))
                         (_%__kont3828038281%_))
                     (_%__kont3828038281%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3828038281%_)))))
                                       (_%__kont3828038281%_))))))
                            (_%__kont3835638357%_
                             (lambda (_%L33297%_ _%L33299%_)
                               (let* ((_%__stx3825538256%_ _%L33297%_)
                                      (_%g3331533327%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3825538256%_))))
                                 (let ((_%__kont3825838259%_
                                        (lambda (_%L33355%_ _%L33357%_)
                                          (let ((__tmp40077
                                                 (lambda (_%g3336933371%_)
                                                   (let ((__tmp40078
                                                          (cons _%L33299%_
                                                                _%L33355%_)))
                                                     (declare (not safe))
                                                     (_%loop32367%_
                                                      __tmp40078
                                                      _%g3336933371%_
                                                      _%K32657%_)))))
                                            (declare (not safe))
                                            (_%loop32367%_
                                             _%L33357%_
                                             _%vars32656%_
                                             __tmp40077))))
                                       (_%__kont3826038261%_
                                        (lambda ()
                                          (_%K32657%_ _%vars32656%_))))
                                   (if (gx#stx-pair? _%__stx3825538256%_)
                                       (let ((_%e3332133345%_
                                              (gx#syntax-e
                                               _%__stx3825538256%_)))
                                         (let ((_%tl3331933352%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3332133345%_)))
                                               (_%hd3332033349%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3332133345%_))))
                                           (_%__kont3825838259%_
                                            _%tl3331933352%_
                                            _%hd3332033349%_)))
                                       (_%__kont3826038261%_))))))
                            (_%__kont3835838359%_
                             (lambda (_%L33266%_)
                               (let ()
                                 (declare (not safe))
                                 (_%loop32367%_
                                  _%L33266%_
                                  _%vars32656%_
                                  _%K32657%_))))
                            (_%__kont3836038361%_
                             (lambda (_%L33212%_ _%L33214%_)
                               (let ((__tmp40079
                                      (lambda (_%g3322933231%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%loop32367%_
                                           _%L33212%_
                                           _%g3322933231%_
                                           _%K32657%_)))))
                                 (declare (not safe))
                                 (_%loop32367%_
                                  _%L33214%_
                                  _%vars32656%_
                                  __tmp40079))))
                            (_%__kont3836238363%_
                             (lambda (_%L33148%_ _%L33150%_)
                               (let ((__tmp40080
                                      (lambda (_%g3316533167%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%loop32367%_
                                           _%L33148%_
                                           _%g3316533167%_
                                           _%K32657%_)))))
                                 (declare (not safe))
                                 (_%loop32367%_
                                  _%L33150%_
                                  _%vars32656%_
                                  __tmp40080))))
                            (_%__kont3836438365%_
                             (lambda (_%L33093%_)
                               (let ()
                                 (declare (not safe))
                                 (_%loop32367%_
                                  _%L33093%_
                                  _%vars32656%_
                                  _%K32657%_))))
                            (_%__kont3836638367%_
                             (lambda (_%L33043%_ _%L33045%_)
                               (let ()
                                 (declare (not safe))
                                 (_%loop-vector32369%_
                                  _%L33043%_
                                  _%vars32656%_
                                  _%K32657%_))))
                            (_%__kont3836838369%_
                             (lambda (_%L33000%_)
                               (let ()
                                 (declare (not safe))
                                 (_%loop-vector32369%_
                                  _%L33000%_
                                  _%vars32656%_
                                  _%K32657%_))))
                            (_%__kont3837038371%_
                             (lambda (_%L32943%_)
                               (let ()
                                 (declare (not safe))
                                 (_%loop-class-list32371%_
                                  _%L32943%_
                                  _%vars32656%_
                                  _%K32657%_))))
                            (_%__kont3837238373%_
                             (lambda (_%L32884%_ _%L32886%_)
                               (let ()
                                 (declare (not safe))
                                 (_%loop32367%_
                                  _%L32884%_
                                  _%vars32656%_
                                  _%K32657%_))))
                            (_%__kont3837438375%_
                             (lambda (_%L32822%_)
                               (if (find (lambda (_%g3283732839%_)
                                           (gx#bound-identifier=?
                                            _%g3283732839%_
                                            _%L32822%_))
                                         _%vars32656%_)
                                   (_%K32657%_ _%vars32656%_)
                                   (_%K32657%_
                                    (cons _%L32822%_ _%vars32656%_)))))
                            (_%__kont3837638377%_
                             (lambda () (_%K32657%_ _%vars32656%_))))
                        (let* ((_%__match3850838509%_
                                (lambda (_%e3272933023%_
                                         _%hd3272833027%_
                                         _%tl3272733030%_
                                         _%e3273233033%_
                                         _%hd3273133037%_
                                         _%tl3273033040%_)
                                  (let ((_%L33043%_ _%hd3273133037%_)
                                        (_%L33045%_ _%hd3272833027%_))
                                    (if (or (gx#stx-eq? 'values: _%L33045%_)
                                            (gx#stx-eq? 'vector: _%L33045%_))
                                        (_%__kont3836638367%_
                                         _%L33043%_
                                         _%L33045%_)
                                        (if (gx#stx-datum? _%hd3272833027%_)
                                            (let ((_%e3273732976%_
                                                   (gx#stx-e
                                                    _%hd3272833027%_)))
                                              (if (equal? _%e3273732976%_
                                                          'struct:)
                                                  (_%__kont3837638377%_)
                                                  (if (equal? _%e3273732976%_
                                                              'class:)
                                                      (_%__kont3837638377%_)
                                                      (if (equal? _%e3273732976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3837638377%_)
                  (if (equal? _%e3273732976%_ 'var:)
                      (_%__kont3837438375%_ _%hd3273133037%_)
                      (_%__kont3837638377%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3837638377%_))))))
                               (_%__match3840238403%_
                                (lambda (_%e3268433287%_
                                         _%hd3268333291%_
                                         _%tl3268233294%_)
                                  (let ((_%L33297%_ _%tl3268233294%_)
                                        (_%L33299%_ _%hd3268333291%_))
                                    (if (or (gx#stx-eq? 'and: _%L33299%_)
                                            (gx#stx-eq? 'or: _%L33299%_))
                                        (_%__kont3835638357%_
                                         _%L33297%_
                                         _%L33299%_)
                                        (if (gx#stx-datum? _%hd3268333291%_)
                                            (let ((_%e3268933252%_
                                                   (gx#stx-e
                                                    _%hd3268333291%_)))
                                              (if (equal? _%e3268933252%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3268233294%_)
                                                      (let ((_%e3269233256%_
                                                             (gx#syntax-e
                                                              _%tl3268233294%_)))
                                                        (let ((_%tl3269033263%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3269233256%_)))
                      (_%hd3269133260%_
                       (let () (declare (not safe)) (##car _%e3269233256%_))))
                  (if (gx#stx-null? _%tl3269033263%_)
                      (_%__kont3835838359%_ _%hd3269133260%_)
                      (_%__kont3837638377%_))))
              (_%__kont3837638377%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3268933252%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3268233294%_)
                                                          (let ((_%e3270133192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3268233294%_)))
                    (let ((_%tl3269933199%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3270133192%_)))
                          (_%hd3270033196%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3270133192%_))))
                      (if (gx#stx-pair? _%tl3269933199%_)
                          (let ((_%e3270433202%_
                                 (gx#syntax-e _%tl3269933199%_)))
                            (let ((_%tl3270233209%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3270433202%_)))
                                  (_%hd3270333206%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3270433202%_))))
                              (if (gx#stx-null? _%tl3270233209%_)
                                  (_%__kont3836038361%_
                                   _%hd3270333206%_
                                   _%hd3270033196%_)
                                  (_%__kont3837638377%_))))
                          (if (gx#stx-null? _%tl3269933199%_)
                              (_%__match3850838509%_
                               _%e3268433287%_
                               _%hd3268333291%_
                               _%tl3268233294%_
                               _%e3270133192%_
                               _%hd3270033196%_
                               _%tl3269933199%_)
                              (_%__kont3837638377%_)))))
                  (_%__kont3837638377%_))
              (if (equal? _%e3268933252%_ 'splice:)
                  (if (gx#stx-pair? _%tl3268233294%_)
                      (let ((_%e3271333128%_ (gx#syntax-e _%tl3268233294%_)))
                        (let ((_%tl3271133135%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3271333128%_)))
                              (_%hd3271233132%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3271333128%_))))
                          (if (gx#stx-pair? _%tl3271133135%_)
                              (let ((_%e3271633138%_
                                     (gx#syntax-e _%tl3271133135%_)))
                                (let ((_%tl3271433145%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3271633138%_)))
                                      (_%hd3271533142%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3271633138%_))))
                                  (if (gx#stx-null? _%tl3271433145%_)
                                      (_%__kont3836238363%_
                                       _%hd3271533142%_
                                       _%hd3271233132%_)
                                      (_%__kont3837638377%_))))
                              (if (gx#stx-null? _%tl3271133135%_)
                                  (_%__match3850838509%_
                                   _%e3268433287%_
                                   _%hd3268333291%_
                                   _%tl3268233294%_
                                   _%e3271333128%_
                                   _%hd3271233132%_
                                   _%tl3271133135%_)
                                  (_%__kont3837638377%_)))))
                      (_%__kont3837638377%_))
                  (if (equal? _%e3268933252%_ 'box:)
                      (if (gx#stx-pair? _%tl3268233294%_)
                          (let ((_%e3272433083%_
                                 (gx#syntax-e _%tl3268233294%_)))
                            (let ((_%tl3272233090%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3272433083%_)))
                                  (_%hd3272333087%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3272433083%_))))
                              (if (gx#stx-null? _%tl3272233090%_)
                                  (_%__kont3836438365%_ _%hd3272333087%_)
                                  (_%__kont3837638377%_))))
                          (_%__kont3837638377%_))
                      (if (gx#stx-pair? _%tl3268233294%_)
                          (let ((_%e3273233033%_
                                 (gx#syntax-e _%tl3268233294%_)))
                            (let ((_%tl3273033040%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3273233033%_)))
                                  (_%hd3273133037%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3273233033%_))))
                              (if (gx#stx-null? _%tl3273033040%_)
                                  (_%__match3850838509%_
                                   _%e3268433287%_
                                   _%hd3268333291%_
                                   _%tl3268233294%_
                                   _%e3273233033%_
                                   _%hd3273133037%_
                                   _%tl3273033040%_)
                                  (if (equal? _%e3268933252%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3273033040%_)
                                          (let ((_%e3274332990%_
                                                 (gx#syntax-e
                                                  _%tl3273033040%_)))
                                            (let ((_%tl3274132997%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3274332990%_)))
                                                  (_%hd3274232994%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3274332990%_))))
                                              (if (gx#stx-null?
                                                   _%tl3274132997%_)
                                                  (_%__kont3836838369%_
                                                   _%hd3274232994%_)
                                                  (_%__kont3837638377%_))))
                                          (_%__kont3837638377%_))
                                      (if (equal? _%e3268933252%_ 'class:)
                                          (if (gx#stx-pair? _%tl3273033040%_)
                                              (let ((_%e3275432933%_
                                                     (gx#syntax-e
                                                      _%tl3273033040%_)))
                                                (let ((_%tl3275232940%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3275432933%_)))
                                                      (_%hd3275332937%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3275432933%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3275232940%_)
                                                      (_%__kont3837038371%_
                                                       _%hd3275332937%_)
                                                      (_%__kont3837638377%_))))
                                              (_%__kont3837638377%_))
                                          (if (equal? _%e3268933252%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3273033040%_)
                                                  (let ((_%e3276632874%_
                                                         (gx#syntax-e
                                                          _%tl3273033040%_)))
                                                    (let ((_%tl3276432881%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3276632874%_)))
                                                          (_%hd3276532878%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3276632874%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3276432881%_)
                                                          (_%__kont3837238373%_
                                                           _%hd3276532878%_
                                                           _%hd3273133037%_)
                                                          (_%__kont3837638377%_))))
                                                  (_%__kont3837638377%_))
                                              (_%__kont3837638377%_)))))))
                          (_%__kont3837638377%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3268233294%_)
                                                (let ((_%e3273233033%_
                                                       (gx#syntax-e
                                                        _%tl3268233294%_)))
                                                  (let ((_%tl3273033040%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3273233033%_)))
                                                        (_%hd3273133037%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3273233033%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3273033040%_)
                                                        (_%__match3850838509%_
                                                         _%e3268433287%_
                                                         _%hd3268333291%_
                                                         _%tl3268233294%_
                                                         _%e3273233033%_
                                                         _%hd3273133037%_
                                                         _%tl3273033040%_)
                                                        (_%__kont3837638377%_))))
                                                (_%__kont3837638377%_))))))))
                          (if (gx#stx-pair? _%__stx3835138352%_)
                              (let ((_%e3267533386%_
                                     (gx#syntax-e _%__stx3835138352%_)))
                                (let ((_%tl3267333393%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3267533386%_)))
                                      (_%hd3267433390%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3267533386%_))))
                                  (if (gx#stx-datum? _%hd3267433390%_)
                                      (let ((_%e3267633396%_
                                             (gx#stx-e _%hd3267433390%_)))
                                        (if (equal? _%e3267633396%_ '?:)
                                            (if (gx#stx-pair? _%tl3267333393%_)
                                                (let ((_%e3267933400%_
                                                       (gx#syntax-e
                                                        _%tl3267333393%_)))
                                                  (let ((_%tl3267733407%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3267933400%_)))
                                                        (_%hd3267833404%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3267933400%_))))
                                                    (_%__kont3835438355%_
                                                     _%tl3267733407%_)))
                                                (_%__match3840238403%_
                                                 _%e3267533386%_
                                                 _%hd3267433390%_
                                                 _%tl3267333393%_))
                                            (_%__match3840238403%_
                                             _%e3267533386%_
                                             _%hd3267433390%_
                                             _%tl3267333393%_)))
                                      (_%__match3840238403%_
                                       _%e3267533386%_
                                       _%hd3267433390%_
                                       _%tl3267333393%_))))
                              (_%__kont3837638377%_)))))))
                 (_%loop-vector32369%_
                  (lambda (_%body32530%_ _%vars32532%_ _%K32533%_)
                    (let* ((_%__stx3860938610%_ _%body32530%_)
                           (_%g3253632559%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3860938610%_))))
                      (let ((_%__kont3861238613%_
                             (lambda (_%L32636%_)
                               (let ()
                                 (declare (not safe))
                                 (_%loop-list32370%_
                                  _%L32636%_
                                  _%vars32532%_
                                  _%K32533%_))))
                            (_%__kont3861438615%_
                             (lambda (_%L32590%_)
                               (let ()
                                 (declare (not safe))
                                 (_%loop32367%_
                                  _%L32590%_
                                  _%vars32532%_
                                  _%K32533%_)))))
                        (if (gx#stx-pair? _%__stx3860938610%_)
                            (let ((_%e3254132612%_
                                   (gx#syntax-e _%__stx3860938610%_)))
                              (let ((_%tl3253932619%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3254132612%_)))
                                    (_%hd3254032616%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3254132612%_))))
                                (if (gx#stx-datum? _%hd3254032616%_)
                                    (let ((_%e3254232622%_
                                           (gx#stx-e _%hd3254032616%_)))
                                      (if (equal? _%e3254232622%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3253932619%_)
                                              (let ((_%e3254532626%_
                                                     (gx#syntax-e
                                                      _%tl3253932619%_)))
                                                (let ((_%tl3254332633%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3254532626%_)))
                                                      (_%hd3254432630%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3254532626%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3254332633%_)
                                                      (_%__kont3861238613%_
                                                       _%hd3254432630%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3253632559%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3253632559%_)))
                                          (if (equal? _%e3254232622%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3253932619%_)
                                                  (let ((_%e3255332580%_
                                                         (gx#syntax-e
                                                          _%tl3253932619%_)))
                                                    (let ((_%tl3255132587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3255332580%_)))
                                                          (_%hd3255232584%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3255332580%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3255132587%_)
                                                          (_%__kont3861438615%_
                                                           _%hd3255232584%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3253632559%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3253632559%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3253632559%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3253632559%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3253632559%_)))))))
                 (_%loop-list32370%_
                  (lambda (_%rest32460%_ _%vars32462%_ _%K32463%_)
                    (let* ((_%__stx3865938660%_ _%rest32460%_)
                           (_%g3246632478%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3865938660%_))))
                      (let ((_%__kont3866238663%_
                             (lambda (_%L32506%_ _%L32508%_)
                               (let ((__tmp40081
                                      (lambda (_%g3252032522%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%loop-list32370%_
                                           _%L32506%_
                                           _%g3252032522%_
                                           _%K32463%_)))))
                                 (declare (not safe))
                                 (_%loop32367%_
                                  _%L32508%_
                                  _%vars32462%_
                                  __tmp40081))))
                            (_%__kont3866438665%_
                             (lambda () (_%K32463%_ _%vars32462%_))))
                        (if (gx#stx-pair? _%__stx3865938660%_)
                            (let ((_%e3247232496%_
                                   (gx#syntax-e _%__stx3865938660%_)))
                              (let ((_%tl3247032503%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3247232496%_)))
                                    (_%hd3247132500%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3247232496%_))))
                                (_%__kont3866238663%_
                                 _%tl3247032503%_
                                 _%hd3247132500%_)))
                            (_%__kont3866438665%_))))))
                 (_%loop-class-list32371%_
                  (lambda (_%rest32373%_ _%vars32375%_ _%K32376%_)
                    (let* ((_%__stx3867538676%_ _%rest32373%_)
                           (_%g3237932394%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3867538676%_))))
                      (let ((_%__kont3867838679%_
                             (lambda (_%L32432%_ _%L32434%_)
                               (let ((__tmp40082
                                      (lambda (_%g3245032452%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%loop-class-list32371%_
                                           _%L32432%_
                                           _%g3245032452%_
                                           _%K32376%_)))))
                                 (declare (not safe))
                                 (_%loop32367%_
                                  _%L32434%_
                                  _%vars32375%_
                                  __tmp40082))))
                            (_%__kont3868038681%_
                             (lambda () (_%K32376%_ _%vars32375%_))))
                        (if (gx#stx-pair? _%__stx3867538676%_)
                            (let ((_%e3238532412%_
                                   (gx#syntax-e _%__stx3867538676%_)))
                              (let ((_%tl3238332419%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3238532412%_)))
                                    (_%hd3238432416%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3238532412%_))))
                                (if (gx#stx-pair? _%tl3238332419%_)
                                    (let ((_%e3238832422%_
                                           (gx#syntax-e _%tl3238332419%_)))
                                      (let ((_%tl3238632429%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3238832422%_)))
                                            (_%hd3238732426%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3238832422%_))))
                                        (_%__kont3867838679%_
                                         _%tl3238632429%_
                                         _%hd3238732426%_)))
                                    (_%__kont3868038681%_))))
                            (_%__kont3868038681%_)))))))
          (let ()
            (declare (not safe))
            (_%loop32367%_ _%ptree32364%_ '() values)))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29309%_ _%tgt29311%_ _%ptree29312%_ _%K29313%_ _%E29314%_)
        (letrec ((_%generate129316%_
                  (lambda (_%tgt30563%_ _%ptree30565%_ _%K30566%_ _%E30567%_)
                    (let* ((_%g3056930577%_
                            (lambda (_%g3057030573%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3057030573%_)))
                           (_%g3056832360%_
                            (lambda (_%g3057030581%_)
                              ((lambda (_%L30584%_)
                                 (let ()
                                   (let* ((_%__stx3891138912%_ _%ptree30565%_)
                                          (_%g3061130753%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx3891138912%_))))
                                     (let ((_%__kont3891438915%_
                                            (lambda (_%L32075%_ _%L32077%_)
                                              (let* ((_%__stx3882938830%_
                                                      _%L32075%_)
                                                     (_%g3209432129%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx3882938830%_))))
                                                (let ((_%__kont3883238833%_
                                                       (lambda ()
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _%L32077%_ (cons _%L30584%_ '())))
                             (cons _%K30566%_ (cons _%E30567%_ '()))))))
              (_%__kont3883438835%_
               (lambda (_%L32330%_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '?)
                                   (cons _%L32077%_ (cons _%L30584%_ '())))
                             (cons (let ()
                                     (declare (not safe))
                                     (_%generate129316%_
                                      _%tgt30563%_
                                      _%L32330%_
                                      _%K30566%_
                                      _%E30567%_))
                                   (cons _%E30567%_ '()))))))
              (_%__kont3883638837%_
               (lambda (_%L32268%_)
                 (let* ((_%g3228232290%_
                         (lambda (_%g3228332286%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g3228332286%_)))
                        (_%g3228132309%_
                         (lambda (_%g3228332294%_)
                           ((lambda (_%L32297%_)
                              (let ()
                                (cons 'let
                                      (cons (cons (cons _%L32297%_
                                                        (cons (cons _%L32077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L30584%_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (cons (cons 'if
                                                        (cons _%L32297%_
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (_%generate129316%_
                               _%L32297%_
                               _%L32268%_
                               _%K30566%_
                               _%E30567%_))
                            (cons _%E30567%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                            _%g3228332294%_)))
                        (__tmp40083 (gx#genident 'e)))
                   (declare (not safe))
                   (_%g3228132309%_ __tmp40083))))
              (_%__kont3883838839%_
               (lambda (_%L32184%_ _%L32186%_)
                 (let* ((_%g3220632214%_
                         (lambda (_%g3220732210%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g3220732210%_)))
                        (_%g3220532233%_
                         (lambda (_%g3220732218%_)
                           ((lambda (_%L32221%_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _%L32077%_
                                                        (cons _%L30584%_ '())))
                                            (cons (cons 'let
                                                        (cons (cons (cons _%L32221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _%L32186%_ (cons _%L30584%_ '()))
                                        '()))
                            '())
                      (cons (let ()
                              (declare (not safe))
                              (_%generate129316%_
                               _%L32221%_
                               _%L32184%_
                               _%K30566%_
                               _%E30567%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%E30567%_ '()))))))
                            _%g3220732218%_)))
                        (__tmp40084 (gx#genident 'e)))
                   (declare (not safe))
                   (_%g3220532233%_ __tmp40084)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%g3209132341%_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                _%__stx3882938830%_)
                                                               (let ((_%e3209932320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%__stx3882938830%_)))
                         (let ((_%tl3209732327%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3209932320%_)))
                               (_%hd3209832324%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3209932320%_))))
                           (if (gx#stx-null? _%tl3209732327%_)
                               (_%__kont3883438835%_ _%hd3209832324%_)
                               (if (gx#stx-datum? _%hd3209832324%_)
                                   (let ((_%e3210432254%_
                                          (gx#stx-e _%hd3209832324%_)))
                                     (if (equal? _%e3210432254%_ '=>:)
                                         (if (gx#stx-pair? _%tl3209732327%_)
                                             (let ((_%e3210732258%_
                                                    (gx#syntax-e
                                                     _%tl3209732327%_)))
                                               (let ((_%tl3210532265%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e3210732258%_)))
                                                     (_%hd3210632262%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e3210732258%_))))
                                                 (if (gx#stx-null?
                                                      _%tl3210532265%_)
                                                     (_%__kont3883638837%_
                                                      _%hd3210632262%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g3209432129%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g3209432129%_)))
                                         (if (equal? _%e3210432254%_ '::)
                                             (if (gx#stx-pair?
                                                  _%tl3209732327%_)
                                                 (let ((_%e3211632150%_
                                                        (gx#syntax-e
                                                         _%tl3209732327%_)))
                                                   (let ((_%tl3211432157%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e3211632150%_)))
                                                         (_%hd3211532154%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e3211632150%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl3211432157%_)
                                                         (let ((_%e3211932160%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl3211432157%_)))
                   (let ((_%tl3211732167%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e3211932160%_)))
                         (_%hd3211832164%_
                          (let ()
                            (declare (not safe))
                            (##car _%e3211932160%_))))
                     (if (gx#stx-datum? _%hd3211832164%_)
                         (let ((_%e3212032170%_ (gx#stx-e _%hd3211832164%_)))
                           (if (equal? _%e3212032170%_ '=>:)
                               (if (gx#stx-pair? _%tl3211732167%_)
                                   (let ((_%e3212332174%_
                                          (gx#syntax-e _%tl3211732167%_)))
                                     (let ((_%tl3212132181%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3212332174%_)))
                                           (_%hd3212232178%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3212332174%_))))
                                       (if (gx#stx-null? _%tl3212132181%_)
                                           (_%__kont3883838839%_
                                            _%hd3212232178%_
                                            _%hd3211532154%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g3209432129%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3209432129%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%g3209432129%_))))
                         (let () (declare (not safe)) (_%g3209432129%_)))))
                 (let () (declare (not safe)) (_%g3209432129%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3209432129%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g3209432129%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3209432129%_))))))
                       (let () (declare (not safe)) (_%g3209432129%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%__stx3882938830%_)
                                                        (_%__kont3883238833%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g3209132341%_))))))))
                                           (_%__kont3891638917%_
                                            (lambda (_%L31972%_)
                                              (let* ((_%__stx3881338814%_
                                                      _%L31972%_)
                                                     (_%g3198531997%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx3881338814%_))))
                                                (let ((_%__kont3881638817%_
                                                       (lambda (_%L32025%_
                                                                _%L32027%_)
                                                         (let ((__tmp40085
                                                                (let ((__tmp40086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'and: _%L32025%_)))
                          (declare (not safe))
                          (_%generate129316%_
                           _%tgt30563%_
                           __tmp40086
                           _%K30566%_
                           _%E30567%_))))
                   (declare (not safe))
                   (_%generate129316%_
                    _%tgt30563%_
                    _%L32027%_
                    __tmp40085
                    _%E30567%_))))
              (_%__kont3881838819%_ (lambda () _%K30566%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%__stx3881338814%_)
                                                      (let ((_%e3199132015%_
                                                             (gx#syntax-e
                                                              _%__stx3881338814%_)))
                                                        (let ((_%tl3198932022%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3199132015%_)))
                      (_%hd3199032019%_
                       (let () (declare (not safe)) (##car _%e3199132015%_))))
                  (_%__kont3881638817%_ _%tl3198932022%_ _%hd3199032019%_)))
              (_%__kont3881838819%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont3891838919%_
                                            (lambda (_%L31879%_)
                                              (let* ((_%__stx3879738798%_
                                                      _%L31879%_)
                                                     (_%g3189231904%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx3879738798%_))))
                                                (let ((_%__kont3880038801%_
                                                       (lambda (_%L31932%_
                                                                _%L31934%_)
                                                         (let ((__tmp40087
                                                                (let ((__tmp40088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'or: _%L31932%_)))
                          (declare (not safe))
                          (_%generate129316%_
                           _%tgt30563%_
                           __tmp40088
                           _%K30566%_
                           _%E30567%_))))
                   (declare (not safe))
                   (_%generate129316%_
                    _%tgt30563%_
                    _%L31934%_
                    _%K30566%_
                    __tmp40087))))
              (_%__kont3880238803%_ (lambda () _%E30567%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%__stx3879738798%_)
                                                      (let ((_%e3189831922%_
                                                             (gx#syntax-e
                                                              _%__stx3879738798%_)))
                                                        (let ((_%tl3189631929%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3189831922%_)))
                      (_%hd3189731926%_
                       (let () (declare (not safe)) (##car _%e3189831922%_))))
                  (_%__kont3880038801%_ _%tl3189631929%_ _%hd3189731926%_)))
              (_%__kont3880238803%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont3892038921%_
                                            (lambda (_%L31844%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%generate129316%_
                                                 _%tgt30563%_
                                                 _%L31844%_
                                                 _%E30567%_
                                                 _%K30566%_))))
                                           (_%__kont3892238923%_
                                            (lambda (_%L31718%_ _%L31720%_)
                                              (let* ((_%g3173731752%_
                                                      (lambda (_%g3173831748%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3173831748%_)))
                                                     (_%g3173631809%_
                                                      (lambda (_%g3173831756%_)
                                                        (if (gx#stx-pair?
                                                             _%g3173831756%_)
                                                            (let ((_%e3174331759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%g3173831756%_)))
                      (let ((_%hd3174231763%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3174331759%_)))
                            (_%tl3174131766%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3174331759%_))))
                        (if (gx#stx-pair? _%tl3174131766%_)
                            (let ((_%e3174631769%_
                                   (gx#syntax-e _%tl3174131766%_)))
                              (let ((_%hd3174531773%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3174631769%_)))
                                    (_%tl3174431776%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3174631769%_))))
                                (if (gx#stx-null? _%tl3174431776%_)
                                    ((lambda (_%L31779%_ _%L31781%_)
                                       (let ()
                                         (cons 'if
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##pair?)
                                                           (cons _%L30584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (let ((_%hd-pat31797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%L31720%_))
                         (_%tl-pat31799%_ (gx#stx-e _%L31718%_)))
                     (if (and (equal? _%hd-pat31797%_ '(any:))
                              (equal? _%tl-pat31799%_ '(any:)))
                         (let () _%K30566%_)
                         (if (equal? _%tl-pat31799%_ '(any:))
                             (let ()
                               (cons 'let
                                     (cons (cons (cons _%L31781%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##car)
                           (cons _%L30584%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%generate129316%_
                                                    _%L31781%_
                                                    _%L31720%_
                                                    _%K30566%_
                                                    _%E30567%_))
                                                 '()))))
                             (if (equal? _%hd-pat31797%_ '(any:))
                                 (let ()
                                   (cons 'let
                                         (cons (cons (cons _%L31779%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%L30584%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (_%generate129316%_
                                                        _%L31779%_
                                                        _%L31718%_
                                                        _%K30566%_
                                                        _%E30567%_))
                                                     '()))))
                                 (let ()
                                   (cons 'let
                                         (cons (cons (cons _%L31781%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons _%L30584%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _%L31779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f '##cdr)
                                     (cons _%L30584%_ '()))
                               '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (let ((__tmp40089
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate129316%_
                                                               _%L31779%_
                                                               _%L31718%_
                                                               _%K30566%_
                                                               _%E30567%_))))
                                                       (declare (not safe))
                                                       (_%generate129316%_
                                                        _%L31781%_
                                                        _%L31720%_
                                                        __tmp40089
                                                        _%E30567%_))
                                                     '()))))))))
                   (cons _%E30567%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd3174531773%_
                                     _%hd3174231763%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3173731752%_ _%g3173831756%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3173731752%_ _%g3173831756%_)))))
                    (let ()
                      (declare (not safe))
                      (_%g3173731752%_ _%g3173831756%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp40090
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_%g3173631809%_ __tmp40090))))
                                           (_%__kont3892438925%_
                                            (lambda ()
                                              (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##null?)
                        (cons _%L30584%_ '()))
                  (cons _%K30566%_ (cons _%E30567%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont3892638927%_
                                            (lambda (_%L31634%_ _%L31636%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%generate-splice29318%_
                                                 _%tgt30563%_
                                                 _%L31636%_
                                                 _%L31634%_
                                                 _%K30566%_
                                                 _%E30567%_))))
                                           (_%__kont3892838929%_
                                            (lambda (_%L31548%_)
                                              (let* ((_%g3156231570%_
                                                      (lambda (_%g3156331566%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3156331566%_)))
                                                     (_%g3156131589%_
                                                      (lambda (_%g3156331574%_)
                                                        ((lambda (_%L31577%_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f '##box?)
                                       (cons _%L30584%_ '()))
                                 (cons (cons 'let
                                             (cons (cons (cons _%L31577%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##unbox)
                                   (cons _%L30584%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (_%generate129316%_
                                                            _%L31577%_
                                                            _%L31548%_
                                                            _%K30566%_
                                                            _%E30567%_))
                                                         '())))
                                       (cons _%E30567%_ '()))))))
                 _%g3156331574%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp40091
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_%g3156131589%_ __tmp40091))))
                                           (_%__kont3893038931%_
                                            (lambda (_%L31353%_)
                                              (let* ((_%__stx3874738748%_
                                                      _%L31353%_)
                                                     (_%g3136831391%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx3874738748%_))))
                                                (let ((_%__kont3875038751%_
                                                       (lambda (_%L31468%_)
                                                         (let* ((_%g3148231490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g3148331486%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g3148331486%_)))
                        (_%g3148131509%_
                         (lambda (_%g3148331494%_)
                           ((lambda (_%L31497%_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'values-count)
                                                              (cons _%L30584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%L31497%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (_%generate-simple-vector29319%_
                                                     _%tgt30563%_
                                                     _%L31468%_
                                                     '0
                                                     _%K30566%_
                                                     _%E30567%_))
                                                  (cons _%E30567%_ '()))))))
                            _%g3148331494%_)))
                        (__tmp40092 (gx#stx-length _%L31468%_)))
                   (declare (not safe))
                   (_%g3148131509%_ __tmp40092))))
              (_%__kont3875238753%_
               (lambda (_%L31422%_)
                 (let ()
                   (declare (not safe))
                   (_%generate-list-vector29320%_
                    _%tgt30563%_
                    _%L31422%_
                    'values->list
                    _%K30566%_
                    _%E30567%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%__stx3874738748%_)
                                                      (let ((_%e3137331444%_
                                                             (gx#syntax-e
                                                              _%__stx3874738748%_)))
                                                        (let ((_%tl3137131451%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3137331444%_)))
                      (_%hd3137231448%_
                       (let () (declare (not safe)) (##car _%e3137331444%_))))
                  (if (gx#stx-datum? _%hd3137231448%_)
                      (let ((_%e3137431454%_ (gx#stx-e _%hd3137231448%_)))
                        (if (equal? _%e3137431454%_ 'simple:)
                            (if (gx#stx-pair? _%tl3137131451%_)
                                (let ((_%e3137731458%_
                                       (gx#syntax-e _%tl3137131451%_)))
                                  (let ((_%tl3137531465%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3137731458%_)))
                                        (_%hd3137631462%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3137731458%_))))
                                    (if (gx#stx-null? _%tl3137531465%_)
                                        (_%__kont3875038751%_ _%hd3137631462%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3136831391%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3136831391%_)))
                            (if (equal? _%e3137431454%_ 'list:)
                                (if (gx#stx-pair? _%tl3137131451%_)
                                    (let ((_%e3138531412%_
                                           (gx#syntax-e _%tl3137131451%_)))
                                      (let ((_%tl3138331419%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3138531412%_)))
                                            (_%hd3138431416%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3138531412%_))))
                                        (if (gx#stx-null? _%tl3138331419%_)
                                            (_%__kont3875238753%_
                                             _%hd3138431416%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3136831391%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3136831391%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3136831391%_)))))
                      (let () (declare (not safe)) (_%g3136831391%_)))))
              (let () (declare (not safe)) (_%g3136831391%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont3893238933%_
                                            (lambda (_%L31158%_)
                                              (let* ((_%__stx3869738698%_
                                                      _%L31158%_)
                                                     (_%g3117331196%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx3869738698%_))))
                                                (let ((_%__kont3870038701%_
                                                       (lambda (_%L31273%_)
                                                         (let* ((_%g3128731295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g3128831291%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g3128831291%_)))
                        (_%g3128631314%_
                         (lambda (_%g3128831299%_)
                           ((lambda (_%L31302%_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '##vector?)
                                                  (cons _%L30584%_ '()))
                                            (cons (cons 'if
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '##fx=)
                            (cons (cons (gx#datum->syntax '#f '##vector-length)
                                        (cons _%L30584%_ '()))
                                  (cons _%L31302%_ '())))
                      (cons (let ()
                              (declare (not safe))
                              (_%generate-simple-vector29319%_
                               _%tgt30563%_
                               _%L31273%_
                               '0
                               _%K30566%_
                               _%E30567%_))
                            (cons _%E30567%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%E30567%_ '()))))))
                            _%g3128831299%_)))
                        (__tmp40093 (gx#stx-length _%L31273%_)))
                   (declare (not safe))
                   (_%g3128631314%_ __tmp40093))))
              (_%__kont3870238703%_
               (lambda (_%L31227%_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '##vector?)
                                   (cons _%L30584%_ '()))
                             (cons (let ()
                                     (declare (not safe))
                                     (_%generate-list-vector29320%_
                                      _%tgt30563%_
                                      _%L31227%_
                                      'vector->list
                                      _%K30566%_
                                      _%E30567%_))
                                   (cons _%E30567%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%__stx3869738698%_)
                                                      (let ((_%e3117831249%_
                                                             (gx#syntax-e
                                                              _%__stx3869738698%_)))
                                                        (let ((_%tl3117631256%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3117831249%_)))
                      (_%hd3117731253%_
                       (let () (declare (not safe)) (##car _%e3117831249%_))))
                  (if (gx#stx-datum? _%hd3117731253%_)
                      (let ((_%e3117931259%_ (gx#stx-e _%hd3117731253%_)))
                        (if (equal? _%e3117931259%_ 'simple:)
                            (if (gx#stx-pair? _%tl3117631256%_)
                                (let ((_%e3118231263%_
                                       (gx#syntax-e _%tl3117631256%_)))
                                  (let ((_%tl3118031270%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3118231263%_)))
                                        (_%hd3118131267%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3118231263%_))))
                                    (if (gx#stx-null? _%tl3118031270%_)
                                        (_%__kont3870038701%_ _%hd3118131267%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3117331196%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3117331196%_)))
                            (if (equal? _%e3117931259%_ 'list:)
                                (if (gx#stx-pair? _%tl3117631256%_)
                                    (let ((_%e3119031217%_
                                           (gx#syntax-e _%tl3117631256%_)))
                                      (let ((_%tl3118831224%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3119031217%_)))
                                            (_%hd3118931221%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3119031217%_))))
                                        (if (gx#stx-null? _%tl3118831224%_)
                                            (_%__kont3870238703%_
                                             _%hd3118931221%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3117331196%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3117331196%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3117331196%_)))))
                      (let () (declare (not safe)) (_%g3117331196%_)))))
              (let () (declare (not safe)) (_%g3117331196%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont3893438935%_
                                            (lambda (_%L31109%_ _%L31111%_)
                                              (let ((__tmp40094
                                                     (gx#stx-e _%L31111%_)))
                                                (declare (not safe))
                                                (_%generate-struct29321%_
                                                 __tmp40094
                                                 _%tgt30563%_
                                                 _%L31109%_
                                                 _%K30566%_
                                                 _%E30567%_))))
                                           (_%__kont3893638937%_
                                            (lambda (_%L31050%_ _%L31052%_)
                                              (let ((__tmp40095
                                                     (gx#stx-e _%L31052%_)))
                                                (declare (not safe))
                                                (_%generate-class29324%_
                                                 __tmp40095
                                                 _%tgt30563%_
                                                 _%L31050%_
                                                 _%K30566%_
                                                 _%E30567%_))))
                                           (_%__kont3893838939%_
                                            (lambda (_%L30947%_)
                                              (let* ((_%g3096130969%_
                                                      (lambda (_%g3096230965%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3096230965%_)))
                                                     (_%g3096030988%_
                                                      (lambda (_%g3096230973%_)
                                                        ((lambda (_%L30976%_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L30976%_
                                       (cons _%L30584%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _%L30947%_ '()))
                                                   '())))
                                 (cons _%K30566%_ (cons _%E30567%_ '()))))))
                 _%g3096230973%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp40096
                                                      (let ((_%e30992%_
                                                             (gx#stx-e
                                                              _%L30947%_)))
                                                        (if (or (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (symbol? _%e30992%_))
                        (let () (declare (not safe)) (keyword? _%e30992%_))
                        (immediate? _%e30992%_))
                    (let () '##eq?)
                    (if (let () (declare (not safe)) (number? _%e30992%_))
                        (let () 'eqv?)
                        (let () 'equal?))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%g3096030988%_ __tmp40096))))
                                           (_%__kont3894038941%_
                                            (lambda (_%L30867%_ _%L30869%_)
                                              (let* ((_%g3088530893%_
                                                      (lambda (_%g3088630889%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3088630889%_)))
                                                     (_%g3088430912%_
                                                      (lambda (_%g3088630897%_)
                                                        ((lambda (_%L30900%_)
                                                           (let ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%L30900%_
                                             (cons (cons _%L30869%_
                                                         (cons _%L30584%_ '()))
                                                   '()))
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (_%generate129316%_
                                          _%L30900%_
                                          _%L30867%_
                                          _%K30566%_
                                          _%E30567%_))
                                       '())))))
                 _%g3088630897%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp40097
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_%g3088430912%_ __tmp40097))))
                                           (_%__kont3894238943%_
                                            (lambda (_%L30809%_)
                                              (cons 'let
                                                    (cons (cons (cons _%L30809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%L30584%_ '()))
                        '())
                  (cons _%K30566%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont3894438945%_
                                            (lambda () _%K30566%_)))
                                       (if (gx#stx-pair? _%__stx3891138912%_)
                                           (let ((_%e3061732051%_
                                                  (gx#syntax-e
                                                   _%__stx3891138912%_)))
                                             (let ((_%tl3061532058%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3061732051%_)))
                                                   (_%hd3061632055%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3061732051%_))))
                                               (if (gx#stx-datum?
                                                    _%hd3061632055%_)
                                                   (let ((_%e3061832061%_
                                                          (gx#stx-e
                                                           _%hd3061632055%_)))
                                                     (if (equal? _%e3061832061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '?:)
                 (if (gx#stx-pair? _%tl3061532058%_)
                     (let ((_%e3062132065%_ (gx#syntax-e _%tl3061532058%_)))
                       (let ((_%tl3061932072%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3062132065%_)))
                             (_%hd3062032069%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3062132065%_))))
                         (_%__kont3891438915%_
                          _%tl3061932072%_
                          _%hd3062032069%_)))
                     (let () (declare (not safe)) (_%g3061130753%_)))
                 (if (equal? _%e3061832061%_ 'and:)
                     (_%__kont3891638917%_ _%tl3061532058%_)
                     (if (equal? _%e3061832061%_ 'or:)
                         (_%__kont3891838919%_ _%tl3061532058%_)
                         (if (equal? _%e3061832061%_ 'not:)
                             (if (gx#stx-pair? _%tl3061532058%_)
                                 (let ((_%e3063931834%_
                                        (gx#syntax-e _%tl3061532058%_)))
                                   (let ((_%tl3063731841%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3063931834%_)))
                                         (_%hd3063831838%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3063931834%_))))
                                     (if (gx#stx-null? _%tl3063731841%_)
                                         (_%__kont3892038921%_
                                          _%hd3063831838%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3061130753%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3061130753%_)))
                             (if (equal? _%e3061832061%_ 'cons:)
                                 (if (gx#stx-pair? _%tl3061532058%_)
                                     (let ((_%e3064831698%_
                                            (gx#syntax-e _%tl3061532058%_)))
                                       (let ((_%tl3064631705%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e3064831698%_)))
                                             (_%hd3064731702%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e3064831698%_))))
                                         (if (gx#stx-pair? _%tl3064631705%_)
                                             (let ((_%e3065131708%_
                                                    (gx#syntax-e
                                                     _%tl3064631705%_)))
                                               (let ((_%tl3064931715%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e3065131708%_)))
                                                     (_%hd3065031712%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e3065131708%_))))
                                                 (if (gx#stx-null?
                                                      _%tl3064931715%_)
                                                     (_%__kont3892238923%_
                                                      _%hd3065031712%_
                                                      _%hd3064731702%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g3061130753%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g3061130753%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g3061130753%_)))
                                 (if (equal? _%e3061832061%_ 'null:)
                                     (if (gx#stx-null? _%tl3061532058%_)
                                         (_%__kont3892438925%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3061130753%_)))
                                     (if (equal? _%e3061832061%_ 'splice:)
                                         (if (gx#stx-pair? _%tl3061532058%_)
                                             (let ((_%e3066431614%_
                                                    (gx#syntax-e
                                                     _%tl3061532058%_)))
                                               (let ((_%tl3066231621%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e3066431614%_)))
                                                     (_%hd3066331618%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e3066431614%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl3066231621%_)
                                                     (let ((_%e3066731624%_
                                                            (gx#syntax-e
                                                             _%tl3066231621%_)))
                                                       (let ((_%tl3066531631%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e3066731624%_)))
                     (_%hd3066631628%_
                      (let () (declare (not safe)) (##car _%e3066731624%_))))
                 (if (gx#stx-null? _%tl3066531631%_)
                     (_%__kont3892638927%_ _%hd3066631628%_ _%hd3066331618%_)
                     (let () (declare (not safe)) (_%g3061130753%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g3061130753%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g3061130753%_)))
                                         (if (equal? _%e3061832061%_ 'box:)
                                             (if (gx#stx-pair?
                                                  _%tl3061532058%_)
                                                 (let ((_%e3067531538%_
                                                        (gx#syntax-e
                                                         _%tl3061532058%_)))
                                                   (let ((_%tl3067331545%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e3067531538%_)))
                                                         (_%hd3067431542%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e3067531538%_))))
                                                     (if (gx#stx-null?
                                                          _%tl3067331545%_)
                                                         (_%__kont3892838929%_
                                                          _%hd3067431542%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g3061130753%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3061130753%_)))
                                             (if (equal? _%e3061832061%_
                                                         'values:)
                                                 (if (gx#stx-pair?
                                                      _%tl3061532058%_)
                                                     (let ((_%e3068331343%_
                                                            (gx#syntax-e
                                                             _%tl3061532058%_)))
                                                       (let ((_%tl3068131350%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e3068331343%_)))
                     (_%hd3068231347%_
                      (let () (declare (not safe)) (##car _%e3068331343%_))))
                 (if (gx#stx-null? _%tl3068131350%_)
                     (_%__kont3893038931%_ _%hd3068231347%_)
                     (let () (declare (not safe)) (_%g3061130753%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g3061130753%_)))
                                                 (if (equal? _%e3061832061%_
                                                             'vector:)
                                                     (if (gx#stx-pair?
                                                          _%tl3061532058%_)
                                                         (let ((_%e3069131148%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl3061532058%_)))
                   (let ((_%tl3068931155%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e3069131148%_)))
                         (_%hd3069031152%_
                          (let ()
                            (declare (not safe))
                            (##car _%e3069131148%_))))
                     (if (gx#stx-null? _%tl3068931155%_)
                         (_%__kont3893238933%_ _%hd3069031152%_)
                         (let () (declare (not safe)) (_%g3061130753%_)))))
                 (let () (declare (not safe)) (_%g3061130753%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (equal? _%e3061832061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'struct:)
                 (if (gx#stx-pair? _%tl3061532058%_)
                     (let ((_%e3070031089%_ (gx#syntax-e _%tl3061532058%_)))
                       (let ((_%tl3069831096%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3070031089%_)))
                             (_%hd3069931093%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3070031089%_))))
                         (if (gx#stx-pair? _%tl3069831096%_)
                             (let ((_%e3070331099%_
                                    (gx#syntax-e _%tl3069831096%_)))
                               (let ((_%tl3070131106%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e3070331099%_)))
                                     (_%hd3070231103%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e3070331099%_))))
                                 (if (gx#stx-null? _%tl3070131106%_)
                                     (_%__kont3893438935%_
                                      _%hd3070231103%_
                                      _%hd3069931093%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%g3061130753%_)))))
                             (let () (declare (not safe)) (_%g3061130753%_)))))
                     (let () (declare (not safe)) (_%g3061130753%_)))
                 (if (equal? _%e3061832061%_ 'class:)
                     (if (gx#stx-pair? _%tl3061532058%_)
                         (let ((_%e3071231030%_
                                (gx#syntax-e _%tl3061532058%_)))
                           (let ((_%tl3071031037%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3071231030%_)))
                                 (_%hd3071131034%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3071231030%_))))
                             (if (gx#stx-pair? _%tl3071031037%_)
                                 (let ((_%e3071531040%_
                                        (gx#syntax-e _%tl3071031037%_)))
                                   (let ((_%tl3071331047%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3071531040%_)))
                                         (_%hd3071431044%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3071531040%_))))
                                     (if (gx#stx-null? _%tl3071331047%_)
                                         (_%__kont3893638937%_
                                          _%hd3071431044%_
                                          _%hd3071131034%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3061130753%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3061130753%_)))))
                         (let () (declare (not safe)) (_%g3061130753%_)))
                     (if (equal? _%e3061832061%_ 'datum:)
                         (if (gx#stx-pair? _%tl3061532058%_)
                             (let ((_%e3072330937%_
                                    (gx#syntax-e _%tl3061532058%_)))
                               (let ((_%tl3072130944%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e3072330937%_)))
                                     (_%hd3072230941%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e3072330937%_))))
                                 (if (gx#stx-null? _%tl3072130944%_)
                                     (_%__kont3893838939%_ _%hd3072230941%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%g3061130753%_)))))
                             (let () (declare (not safe)) (_%g3061130753%_)))
                         (if (equal? _%e3061832061%_ 'apply:)
                             (if (gx#stx-pair? _%tl3061532058%_)
                                 (let ((_%e3073230847%_
                                        (gx#syntax-e _%tl3061532058%_)))
                                   (let ((_%tl3073030854%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3073230847%_)))
                                         (_%hd3073130851%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3073230847%_))))
                                     (if (gx#stx-pair? _%tl3073030854%_)
                                         (let ((_%e3073530857%_
                                                (gx#syntax-e
                                                 _%tl3073030854%_)))
                                           (let ((_%tl3073330864%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e3073530857%_)))
                                                 (_%hd3073430861%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e3073530857%_))))
                                             (if (gx#stx-null?
                                                  _%tl3073330864%_)
                                                 (_%__kont3894038941%_
                                                  _%hd3073430861%_
                                                  _%hd3073130851%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3061130753%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3061130753%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3061130753%_)))
                             (if (equal? _%e3061832061%_ 'var:)
                                 (if (gx#stx-pair? _%tl3061532058%_)
                                     (let ((_%e3074330799%_
                                            (gx#syntax-e _%tl3061532058%_)))
                                       (let ((_%tl3074130806%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e3074330799%_)))
                                             (_%hd3074230803%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e3074330799%_))))
                                         (if (gx#stx-null? _%tl3074130806%_)
                                             (_%__kont3894238943%_
                                              _%hd3074230803%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g3061130753%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g3061130753%_)))
                                 (if (equal? _%e3061832061%_ 'any:)
                                     (if (gx#stx-null? _%tl3061532058%_)
                                         (_%__kont3894438945%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3061130753%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%g3061130753%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3061130753%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3061130753%_)))))))
                               _%g3057030581%_))))
                      (declare (not safe))
                      (_%g3056832360%_ _%tgt30563%_))))
                 (_%generate-splice29318%_
                  (lambda (_%tgt29935%_
                           _%hd29937%_
                           _%rest29938%_
                           _%K29939%_
                           _%E29940%_)
                    (let* ((_%g2994229959%_
                            (lambda (_%g2994329955%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2994329955%_)))
                           (_%g2994130559%_
                            (lambda (_%g2994329963%_)
                              (if (gx#stx-pair/null? _%g2994329963%_)
                                  (let ((_g40098_
                                         (gx#syntax-split-splice
                                          _%g2994329963%_
                                          '0)))
                                    (begin
                                      (let ((_g40099_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g40098_)
                                                   (##vector-length _g40098_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g40099_ 2)))
                                            (error "Context expects 2 values"
                                                   _g40099_)))
                                      (let ((_%target2994529966%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g40098_ 0)))
                                            (_%tl2994729969%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g40098_ 1))))
                                        (if (gx#stx-null? _%tl2994729969%_)
                                            (letrec ((_%loop2994829972%_
                                                      (lambda (_%hd2994629976%_
                                                               _%var2995229979%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2994629976%_)
                                                            (let ((_%e2994929982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2994629976%_)))
                      (let ((_%lp-hd2995029986%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2994929982%_)))
                            (_%lp-tl2995129989%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2994929982%_))))
                        (let ((__tmp40100
                               (cons _%lp-hd2995029986%_ _%var2995229979%_)))
                          (declare (not safe))
                          (_%loop2994829972%_
                           _%lp-tl2995129989%_
                           __tmp40100))))
                    (let ((_%var2995329992%_ (reverse _%var2995229979%_)))
                      ((lambda (_%L29996%_)
                         (let ()
                           (let* ((_%g3001230029%_
                                   (lambda (_%g3001330025%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g3001330025%_)))
                                  (_%g3001130547%_
                                   (lambda (_%g3001330033%_)
                                     (if (gx#stx-pair/null? _%g3001330033%_)
                                         (let ((_g40101_
                                                (gx#syntax-split-splice
                                                 _%g3001330033%_
                                                 '0)))
                                           (begin
                                             (let ((_g40102_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g40101_)
                                                          (##vector-length
                                                           _g40101_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g40102_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g40102_)))
                                             (let ((_%target3001530036%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g40101_
                                                       0)))
                                                   (_%tl3001730039%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g40101_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _%tl3001730039%_)
                                                   (letrec ((_%loop3001830042%_
                                                             (lambda (_%hd3001630046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%var-r3002230049%_)
                       (if (gx#stx-pair? _%hd3001630046%_)
                           (let ((_%e3001930052%_
                                  (gx#syntax-e _%hd3001630046%_)))
                             (let ((_%lp-hd3002030056%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3001930052%_)))
                                   (_%lp-tl3002130059%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3001930052%_))))
                               (let ((__tmp40103
                                      (cons _%lp-hd3002030056%_
                                            _%var-r3002230049%_)))
                                 (declare (not safe))
                                 (_%loop3001830042%_
                                  _%lp-tl3002130059%_
                                  __tmp40103))))
                           (let ((_%var-r3002330062%_
                                  (reverse _%var-r3002230049%_)))
                             ((lambda (_%L30066%_)
                                (let ()
                                  (let* ((_%g3008330100%_
                                          (lambda (_%g3008430096%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3008430096%_)))
                                         (_%g3008230535%_
                                          (lambda (_%g3008430104%_)
                                            (if (gx#stx-pair/null?
                                                 _%g3008430104%_)
                                                (let ((_g40104_
                                                       (gx#syntax-split-splice
                                                        _%g3008430104%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g40105_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g40104_)
                         (##vector-length _g40104_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g40105_ 2)))
                  (error "Context expects 2 values" _g40105_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target3008630107%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g40104_
                                                              0)))
                                                          (_%tl3008830110%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g40104_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl3008830110%_)
                                                          (letrec ((_%loop3008930113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd3008730117%_ _%init3009330120%_)
                              (if (gx#stx-pair? _%hd3008730117%_)
                                  (let ((_%e3009030123%_
                                         (gx#syntax-e _%hd3008730117%_)))
                                    (let ((_%lp-hd3009130127%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3009030123%_)))
                                          (_%lp-tl3009230130%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3009030123%_))))
                                      (let ((__tmp40106
                                             (cons _%lp-hd3009130127%_
                                                   _%init3009330120%_)))
                                        (declare (not safe))
                                        (_%loop3008930113%_
                                         _%lp-tl3009230130%_
                                         __tmp40106))))
                                  (let ((_%init3009430133%_
                                         (reverse _%init3009330120%_)))
                                    ((lambda (_%L30137%_)
                                       (let ()
                                         (let* ((_%g3015430162%_
                                                 (lambda (_%g3015530158%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g3015530158%_)))
                                                (_%g3015330531%_
                                                 (lambda (_%g3015530166%_)
                                                   ((lambda (_%L30169%_)
                                                      (let ()
                                                        (let* ((_%g3018230190%_
                                                                (lambda (_%g3018330186%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g3018330186%_)))
                       (_%g3018130527%_
                        (lambda (_%g3018330194%_)
                          ((lambda (_%L30197%_)
                             (let ()
                               (let* ((_%g3021030218%_
                                       (lambda (_%g3021130214%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g3021130214%_)))
                                      (_%g3020930523%_
                                       (lambda (_%g3021130222%_)
                                         ((lambda (_%L30225%_)
                                            (let ()
                                              (let* ((_%g3023830246%_
                                                      (lambda (_%g3023930242%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3023930242%_)))
                                                     (_%g3023730519%_
                                                      (lambda (_%g3023930250%_)
                                                        ((lambda (_%L30253%_)
                                                           (let ()
                                                             (let* ((_%g3026630274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g3026730270%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g3026730270%_)))
                            (_%g3026530515%_
                             (lambda (_%g3026730278%_)
                               ((lambda (_%L30281%_)
                                  (let ()
                                    (let* ((_%g3029430302%_
                                            (lambda (_%g3029530298%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g3029530298%_)))
                                           (_%g3029330511%_
                                            (lambda (_%g3029530306%_)
                                              ((lambda (_%L30309%_)
                                                 (let ()
                                                   (let* ((_%g3032230330%_
                                                           (lambda (_%g3032330326%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g3032330326%_)))
                                                          (_%g3032130507%_
                                                           (lambda (_%g3032330334%_)
                                                             ((lambda (_%L30337%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g3035030358%_
                                  (lambda (_%g3035130354%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g3035130354%_)))
                                 (_%g3034930492%_
                                  (lambda (_%g3035130362%_)
                                    ((lambda (_%L30365%_)
                                       (let ()
                                         (let* ((_%g3037830386%_
                                                 (lambda (_%g3037930382%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g3037930382%_)))
                                                (_%g3037730480%_
                                                 (lambda (_%g3037930390%_)
                                                   ((lambda (_%L30393%_)
                                                      (let ()
                                                        (let* ((_%g3040630414%_
                                                                (lambda (_%g3040730410%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g3040730410%_)))
                       (_%g3040530476%_
                        (lambda (_%g3040730418%_)
                          ((lambda (_%L30421%_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'letrec)
                                       (cons (cons (cons _%L30197%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons (cons _%L30309%_
                                         (foldr (lambda (_%g3044330446%_
                                                         _%g3044430449%_)
                                                  (cons _%g3044330446%_
                                                        _%g3044430449%_))
                                                '()
                                                _%L29996%_))
                                   (cons _%L30337%_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _%L30253%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'lambda)
                                   (cons (cons _%L30281%_
                                               (cons _%L30309%_
                                                     (foldr (lambda (_%g3044130452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g3044230455%_)
                      (cons _%g3044130452%_ _%g3044230455%_))
                    '()
                    _%L30066%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons _%L30421%_ '())))
                             '()))
                 (cons (cons _%L30225%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%L30309%_
                                                     (foldr (lambda (_%g3043930458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g3044030461%_)
                      (cons _%g3043930458%_ _%g3044030461%_))
                    '()
                    _%L30066%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'pair?)
                               (cons _%L30309%_ '()))
                         (cons (cons _%L30253%_
                                     (cons (cons (gx#datum->syntax '#f '##car)
                                                 (cons _%L30309%_ '()))
                                           (cons _%L30309%_
                                                 (foldr (lambda (_%g3043730464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3043830467%_)
                  (cons _%g3043730464%_ _%g3043830467%_))
                '()
                _%L30066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%L30393%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '()))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _%L30225%_
                                                         (cons _%L30169%_
                                                               (foldr (lambda (_%g3043530470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g3043630473%_)
                                (cons _%g3043530470%_ _%g3043630473%_))
                              '()
                              _%L30137%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))
                           _%g3040730418%_)))
                       (__tmp40107
                        (let ()
                          (declare (not safe))
                          (_%generate129316%_
                           _%L30281%_
                           _%hd29937%_
                           _%L30365%_
                           _%L30393%_))))
                  (declare (not safe))
                  (_%g3040530476%_ __tmp40107))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g3037930390%_)))
                                                (__tmp40108
                                                 (cons _%L30197%_
                                                       (cons _%L30309%_
                                                             (foldr (lambda (_%g3048330486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g3048430489%_)
                              (cons (cons (gx#datum->syntax '#f 'reverse)
                                          (cons _%g3048330486%_ '()))
                                    _%g3048430489%_))
                            '()
                            _%L30066%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%g3037730480%_ __tmp40108))))
                                     _%g3035130362%_)))
                                 (__tmp40109
                                  (cons _%L30225%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##cdr)
                                                    (cons _%L30309%_ '()))
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _%L30066%_
                                                 _%L29996%_)
                                                (foldr (lambda (_%g3049530499%_
                                                                _%g3049630502%_
                                                                _%g3049730504%_)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'cons)
                             (cons _%g3049630502%_ (cons _%g3049530499%_ '())))
                       _%g3049730504%_))
               '()
               _%L30066%_
               _%L29996%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (declare (not safe))
                            (_%g3034930492%_ __tmp40109))))
                      _%g3032330334%_)))
                  (__tmp40110
                   (let ()
                     (declare (not safe))
                     (_%generate129316%_
                      _%L30309%_
                      _%rest29938%_
                      _%K29939%_
                      _%E29940%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_%g3032130507%_
                                                      __tmp40110))))
                                               _%g3029530306%_)))
                                           (__tmp40111 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_%g3029330511%_ __tmp40111))))
                                _%g3026730278%_)))
                            (__tmp40112 (gx#genident 'hd)))
                       (declare (not safe))
                       (_%g3026530515%_ __tmp40112))))
                 _%g3023930250%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp40113
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_%g3023730519%_ __tmp40113))))
                                          _%g3021130222%_)))
                                      (__tmp40114 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_%g3020930523%_ __tmp40114))))
                           _%g3018330194%_)))
                       (__tmp40115 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_%g3018130527%_ __tmp40115))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g3015530166%_))))
                                           (declare (not safe))
                                           (_%g3015330531%_ _%tgt29935%_))))
                                     _%init3009430133%_))))))
                    (let ()
                      (declare (not safe))
                      (_%loop3008930113%_ _%target3008630107%_ '())))
                  (let ()
                    (declare (not safe))
                    (_%g3008330100%_ _%g3008430104%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3008330100%_
                                                   _%g3008430104%_)))))
                                         (__tmp40116
                                          (make-list
                                           (gx#stx-length
                                            (foldr (lambda (_%g3053830541%_
                                                            _%g3053930544%_)
                                                     (cons _%g3053830541%_
                                                           _%g3053930544%_))
                                                   '()
                                                   _%L29996%_))
                                           (cons (gx#datum->syntax '#f '@list)
                                                 '()))))
                                    (declare (not safe))
                                    (_%g3008230535%_ __tmp40116))))
                              _%var-r3002330062%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%loop3001830042%_
                                                        _%target3001530036%_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3001230029%_
                                                      _%g3001330033%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3001230029%_
                                            _%g3001330033%_)))))
                                  (__tmp40117
                                   (gx#gentemps
                                    (foldr (lambda (_%g3055030553%_
                                                    _%g3055130556%_)
                                             (cons _%g3055030553%_
                                                   _%g3055130556%_))
                                           '()
                                           _%L29996%_))))
                             (declare (not safe))
                             (_%g3001130547%_ __tmp40117))))
                       _%var2995329992%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop2994829972%_
                                                 _%target2994529966%_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_%g2994229959%_
                                               _%g2994329963%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2994229959%_ _%g2994329963%_)))))
                           (__tmp40118
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/match[1]#match-pattern-vars|
                               _%hd29937%_))))
                      (declare (not safe))
                      (_%g2994130559%_ __tmp40118))))
                 (_%generate-simple-vector29319%_
                  (lambda (_%tgt29777%_
                           _%body29779%_
                           _%start29780%_
                           _%K29781%_
                           _%E29782%_)
                    (let _%recur29784%_ ((_%rest29787%_ _%body29779%_)
                                         (_%off29789%_ _%start29780%_))
                      (let* ((_%__stx3926939270%_ _%rest29787%_)
                             (_%g2979229804%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3926939270%_))))
                        (let ((_%__kont3927239273%_
                               (lambda (_%L29832%_ _%L29834%_)
                                 (let* ((_%g2984929868%_
                                         (lambda (_%g2985029864%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2985029864%_)))
                                        (_%g2984829927%_
                                         (lambda (_%g2985029872%_)
                                           (if (gx#stx-pair? _%g2985029872%_)
                                               (let ((_%e2985629875%_
                                                      (gx#syntax-e
                                                       _%g2985029872%_)))
                                                 (let ((_%hd2985529879%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2985629875%_)))
                                                       (_%tl2985429882%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2985629875%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2985429882%_)
                                                       (let ((_%e2985929885%_
                                                              (gx#syntax-e
                                                               _%tl2985429882%_)))
                                                         (let ((_%hd2985829889%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2985929885%_)))
                       (_%tl2985729892%_
                        (let () (declare (not safe)) (##cdr _%e2985929885%_))))
                   (if (gx#stx-pair? _%tl2985729892%_)
                       (let ((_%e2986229895%_ (gx#syntax-e _%tl2985729892%_)))
                         (let ((_%hd2986129899%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e2986229895%_)))
                               (_%tl2986029902%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e2986229895%_))))
                           (if (gx#stx-null? _%tl2986029902%_)
                               ((lambda (_%L29905%_ _%L29907%_ _%L29908%_)
                                  (let ()
                                    (cons 'let
                                          (cons (cons (cons _%L29908%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##vector-ref)
                                (cons _%L29907%_ (cons _%L29905%_ '())))
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (let ((__tmp40119
                                                             (let ((__tmp40120
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (fx1+ _%off29789%_)))
                       (declare (not safe))
                       (_%recur29784%_ _%L29832%_ __tmp40120))))
                (declare (not safe))
                (_%generate129316%_
                 _%L29908%_
                 _%L29834%_
                 __tmp40119
                 _%E29782%_))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%hd2986129899%_
                                _%hd2985829889%_
                                _%hd2985529879%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g2984929868%_ _%g2985029872%_)))))
                       (let ()
                         (declare (not safe))
                         (_%g2984929868%_ _%g2985029872%_)))))
               (let ()
                 (declare (not safe))
                 (_%g2984929868%_ _%g2985029872%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g2984929868%_
                                                  _%g2985029872%_)))))
                                        (__tmp40121
                                         (list (gx#genident 'e)
                                               _%tgt29777%_
                                               _%off29789%_)))
                                   (declare (not safe))
                                   (_%g2984829927%_ __tmp40121))))
                              (_%__kont3927439275%_ (lambda () _%K29781%_)))
                          (if (gx#stx-pair? _%__stx3926939270%_)
                              (let ((_%e2979829822%_
                                     (gx#syntax-e _%__stx3926939270%_)))
                                (let ((_%tl2979629829%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2979829822%_)))
                                      (_%hd2979729826%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2979829822%_))))
                                  (_%__kont3927239273%_
                                   _%tl2979629829%_
                                   _%hd2979729826%_)))
                              (_%__kont3927439275%_)))))))
                 (_%generate-list-vector29320%_
                  (lambda (_%tgt29669%_
                           _%body29671%_
                           _%->list29672%_
                           _%K29673%_
                           _%E29674%_)
                    (let* ((_%g2967629684%_
                            (lambda (_%g2967729680%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2967729680%_)))
                           (_%g2967529773%_
                            (lambda (_%g2967729688%_)
                              ((lambda (_%L29691%_)
                                 (let ()
                                   (let* ((_%g2970329711%_
                                           (lambda (_%g2970429707%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2970429707%_)))
                                          (_%g2970229769%_
                                           (lambda (_%g2970429715%_)
                                             ((lambda (_%L29718%_)
                                                (let ()
                                                  (let* ((_%g2973129739%_
                                                          (lambda (_%g2973229735%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2973229735%_)))
                                                         (_%g2973029761%_
                                                          (lambda (_%g2973229743%_)
                                                            ((lambda (_%L29746%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons 'let
                                 (cons (cons (cons _%L29691%_
                                                   (cons _%L29746%_ '()))
                                             '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (_%generate129316%_
                                                _%L29691%_
                                                _%body29671%_
                                                _%K29673%_
                                                _%E29674%_))
                                             '()))))))
                     _%g2973229743%_)))
                 (__tmp40122
                  (let ((_%$e29765%_ _%->list29672%_))
                    (if (eq? 'values->list _%$e29765%_)
                        (cons (gx#datum->syntax '#f 'values->list)
                              (cons _%L29718%_ '()))
                        (if (eq? 'vector->list _%$e29765%_)
                            (cons (gx#datum->syntax '#f '##vector->list)
                                  (cons _%L29718%_ '()))
                            (if (eq? 'struct->list _%$e29765%_)
                                (cons (gx#datum->syntax '#f '##cdr)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '##structure->list)
                                                  (cons _%L29718%_ '()))
                                            '()))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _%stx29309%_
                                 _%->list29672%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g2973029761%_
                                                     __tmp40122))))
                                              _%g2970429715%_))))
                                     (declare (not safe))
                                     (_%g2970229769%_ _%tgt29669%_))))
                               _%g2967729688%_)))
                           (__tmp40123 (gx#genident 'e)))
                      (declare (not safe))
                      (_%g2967529773%_ __tmp40123))))
                 (_%generate-struct29321%_
                  (lambda (_%info29540%_
                           _%tgt29542%_
                           _%body29543%_
                           _%K29544%_
                           _%E29545%_)
                    (let* ((_%__stx3928539286%_ _%body29543%_)
                           (_%g2954829571%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3928539286%_))))
                      (let ((_%__kont3928839289%_
                             (lambda (_%L29648%_)
                               (let ((_%fields29662%_
                                      (let ()
                                        (declare (not safe))
                                        (_%struct-field-accessors29323%_
                                         _%info29540%_))))
                                 (cons 'if
                                       (cons (cons (let ((__obj40039
                                                          _%info29540%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj40039
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj40039
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj40039
                                                          'predicate)))
                                                   (cons _%tgt29542%_ '()))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (_%generate-simple-struct-body29322%_
                                                      _%info29540%_
                                                      _%tgt29542%_
                                                      _%L29648%_
                                                      _%K29544%_
                                                      _%E29545%_))
                                                   (cons _%E29545%_ '())))))))
                            (_%__kont3929039291%_
                             (lambda (_%L29602%_)
                               (cons 'if
                                     (cons (cons (let ((__obj40040
                                                        _%info29540%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj40040
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj40040
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj40040
                                                        'predicate)))
                                                 (cons _%tgt29542%_ '()))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%generate-list-vector29320%_
                                                    _%tgt29542%_
                                                    _%L29602%_
                                                    'struct->list
                                                    _%K29544%_
                                                    _%E29545%_))
                                                 (cons _%E29545%_ '())))))))
                        (if (gx#stx-pair? _%__stx3928539286%_)
                            (let ((_%e2955329624%_
                                   (gx#syntax-e _%__stx3928539286%_)))
                              (let ((_%tl2955129631%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2955329624%_)))
                                    (_%hd2955229628%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2955329624%_))))
                                (if (gx#stx-datum? _%hd2955229628%_)
                                    (let ((_%e2955429634%_
                                           (gx#stx-e _%hd2955229628%_)))
                                      (if (equal? _%e2955429634%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2955129631%_)
                                              (let ((_%e2955729638%_
                                                     (gx#syntax-e
                                                      _%tl2955129631%_)))
                                                (let ((_%tl2955529645%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2955729638%_)))
                                                      (_%hd2955629642%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2955729638%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2955529645%_)
                                                      (_%__kont3928839289%_
                                                       _%hd2955629642%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2954829571%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2954829571%_)))
                                          (if (equal? _%e2955429634%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2955129631%_)
                                                  (let ((_%e2956529592%_
                                                         (gx#syntax-e
                                                          _%tl2955129631%_)))
                                                    (let ((_%tl2956329599%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2956529592%_)))
                                                          (_%hd2956429596%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2956529592%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2956329599%_)
                                                          (_%__kont3929039291%_
                                                           _%hd2956429596%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2954829571%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2954829571%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2954829571%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2954829571%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2954829571%_)))))))
                 (_%generate-simple-struct-body29322%_
                  (lambda (_%info29460%_
                           _%tgt29462%_
                           _%body29463%_
                           _%K29464%_
                           _%E29465%_)
                    (let _%recur29467%_ ((_%rest29470%_ _%body29463%_)
                                         (_%fields29472%_
                                          (let ()
                                            (declare (not safe))
                                            (_%struct-field-accessors29323%_
                                             _%info29460%_))))
                      (let* ((_%__stx3933539336%_ _%rest29470%_)
                             (_%g2947529487%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3933539336%_))))
                        (let ((_%__kont3933839339%_
                               (lambda (_%L29515%_ _%L29517%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (null? _%fields29472%_))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29309%_
                                      _%info29460%_
                                      (let ((__obj40041 _%info29460%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj40041
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj40041
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj40041
                                             'name))))
                                     (let ((_%$tgt29532%_ (gx#genident 'e))
                                           (_%getf29534%_
                                            (car _%fields29472%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29532%_
                                                               (cons (cons _%getf29534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29462%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (let ((__tmp40124
                                                                (let ((__tmp40125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _%fields29472%_)))
                          (declare (not safe))
                          (_%recur29467%_ _%L29515%_ __tmp40125))))
                   (declare (not safe))
                   (_%generate129316%_
                    _%$tgt29532%_
                    _%L29517%_
                    __tmp40124
                    _%E29465%_))
                 '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%__kont3934039341%_ (lambda () _%K29464%_)))
                          (if (gx#stx-pair? _%__stx3933539336%_)
                              (let ((_%e2948129505%_
                                     (gx#syntax-e _%__stx3933539336%_)))
                                (let ((_%tl2947929512%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2948129505%_)))
                                      (_%hd2948029509%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2948129505%_))))
                                  (_%__kont3933839339%_
                                   _%tl2947929512%_
                                   _%hd2948029509%_)))
                              (_%__kont3934039341%_)))))))
                 (_%struct-field-accessors29323%_
                  (lambda (_%info29441%_)
                    (let _%recur29444%_ ((_%next29447%_
                                          (cons _%info29441%_ '())))
                      (if (let () (declare (not safe)) (null? _%next29447%_))
                          '()
                          (let ((_%ti29450%_ (car _%next29447%_)))
                            (let ((__tmp40127
                                   (let ((__tmp40128
                                          (map gx#syntax-local-value
                                               (let ((__obj40042 _%ti29450%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj40042
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj40042
                                                        '3
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj40042
                                                      'super))))))
                                     (declare (not safe))
                                     (_%recur29444%_ __tmp40128)))
                                  (__tmp40126
                                   (map (lambda (_%slot29453%_)
                                          (let ((_%$e29456%_
                                                 (assgetq _%slot29453%_
                                                          (let ((__obj40043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ti29450%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-direct-instance-of?
                           __obj40043
                           'gerbil.core#class-type-info::t))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref __obj40043 '17 '#f '#f))
                        (class-slot-ref
                         gerbil/core/mop~MOP-2#class-type-info::t
                         __obj40043
                         'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29456%_
                                                _%$e29456%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29309%_
                                                 _%info29441%_
                                                 _%slot29453%_))))
                                        (let ((__obj40044 _%ti29450%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj40044
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj40044
                                                 '4
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj40044
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp40127 __tmp40126)))))))
                 (_%generate-class29324%_
                  (lambda (_%info29434%_
                           _%tgt29436%_
                           _%body29437%_
                           _%K29438%_
                           _%E29439%_)
                    (cons 'if
                          (cons (cons (let ((__obj40045 _%info29434%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj40045
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj40045
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj40045
                                             'predicate)))
                                      (cons _%tgt29436%_ '()))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-class-body29325%_
                                         _%info29434%_
                                         _%tgt29436%_
                                         _%body29437%_
                                         _%K29438%_
                                         _%E29439%_))
                                      (cons _%E29439%_ '()))))))
                 (_%generate-class-body29325%_
                  (lambda (_%info29327%_
                           _%tgt29329%_
                           _%body29330%_
                           _%K29331%_
                           _%E29332%_)
                    (let _%recur29334%_ ((_%rest29337%_ _%body29330%_))
                      (let* ((_%__stx3935139352%_ _%rest29337%_)
                             (_%g2934129357%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3935139352%_))))
                        (let ((_%__kont3935439355%_
                               (lambda (_%L29395%_ _%L29397%_ _%L29398%_)
                                 (let ((_%$e29418%_
                                        (assgetq (let ((__tmp40129
                                                        (keyword->string
                                                         (gx#stx-e
                                                          _%L29398%_))))
                                                   (declare (not safe))
                                                   (##string->symbol
                                                    __tmp40129))
                                                 (let ((__obj40046
                                                        _%info29327%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj40046
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj40046
                                                          '17
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj40046
                                                        'unchecked-accessors))))))
                                   (if _%$e29418%_
                                       ((lambda (_%getf29422%_)
                                          (let ((_%$tgt29425%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt29425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf29422%_ (cons _%tgt29329%_ '()))
                                  '()))
                      '())
                (cons (let ((__tmp40130
                             (let ()
                               (declare (not safe))
                               (_%recur29334%_ _%L29395%_))))
                        (declare (not safe))
                        (_%generate129316%_
                         _%$tgt29425%_
                         _%L29397%_
                         __tmp40130
                         _%E29332%_))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e29418%_)
                                       (let ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"no slot accessor"
                                          _%stx29309%_
                                          _%info29327%_
                                          _%L29398%_))))))
                              (_%__kont3935639357%_ (lambda () _%K29331%_)))
                          (if (gx#stx-pair? _%__stx3935139352%_)
                              (let ((_%e2934829375%_
                                     (gx#syntax-e _%__stx3935139352%_)))
                                (let ((_%tl2934629382%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2934829375%_)))
                                      (_%hd2934729379%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2934829375%_))))
                                  (if (gx#stx-pair? _%tl2934629382%_)
                                      (let ((_%e2935129385%_
                                             (gx#syntax-e _%tl2934629382%_)))
                                        (let ((_%tl2934929392%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2935129385%_)))
                                              (_%hd2935029389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2935129385%_))))
                                          (_%__kont3935439355%_
                                           _%tl2934929392%_
                                           _%hd2935029389%_
                                           _%hd2934729379%_)))
                                      (_%__kont3935639357%_))))
                              (_%__kont3935639357%_))))))))
          (let ()
            (declare (not safe))
            (_%generate129316%_
             _%tgt29311%_
             _%ptree29312%_
             _%K29313%_
             _%E29314%_)))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx28122%_ _%tgt-lst28124%_ _%clauses28125%_)
        (letrec ((_%parse-body28127%_
                  (lambda (_%hd-len29131%_)
                    (let _%lp29134%_ ((_%rest29137%_ _%clauses28125%_)
                                      (_%r29139%_ '()))
                      (let* ((_%__stx3940139402%_ _%rest29137%_)
                             (_%g2914229154%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3940139402%_))))
                        (let ((_%__kont3940439405%_
                               (lambda (_%L29182%_ _%L29184%_)
                                 (let* ((_%__stx3937339374%_ _%L29184%_)
                                        (_%g2920129217%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3937339374%_))))
                                   (let ((_%__kont3937639377%_
                                          (lambda (_%L29286%_)
                                            (if (gx#stx-null? _%L29182%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%L29286%_)
                                 (let ((_%$e29297%_
                                        (gx#stx-source _%L29184%_)))
                                   (if _%$e29297%_
                                       _%$e29297%_
                                       (gx#stx-source _%stx28122%_))))
                                '())))
              _%r29139%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx28122%_
                                                 _%L29184%_))))
                                         (_%__kont3937839379%_
                                          (lambda (_%L29245%_ _%L29247%_)
                                            (let ((__tmp40131
                                                   (cons (cons (gx#genident
                                                                'try-match)
                                                               (cons (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2925929261%_)
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/match[1]#parse-match-pattern__%|
                                   _%g2925929261%_
                                   _%stx28122%_)))
                              _%L29247%_)
                             (cons (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'begin)
                                          _%L29245%_)
                                    (let ((_%$e29265%_
                                           (gx#stx-source _%L29184%_)))
                                      (if _%$e29265%_
                                          _%$e29265%_
                                          (gx#stx-source _%stx28122%_))))
                                   '())))
                 _%r29139%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%lp29134%_
                                               _%L29182%_
                                               __tmp40131))))
                                         (_%__kont3938039381%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx28122%_
                                             _%L29184%_))))
                                     (let* ((_%__match3939839399%_
                                             (lambda (_%e2921129235%_
                                                      _%hd2921029239%_
                                                      _%tl2920929242%_)
                                               (let ((_%L29245%_
                                                      _%tl2920929242%_)
                                                     (_%L29247%_
                                                      _%hd2921029239%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29247%_)
                                                          (fx= (gx#stx-length
                                                                _%L29247%_)
                                                               _%hd-len29131%_)
                                                          (gx#stx-list?
                                                           _%L29245%_)
                                                          (let ((__tmp40132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _%L29245%_)))
                    (declare (not safe))
                    (not __tmp40132)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont3937839379%_
                                                      _%L29245%_
                                                      _%L29247%_)
                                                     (_%__kont3938039381%_)))))
                                            (_%__match3939239393%_
                                             (lambda (_%e2920629276%_
                                                      _%hd2920529280%_
                                                      _%tl2920429283%_)
                                               (let ((_%L29286%_
                                                      _%tl2920429283%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29286%_)
                                                          (let ((__tmp40133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _%L29286%_)))
                    (declare (not safe))
                    (not __tmp40133)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont3937639377%_
                                                      _%L29286%_)
                                                     (_%__match3939839399%_
                                                      _%e2920629276%_
                                                      _%hd2920529280%_
                                                      _%tl2920429283%_))))))
                                       (if (gx#stx-pair? _%__stx3937339374%_)
                                           (let ((_%e2920629276%_
                                                  (gx#syntax-e
                                                   _%__stx3937339374%_)))
                                             (let ((_%tl2920429283%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2920629276%_)))
                                                   (_%hd2920529280%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2920629276%_))))
                                               (if (gx#identifier?
                                                    _%hd2920529280%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g40134_|
                                                        _%hd2920529280%_)
                                                       (_%__match3939239393%_
                                                        _%e2920629276%_
                                                        _%hd2920529280%_
                                                        _%tl2920429283%_)
                                                       (_%__match3939839399%_
                                                        _%e2920629276%_
                                                        _%hd2920529280%_
                                                        _%tl2920429283%_))
                                                   (_%__match3939839399%_
                                                    _%e2920629276%_
                                                    _%hd2920529280%_
                                                    _%tl2920429283%_))))
                                           (_%__kont3938039381%_)))))))
                              (_%__kont3940639407%_ (lambda () _%r29139%_)))
                          (if (gx#stx-pair? _%__stx3940139402%_)
                              (let ((_%e2914829172%_
                                     (gx#syntax-e _%__stx3940139402%_)))
                                (let ((_%tl2914629179%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2914829172%_)))
                                      (_%hd2914729176%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2914829172%_))))
                                  (_%__kont3940439405%_
                                   _%tl2914629179%_
                                   _%hd2914729176%_)))
                              (_%__kont3940639407%_)))))))
                 (_%generate-body28129%_
                  (lambda (_%body28833%_)
                    (let* ((_%g2883628844%_
                            (lambda (_%g2883728840%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2883728840%_)))
                           (_%g2883529127%_
                            (lambda (_%g2883728848%_)
                              ((lambda (_%L28851%_)
                                 (let ()
                                   (let* ((_%g2886328880%_
                                           (lambda (_%g2886428876%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2886428876%_)))
                                          (_%g2886229123%_
                                           (lambda (_%g2886428884%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2886428884%_)
                                                 (let ((_g40135_
                                                        (gx#syntax-split-splice
                                                         _%g2886428884%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g40136_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g40135_)
                          (##vector-length _g40135_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g40136_ 2)))
                   (error "Context expects 2 values" _g40136_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2886628887%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g40135_
                                                               0)))
                                                           (_%tl2886828890%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g40135_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2886828890%_)
                                                           (letrec ((_%loop2886928893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2886728897%_ _%target2887328900%_)
                               (if (gx#stx-pair? _%hd2886728897%_)
                                   (let ((_%e2887028903%_
                                          (gx#syntax-e _%hd2886728897%_)))
                                     (let ((_%lp-hd2887128907%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2887028903%_)))
                                           (_%lp-tl2887228910%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2887028903%_))))
                                       (let ((__tmp40137
                                              (cons _%lp-hd2887128907%_
                                                    _%target2887328900%_)))
                                         (declare (not safe))
                                         (_%loop2886928893%_
                                          _%lp-tl2887228910%_
                                          __tmp40137))))
                                   (let ((_%target2887428913%_
                                          (reverse _%target2887328900%_)))
                                     ((lambda (_%L28917%_)
                                        (let ()
                                          (let* ((_%g2893428951%_
                                                  (lambda (_%g2893528947%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2893528947%_)))
                                                 (_%g2893329119%_
                                                  (lambda (_%g2893528955%_)
                                                    (if (gx#stx-pair/null?
                                                         _%g2893528955%_)
                                                        (let ((_g40138_
                                                               (gx#syntax-split-splice
                                                                _%g2893528955%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g40139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g40138_)
                                 (##vector-length _g40138_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g40139_ 2)))
                          (error "Context expects 2 values" _g40139_)))
                    (let ((_%target2893728958%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g40138_ 0)))
                          (_%tl2893928961%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g40138_ 1))))
                      (if (gx#stx-null? _%tl2893928961%_)
                          (letrec ((_%loop2894028964%_
                                    (lambda (_%hd2893828968%_
                                             _%fail-diagnostic2894428971%_)
                                      (if (gx#stx-pair? _%hd2893828968%_)
                                          (let ((_%e2894128974%_
                                                 (gx#syntax-e
                                                  _%hd2893828968%_)))
                                            (let ((_%lp-hd2894228978%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2894128974%_)))
                                                  (_%lp-tl2894328981%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2894128974%_))))
                                              (let ((__tmp40140
                                                     (cons _%lp-hd2894228978%_
                                                           _%fail-diagnostic2894428971%_)))
                                                (declare (not safe))
                                                (_%loop2894028964%_
                                                 _%lp-tl2894328981%_
                                                 __tmp40140))))
                                          (let ((_%fail-diagnostic2894528984%_
                                                 (reverse _%fail-diagnostic2894428971%_)))
                                            ((lambda (_%L28988%_)
                                               (let ()
                                                 (let* ((_%g2900529013%_
                                                         (lambda (_%g2900629009%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2900629009%_)))
                                                        (_%g2900429099%_
                                                         (lambda (_%g2900629017%_)
                                                           ((lambda (_%L29020%_)
                                                              (let ()
                                                                (let* ((_%g2903329041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g2903429037%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g2903429037%_)))
                               (_%g2903229095%_
                                (lambda (_%g2903429045%_)
                                  ((lambda (_%L29048%_)
                                     (let ()
                                       (let* ((_%g2906129069%_
                                               (lambda (_%g2906229065%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2906229065%_)))
                                              (_%g2906029091%_
                                               (lambda (_%g2906229073%_)
                                                 ((lambda (_%L29076%_)
                                                    (let ()
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@match)
                            (cons _%L29076%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2906229073%_)))
                                              (__tmp40141
                                               (gx#stx-wrap-source
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _%L28851%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%L29020%_ '()))
                          '())
                    (cons _%L29048%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _%stx28122%_))))
                                         (declare (not safe))
                                         (_%g2906029091%_ __tmp40141))))
                                   _%g2903429045%_)))
                               (__tmp40142
                                (let ((__tmp40143
                                       (cons (gx#datum->syntax
                                              '#f
                                              'begin-annotation)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@abort)
                                                         '())
                                                   (cons (cons _%L28851%_ '())
                                                         '())))))
                                  (declare (not safe))
                                  (_%generate-clauses28130%_
                                   _%body28833%_
                                   __tmp40143))))
                          (declare (not safe))
                          (_%g2903229095%_ __tmp40142))))
                    _%g2900629017%_)))
                (__tmp40144
                 (gx#stx-wrap-source
                  (cons (gx#datum->syntax '#f 'lambda)
                        (cons '()
                              (cons (cons (gx#datum->syntax '#f 'error)
                                          (cons '"No clause matching"
                                                (foldr (lambda (_%g2910229107%_
                                                                _%g2910329110%_)
                                                         (cons _%g2910229107%_
                                                               _%g2910329110%_))
                                                       (foldr (lambda (_%g2910429113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g2910529116%_)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2910429113%_ '()))
                              _%g2910529116%_))
                      '()
                      _%L28988%_)
               _%L28917%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons (gx#datum->syntax '#f 'void)
                                                '())
                                          '()))))
                  (gx#stx-source _%stx28122%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%g2900429099%_
                                                    __tmp40144))))
                                             _%fail-diagnostic2894528984%_))))))
                            (let ()
                              (declare (not safe))
                              (_%loop2894028964%_ _%target2893728958%_ '())))
                          (let ()
                            (declare (not safe))
                            (_%g2893428951%_ _%g2893528955%_))))))
                (let ()
                  (declare (not safe))
                  (_%g2893428951%_ _%g2893528955%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp40145
                                                  (gx#stx-map
                                                   gx#stx-car
                                                   _%clauses28125%_)))
                                            (declare (not safe))
                                            (_%g2893329119%_ __tmp40145))))
                                      _%target2887428913%_))))))
                     (let ()
                       (declare (not safe))
                       (_%loop2886928893%_ _%target2886628887%_ '())))
                   (let ()
                     (declare (not safe))
                     (_%g2886328880%_ _%g2886428884%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g2886328880%_
                                                    _%g2886428884%_))))))
                                     (declare (not safe))
                                     (_%g2886229123%_ _%tgt-lst28124%_))))
                               _%g2883728848%_)))
                           (__tmp40146 (gx#genident 'E)))
                      (declare (not safe))
                      (_%g2883529127%_ __tmp40146))))
                 (_%generate-clauses28130%_
                  (lambda (_%rest28485%_ _%E28487%_)
                    (let* ((_%__stx3941739418%_ _%rest28485%_)
                           (_%g2849128507%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3941739418%_))))
                      (let ((_%__kont3942039421%_
                             (lambda (_%L28741%_)
                               (let* ((_%g2875228770%_
                                       (lambda (_%g2875328766%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2875328766%_)))
                                      (_%g2875128825%_
                                       (lambda (_%g2875328774%_)
                                         (if (gx#stx-pair? _%g2875328774%_)
                                             (let ((_%e2875828777%_
                                                    (gx#syntax-e
                                                     _%g2875328774%_)))
                                               (let ((_%hd2875728781%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2875828777%_)))
                                                     (_%tl2875628784%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2875828777%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2875628784%_)
                                                     (let ((_%e2876128787%_
                                                            (gx#syntax-e
                                                             _%tl2875628784%_)))
                                                       (let ((_%hd2876028791%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2876128787%_)))
                     (_%tl2875928794%_
                      (let () (declare (not safe)) (##cdr _%e2876128787%_))))
                 (if (gx#stx-pair? _%tl2875928794%_)
                     (let ((_%e2876428797%_ (gx#syntax-e _%tl2875928794%_)))
                       (let ((_%hd2876328801%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2876428797%_)))
                             (_%tl2876228804%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2876428797%_))))
                         (if (gx#stx-null? _%tl2876228804%_)
                             ((lambda (_%L28807%_ _%L28809%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _%L28809%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%generate128131%_
                                                         _%L28809%_
                                                         _%L28807%_
                                                         _%E28487%_))
                                                      _%L28807%_)
                                                  '()))))
                              _%hd2876328801%_
                              _%hd2876028791%_)
                             (let ()
                               (declare (not safe))
                               (_%g2875228770%_ _%g2875328774%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g2875228770%_ _%g2875328774%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g2875228770%_
                                                        _%g2875328774%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g2875228770%_
                                                _%g2875328774%_))))))
                                 (declare (not safe))
                                 (_%g2875128825%_ _%L28741%_))))
                            (_%__kont3942239423%_
                             (lambda (_%L28535%_ _%L28537%_)
                               (let* ((_%g2855028569%_
                                       (lambda (_%g2855128565%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2855128565%_)))
                                      (_%g2854928720%_
                                       (lambda (_%g2855128573%_)
                                         (if (gx#stx-pair? _%g2855128573%_)
                                             (let ((_%e2855728576%_
                                                    (gx#syntax-e
                                                     _%g2855128573%_)))
                                               (let ((_%hd2855628580%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2855728576%_)))
                                                     (_%tl2855528583%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2855728576%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2855528583%_)
                                                     (let ((_%e2856028586%_
                                                            (gx#syntax-e
                                                             _%tl2855528583%_)))
                                                       (let ((_%hd2855928590%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2856028586%_)))
                     (_%tl2855828593%_
                      (let () (declare (not safe)) (##cdr _%e2856028586%_))))
                 (if (gx#stx-pair? _%tl2855828593%_)
                     (let ((_%e2856328596%_ (gx#syntax-e _%tl2855828593%_)))
                       (let ((_%hd2856228600%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2856328596%_)))
                             (_%tl2856128603%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2856328596%_))))
                         (if (gx#stx-null? _%tl2856128603%_)
                             ((lambda (_%L28606%_ _%L28608%_ _%L28609%_)
                                (if (gx#stx-e _%L28608%_)
                                    (let* ((_%g2862628641%_
                                            (lambda (_%g2862728637%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2862728637%_)))
                                           (_%g2862528686%_
                                            (lambda (_%g2862728645%_)
                                              (if (gx#stx-pair?
                                                   _%g2862728645%_)
                                                  (let ((_%e2863228648%_
                                                         (gx#syntax-e
                                                          _%g2862728645%_)))
                                                    (let ((_%hd2863128652%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2863228648%_)))
                                                          (_%tl2863028655%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2863228648%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl2863028655%_)
                                                          (let ((_%e2863528658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2863028655%_)))
                    (let ((_%hd2863428662%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2863528658%_)))
                          (_%tl2863328665%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2863528658%_))))
                      (if (gx#stx-null? _%tl2863328665%_)
                          ((lambda (_%L28668%_ _%L28670%_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L28609%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _%L28670%_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons _%L28668%_ '())))))
                           _%hd2863428662%_
                           _%hd2863128652%_)
                          (let ()
                            (declare (not safe))
                            (_%g2862628641%_ _%g2862728645%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g2862628641%_ _%g2862728645%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2862628641%_
                                                     _%g2862728645%_)))))
                                           (__tmp40147
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_%generate128131%_
                                                     _%L28608%_
                                                     _%L28606%_
                                                     _%E28487%_))
                                                  (let ((__tmp40148
                                                         (cons _%L28609%_
                                                               '())))
                                                    (declare (not safe))
                                                    (_%generate-clauses28130%_
                                                     _%L28535%_
                                                     __tmp40148)))))
                                      (declare (not safe))
                                      (_%g2862528686%_ __tmp40147))
                                    (let* ((_%g2869028698%_
                                            (lambda (_%g2869128694%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2869128694%_)))
                                           (_%g2868928716%_
                                            (lambda (_%g2869128702%_)
                                              ((lambda (_%L28705%_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _%L28609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '@match-else)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%L28606%_ '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             '())
                       (cons _%L28705%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2869128702%_)))
                                           (__tmp40149
                                            (let ((__tmp40150
                                                   (cons _%L28609%_ '())))
                                              (declare (not safe))
                                              (_%generate-clauses28130%_
                                               _%L28535%_
                                               __tmp40150))))
                                      (declare (not safe))
                                      (_%g2868928716%_ __tmp40149))))
                              _%hd2856228600%_
                              _%hd2855928590%_
                              _%hd2855628580%_)
                             (let ()
                               (declare (not safe))
                               (_%g2855028569%_ _%g2855128573%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g2855028569%_ _%g2855128573%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g2855028569%_
                                                        _%g2855128573%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g2855028569%_
                                                _%g2855128573%_))))))
                                 (declare (not safe))
                                 (_%g2854928720%_ _%L28537%_))))
                            (_%__kont3942439425%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28487%_ '()))))))
                        (if (gx#stx-pair? _%__stx3941739418%_)
                            (let ((_%e2849628731%_
                                   (gx#syntax-e _%__stx3941739418%_)))
                              (let ((_%tl2849428738%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2849628731%_)))
                                    (_%hd2849528735%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2849628731%_))))
                                (if (gx#stx-null? _%tl2849428738%_)
                                    (_%__kont3942039421%_ _%hd2849528735%_)
                                    (_%__kont3942239423%_
                                     _%tl2849428738%_
                                     _%hd2849528735%_))))
                            (_%__kont3942439425%_))))))
                 (_%generate128131%_
                  (lambda (_%clause28133%_ _%body28135%_ _%E28136%_)
                    (let* ((_%g2813828162%_
                            (lambda (_%g2813928158%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2813928158%_)))
                           (_%g2813728481%_
                            (lambda (_%g2813928166%_)
                              (if (gx#stx-pair? _%g2813928166%_)
                                  (let ((_%e2814428169%_
                                         (gx#syntax-e _%g2813928166%_)))
                                    (let ((_%hd2814328173%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2814428169%_)))
                                          (_%tl2814228176%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2814428169%_))))
                                      (if (gx#stx-pair? _%tl2814228176%_)
                                          (let ((_%e2814728179%_
                                                 (gx#syntax-e
                                                  _%tl2814228176%_)))
                                            (let ((_%hd2814628183%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2814728179%_)))
                                                  (_%tl2814528186%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2814728179%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2814628183%_)
                                                  (let ((_g40151_
                                                         (gx#syntax-split-splice
                                                          _%hd2814628183%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g40152_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g40151_)
                           (##vector-length _g40151_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g40152_ 2)))
                    (error "Context expects 2 values" _g40152_)))
              (let ((_%target2814828189%_
                     (let () (declare (not safe)) (##vector-ref _g40151_ 0)))
                    (_%tl2815028192%_
                     (let () (declare (not safe)) (##vector-ref _g40151_ 1))))
                (if (gx#stx-null? _%tl2815028192%_)
                    (letrec ((_%loop2815128195%_
                              (lambda (_%hd2814928199%_ _%var2815528202%_)
                                (if (gx#stx-pair? _%hd2814928199%_)
                                    (let ((_%e2815228205%_
                                           (gx#syntax-e _%hd2814928199%_)))
                                      (let ((_%lp-hd2815328209%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2815228205%_)))
                                            (_%lp-tl2815428212%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2815228205%_))))
                                        (let ((__tmp40153
                                               (cons _%lp-hd2815328209%_
                                                     _%var2815528202%_)))
                                          (declare (not safe))
                                          (_%loop2815128195%_
                                           _%lp-tl2815428212%_
                                           __tmp40153))))
                                    (let ((_%var2815628215%_
                                           (reverse _%var2815528202%_)))
                                      (if (gx#stx-null? _%tl2814528186%_)
                                          ((lambda (_%L28219%_ _%L28221%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g2824228245%_
                                                                _%g2824328248%_)
                                                         (cons _%g2824228245%_
                                                               _%g2824328248%_))
                                                       '()
                                                       _%L28219%_)
                                                _%stx28122%_)
                                               (let* ((_%g2825128259%_
                                                       (lambda (_%g2825228255%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2825228255%_)))
                                                      (_%g2825028353%_
                                                       (lambda (_%g2825228263%_)
                                                         ((lambda (_%L28266%_)
                                                            (let ()
                                                              (let* ((_%g2827928287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2828028283%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2828028283%_)))
                             (_%g2827828349%_
                              (lambda (_%g2828028291%_)
                                ((lambda (_%L28294%_)
                                   (let ()
                                     (let* ((_%g2830728315%_
                                             (lambda (_%g2830828311%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g2830828311%_)))
                                            (_%g2830628337%_
                                             (lambda (_%g2830828319%_)
                                               ((lambda (_%L28322%_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons _%L28221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L28322%_ '()))
                           (cons _%L28266%_ '())))
               (gx#stx-source _%stx28122%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g2830828319%_)))
                                            (__tmp40154
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons (foldr (lambda (_%g2834028343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g2834128346%_)
                           (cons _%g2834028343%_ _%g2834128346%_))
                         '()
                         _%L28219%_)
                  (cons _%L28294%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx28122%_))))
                                       (declare (not safe))
                                       (_%g2830628337%_ __tmp40154))))
                                 _%g2828028291%_))))
                        (declare (not safe))
                        (_%g2827828349%_ _%body28135%_))))
                  _%g2825228263%_)))
              (__tmp40155
               (let _%recur28357%_ ((_%rest28360%_ _%clause28133%_)
                                    (_%rest-targets28362%_ _%tgt-lst28124%_))
                 (let* ((_%__stx3944339444%_ _%rest28360%_)
                        (_%g2836528377%_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%__stx3944339444%_))))
                   (let ((_%__kont3944639447%_
                          (lambda (_%L28413%_ _%L28415%_)
                            (let* ((_%g2843028442%_
                                    (lambda (_%g2843128438%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2843128438%_)))
                                   (_%g2842928473%_
                                    (lambda (_%g2843128446%_)
                                      (if (gx#stx-pair? _%g2843128446%_)
                                          (let ((_%e2843628449%_
                                                 (gx#syntax-e
                                                  _%g2843128446%_)))
                                            (let ((_%hd2843528453%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2843628449%_)))
                                                  (_%tl2843428456%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2843628449%_))))
                                              ((lambda (_%L28459%_ _%L28461%_)
                                                 (let ((__tmp40172
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%recur28357%_
                                                           _%L28413%_
                                                           _%L28459%_))))
                                                   (declare (not safe))
                                                   (|gerbil/core/match[1]#generate-match1|
                                                    _%stx28122%_
                                                    _%L28461%_
                                                    _%L28415%_
                                                    __tmp40172
                                                    _%E28136%_)))
                                               _%tl2843428456%_
                                               _%hd2843528453%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g2843028442%_
                                             _%g2843128446%_))))))
                              (declare (not safe))
                              (_%g2842928473%_ _%rest-targets28362%_))))
                         (_%__kont3944839449%_
                          (lambda ()
                            (cons _%L28221%_
                                  (foldr (lambda (_%g2838728390%_
                                                  _%g2838828393%_)
                                           (cons _%g2838728390%_
                                                 _%g2838828393%_))
                                         '()
                                         _%L28219%_)))))
                     (if (gx#stx-pair? _%__stx3944339444%_)
                         (let ((_%e2837128403%_
                                (gx#syntax-e _%__stx3944339444%_)))
                           (let ((_%tl2836928410%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2837128403%_)))
                                 (_%hd2837028407%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2837128403%_))))
                             (_%__kont3944639447%_
                              _%tl2836928410%_
                              _%hd2837028407%_)))
                         (_%__kont3944839449%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_%g2825028353%_
                                                  __tmp40155))))
                                           _%var2815628215%_
                                           _%hd2814328173%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g2813828162%_
                                             _%g2813928166%_))))))))
                      (let ()
                        (declare (not safe))
                        (_%loop2815128195%_ _%target2814828189%_ '())))
                    (let ()
                      (declare (not safe))
                      (_%g2813828162%_ _%g2813928166%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2813828162%_
                                                     _%g2813928166%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g2813828162%_
                                             _%g2813928166%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2813828162%_ _%g2813928166%_)))))
                           (__tmp40173
                            (list (gx#genident 'K)
                                  (let ((__tmp40174
                                         (map |gerbil/core/match[1]#match-pattern-vars|
                                              _%clause28133%_)))
                                    (declare (not safe))
                                    (##apply append __tmp40174)))))
                      (declare (not safe))
                      (_%g2813728481%_ __tmp40173)))))
          (let ((__tmp40175
                 (let ((__tmp40176 (gx#stx-length _%tgt-lst28124%_)))
                   (declare (not safe))
                   (_%parse-body28127%_ __tmp40176))))
            (declare (not safe))
            (_%generate-body28129%_ __tmp40175)))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx28024%_ _%tgt28026%_ _%clauses28027%_)
        (letrec ((_%reclause28029%_
                  (lambda (_%clause28032%_)
                    (let* ((_%__stx3945939460%_ _%clause28032%_)
                           (_%g2803728052%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3945939460%_))))
                      (let ((_%__kont3946239463%_ (lambda () _%clause28032%_))
                            (_%__kont3946439465%_
                             (lambda (_%L28080%_ _%L28082%_)
                               (gx#stx-wrap-source
                                (cons (cons _%L28082%_ '()) _%L28080%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3946639467%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx28024%_
                                _%clause28032%_))))
                        (if (gx#stx-pair? _%__stx3945939460%_)
                            (let ((_%e2804128104%_
                                   (gx#syntax-e _%__stx3945939460%_)))
                              (let ((_%tl2803928111%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2804128104%_)))
                                    (_%hd2804028108%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2804128104%_))))
                                (if (gx#identifier? _%hd2804028108%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40177_|
                                         _%hd2804028108%_)
                                        (_%__kont3946239463%_)
                                        (_%__kont3946439465%_
                                         _%tl2803928111%_
                                         _%hd2804028108%_))
                                    (_%__kont3946439465%_
                                     _%tl2803928111%_
                                     _%hd2804028108%_))))
                            (_%__kont3946639467%_)))))))
          (let ((__tmp40179 (cons _%tgt28026%_ '()))
                (__tmp40178 (gx#stx-map _%reclause28029%_ _%clauses28027%_)))
            (declare (not safe))
            (|gerbil/core/match[1]#generate-match*|
             _%stx28024%_
             __tmp40179
             __tmp40178)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35360%_)
        (let* ((_%__stx3948739488%_ _%stx35360%_)
               (_%g3536535394%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3948739488%_))))
          (let ((_%__kont3949039491%_
                 (lambda (_%L35634%_)
                   (let* ((_%g3564735655%_
                           (lambda (_%g3564835651%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3564835651%_)))
                          (_%g3564635708%_
                           (lambda (_%g3564835659%_)
                             ((lambda (_%L35662%_)
                                (let ()
                                  (let* ((_%g3567435682%_
                                          (lambda (_%g3567535678%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3567535678%_)))
                                         (_%g3567335704%_
                                          (lambda (_%g3567535686%_)
                                            ((lambda (_%L35689%_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons (cons _%L35662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _%L35689%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g3567535686%_))))
                                    (_%g3567335704%_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _%L35662%_ _%L35634%_))
                                      (gx#stx-source _%stx35360%_))))))
                              _%g3564835659%_))))
                     (_%g3564635708%_ (gx#genident 'e)))))
                (_%__kont3949239493%_
                 (lambda (_%L35529%_)
                   (let* ((_%g3554235550%_
                           (lambda (_%g3554335546%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3554335546%_)))
                          (_%g3554135603%_
                           (lambda (_%g3554335554%_)
                             ((lambda (_%L35557%_)
                                (let ()
                                  (let* ((_%g3556935577%_
                                          (lambda (_%g3557035573%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3557035573%_)))
                                         (_%g3556835599%_
                                          (lambda (_%g3557035581%_)
                                            ((lambda (_%L35584%_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons _%L35557%_
                                                               (cons _%L35584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g3557035581%_))))
                                    (_%g3556835599%_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _%L35557%_ _%L35529%_))
                                      (gx#stx-source _%stx35360%_))))))
                              _%g3554335554%_))))
                     (_%g3554135603%_ (gx#genident 'args)))))
                (_%__kont3949439495%_
                 (lambda (_%L35421%_ _%L35423%_)
                   (let* ((_%g3543735445%_
                           (lambda (_%g3543835441%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3543835441%_)))
                          (_%g3543635498%_
                           (lambda (_%g3543835449%_)
                             ((lambda (_%L35452%_)
                                (let ()
                                  (let* ((_%g3546435472%_
                                          (lambda (_%g3546535468%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3546535468%_)))
                                         (_%g3546335494%_
                                          (lambda (_%g3546535476%_)
                                            ((lambda (_%L35479%_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _%L35452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%L35423%_ '()))
                             '())
                       (cons _%L35479%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g3546535476%_))))
                                    (_%g3546335494%_
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core/match[1]#generate-match|
                                        _%stx35360%_
                                        _%L35452%_
                                        _%L35421%_))))))
                              _%g3543835449%_))))
                     (_%g3543635498%_ (gx#genident _%L35423%_))))))
            (let* ((_%__match3954039541%_
                    (lambda (_%e3538535401%_
                             _%hd3538435405%_
                             _%tl3538335408%_
                             _%e3538835411%_
                             _%hd3538735415%_
                             _%tl3538635418%_)
                      (let ((_%L35421%_ _%tl3538635418%_)
                            (_%L35423%_ _%hd3538735415%_))
                        (if (gx#stx-list? _%L35421%_)
                            (_%__kont3949439495%_ _%L35421%_ _%L35423%_)
                            (let () (declare (not safe)) (_%g3536535394%_))))))
                   (_%__match3952839529%_
                    (lambda (_%e3537735509%_
                             _%hd3537635513%_
                             _%tl3537535516%_
                             _%e3538035519%_
                             _%hd3537935523%_
                             _%tl3537835526%_)
                      (let ((_%L35529%_ _%tl3537835526%_))
                        (if (gx#stx-list? _%L35529%_)
                            (_%__kont3949239493%_ _%L35529%_)
                            (_%__match3954039541%_
                             _%e3537735509%_
                             _%hd3537635513%_
                             _%tl3537535516%_
                             _%e3538035519%_
                             _%hd3537935523%_
                             _%tl3537835526%_)))))
                   (_%__match3951239513%_
                    (lambda (_%e3537035614%_
                             _%hd3536935618%_
                             _%tl3536835621%_
                             _%e3537335624%_
                             _%hd3537235628%_
                             _%tl3537135631%_)
                      (let ((_%L35634%_ _%tl3537135631%_))
                        (if (gx#stx-list? _%L35634%_)
                            (_%__kont3949039491%_ _%L35634%_)
                            (_%__match3954039541%_
                             _%e3537035614%_
                             _%hd3536935618%_
                             _%tl3536835621%_
                             _%e3537335624%_
                             _%hd3537235628%_
                             _%tl3537135631%_))))))
              (if (gx#stx-pair? _%__stx3948739488%_)
                  (let ((_%e3537035614%_ (gx#syntax-e _%__stx3948739488%_)))
                    (let ((_%tl3536835621%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3537035614%_)))
                          (_%hd3536935618%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3537035614%_))))
                      (if (gx#stx-pair? _%tl3536835621%_)
                          (let ((_%e3537335624%_
                                 (gx#syntax-e _%tl3536835621%_)))
                            (let ((_%tl3537135631%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3537335624%_)))
                                  (_%hd3537235628%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3537335624%_))))
                              (if (gx#identifier? _%hd3537235628%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40180_|
                                       _%hd3537235628%_)
                                      (_%__match3951239513%_
                                       _%e3537035614%_
                                       _%hd3536935618%_
                                       _%tl3536835621%_
                                       _%e3537335624%_
                                       _%hd3537235628%_
                                       _%tl3537135631%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40181_|
                                           _%hd3537235628%_)
                                          (_%__match3952839529%_
                                           _%e3537035614%_
                                           _%hd3536935618%_
                                           _%tl3536835621%_
                                           _%e3537335624%_
                                           _%hd3537235628%_
                                           _%tl3537135631%_)
                                          (_%__match3954039541%_
                                           _%e3537035614%_
                                           _%hd3536935618%_
                                           _%tl3536835621%_
                                           _%e3537335624%_
                                           _%hd3537235628%_
                                           _%tl3537135631%_)))
                                  (_%__match3954039541%_
                                   _%e3537035614%_
                                   _%hd3536935618%_
                                   _%tl3536835621%_
                                   _%e3537335624%_
                                   _%hd3537235628%_
                                   _%tl3537135631%_))))
                          (let () (declare (not safe)) (_%g3536535394%_)))))
                  (let () (declare (not safe)) (_%g3536535394%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx35716%_)
        (let* ((_%g3571935743%_
                (lambda (_%g3572035739%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3572035739%_)))
               (_%g3571835955%_
                (lambda (_%g3572035747%_)
                  (if (gx#stx-pair? _%g3572035747%_)
                      (let ((_%e3572535750%_ (gx#syntax-e _%g3572035747%_)))
                        (let ((_%hd3572435754%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3572535750%_)))
                              (_%tl3572335757%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3572535750%_))))
                          (if (gx#stx-pair? _%tl3572335757%_)
                              (let ((_%e3572835760%_
                                     (gx#syntax-e _%tl3572335757%_)))
                                (let ((_%hd3572735764%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3572835760%_)))
                                      (_%tl3572635767%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3572835760%_))))
                                  (if (gx#stx-pair/null? _%hd3572735764%_)
                                      (let ((_g40182_
                                             (gx#syntax-split-splice
                                              _%hd3572735764%_
                                              '0)))
                                        (begin
                                          (let ((_g40183_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g40182_)
                                                       (##vector-length
                                                        _g40182_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g40183_ 2)))
                                                (error "Context expects 2 values"
                                                       _g40183_)))
                                          (let ((_%target3572935770%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g40182_ 0)))
                                                (_%tl3573135773%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g40182_ 1))))
                                            (if (gx#stx-null? _%tl3573135773%_)
                                                (letrec ((_%loop3573235776%_
                                                          (lambda (_%hd3573035780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3573635783%_)
                    (if (gx#stx-pair? _%hd3573035780%_)
                        (let ((_%e3573335786%_ (gx#syntax-e _%hd3573035780%_)))
                          (let ((_%lp-hd3573435790%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3573335786%_)))
                                (_%lp-tl3573535793%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3573335786%_))))
                            (_%loop3573235776%_
                             _%lp-tl3573535793%_
                             (cons _%lp-hd3573435790%_ _%e3573635783%_))))
                        (let ((_%e3573735796%_ (reverse _%e3573635783%_)))
                          ((lambda (_%L35800%_ _%L35802%_)
                             (if (gx#stx-list? _%L35800%_)
                                 (let* ((_%g3582035837%_
                                         (lambda (_%g3582135833%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3582135833%_)))
                                        (_%g3581935943%_
                                         (lambda (_%g3582135841%_)
                                           (if (gx#stx-pair/null?
                                                _%g3582135841%_)
                                               (let ((_g40184_
                                                      (gx#syntax-split-splice
                                                       _%g3582135841%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g40185_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g40184_)
                        (##vector-length _g40184_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g40185_ 2)))
                 (error "Context expects 2 values" _g40185_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3582335844%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g40184_
                                                             0)))
                                                         (_%tl3582535847%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g40184_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3582535847%_)
                                                         (letrec ((_%loop3582635850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3582435854%_ _%$e3583035857%_)
                             (if (gx#stx-pair? _%hd3582435854%_)
                                 (let ((_%e3582735860%_
                                        (gx#syntax-e _%hd3582435854%_)))
                                   (let ((_%lp-hd3582835864%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3582735860%_)))
                                         (_%lp-tl3582935867%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3582735860%_))))
                                     (_%loop3582635850%_
                                      _%lp-tl3582935867%_
                                      (cons _%lp-hd3582835864%_
                                            _%$e3583035857%_))))
                                 (let ((_%$e3583135870%_
                                        (reverse _%$e3583035857%_)))
                                   ((lambda (_%L35874%_)
                                      (let ()
                                        (let* ((_%g3589035898%_
                                                (lambda (_%g3589135894%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g3589135894%_)))
                                               (_%g3588935931%_
                                                (lambda (_%g3589135902%_)
                                                  ((lambda (_%L35905%_)
                                                     (let ()
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%L35802%_
                                _%L35874%_)
                               (foldr (lambda (_%g3591935923%_
                                               _%g3592035926%_
                                               _%g3592135928%_)
                                        (cons (cons _%g3592035926%_
                                                    (cons _%g3591935923%_ '()))
                                              _%g3592135928%_))
                                      '()
                                      _%L35802%_
                                      _%L35874%_))
                             (cons _%L35905%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g3589135902%_))))
                                          (_%g3588935931%_
                                           (let ((__tmp40186
                                                  (foldr (lambda (_%g3593435937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g3593535940%_)
                   (cons _%g3593435937%_ _%g3593535940%_))
                 '()
                 _%L35874%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (|gerbil/core/match[1]#generate-match*|
                                              _%stx35716%_
                                              __tmp40186
                                              _%L35800%_))))))
                                    _%$e3583135870%_))))))
                   (_%loop3582635850%_ _%target3582335844%_ '()))
                 (_%g3582035837%_ _%g3582135841%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3582035837%_
                                                _%g3582135841%_)))))
                                   (_%g3581935943%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g3594635949%_
                                                     _%g3594735952%_)
                                              (cons _%g3594635949%_
                                                    _%g3594735952%_))
                                            '()
                                            _%L35802%_))))
                                 (_%g3571935743%_ _%g3572035747%_)))
                           _%tl3572635767%_
                           _%e3573735796%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3573235776%_
                                                   _%target3572935770%_
                                                   '()))
                                                (_%g3571935743%_
                                                 _%g3572035747%_)))))
                                      (_%g3571935743%_ _%g3572035747%_))))
                              (_%g3571935743%_ _%g3572035747%_))))
                      (_%g3571935743%_ _%g3572035747%_)))))
          (_%g3571835955%_ _%stx35716%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx35961%_)
        (let* ((_%__stx3954339544%_ _%$stx35961%_)
               (_%g3596736050%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3954339544%_))))
          (let ((_%__kont3954639547%_
                 (lambda (_%L36380%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3639636399%_ _%g3639736402%_)
                                        (cons _%g3639636399%_ _%g3639736402%_))
                                      '()
                                      _%L36380%_)))))
                (_%__kont3955039551%_
                 (lambda (_%L36288%_ _%L36290%_ _%L36291%_ _%L36292%_)
                   (cons _%L36292%_
                         (cons (cons (cons _%L36291%_ (cons _%L36290%_ '()))
                                     '())
                               (foldr (lambda (_%g3631436317%_ _%g3631536320%_)
                                        (cons _%g3631436317%_ _%g3631536320%_))
                                      '()
                                      _%L36288%_)))))
                (_%__kont3955439555%_
                 (lambda (_%L36161%_ _%L36163%_ _%L36164%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3619036193%_ _%g3619136196%_)
                                        (cons _%g3619036193%_ _%g3619136196%_))
                                      '()
                                      _%L36163%_)
                               (cons (cons (foldr (lambda (_%g3618836199%_
                                                           _%g3618936202%_)
                                                    (cons _%g3618836199%_
                                                          _%g3618936202%_))
                                                  '()
                                                  _%L36164%_)
                                           (foldr (lambda (_%g3618636205%_
                                                           _%g3618736208%_)
                                                    (cons _%g3618636205%_
                                                          _%g3618736208%_))
                                                  '()
                                                  _%L36161%_))
                                     '()))))))
            (let* ((_%__match3963639637%_
                    (lambda (_%e3601536057%_
                             _%hd3601436061%_
                             _%tl3601336064%_
                             _%e3601836067%_
                             _%hd3601736071%_
                             _%tl3601636074%_
                             _%__splice3955639557%_
                             _%target3601936077%_
                             _%tl3602136080%_)
                      (letrec ((_%loop3602236083%_
                                (lambda (_%hd3602036087%_
                                         _%expr3602636090%_
                                         _%hd3602736092%_)
                                  (if (gx#stx-pair? _%hd3602036087%_)
                                      (let ((_%e3602336095%_
                                             (gx#syntax-e _%hd3602036087%_)))
                                        (let ((_%lp-tl3602536102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3602336095%_)))
                                              (_%lp-hd3602436099%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3602336095%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3602436099%_)
                                              (let ((_%e3603236105%_
                                                     (gx#syntax-e
                                                      _%lp-hd3602436099%_)))
                                                (let ((_%tl3603036112%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3603236105%_)))
                                                      (_%hd3603136109%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3603236105%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3603036112%_)
                                                      (let ((_%e3603536115%_
                                                             (gx#syntax-e
                                                              _%tl3603036112%_)))
                                                        (let ((_%tl3603336122%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3603536115%_)))
                      (_%hd3603436119%_
                       (let () (declare (not safe)) (##car _%e3603536115%_))))
                  (if (gx#stx-null? _%tl3603336122%_)
                      (_%loop3602236083%_
                       _%lp-tl3602536102%_
                       (cons _%hd3603436119%_ _%expr3602636090%_)
                       (cons _%hd3603136109%_ _%hd3602736092%_))
                      (let () (declare (not safe)) (_%g3596736050%_)))))
              (let () (declare (not safe)) (_%g3596736050%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3596736050%_)))))
                                      (let ((_%hd3602936128%_
                                             (reverse _%hd3602736092%_))
                                            (_%expr3602836125%_
                                             (reverse _%expr3602636090%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3601636074%_)
                                            (let ((_%__splice3955839559%_
                                                   (gx#syntax-split-splice
                                                    _%tl3601636074%_
                                                    '0)))
                                              (let ((_%tl3603836134%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3955839559%_
                                                        '1)))
                                                    (_%target3603636131%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3955839559%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3603836134%_)
                                                    (letrec ((_%loop3603936137%_
                                                              (lambda (_%hd3603736141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3604336144%_)
                        (if (gx#stx-pair? _%hd3603736141%_)
                            (let ((_%e3604036147%_
                                   (gx#syntax-e _%hd3603736141%_)))
                              (let ((_%lp-tl3604236154%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3604036147%_)))
                                    (_%lp-hd3604136151%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3604036147%_))))
                                (_%loop3603936137%_
                                 _%lp-tl3604236154%_
                                 (cons _%lp-hd3604136151%_
                                       _%body3604336144%_))))
                            (let ((_%body3604436157%_
                                   (reverse _%body3604336144%_)))
                              (_%__kont3955439555%_
                               _%body3604436157%_
                               _%expr3602836125%_
                               _%hd3602936128%_))))))
              (_%loop3603936137%_ _%target3603636131%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3596736050%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3596736050%_))))))))
                        (_%loop3602236083%_ _%target3601936077%_ '() '()))))
                   (_%__match3962839629%_
                    (lambda (_%e3601536057%_
                             _%hd3601436061%_
                             _%tl3601336064%_
                             _%e3601836067%_
                             _%hd3601736071%_
                             _%tl3601636074%_)
                      (if (gx#stx-pair/null? _%hd3601736071%_)
                          (let ((_%__splice3955639557%_
                                 (gx#syntax-split-splice _%hd3601736071%_ '0)))
                            (let ((_%tl3602136080%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3955639557%_ '1)))
                                  (_%target3601936077%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3955639557%_
                                      '0))))
                              (if (gx#stx-null? _%tl3602136080%_)
                                  (_%__match3963639637%_
                                   _%e3601536057%_
                                   _%hd3601436061%_
                                   _%tl3601336064%_
                                   _%e3601836067%_
                                   _%hd3601736071%_
                                   _%tl3601636074%_
                                   _%__splice3955639557%_
                                   _%target3601936077%_
                                   _%tl3602136080%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3596736050%_)))))
                          (let () (declare (not safe)) (_%g3596736050%_)))))
                   (_%__match3961639617%_
                    (lambda (_%e3599136218%_
                             _%hd3599036222%_
                             _%tl3598936225%_
                             _%e3599436228%_
                             _%hd3599336232%_
                             _%tl3599236235%_
                             _%e3599736238%_
                             _%hd3599636242%_
                             _%tl3599536245%_
                             _%e3600036248%_
                             _%hd3599936252%_
                             _%tl3599836255%_
                             _%__splice3955239553%_
                             _%target3600136258%_
                             _%tl3600336261%_)
                      (letrec ((_%loop3600436264%_
                                (lambda (_%hd3600236268%_ _%body3600836271%_)
                                  (if (gx#stx-pair? _%hd3600236268%_)
                                      (let ((_%e3600536274%_
                                             (gx#syntax-e _%hd3600236268%_)))
                                        (let ((_%lp-tl3600736281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3600536274%_)))
                                              (_%lp-hd3600636278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3600536274%_))))
                                          (_%loop3600436264%_
                                           _%lp-tl3600736281%_
                                           (cons _%lp-hd3600636278%_
                                                 _%body3600836271%_))))
                                      (let ((_%body3600936284%_
                                             (reverse _%body3600836271%_)))
                                        (let ((_%L36288%_ _%body3600936284%_)
                                              (_%L36290%_ _%hd3599936252%_)
                                              (_%L36291%_ _%hd3599636242%_)
                                              (_%L36292%_ _%hd3599036222%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core/match[1]#match-pattern?|
                                                 _%L36291%_))
                                              (_%__kont3955039551%_
                                               _%L36288%_
                                               _%L36290%_
                                               _%L36291%_
                                               _%L36292%_)
                                              (_%__match3962839629%_
                                               _%e3599136218%_
                                               _%hd3599036222%_
                                               _%tl3598936225%_
                                               _%e3599436228%_
                                               _%hd3599336232%_
                                               _%tl3599236235%_))))))))
                        (_%loop3600436264%_ _%target3600136258%_ '()))))
                   (_%__match3958239583%_
                    (lambda (_%e3597236330%_
                             _%hd3597136334%_
                             _%tl3597036337%_
                             _%e3597536340%_
                             _%hd3597436344%_
                             _%tl3597336347%_
                             _%__splice3954839549%_
                             _%target3597636350%_
                             _%tl3597836353%_)
                      (letrec ((_%loop3597936356%_
                                (lambda (_%hd3597736360%_ _%body3598336363%_)
                                  (if (gx#stx-pair? _%hd3597736360%_)
                                      (let ((_%e3598036366%_
                                             (gx#syntax-e _%hd3597736360%_)))
                                        (let ((_%lp-tl3598236373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3598036366%_)))
                                              (_%lp-hd3598136370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3598036366%_))))
                                          (_%loop3597936356%_
                                           _%lp-tl3598236373%_
                                           (cons _%lp-hd3598136370%_
                                                 _%body3598336363%_))))
                                      (let ((_%body3598436376%_
                                             (reverse _%body3598336363%_)))
                                        (_%__kont3954639547%_
                                         _%body3598436376%_))))))
                        (_%loop3597936356%_ _%target3597636350%_ '())))))
              (if (gx#stx-pair? _%__stx3954339544%_)
                  (let ((_%e3597236330%_ (gx#syntax-e _%__stx3954339544%_)))
                    (let ((_%tl3597036337%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3597236330%_)))
                          (_%hd3597136334%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3597236330%_))))
                      (if (gx#stx-pair? _%tl3597036337%_)
                          (let ((_%e3597536340%_
                                 (gx#syntax-e _%tl3597036337%_)))
                            (let ((_%tl3597336347%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3597536340%_)))
                                  (_%hd3597436344%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3597536340%_))))
                              (if (gx#stx-null? _%hd3597436344%_)
                                  (if (gx#stx-pair/null? _%tl3597336347%_)
                                      (let ((_%__splice3954839549%_
                                             (gx#syntax-split-splice
                                              _%tl3597336347%_
                                              '0)))
                                        (let ((_%tl3597836353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3954839549%_
                                                  '1)))
                                              (_%target3597636350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3954839549%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3597836353%_)
                                              (_%__match3958239583%_
                                               _%e3597236330%_
                                               _%hd3597136334%_
                                               _%tl3597036337%_
                                               _%e3597536340%_
                                               _%hd3597436344%_
                                               _%tl3597336347%_
                                               _%__splice3954839549%_
                                               _%target3597636350%_
                                               _%tl3597836353%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3597436344%_)
                                                  (let ((_%__splice3955639557%_
                                                         (gx#syntax-split-splice
                                                          _%hd3597436344%_
                                                          '0)))
                                                    (let ((_%tl3602136080%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3955639557%_
                                                              '1)))
                                                          (_%target3601936077%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3955639557%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3602136080%_)
                                                          (_%__match3963639637%_
                                                           _%e3597236330%_
                                                           _%hd3597136334%_
                                                           _%tl3597036337%_
                                                           _%e3597536340%_
                                                           _%hd3597436344%_
                                                           _%tl3597336347%_
                                                           _%__splice3955639557%_
                                                           _%target3601936077%_
                                                           _%tl3602136080%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3596736050%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3596736050%_))))))
                                      (if (gx#stx-pair/null? _%hd3597436344%_)
                                          (let ((_%__splice3955639557%_
                                                 (gx#syntax-split-splice
                                                  _%hd3597436344%_
                                                  '0)))
                                            (let ((_%tl3602136080%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3955639557%_
                                                      '1)))
                                                  (_%target3601936077%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3955639557%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3602136080%_)
                                                  (_%__match3963639637%_
                                                   _%e3597236330%_
                                                   _%hd3597136334%_
                                                   _%tl3597036337%_
                                                   _%e3597536340%_
                                                   _%hd3597436344%_
                                                   _%tl3597336347%_
                                                   _%__splice3955639557%_
                                                   _%target3601936077%_
                                                   _%tl3602136080%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3596736050%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3596736050%_))))
                                  (if (gx#stx-pair? _%hd3597436344%_)
                                      (let ((_%e3599736238%_
                                             (gx#syntax-e _%hd3597436344%_)))
                                        (let ((_%tl3599536245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3599736238%_)))
                                              (_%hd3599636242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3599736238%_))))
                                          (if (gx#stx-pair? _%tl3599536245%_)
                                              (let ((_%e3600036248%_
                                                     (gx#syntax-e
                                                      _%tl3599536245%_)))
                                                (let ((_%tl3599836255%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3600036248%_)))
                                                      (_%hd3599936252%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3600036248%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3599836255%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3597336347%_)
                                                          (let ((_%__splice3955239553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl3597336347%_ '0)))
                    (let ((_%tl3600336261%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3955239553%_ '1)))
                          (_%target3600136258%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3955239553%_ '0))))
                      (if (gx#stx-null? _%tl3600336261%_)
                          (_%__match3961639617%_
                           _%e3597236330%_
                           _%hd3597136334%_
                           _%tl3597036337%_
                           _%e3597536340%_
                           _%hd3597436344%_
                           _%tl3597336347%_
                           _%e3599736238%_
                           _%hd3599636242%_
                           _%tl3599536245%_
                           _%e3600036248%_
                           _%hd3599936252%_
                           _%tl3599836255%_
                           _%__splice3955239553%_
                           _%target3600136258%_
                           _%tl3600336261%_)
                          (if (gx#stx-pair/null? _%hd3597436344%_)
                              (let ((_%__splice3955639557%_
                                     (gx#syntax-split-splice
                                      _%hd3597436344%_
                                      '0)))
                                (let ((_%tl3602136080%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3955639557%_
                                          '1)))
                                      (_%target3601936077%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3955639557%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3602136080%_)
                                      (_%__match3963639637%_
                                       _%e3597236330%_
                                       _%hd3597136334%_
                                       _%tl3597036337%_
                                       _%e3597536340%_
                                       _%hd3597436344%_
                                       _%tl3597336347%_
                                       _%__splice3955639557%_
                                       _%target3601936077%_
                                       _%tl3602136080%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3596736050%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3596736050%_))))))
                  (if (gx#stx-pair/null? _%hd3597436344%_)
                      (let ((_%__splice3955639557%_
                             (gx#syntax-split-splice _%hd3597436344%_ '0)))
                        (let ((_%tl3602136080%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3955639557%_ '1)))
                              (_%target3601936077%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3955639557%_ '0))))
                          (if (gx#stx-null? _%tl3602136080%_)
                              (_%__match3963639637%_
                               _%e3597236330%_
                               _%hd3597136334%_
                               _%tl3597036337%_
                               _%e3597536340%_
                               _%hd3597436344%_
                               _%tl3597336347%_
                               _%__splice3955639557%_
                               _%target3601936077%_
                               _%tl3602136080%_)
                              (let ()
                                (declare (not safe))
                                (_%g3596736050%_)))))
                      (let () (declare (not safe)) (_%g3596736050%_))))
              (if (gx#stx-pair/null? _%hd3597436344%_)
                  (let ((_%__splice3955639557%_
                         (gx#syntax-split-splice _%hd3597436344%_ '0)))
                    (let ((_%tl3602136080%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3955639557%_ '1)))
                          (_%target3601936077%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3955639557%_ '0))))
                      (if (gx#stx-null? _%tl3602136080%_)
                          (_%__match3963639637%_
                           _%e3597236330%_
                           _%hd3597136334%_
                           _%tl3597036337%_
                           _%e3597536340%_
                           _%hd3597436344%_
                           _%tl3597336347%_
                           _%__splice3955639557%_
                           _%target3601936077%_
                           _%tl3602136080%_)
                          (let () (declare (not safe)) (_%g3596736050%_)))))
                  (let () (declare (not safe)) (_%g3596736050%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3597436344%_)
                                                  (let ((_%__splice3955639557%_
                                                         (gx#syntax-split-splice
                                                          _%hd3597436344%_
                                                          '0)))
                                                    (let ((_%tl3602136080%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3955639557%_
                                                              '1)))
                                                          (_%target3601936077%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3955639557%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3602136080%_)
                                                          (_%__match3963639637%_
                                                           _%e3597236330%_
                                                           _%hd3597136334%_
                                                           _%tl3597036337%_
                                                           _%e3597536340%_
                                                           _%hd3597436344%_
                                                           _%tl3597336347%_
                                                           _%__splice3955639557%_
                                                           _%target3601936077%_
                                                           _%tl3602136080%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3596736050%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3596736050%_))))))
                                      (if (gx#stx-pair/null? _%hd3597436344%_)
                                          (let ((_%__splice3955639557%_
                                                 (gx#syntax-split-splice
                                                  _%hd3597436344%_
                                                  '0)))
                                            (let ((_%tl3602136080%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3955639557%_
                                                      '1)))
                                                  (_%target3601936077%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3955639557%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3602136080%_)
                                                  (_%__match3963639637%_
                                                   _%e3597236330%_
                                                   _%hd3597136334%_
                                                   _%tl3597036337%_
                                                   _%e3597536340%_
                                                   _%hd3597436344%_
                                                   _%tl3597336347%_
                                                   _%__splice3955639557%_
                                                   _%target3601936077%_
                                                   _%tl3602136080%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3596736050%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3596736050%_)))))))
                          (let () (declare (not safe)) (_%g3596736050%_)))))
                  (let () (declare (not safe)) (_%g3596736050%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36413%_)
        (let* ((_%__stx3963939640%_ _%$stx36413%_)
               (_%g3641836470%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3963939640%_))))
          (let ((_%__kont3964239643%_
                 (lambda (_%L36640%_
                          _%L36642%_
                          _%L36643%_
                          _%L36644%_
                          _%L36645%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%L36644%_ (cons _%L36643%_ '()))
                                     '())
                               (cons (cons _%L36645%_
                                           (cons _%L36642%_
                                                 (foldr (lambda (_%g3667036673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3667136676%_)
                  (cons _%g3667036673%_ _%g3667136676%_))
                '()
                _%L36640%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3964639647%_
                 (lambda (_%L36527%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3654436547%_ _%g3654536550%_)
                                        (cons _%g3654436547%_ _%g3654536550%_))
                                      '()
                                      _%L36527%_))))))
            (let* ((_%__match3971239713%_
                    (lambda (_%e3645236477%_
                             _%hd3645136481%_
                             _%tl3645036484%_
                             _%e3645536487%_
                             _%hd3645436491%_
                             _%tl3645336494%_
                             _%__splice3964839649%_
                             _%target3645636497%_
                             _%tl3645836500%_)
                      (letrec ((_%loop3645936503%_
                                (lambda (_%hd3645736507%_ _%body3646336510%_)
                                  (if (gx#stx-pair? _%hd3645736507%_)
                                      (let ((_%e3646036513%_
                                             (gx#syntax-e _%hd3645736507%_)))
                                        (let ((_%lp-tl3646236520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3646036513%_)))
                                              (_%lp-hd3646136517%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3646036513%_))))
                                          (_%loop3645936503%_
                                           _%lp-tl3646236520%_
                                           (cons _%lp-hd3646136517%_
                                                 _%body3646336510%_))))
                                      (let ((_%body3646436523%_
                                             (reverse _%body3646336510%_)))
                                        (_%__kont3964639647%_
                                         _%body3646436523%_))))))
                        (_%loop3645936503%_ _%target3645636497%_ '()))))
                   (_%__match3969039691%_
                    (lambda (_%e3642736560%_
                             _%hd3642636564%_
                             _%tl3642536567%_
                             _%e3643036570%_
                             _%hd3642936574%_
                             _%tl3642836577%_
                             _%e3643336580%_
                             _%hd3643236584%_
                             _%tl3643136587%_
                             _%e3643636590%_
                             _%hd3643536594%_
                             _%tl3643436597%_
                             _%e3643936600%_
                             _%hd3643836604%_
                             _%tl3643736607%_
                             _%__splice3964439645%_
                             _%target3644036610%_
                             _%tl3644236613%_)
                      (letrec ((_%loop3644336616%_
                                (lambda (_%hd3644136620%_ _%body3644736623%_)
                                  (if (gx#stx-pair? _%hd3644136620%_)
                                      (let ((_%e3644436626%_
                                             (gx#syntax-e _%hd3644136620%_)))
                                        (let ((_%lp-tl3644636633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3644436626%_)))
                                              (_%lp-hd3644536630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3644436626%_))))
                                          (_%loop3644336616%_
                                           _%lp-tl3644636633%_
                                           (cons _%lp-hd3644536630%_
                                                 _%body3644736623%_))))
                                      (let ((_%body3644836636%_
                                             (reverse _%body3644736623%_)))
                                        (_%__kont3964239643%_
                                         _%body3644836636%_
                                         _%tl3643136587%_
                                         _%hd3643836604%_
                                         _%hd3643536594%_
                                         _%hd3642636564%_))))))
                        (_%loop3644336616%_ _%target3644036610%_ '())))))
              (if (gx#stx-pair? _%__stx3963939640%_)
                  (let ((_%e3642736560%_ (gx#syntax-e _%__stx3963939640%_)))
                    (let ((_%tl3642536567%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3642736560%_)))
                          (_%hd3642636564%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3642736560%_))))
                      (if (gx#stx-pair? _%tl3642536567%_)
                          (let ((_%e3643036570%_
                                 (gx#syntax-e _%tl3642536567%_)))
                            (let ((_%tl3642836577%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3643036570%_)))
                                  (_%hd3642936574%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3643036570%_))))
                              (if (gx#stx-pair? _%hd3642936574%_)
                                  (let ((_%e3643336580%_
                                         (gx#syntax-e _%hd3642936574%_)))
                                    (let ((_%tl3643136587%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3643336580%_)))
                                          (_%hd3643236584%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3643336580%_))))
                                      (if (gx#stx-pair? _%hd3643236584%_)
                                          (let ((_%e3643636590%_
                                                 (gx#syntax-e
                                                  _%hd3643236584%_)))
                                            (let ((_%tl3643436597%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3643636590%_)))
                                                  (_%hd3643536594%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3643636590%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3643436597%_)
                                                  (let ((_%e3643936600%_
                                                         (gx#syntax-e
                                                          _%tl3643436597%_)))
                                                    (let ((_%tl3643736607%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3643936600%_)))
                                                          (_%hd3643836604%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3643936600%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3643736607%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3642836577%_)
                                                              (let ((_%__splice3964439645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl3642836577%_ '0)))
                        (let ((_%tl3644236613%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3964439645%_ '1)))
                              (_%target3644036610%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3964439645%_ '0))))
                          (if (gx#stx-null? _%tl3644236613%_)
                              (_%__match3969039691%_
                               _%e3642736560%_
                               _%hd3642636564%_
                               _%tl3642536567%_
                               _%e3643036570%_
                               _%hd3642936574%_
                               _%tl3642836577%_
                               _%e3643336580%_
                               _%hd3643236584%_
                               _%tl3643136587%_
                               _%e3643636590%_
                               _%hd3643536594%_
                               _%tl3643436597%_
                               _%e3643936600%_
                               _%hd3643836604%_
                               _%tl3643736607%_
                               _%__splice3964439645%_
                               _%target3644036610%_
                               _%tl3644236613%_)
                              (let ()
                                (declare (not safe))
                                (_%g3641836470%_)))))
                      (let () (declare (not safe)) (_%g3641836470%_)))
                  (let () (declare (not safe)) (_%g3641836470%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3641836470%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3641836470%_)))))
                                  (if (gx#stx-null? _%hd3642936574%_)
                                      (if (gx#stx-pair/null? _%tl3642836577%_)
                                          (let ((_%__splice3964839649%_
                                                 (gx#syntax-split-splice
                                                  _%tl3642836577%_
                                                  '0)))
                                            (let ((_%tl3645836500%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3964839649%_
                                                      '1)))
                                                  (_%target3645636497%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3964839649%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3645836500%_)
                                                  (_%__match3971239713%_
                                                   _%e3642736560%_
                                                   _%hd3642636564%_
                                                   _%tl3642536567%_
                                                   _%e3643036570%_
                                                   _%hd3642936574%_
                                                   _%tl3642836577%_
                                                   _%__splice3964839649%_
                                                   _%target3645636497%_
                                                   _%tl3645836500%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3641836470%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3641836470%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3641836470%_))))))
                          (let () (declare (not safe)) (_%g3641836470%_)))))
                  (let () (declare (not safe)) (_%g3641836470%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx36685%_)
        (let* ((_%__stx3971539716%_ _%$stx36685%_)
               (_%g3669636842%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3971539716%_))))
          (let ((_%__kont3971839719%_
                 (lambda (_%L37446%_ _%L37448%_ _%L37449%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3747037473%_ _%g3747137476%_)
                                  (cons (cons _%L37449%_
                                              (cons _%g3747037473%_
                                                    (cons _%L37446%_ '())))
                                        _%g3747137476%_))
                                '()
                                _%L37448%_))))
                (_%__kont3972239723%_
                 (lambda (_%L37336%_ _%L37338%_ _%L37339%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3736037363%_ _%g3736137366%_)
                                  (cons (cons _%L37339%_
                                              (cons _%g3736037363%_
                                                    (cons _%L37336%_ '())))
                                        _%g3736137366%_))
                                '()
                                _%L37338%_))))
                (_%__kont3972639727%_
                 (lambda (_%L37236%_ _%L37238%_ _%L37239%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%L37239%_
                                     (cons _%L37238%_ (cons _%L37236%_ '())))
                               '()))))
                (_%__kont3972839729%_
                 (lambda (_%L37162%_ _%L37164%_)
                   (cons _%L37164%_ (cons _%L37162%_ '()))))
                (_%__kont3973039731%_
                 (lambda (_%L37110%_ _%L37112%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%L37112%_
                                           (cons _%L37110%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont3973239733%_
                 (lambda (_%L37062%_ _%L37064%_ _%L37065%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%L37065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L37064%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L37062%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3973439735%_
                 (lambda (_%L36993%_ _%L36995%_ _%L36996%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36996%_
                                                       (cons _%L36995%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36993%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3973639737%_
                 (lambda (_%L36913%_ _%L36915%_ _%L36916%_ _%L36917%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36917%_
                                                       (cons _%L36916%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36913%_
                                                             (cons (cons _%L36915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match3988839889%_
                    (lambda (_%e3678837022%_
                             _%hd3678737026%_
                             _%tl3678637029%_
                             _%e3679137032%_
                             _%hd3679037036%_
                             _%tl3678937039%_
                             _%e3679437042%_
                             _%hd3679337046%_
                             _%tl3679237049%_)
                      (if (gx#identifier? _%hd3679337046%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40187_|
                               _%hd3679337046%_)
                              (if (gx#stx-pair? _%tl3679237049%_)
                                  (let ((_%e3679737052%_
                                         (gx#syntax-e _%tl3679237049%_)))
                                    (let ((_%tl3679537059%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3679737052%_)))
                                          (_%hd3679637056%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3679737052%_))))
                                      (if (gx#stx-null? _%tl3679537059%_)
                                          (_%__kont3973239733%_
                                           _%hd3679637056%_
                                           _%hd3679037036%_
                                           _%hd3678737026%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3669636842%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3669636842%_)))
                              (let () (declare (not safe)) (_%g3669636842%_)))
                          (if (gx#stx-datum? _%hd3679337046%_)
                              (let ((_%e3681036979%_
                                     (gx#stx-e _%hd3679337046%_)))
                                (if (equal? _%e3681036979%_ '::)
                                    (if (gx#stx-pair? _%tl3679237049%_)
                                        (let ((_%e3681336983%_
                                               (gx#syntax-e _%tl3679237049%_)))
                                          (let ((_%tl3681136990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3681336983%_)))
                                                (_%hd3681236987%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3681336983%_))))
                                            (if (gx#stx-null? _%tl3681136990%_)
                                                (_%__kont3973439735%_
                                                 _%hd3681236987%_
                                                 _%hd3679037036%_
                                                 _%hd3678737026%_)
                                                (if (gx#stx-pair?
                                                     _%tl3681136990%_)
                                                    (let ((_%e3683336893%_
                                                           (gx#syntax-e
                                                            _%tl3681136990%_)))
                                                      (let ((_%tl3683136900%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3683336893%_)))
                    (_%hd3683236897%_
                     (let () (declare (not safe)) (##car _%e3683336893%_))))
                (if (gx#identifier? _%hd3683236897%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g40188_|
                         _%hd3683236897%_)
                        (if (gx#stx-pair? _%tl3683136900%_)
                            (let ((_%e3683636903%_
                                   (gx#syntax-e _%tl3683136900%_)))
                              (let ((_%tl3683436910%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3683636903%_)))
                                    (_%hd3683536907%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3683636903%_))))
                                (if (gx#stx-null? _%tl3683436910%_)
                                    (_%__kont3973639737%_
                                     _%hd3683536907%_
                                     _%hd3681236987%_
                                     _%hd3679037036%_
                                     _%hd3678737026%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3669636842%_)))))
                            (let () (declare (not safe)) (_%g3669636842%_)))
                        (let () (declare (not safe)) (_%g3669636842%_)))
                    (let () (declare (not safe)) (_%g3669636842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3669636842%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3669636842%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3669636842%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3669636842%_))))))
                   (_%__match3986839869%_
                    (lambda (_%e3677937090%_
                             _%hd3677837094%_
                             _%tl3677737097%_
                             _%e3678237100%_
                             _%hd3678137104%_
                             _%tl3678037107%_)
                      (if (gx#stx-null? _%tl3678037107%_)
                          (_%__kont3973039731%_
                           _%hd3678137104%_
                           _%hd3677837094%_)
                          (if (gx#stx-pair? _%tl3678037107%_)
                              (let ((_%e3679437042%_
                                     (gx#syntax-e _%tl3678037107%_)))
                                (let ((_%tl3679237049%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3679437042%_)))
                                      (_%hd3679337046%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3679437042%_))))
                                  (if (gx#identifier? _%hd3679337046%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40187_|
                                           _%hd3679337046%_)
                                          (if (gx#stx-pair? _%tl3679237049%_)
                                              (let ((_%e3679737052%_
                                                     (gx#syntax-e
                                                      _%tl3679237049%_)))
                                                (let ((_%tl3679537059%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3679737052%_)))
                                                      (_%hd3679637056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3679737052%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3679537059%_)
                                                      (_%__kont3973239733%_
                                                       _%hd3679637056%_
                                                       _%hd3678137104%_
                                                       _%hd3677837094%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3669636842%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3669636842%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3669636842%_)))
                                      (if (gx#stx-datum? _%hd3679337046%_)
                                          (let ((_%e3681036979%_
                                                 (gx#stx-e _%hd3679337046%_)))
                                            (if (equal? _%e3681036979%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3679237049%_)
                                                    (let ((_%e3681336983%_
                                                           (gx#syntax-e
                                                            _%tl3679237049%_)))
                                                      (let ((_%tl3681136990%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3681336983%_)))
                    (_%hd3681236987%_
                     (let () (declare (not safe)) (##car _%e3681336983%_))))
                (if (gx#stx-null? _%tl3681136990%_)
                    (_%__kont3973439735%_
                     _%hd3681236987%_
                     _%hd3678137104%_
                     _%hd3677837094%_)
                    (if (gx#stx-pair? _%tl3681136990%_)
                        (let ((_%e3683336893%_ (gx#syntax-e _%tl3681136990%_)))
                          (let ((_%tl3683136900%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3683336893%_)))
                                (_%hd3683236897%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3683336893%_))))
                            (if (gx#identifier? _%hd3683236897%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g40188_|
                                     _%hd3683236897%_)
                                    (if (gx#stx-pair? _%tl3683136900%_)
                                        (let ((_%e3683636903%_
                                               (gx#syntax-e _%tl3683136900%_)))
                                          (let ((_%tl3683436910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3683636903%_)))
                                                (_%hd3683536907%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3683636903%_))))
                                            (if (gx#stx-null? _%tl3683436910%_)
                                                (_%__kont3973639737%_
                                                 _%hd3683536907%_
                                                 _%hd3681236987%_
                                                 _%hd3678137104%_
                                                 _%hd3677837094%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3669636842%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3669636842%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3669636842%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3669636842%_)))))
                        (let () (declare (not safe)) (_%g3669636842%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3669636842%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3669636842%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3669636842%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3669636842%_))))))
                   (_%__match3979839799%_
                    (lambda (_%e3672737266%_
                             _%hd3672637270%_
                             _%tl3672537273%_
                             _%e3673037276%_
                             _%hd3672937280%_
                             _%tl3672837283%_
                             _%e3673337286%_
                             _%hd3673237290%_
                             _%tl3673137293%_
                             _%__splice3972439725%_
                             _%target3673437296%_
                             _%tl3673637299%_)
                      (letrec ((_%loop3673737302%_
                                (lambda (_%hd3673537306%_ _%pred3674137309%_)
                                  (if (gx#stx-pair? _%hd3673537306%_)
                                      (let ((_%e3673837312%_
                                             (gx#syntax-e _%hd3673537306%_)))
                                        (let ((_%lp-tl3674037319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3673837312%_)))
                                              (_%lp-hd3673937316%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3673837312%_))))
                                          (_%loop3673737302%_
                                           _%lp-tl3674037319%_
                                           (cons _%lp-hd3673937316%_
                                                 _%pred3674137309%_))))
                                      (let ((_%pred3674237322%_
                                             (reverse _%pred3674137309%_)))
                                        (if (gx#stx-pair? _%tl3672837283%_)
                                            (let ((_%e3674537326%_
                                                   (gx#syntax-e
                                                    _%tl3672837283%_)))
                                              (let ((_%tl3674337333%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3674537326%_)))
                                                    (_%hd3674437330%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3674537326%_))))
                                                (if (gx#stx-null?
                                                     _%tl3674337333%_)
                                                    (_%__kont3972239723%_
                                                     _%hd3674437330%_
                                                     _%pred3674237322%_
                                                     _%hd3672637270%_)
                                                    (_%__match3988839889%_
                                                     _%e3672737266%_
                                                     _%hd3672637270%_
                                                     _%tl3672537273%_
                                                     _%e3673037276%_
                                                     _%hd3672937280%_
                                                     _%tl3672837283%_
                                                     _%e3674537326%_
                                                     _%hd3674437330%_
                                                     _%tl3674337333%_))))
                                            (_%__match3986839869%_
                                             _%e3672737266%_
                                             _%hd3672637270%_
                                             _%tl3672537273%_
                                             _%e3673037276%_
                                             _%hd3672937280%_
                                             _%tl3672837283%_)))))))
                        (_%loop3673737302%_ _%target3673437296%_ '()))))
                   (_%__match3976839769%_
                    (lambda (_%e3670337376%_
                             _%hd3670237380%_
                             _%tl3670137383%_
                             _%e3670637386%_
                             _%hd3670537390%_
                             _%tl3670437393%_
                             _%e3670937396%_
                             _%hd3670837400%_
                             _%tl3670737403%_
                             _%__splice3972039721%_
                             _%target3671037406%_
                             _%tl3671237409%_)
                      (letrec ((_%loop3671337412%_
                                (lambda (_%hd3671137416%_ _%pred3671737419%_)
                                  (if (gx#stx-pair? _%hd3671137416%_)
                                      (let ((_%e3671437422%_
                                             (gx#syntax-e _%hd3671137416%_)))
                                        (let ((_%lp-tl3671637429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3671437422%_)))
                                              (_%lp-hd3671537426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3671437422%_))))
                                          (_%loop3671337412%_
                                           _%lp-tl3671637429%_
                                           (cons _%lp-hd3671537426%_
                                                 _%pred3671737419%_))))
                                      (let ((_%pred3671837432%_
                                             (reverse _%pred3671737419%_)))
                                        (if (gx#stx-pair? _%tl3670437393%_)
                                            (let ((_%e3672137436%_
                                                   (gx#syntax-e
                                                    _%tl3670437393%_)))
                                              (let ((_%tl3671937443%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3672137436%_)))
                                                    (_%hd3672037440%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3672137436%_))))
                                                (if (gx#stx-null?
                                                     _%tl3671937443%_)
                                                    (_%__kont3971839719%_
                                                     _%hd3672037440%_
                                                     _%pred3671837432%_
                                                     _%hd3670237380%_)
                                                    (_%__match3988839889%_
                                                     _%e3670337376%_
                                                     _%hd3670237380%_
                                                     _%tl3670137383%_
                                                     _%e3670637386%_
                                                     _%hd3670537390%_
                                                     _%tl3670437393%_
                                                     _%e3672137436%_
                                                     _%hd3672037440%_
                                                     _%tl3671937443%_))))
                                            (_%__match3986839869%_
                                             _%e3670337376%_
                                             _%hd3670237380%_
                                             _%tl3670137383%_
                                             _%e3670637386%_
                                             _%hd3670537390%_
                                             _%tl3670437393%_)))))))
                        (_%loop3671337412%_ _%target3671037406%_ '())))))
              (if (gx#stx-pair? _%__stx3971539716%_)
                  (let ((_%e3670337376%_ (gx#syntax-e _%__stx3971539716%_)))
                    (let ((_%tl3670137383%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3670337376%_)))
                          (_%hd3670237380%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3670337376%_))))
                      (if (gx#stx-pair? _%tl3670137383%_)
                          (let ((_%e3670637386%_
                                 (gx#syntax-e _%tl3670137383%_)))
                            (let ((_%tl3670437393%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3670637386%_)))
                                  (_%hd3670537390%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3670637386%_))))
                              (if (gx#stx-pair? _%hd3670537390%_)
                                  (let ((_%e3670937396%_
                                         (gx#syntax-e _%hd3670537390%_)))
                                    (let ((_%tl3670737403%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3670937396%_)))
                                          (_%hd3670837400%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3670937396%_))))
                                      (if (gx#identifier? _%hd3670837400%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40189_|
                                               _%hd3670837400%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3670737403%_)
                                                  (let ((_%__splice3972039721%_
                                                         (gx#syntax-split-splice
                                                          _%tl3670737403%_
                                                          '0)))
                                                    (let ((_%tl3671237409%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3972039721%_
                                                              '1)))
                                                          (_%target3671037406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3972039721%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3671237409%_)
                                                          (_%__match3976839769%_
                                                           _%e3670337376%_
                                                           _%hd3670237380%_
                                                           _%tl3670137383%_
                                                           _%e3670637386%_
                                                           _%hd3670537390%_
                                                           _%tl3670437393%_
                                                           _%e3670937396%_
                                                           _%hd3670837400%_
                                                           _%tl3670737403%_
                                                           _%__splice3972039721%_
                                                           _%target3671037406%_
                                                           _%tl3671237409%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3670437393%_)
                                                              (let ((_%e3677437152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3670437393%_)))
                        (let ((_%tl3677237159%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3677437152%_)))
                              (_%hd3677337156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3677437152%_))))
                          (if (gx#stx-null? _%tl3677237159%_)
                              (_%__kont3972839729%_
                               _%hd3677337156%_
                               _%hd3670537390%_)
                              (if (gx#identifier? _%hd3677337156%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40187_|
                                       _%hd3677337156%_)
                                      (if (gx#stx-pair? _%tl3677237159%_)
                                          (let ((_%e3679737052%_
                                                 (gx#syntax-e
                                                  _%tl3677237159%_)))
                                            (let ((_%tl3679537059%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3679737052%_)))
                                                  (_%hd3679637056%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3679737052%_))))
                                              (if (gx#stx-null?
                                                   _%tl3679537059%_)
                                                  (_%__kont3973239733%_
                                                   _%hd3679637056%_
                                                   _%hd3670537390%_
                                                   _%hd3670237380%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3669636842%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3669636842%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3669636842%_)))
                                  (if (gx#stx-datum? _%hd3677337156%_)
                                      (let ((_%e3681036979%_
                                             (gx#stx-e _%hd3677337156%_)))
                                        (if (equal? _%e3681036979%_ '::)
                                            (if (gx#stx-pair? _%tl3677237159%_)
                                                (let ((_%e3681336983%_
                                                       (gx#syntax-e
                                                        _%tl3677237159%_)))
                                                  (let ((_%tl3681136990%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3681336983%_)))
                                                        (_%hd3681236987%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3681336983%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3681136990%_)
                                                        (_%__kont3973439735%_
                                                         _%hd3681236987%_
                                                         _%hd3670537390%_
                                                         _%hd3670237380%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3681136990%_)
                                                            (let ((_%e3683336893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3681136990%_)))
                      (let ((_%tl3683136900%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3683336893%_)))
                            (_%hd3683236897%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3683336893%_))))
                        (if (gx#identifier? _%hd3683236897%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g40188_|
                                 _%hd3683236897%_)
                                (if (gx#stx-pair? _%tl3683136900%_)
                                    (let ((_%e3683636903%_
                                           (gx#syntax-e _%tl3683136900%_)))
                                      (let ((_%tl3683436910%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3683636903%_)))
                                            (_%hd3683536907%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3683636903%_))))
                                        (if (gx#stx-null? _%tl3683436910%_)
                                            (_%__kont3973639737%_
                                             _%hd3683536907%_
                                             _%hd3681236987%_
                                             _%hd3670537390%_
                                             _%hd3670237380%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3669636842%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3669636842%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3669636842%_)))
                            (let () (declare (not safe)) (_%g3669636842%_)))))
                    (let () (declare (not safe)) (_%g3669636842%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3669636842%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3669636842%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3669636842%_)))))))
                      (if (gx#stx-null? _%tl3670437393%_)
                          (_%__kont3973039731%_
                           _%hd3670537390%_
                           _%hd3670237380%_)
                          (let () (declare (not safe)) (_%g3669636842%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3670437393%_)
                                                      (let ((_%e3677437152%_
                                                             (gx#syntax-e
                                                              _%tl3670437393%_)))
                                                        (let ((_%tl3677237159%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3677437152%_)))
                      (_%hd3677337156%_
                       (let () (declare (not safe)) (##car _%e3677437152%_))))
                  (if (gx#stx-null? _%tl3677237159%_)
                      (_%__kont3972839729%_ _%hd3677337156%_ _%hd3670537390%_)
                      (if (gx#identifier? _%hd3677337156%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40187_|
                               _%hd3677337156%_)
                              (if (gx#stx-pair? _%tl3677237159%_)
                                  (let ((_%e3679737052%_
                                         (gx#syntax-e _%tl3677237159%_)))
                                    (let ((_%tl3679537059%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3679737052%_)))
                                          (_%hd3679637056%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3679737052%_))))
                                      (if (gx#stx-null? _%tl3679537059%_)
                                          (_%__kont3973239733%_
                                           _%hd3679637056%_
                                           _%hd3670537390%_
                                           _%hd3670237380%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3669636842%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3669636842%_)))
                              (let () (declare (not safe)) (_%g3669636842%_)))
                          (if (gx#stx-datum? _%hd3677337156%_)
                              (let ((_%e3681036979%_
                                     (gx#stx-e _%hd3677337156%_)))
                                (if (equal? _%e3681036979%_ '::)
                                    (if (gx#stx-pair? _%tl3677237159%_)
                                        (let ((_%e3681336983%_
                                               (gx#syntax-e _%tl3677237159%_)))
                                          (let ((_%tl3681136990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3681336983%_)))
                                                (_%hd3681236987%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3681336983%_))))
                                            (if (gx#stx-null? _%tl3681136990%_)
                                                (_%__kont3973439735%_
                                                 _%hd3681236987%_
                                                 _%hd3670537390%_
                                                 _%hd3670237380%_)
                                                (if (gx#stx-pair?
                                                     _%tl3681136990%_)
                                                    (let ((_%e3683336893%_
                                                           (gx#syntax-e
                                                            _%tl3681136990%_)))
                                                      (let ((_%tl3683136900%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3683336893%_)))
                    (_%hd3683236897%_
                     (let () (declare (not safe)) (##car _%e3683336893%_))))
                (if (gx#identifier? _%hd3683236897%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g40188_|
                         _%hd3683236897%_)
                        (if (gx#stx-pair? _%tl3683136900%_)
                            (let ((_%e3683636903%_
                                   (gx#syntax-e _%tl3683136900%_)))
                              (let ((_%tl3683436910%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3683636903%_)))
                                    (_%hd3683536907%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3683636903%_))))
                                (if (gx#stx-null? _%tl3683436910%_)
                                    (_%__kont3973639737%_
                                     _%hd3683536907%_
                                     _%hd3681236987%_
                                     _%hd3670537390%_
                                     _%hd3670237380%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3669636842%_)))))
                            (let () (declare (not safe)) (_%g3669636842%_)))
                        (let () (declare (not safe)) (_%g3669636842%_)))
                    (let () (declare (not safe)) (_%g3669636842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3669636842%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3669636842%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3669636842%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3669636842%_)))))))
              (if (gx#stx-null? _%tl3670437393%_)
                  (_%__kont3973039731%_ _%hd3670537390%_ _%hd3670237380%_)
                  (let () (declare (not safe)) (_%g3669636842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g40190_|
                                                   _%hd3670837400%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3670737403%_)
                                                      (let ((_%__splice3972439725%_
                                                             (gx#syntax-split-splice
                                                              _%tl3670737403%_
                                                              '0)))
                                                        (let ((_%tl3673637299%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice3972439725%_ '1)))
                      (_%target3673437296%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice3972439725%_ '0))))
                  (if (gx#stx-null? _%tl3673637299%_)
                      (_%__match3979839799%_
                       _%e3670337376%_
                       _%hd3670237380%_
                       _%tl3670137383%_
                       _%e3670637386%_
                       _%hd3670537390%_
                       _%tl3670437393%_
                       _%e3670937396%_
                       _%hd3670837400%_
                       _%tl3670737403%_
                       _%__splice3972439725%_
                       _%target3673437296%_
                       _%tl3673637299%_)
                      (if (gx#stx-pair? _%tl3670437393%_)
                          (let ((_%e3677437152%_
                                 (gx#syntax-e _%tl3670437393%_)))
                            (let ((_%tl3677237159%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3677437152%_)))
                                  (_%hd3677337156%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3677437152%_))))
                              (if (gx#stx-null? _%tl3677237159%_)
                                  (_%__kont3972839729%_
                                   _%hd3677337156%_
                                   _%hd3670537390%_)
                                  (if (gx#identifier? _%hd3677337156%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40187_|
                                           _%hd3677337156%_)
                                          (if (gx#stx-pair? _%tl3677237159%_)
                                              (let ((_%e3679737052%_
                                                     (gx#syntax-e
                                                      _%tl3677237159%_)))
                                                (let ((_%tl3679537059%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3679737052%_)))
                                                      (_%hd3679637056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3679737052%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3679537059%_)
                                                      (_%__kont3973239733%_
                                                       _%hd3679637056%_
                                                       _%hd3670537390%_
                                                       _%hd3670237380%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3669636842%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3669636842%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3669636842%_)))
                                      (if (gx#stx-datum? _%hd3677337156%_)
                                          (let ((_%e3681036979%_
                                                 (gx#stx-e _%hd3677337156%_)))
                                            (if (equal? _%e3681036979%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3677237159%_)
                                                    (let ((_%e3681336983%_
                                                           (gx#syntax-e
                                                            _%tl3677237159%_)))
                                                      (let ((_%tl3681136990%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3681336983%_)))
                    (_%hd3681236987%_
                     (let () (declare (not safe)) (##car _%e3681336983%_))))
                (if (gx#stx-null? _%tl3681136990%_)
                    (_%__kont3973439735%_
                     _%hd3681236987%_
                     _%hd3670537390%_
                     _%hd3670237380%_)
                    (if (gx#stx-pair? _%tl3681136990%_)
                        (let ((_%e3683336893%_ (gx#syntax-e _%tl3681136990%_)))
                          (let ((_%tl3683136900%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3683336893%_)))
                                (_%hd3683236897%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3683336893%_))))
                            (if (gx#identifier? _%hd3683236897%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g40188_|
                                     _%hd3683236897%_)
                                    (if (gx#stx-pair? _%tl3683136900%_)
                                        (let ((_%e3683636903%_
                                               (gx#syntax-e _%tl3683136900%_)))
                                          (let ((_%tl3683436910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3683636903%_)))
                                                (_%hd3683536907%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3683636903%_))))
                                            (if (gx#stx-null? _%tl3683436910%_)
                                                (_%__kont3973639737%_
                                                 _%hd3683536907%_
                                                 _%hd3681236987%_
                                                 _%hd3670537390%_
                                                 _%hd3670237380%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3669636842%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3669636842%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3669636842%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3669636842%_)))))
                        (let () (declare (not safe)) (_%g3669636842%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3669636842%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3669636842%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3669636842%_)))))))
                          (if (gx#stx-null? _%tl3670437393%_)
                              (_%__kont3973039731%_
                               _%hd3670537390%_
                               _%hd3670237380%_)
                              (let ()
                                (declare (not safe))
                                (_%g3669636842%_)))))))
              (if (gx#stx-pair? _%tl3670437393%_)
                  (let ((_%e3677437152%_ (gx#syntax-e _%tl3670437393%_)))
                    (let ((_%tl3677237159%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3677437152%_)))
                          (_%hd3677337156%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3677437152%_))))
                      (if (gx#stx-null? _%tl3677237159%_)
                          (_%__kont3972839729%_
                           _%hd3677337156%_
                           _%hd3670537390%_)
                          (if (gx#identifier? _%hd3677337156%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40187_|
                                   _%hd3677337156%_)
                                  (if (gx#stx-pair? _%tl3677237159%_)
                                      (let ((_%e3679737052%_
                                             (gx#syntax-e _%tl3677237159%_)))
                                        (let ((_%tl3679537059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3679737052%_)))
                                              (_%hd3679637056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3679737052%_))))
                                          (if (gx#stx-null? _%tl3679537059%_)
                                              (_%__kont3973239733%_
                                               _%hd3679637056%_
                                               _%hd3670537390%_
                                               _%hd3670237380%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3669636842%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3669636842%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3669636842%_)))
                              (if (gx#stx-datum? _%hd3677337156%_)
                                  (let ((_%e3681036979%_
                                         (gx#stx-e _%hd3677337156%_)))
                                    (if (equal? _%e3681036979%_ '::)
                                        (if (gx#stx-pair? _%tl3677237159%_)
                                            (let ((_%e3681336983%_
                                                   (gx#syntax-e
                                                    _%tl3677237159%_)))
                                              (let ((_%tl3681136990%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3681336983%_)))
                                                    (_%hd3681236987%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3681336983%_))))
                                                (if (gx#stx-null?
                                                     _%tl3681136990%_)
                                                    (_%__kont3973439735%_
                                                     _%hd3681236987%_
                                                     _%hd3670537390%_
                                                     _%hd3670237380%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3681136990%_)
                                                        (let ((_%e3683336893%_
                                                               (gx#syntax-e
                                                                _%tl3681136990%_)))
                                                          (let ((_%tl3683136900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3683336893%_)))
                        (_%hd3683236897%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3683336893%_))))
                    (if (gx#identifier? _%hd3683236897%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40188_|
                             _%hd3683236897%_)
                            (if (gx#stx-pair? _%tl3683136900%_)
                                (let ((_%e3683636903%_
                                       (gx#syntax-e _%tl3683136900%_)))
                                  (let ((_%tl3683436910%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3683636903%_)))
                                        (_%hd3683536907%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3683636903%_))))
                                    (if (gx#stx-null? _%tl3683436910%_)
                                        (_%__kont3973639737%_
                                         _%hd3683536907%_
                                         _%hd3681236987%_
                                         _%hd3670537390%_
                                         _%hd3670237380%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3669636842%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3669636842%_)))
                            (let () (declare (not safe)) (_%g3669636842%_)))
                        (let () (declare (not safe)) (_%g3669636842%_)))))
                (let () (declare (not safe)) (_%g3669636842%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3669636842%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3669636842%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3669636842%_)))))))
                  (if (gx#stx-null? _%tl3670437393%_)
                      (_%__kont3973039731%_ _%hd3670537390%_ _%hd3670237380%_)
                      (let () (declare (not safe)) (_%g3669636842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40191_|
                                                       _%hd3670837400%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3670737403%_)
                                                          (let ((_%e3676037216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3670737403%_)))
                    (let ((_%tl3675837223%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3676037216%_)))
                          (_%hd3675937220%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3676037216%_))))
                      (if (gx#stx-null? _%tl3675837223%_)
                          (if (gx#stx-pair? _%tl3670437393%_)
                              (let ((_%e3676337226%_
                                     (gx#syntax-e _%tl3670437393%_)))
                                (let ((_%tl3676137233%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3676337226%_)))
                                      (_%hd3676237230%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3676337226%_))))
                                  (if (gx#stx-null? _%tl3676137233%_)
                                      (_%__kont3972639727%_
                                       _%hd3676237230%_
                                       _%hd3675937220%_
                                       _%hd3670237380%_)
                                      (if (gx#identifier? _%hd3676237230%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40187_|
                                               _%hd3676237230%_)
                                              (if (gx#stx-pair?
                                                   _%tl3676137233%_)
                                                  (let ((_%e3679737052%_
                                                         (gx#syntax-e
                                                          _%tl3676137233%_)))
                                                    (let ((_%tl3679537059%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3679737052%_)))
                                                          (_%hd3679637056%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3679737052%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3679537059%_)
                                                          (_%__kont3973239733%_
                                                           _%hd3679637056%_
                                                           _%hd3670537390%_
                                                           _%hd3670237380%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3669636842%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3669636842%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3669636842%_)))
                                          (if (gx#stx-datum? _%hd3676237230%_)
                                              (let ((_%e3681036979%_
                                                     (gx#stx-e
                                                      _%hd3676237230%_)))
                                                (if (equal? _%e3681036979%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3676137233%_)
                                                        (let ((_%e3681336983%_
                                                               (gx#syntax-e
                                                                _%tl3676137233%_)))
                                                          (let ((_%tl3681136990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3681336983%_)))
                        (_%hd3681236987%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3681336983%_))))
                    (if (gx#stx-null? _%tl3681136990%_)
                        (_%__kont3973439735%_
                         _%hd3681236987%_
                         _%hd3670537390%_
                         _%hd3670237380%_)
                        (if (gx#stx-pair? _%tl3681136990%_)
                            (let ((_%e3683336893%_
                                   (gx#syntax-e _%tl3681136990%_)))
                              (let ((_%tl3683136900%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3683336893%_)))
                                    (_%hd3683236897%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3683336893%_))))
                                (if (gx#identifier? _%hd3683236897%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40188_|
                                         _%hd3683236897%_)
                                        (if (gx#stx-pair? _%tl3683136900%_)
                                            (let ((_%e3683636903%_
                                                   (gx#syntax-e
                                                    _%tl3683136900%_)))
                                              (let ((_%tl3683436910%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3683636903%_)))
                                                    (_%hd3683536907%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3683636903%_))))
                                                (if (gx#stx-null?
                                                     _%tl3683436910%_)
                                                    (_%__kont3973639737%_
                                                     _%hd3683536907%_
                                                     _%hd3681236987%_
                                                     _%hd3670537390%_
                                                     _%hd3670237380%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3669636842%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3669636842%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3669636842%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3669636842%_)))))
                            (let () (declare (not safe)) (_%g3669636842%_))))))
                (let () (declare (not safe)) (_%g3669636842%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3669636842%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3669636842%_)))))))
                              (if (gx#stx-null? _%tl3670437393%_)
                                  (_%__kont3973039731%_
                                   _%hd3670537390%_
                                   _%hd3670237380%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3669636842%_))))
                          (if (gx#stx-pair? _%tl3670437393%_)
                              (let ((_%e3677437152%_
                                     (gx#syntax-e _%tl3670437393%_)))
                                (let ((_%tl3677237159%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3677437152%_)))
                                      (_%hd3677337156%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3677437152%_))))
                                  (if (gx#stx-null? _%tl3677237159%_)
                                      (_%__kont3972839729%_
                                       _%hd3677337156%_
                                       _%hd3670537390%_)
                                      (if (gx#identifier? _%hd3677337156%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40187_|
                                               _%hd3677337156%_)
                                              (if (gx#stx-pair?
                                                   _%tl3677237159%_)
                                                  (let ((_%e3679737052%_
                                                         (gx#syntax-e
                                                          _%tl3677237159%_)))
                                                    (let ((_%tl3679537059%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3679737052%_)))
                                                          (_%hd3679637056%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3679737052%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3679537059%_)
                                                          (_%__kont3973239733%_
                                                           _%hd3679637056%_
                                                           _%hd3670537390%_
                                                           _%hd3670237380%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3669636842%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3669636842%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3669636842%_)))
                                          (if (gx#stx-datum? _%hd3677337156%_)
                                              (let ((_%e3681036979%_
                                                     (gx#stx-e
                                                      _%hd3677337156%_)))
                                                (if (equal? _%e3681036979%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3677237159%_)
                                                        (let ((_%e3681336983%_
                                                               (gx#syntax-e
                                                                _%tl3677237159%_)))
                                                          (let ((_%tl3681136990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3681336983%_)))
                        (_%hd3681236987%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3681336983%_))))
                    (if (gx#stx-null? _%tl3681136990%_)
                        (_%__kont3973439735%_
                         _%hd3681236987%_
                         _%hd3670537390%_
                         _%hd3670237380%_)
                        (if (gx#stx-pair? _%tl3681136990%_)
                            (let ((_%e3683336893%_
                                   (gx#syntax-e _%tl3681136990%_)))
                              (let ((_%tl3683136900%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3683336893%_)))
                                    (_%hd3683236897%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3683336893%_))))
                                (if (gx#identifier? _%hd3683236897%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40188_|
                                         _%hd3683236897%_)
                                        (if (gx#stx-pair? _%tl3683136900%_)
                                            (let ((_%e3683636903%_
                                                   (gx#syntax-e
                                                    _%tl3683136900%_)))
                                              (let ((_%tl3683436910%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3683636903%_)))
                                                    (_%hd3683536907%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3683636903%_))))
                                                (if (gx#stx-null?
                                                     _%tl3683436910%_)
                                                    (_%__kont3973639737%_
                                                     _%hd3683536907%_
                                                     _%hd3681236987%_
                                                     _%hd3670537390%_
                                                     _%hd3670237380%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3669636842%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3669636842%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3669636842%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3669636842%_)))))
                            (let () (declare (not safe)) (_%g3669636842%_))))))
                (let () (declare (not safe)) (_%g3669636842%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3669636842%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3669636842%_)))))))
                              (if (gx#stx-null? _%tl3670437393%_)
                                  (_%__kont3973039731%_
                                   _%hd3670537390%_
                                   _%hd3670237380%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3669636842%_)))))))
                  (if (gx#stx-pair? _%tl3670437393%_)
                      (let ((_%e3677437152%_ (gx#syntax-e _%tl3670437393%_)))
                        (let ((_%tl3677237159%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3677437152%_)))
                              (_%hd3677337156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3677437152%_))))
                          (if (gx#stx-null? _%tl3677237159%_)
                              (_%__kont3972839729%_
                               _%hd3677337156%_
                               _%hd3670537390%_)
                              (if (gx#identifier? _%hd3677337156%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40187_|
                                       _%hd3677337156%_)
                                      (if (gx#stx-pair? _%tl3677237159%_)
                                          (let ((_%e3679737052%_
                                                 (gx#syntax-e
                                                  _%tl3677237159%_)))
                                            (let ((_%tl3679537059%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3679737052%_)))
                                                  (_%hd3679637056%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3679737052%_))))
                                              (if (gx#stx-null?
                                                   _%tl3679537059%_)
                                                  (_%__kont3973239733%_
                                                   _%hd3679637056%_
                                                   _%hd3670537390%_
                                                   _%hd3670237380%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3669636842%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3669636842%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3669636842%_)))
                                  (if (gx#stx-datum? _%hd3677337156%_)
                                      (let ((_%e3681036979%_
                                             (gx#stx-e _%hd3677337156%_)))
                                        (if (equal? _%e3681036979%_ '::)
                                            (if (gx#stx-pair? _%tl3677237159%_)
                                                (let ((_%e3681336983%_
                                                       (gx#syntax-e
                                                        _%tl3677237159%_)))
                                                  (let ((_%tl3681136990%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3681336983%_)))
                                                        (_%hd3681236987%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3681336983%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3681136990%_)
                                                        (_%__kont3973439735%_
                                                         _%hd3681236987%_
                                                         _%hd3670537390%_
                                                         _%hd3670237380%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3681136990%_)
                                                            (let ((_%e3683336893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3681136990%_)))
                      (let ((_%tl3683136900%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3683336893%_)))
                            (_%hd3683236897%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3683336893%_))))
                        (if (gx#identifier? _%hd3683236897%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g40188_|
                                 _%hd3683236897%_)
                                (if (gx#stx-pair? _%tl3683136900%_)
                                    (let ((_%e3683636903%_
                                           (gx#syntax-e _%tl3683136900%_)))
                                      (let ((_%tl3683436910%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3683636903%_)))
                                            (_%hd3683536907%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3683636903%_))))
                                        (if (gx#stx-null? _%tl3683436910%_)
                                            (_%__kont3973639737%_
                                             _%hd3683536907%_
                                             _%hd3681236987%_
                                             _%hd3670537390%_
                                             _%hd3670237380%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3669636842%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3669636842%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3669636842%_)))
                            (let () (declare (not safe)) (_%g3669636842%_)))))
                    (let () (declare (not safe)) (_%g3669636842%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3669636842%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3669636842%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3669636842%_)))))))
                      (if (gx#stx-null? _%tl3670437393%_)
                          (_%__kont3973039731%_
                           _%hd3670537390%_
                           _%hd3670237380%_)
                          (let () (declare (not safe)) (_%g3669636842%_)))))
              (if (gx#stx-pair? _%tl3670437393%_)
                  (let ((_%e3677437152%_ (gx#syntax-e _%tl3670437393%_)))
                    (let ((_%tl3677237159%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3677437152%_)))
                          (_%hd3677337156%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3677437152%_))))
                      (if (gx#stx-null? _%tl3677237159%_)
                          (_%__kont3972839729%_
                           _%hd3677337156%_
                           _%hd3670537390%_)
                          (if (gx#identifier? _%hd3677337156%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40187_|
                                   _%hd3677337156%_)
                                  (if (gx#stx-pair? _%tl3677237159%_)
                                      (let ((_%e3679737052%_
                                             (gx#syntax-e _%tl3677237159%_)))
                                        (let ((_%tl3679537059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3679737052%_)))
                                              (_%hd3679637056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3679737052%_))))
                                          (if (gx#stx-null? _%tl3679537059%_)
                                              (_%__kont3973239733%_
                                               _%hd3679637056%_
                                               _%hd3670537390%_
                                               _%hd3670237380%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3669636842%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3669636842%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3669636842%_)))
                              (if (gx#stx-datum? _%hd3677337156%_)
                                  (let ((_%e3681036979%_
                                         (gx#stx-e _%hd3677337156%_)))
                                    (if (equal? _%e3681036979%_ '::)
                                        (if (gx#stx-pair? _%tl3677237159%_)
                                            (let ((_%e3681336983%_
                                                   (gx#syntax-e
                                                    _%tl3677237159%_)))
                                              (let ((_%tl3681136990%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3681336983%_)))
                                                    (_%hd3681236987%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3681336983%_))))
                                                (if (gx#stx-null?
                                                     _%tl3681136990%_)
                                                    (_%__kont3973439735%_
                                                     _%hd3681236987%_
                                                     _%hd3670537390%_
                                                     _%hd3670237380%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3681136990%_)
                                                        (let ((_%e3683336893%_
                                                               (gx#syntax-e
                                                                _%tl3681136990%_)))
                                                          (let ((_%tl3683136900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3683336893%_)))
                        (_%hd3683236897%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3683336893%_))))
                    (if (gx#identifier? _%hd3683236897%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40188_|
                             _%hd3683236897%_)
                            (if (gx#stx-pair? _%tl3683136900%_)
                                (let ((_%e3683636903%_
                                       (gx#syntax-e _%tl3683136900%_)))
                                  (let ((_%tl3683436910%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3683636903%_)))
                                        (_%hd3683536907%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3683636903%_))))
                                    (if (gx#stx-null? _%tl3683436910%_)
                                        (_%__kont3973639737%_
                                         _%hd3683536907%_
                                         _%hd3681236987%_
                                         _%hd3670537390%_
                                         _%hd3670237380%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3669636842%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3669636842%_)))
                            (let () (declare (not safe)) (_%g3669636842%_)))
                        (let () (declare (not safe)) (_%g3669636842%_)))))
                (let () (declare (not safe)) (_%g3669636842%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3669636842%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3669636842%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3669636842%_)))))))
                  (if (gx#stx-null? _%tl3670437393%_)
                      (_%__kont3973039731%_ _%hd3670537390%_ _%hd3670237380%_)
                      (let () (declare (not safe)) (_%g3669636842%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3670437393%_)
                                              (let ((_%e3677437152%_
                                                     (gx#syntax-e
                                                      _%tl3670437393%_)))
                                                (let ((_%tl3677237159%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3677437152%_)))
                                                      (_%hd3677337156%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3677437152%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3677237159%_)
                                                      (_%__kont3972839729%_
                                                       _%hd3677337156%_
                                                       _%hd3670537390%_)
                                                      (if (gx#identifier?
                                                           _%hd3677337156%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g40187_|
                                                               _%hd3677337156%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3677237159%_)
                          (let ((_%e3679737052%_
                                 (gx#syntax-e _%tl3677237159%_)))
                            (let ((_%tl3679537059%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3679737052%_)))
                                  (_%hd3679637056%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3679737052%_))))
                              (if (gx#stx-null? _%tl3679537059%_)
                                  (_%__kont3973239733%_
                                   _%hd3679637056%_
                                   _%hd3670537390%_
                                   _%hd3670237380%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3669636842%_)))))
                          (let () (declare (not safe)) (_%g3669636842%_)))
                      (let () (declare (not safe)) (_%g3669636842%_)))
                  (if (gx#stx-datum? _%hd3677337156%_)
                      (let ((_%e3681036979%_ (gx#stx-e _%hd3677337156%_)))
                        (if (equal? _%e3681036979%_ '::)
                            (if (gx#stx-pair? _%tl3677237159%_)
                                (let ((_%e3681336983%_
                                       (gx#syntax-e _%tl3677237159%_)))
                                  (let ((_%tl3681136990%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3681336983%_)))
                                        (_%hd3681236987%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3681336983%_))))
                                    (if (gx#stx-null? _%tl3681136990%_)
                                        (_%__kont3973439735%_
                                         _%hd3681236987%_
                                         _%hd3670537390%_
                                         _%hd3670237380%_)
                                        (if (gx#stx-pair? _%tl3681136990%_)
                                            (let ((_%e3683336893%_
                                                   (gx#syntax-e
                                                    _%tl3681136990%_)))
                                              (let ((_%tl3683136900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3683336893%_)))
                                                    (_%hd3683236897%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3683336893%_))))
                                                (if (gx#identifier?
                                                     _%hd3683236897%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g40188_|
                                                         _%hd3683236897%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3683136900%_)
                                                            (let ((_%e3683636903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3683136900%_)))
                      (let ((_%tl3683436910%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3683636903%_)))
                            (_%hd3683536907%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3683636903%_))))
                        (if (gx#stx-null? _%tl3683436910%_)
                            (_%__kont3973639737%_
                             _%hd3683536907%_
                             _%hd3681236987%_
                             _%hd3670537390%_
                             _%hd3670237380%_)
                            (let () (declare (not safe)) (_%g3669636842%_)))))
                    (let () (declare (not safe)) (_%g3669636842%_)))
                (let () (declare (not safe)) (_%g3669636842%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3669636842%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3669636842%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3669636842%_)))
                            (let () (declare (not safe)) (_%g3669636842%_))))
                      (let () (declare (not safe)) (_%g3669636842%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3670437393%_)
                                                  (_%__kont3973039731%_
                                                   _%hd3670537390%_
                                                   _%hd3670237380%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3669636842%_)))))))
                                  (if (gx#stx-pair? _%tl3670437393%_)
                                      (let ((_%e3677437152%_
                                             (gx#syntax-e _%tl3670437393%_)))
                                        (let ((_%tl3677237159%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3677437152%_)))
                                              (_%hd3677337156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3677437152%_))))
                                          (if (gx#stx-null? _%tl3677237159%_)
                                              (_%__kont3972839729%_
                                               _%hd3677337156%_
                                               _%hd3670537390%_)
                                              (if (gx#identifier?
                                                   _%hd3677337156%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40187_|
                                                       _%hd3677337156%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3677237159%_)
                                                          (let ((_%e3679737052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3677237159%_)))
                    (let ((_%tl3679537059%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3679737052%_)))
                          (_%hd3679637056%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3679737052%_))))
                      (if (gx#stx-null? _%tl3679537059%_)
                          (_%__kont3973239733%_
                           _%hd3679637056%_
                           _%hd3670537390%_
                           _%hd3670237380%_)
                          (let () (declare (not safe)) (_%g3669636842%_)))))
                  (let () (declare (not safe)) (_%g3669636842%_)))
              (let () (declare (not safe)) (_%g3669636842%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3677337156%_)
                                                      (let ((_%e3681036979%_
                                                             (gx#stx-e
                                                              _%hd3677337156%_)))
                                                        (if (equal? _%e3681036979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3677237159%_)
                        (let ((_%e3681336983%_ (gx#syntax-e _%tl3677237159%_)))
                          (let ((_%tl3681136990%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3681336983%_)))
                                (_%hd3681236987%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3681336983%_))))
                            (if (gx#stx-null? _%tl3681136990%_)
                                (_%__kont3973439735%_
                                 _%hd3681236987%_
                                 _%hd3670537390%_
                                 _%hd3670237380%_)
                                (if (gx#stx-pair? _%tl3681136990%_)
                                    (let ((_%e3683336893%_
                                           (gx#syntax-e _%tl3681136990%_)))
                                      (let ((_%tl3683136900%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3683336893%_)))
                                            (_%hd3683236897%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3683336893%_))))
                                        (if (gx#identifier? _%hd3683236897%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g40188_|
                                                 _%hd3683236897%_)
                                                (if (gx#stx-pair?
                                                     _%tl3683136900%_)
                                                    (let ((_%e3683636903%_
                                                           (gx#syntax-e
                                                            _%tl3683136900%_)))
                                                      (let ((_%tl3683436910%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3683636903%_)))
                    (_%hd3683536907%_
                     (let () (declare (not safe)) (##car _%e3683636903%_))))
                (if (gx#stx-null? _%tl3683436910%_)
                    (_%__kont3973639737%_
                     _%hd3683536907%_
                     _%hd3681236987%_
                     _%hd3670537390%_
                     _%hd3670237380%_)
                    (let () (declare (not safe)) (_%g3669636842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3669636842%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3669636842%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3669636842%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3669636842%_))))))
                        (let () (declare (not safe)) (_%g3669636842%_)))
                    (let () (declare (not safe)) (_%g3669636842%_))))
              (let () (declare (not safe)) (_%g3669636842%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3670437393%_)
                                          (_%__kont3973039731%_
                                           _%hd3670537390%_
                                           _%hd3670237380%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3669636842%_)))))))
                          (let () (declare (not safe)) (_%g3669636842%_)))))
                  (let () (declare (not safe)) (_%g3669636842%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37485%_)
        (let* ((_%__stx3998339984%_ _%$stx37485%_)
               (_%g3749037524%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3998339984%_))))
          (let ((_%__kont3998639987%_
                 (lambda (_%L37628%_ _%L37630%_ _%L37631%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%L37631%_
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
                                       (cons _%L37630%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%L37628%_ '()))
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
                (_%__kont3998839989%_
                 (lambda (_%L37561%_ _%L37563%_ _%L37564%_)
                   (cons _%L37564%_
                         (cons _%L37563%_
                               (cons _%L37561%_
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
            (let ((_%__match4001640017%_
                   (lambda (_%e3749737588%_
                            _%hd3749637592%_
                            _%tl3749537595%_
                            _%e3750037598%_
                            _%hd3749937602%_
                            _%tl3749837605%_
                            _%e3750337608%_
                            _%hd3750237612%_
                            _%tl3750137615%_
                            _%e3750637618%_
                            _%hd3750537622%_
                            _%tl3750437625%_)
                     (let ((_%L37628%_ _%hd3750537622%_)
                           (_%L37630%_ _%hd3750237612%_)
                           (_%L37631%_ _%hd3749937602%_))
                       (if (gx#identifier? _%L37631%_)
                           (_%__kont3998639987%_
                            _%L37628%_
                            _%L37630%_
                            _%L37631%_)
                           (let () (declare (not safe)) (_%g3749037524%_)))))))
              (if (gx#stx-pair? _%__stx3998339984%_)
                  (let ((_%e3749737588%_ (gx#syntax-e _%__stx3998339984%_)))
                    (let ((_%tl3749537595%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3749737588%_)))
                          (_%hd3749637592%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3749737588%_))))
                      (if (gx#stx-pair? _%tl3749537595%_)
                          (let ((_%e3750037598%_
                                 (gx#syntax-e _%tl3749537595%_)))
                            (let ((_%tl3749837605%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3750037598%_)))
                                  (_%hd3749937602%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3750037598%_))))
                              (if (gx#stx-pair? _%tl3749837605%_)
                                  (let ((_%e3750337608%_
                                         (gx#syntax-e _%tl3749837605%_)))
                                    (let ((_%tl3750137615%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3750337608%_)))
                                          (_%hd3750237612%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3750337608%_))))
                                      (if (gx#stx-pair? _%tl3750137615%_)
                                          (let ((_%e3750637618%_
                                                 (gx#syntax-e
                                                  _%tl3750137615%_)))
                                            (let ((_%tl3750437625%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3750637618%_)))
                                                  (_%hd3750537622%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3750637618%_))))
                                              (if (gx#stx-null?
                                                   _%tl3750437625%_)
                                                  (_%__match4001640017%_
                                                   _%e3749737588%_
                                                   _%hd3749637592%_
                                                   _%tl3749537595%_
                                                   _%e3750037598%_
                                                   _%hd3749937602%_
                                                   _%tl3749837605%_
                                                   _%e3750337608%_
                                                   _%hd3750237612%_
                                                   _%tl3750137615%_
                                                   _%e3750637618%_
                                                   _%hd3750537622%_
                                                   _%tl3750437625%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3749037524%_)))))
                                          (if (gx#stx-null? _%tl3750137615%_)
                                              (_%__kont3998839989%_
                                               _%hd3750237612%_
                                               _%hd3749937602%_
                                               _%hd3749637592%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3749037524%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3749037524%_)))))
                          (let () (declare (not safe)) (_%g3749037524%_)))))
                  (let () (declare (not safe)) (_%g3749037524%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx37653%_)
        (let* ((_%g3765737672%_
                (lambda (_%g3765837668%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3765837668%_)))
               (_%g3765637715%_
                (lambda (_%g3765837676%_)
                  (if (gx#stx-pair? _%g3765837676%_)
                      (let ((_%e3766337679%_ (gx#syntax-e _%g3765837676%_)))
                        (let ((_%hd3766237683%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3766337679%_)))
                              (_%tl3766137686%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3766337679%_))))
                          (if (gx#stx-pair? _%tl3766137686%_)
                              (let ((_%e3766637689%_
                                     (gx#syntax-e _%tl3766137686%_)))
                                (let ((_%hd3766537693%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3766637689%_)))
                                      (_%tl3766437696%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3766637689%_))))
                                  ((lambda (_%L37699%_ _%L37701%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%L37701%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%L37699%_)
                                                       '()))))
                                   _%tl3766437696%_
                                   _%hd3766537693%_)))
                              (_%g3765737672%_ _%g3765837676%_))))
                      (_%g3765737672%_ _%g3765837676%_)))))
          (_%g3765637715%_ _%$stx37653%_))))))
