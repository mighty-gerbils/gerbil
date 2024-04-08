(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g39924_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39925_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39926_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39927_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39928_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39929_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39930_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39931_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39932_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39933_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39934_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39935_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39936_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39937_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39938_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39951_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39959_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39960_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39961_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39982_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39983_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39984_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39985_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39986_|
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
      (lambda _%$args35223%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35223%_)))
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
      (lambda (_%stx35220%_)
        (if (gx#identifier? _%stx35220%_)
            (let ((__tmp39923 (gx#syntax-local-value _%stx35220%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp39923))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx33520%_ _%match-stx33522%_)
        (letrec ((_%parse133524%_
                  (lambda (_%hd33883%_)
                    (let* ((_%__stx3771137712%_ _%hd33883%_)
                           (_%g3390934051%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3771137712%_))))
                      (let ((_%__kont3771437715%_
                             (lambda (_%L34983%_ _%L34985%_)
                               (let* ((_%__stx3763137632%_ _%L34983%_)
                                      (_%g3500235035%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3763137632%_))))
                                 (let ((_%__kont3763437635%_
                                        (lambda ()
                                          (cons '?: (cons _%L34985%_ '()))))
                                       (_%__kont3763637637%_
                                        (lambda (_%L35176%_)
                                          (cons '?:
                                                (cons _%L34985%_
                                                      (cons (_%parse133524%_
                                                             _%L35176%_)
                                                            '())))))
                                       (_%__kont3763837639%_
                                        (lambda (_%L35146%_)
                                          (cons '?:
                                                (cons _%L34985%_
                                                      (cons '=>:
                                                            (cons (_%parse133524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L35146%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3764037641%_
                                        (lambda (_%L35097%_ _%L35099%_)
                                          (cons '?:
                                                (cons _%L34985%_
                                                      (cons '::
                                                            (cons _%L35099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse133524%_ _%L35097%_) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3764237643%_
                                        (lambda ()
                                          (_%parse-error33531%_ _%hd33883%_))))
                                   (let ((_%g3499835187%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3763137632%_)
                                                (let ((_%e3500535166%_
                                                       (gx#syntax-e
                                                        _%__stx3763137632%_)))
                                                  (let ((_%tl3500735173%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3500535166%_)))
                                                        (_%hd3500635170%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3500535166%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3500735173%_)
                                                        (_%__kont3763637637%_
                                                         _%hd3500635170%_)
                                                        (if (gx#identifier?
                                                             _%hd3500635170%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39924_|
                         _%hd3500635170%_)
                        (if (gx#stx-pair? _%tl3500735173%_)
                            (let ((_%e3501235136%_
                                   (gx#syntax-e _%tl3500735173%_)))
                              (let ((_%tl3501435143%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3501235136%_)))
                                    (_%hd3501335140%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3501235136%_))))
                                (if (gx#stx-null? _%tl3501435143%_)
                                    (_%__kont3763837639%_ _%hd3501335140%_)
                                    (_%__kont3764237643%_))))
                            (_%__kont3764237643%_))
                        (_%__kont3764237643%_))
                    (if (gx#stx-datum? _%hd3500635170%_)
                        (let ((_%e3502035063%_ (gx#stx-e _%hd3500635170%_)))
                          (if (equal? _%e3502035063%_ '::)
                              (if (gx#stx-pair? _%tl3500735173%_)
                                  (let ((_%e3502135067%_
                                         (gx#syntax-e _%tl3500735173%_)))
                                    (let ((_%tl3502335074%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3502135067%_)))
                                          (_%hd3502235071%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3502135067%_))))
                                      (if (gx#stx-pair? _%tl3502335074%_)
                                          (let ((_%e3502435077%_
                                                 (gx#syntax-e
                                                  _%tl3502335074%_)))
                                            (let ((_%tl3502635084%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3502435077%_)))
                                                  (_%hd3502535081%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3502435077%_))))
                                              (if (gx#identifier?
                                                   _%hd3502535081%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39925_|
                                                       _%hd3502535081%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3502635084%_)
                                                          (let ((_%e3502735087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3502635084%_)))
                    (let ((_%tl3502935094%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3502735087%_)))
                          (_%hd3502835091%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3502735087%_))))
                      (if (gx#stx-null? _%tl3502935094%_)
                          (_%__kont3764037641%_
                           _%hd3502835091%_
                           _%hd3502235071%_)
                          (_%__kont3764237643%_))))
                  (_%__kont3764237643%_))
              (_%__kont3764237643%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3764237643%_))))
                                          (_%__kont3764237643%_))))
                                  (_%__kont3764237643%_))
                              (_%__kont3764237643%_)))
                        (_%__kont3764237643%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3764237643%_)))))
                                     (if (gx#stx-null? _%__stx3763137632%_)
                                         (_%__kont3763437635%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3499835187%_))))))))
                            (_%__kont3771637717%_
                             (lambda (_%L34888%_)
                               (let* ((_%__stx3761337614%_ _%L34888%_)
                                      (_%g3490034911%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3761337614%_))))
                                 (let ((_%__kont3761637617%_
                                        (lambda (_%L34939%_)
                                          (_%parse133524%_ _%L34939%_)))
                                       (_%__kont3761837619%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse133524%_
                                                 _%L34888%_)))))
                                   (if (gx#stx-pair? _%__stx3761337614%_)
                                       (let ((_%e3490334929%_
                                              (gx#syntax-e
                                               _%__stx3761337614%_)))
                                         (let ((_%tl3490534936%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3490334929%_)))
                                               (_%hd3490434933%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3490334929%_))))
                                           (if (gx#stx-null? _%tl3490534936%_)
                                               (_%__kont3761637617%_
                                                _%hd3490434933%_)
                                               (_%__kont3761837619%_))))
                                       (_%__kont3761837619%_))))))
                            (_%__kont3771837719%_
                             (lambda (_%L34803%_)
                               (let* ((_%__stx3759537596%_ _%L34803%_)
                                      (_%g3481534826%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3759537596%_))))
                                 (let ((_%__kont3759837599%_
                                        (lambda (_%L34854%_)
                                          (_%parse133524%_ _%L34854%_)))
                                       (_%__kont3760037601%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse133524%_
                                                 _%L34803%_)))))
                                   (if (gx#stx-pair? _%__stx3759537596%_)
                                       (let ((_%e3481834844%_
                                              (gx#syntax-e
                                               _%__stx3759537596%_)))
                                         (let ((_%tl3482034851%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3481834844%_)))
                                               (_%hd3481934848%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3481834844%_))))
                                           (if (gx#stx-null? _%tl3482034851%_)
                                               (_%__kont3759837599%_
                                                _%hd3481934848%_)
                                               (_%__kont3760037601%_))))
                                       (_%__kont3760037601%_))))))
                            (_%__kont3772037721%_
                             (lambda (_%L34773%_)
                               (cons 'not:
                                     (cons (_%parse133524%_ _%L34773%_) '()))))
                            (_%__kont3772237723%_
                             (lambda (_%L34729%_ _%L34731%_)
                               (cons 'cons:
                                     (cons (_%parse133524%_ _%L34731%_)
                                           (cons (_%parse133524%_ _%L34729%_)
                                                 '())))))
                            (_%__kont3772437725%_
                             (lambda (_%L34673%_ _%L34675%_ _%L34676%_)
                               (if (gx#stx-null? _%L34673%_)
                                   (cons 'cons:
                                         (cons (_%parse133524%_ _%L34676%_)
                                               (cons (_%parse133524%_
                                                      _%L34675%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse133524%_ _%L34676%_)
                                               (cons (_%parse133524%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%L34675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L34673%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3772637727%_
                             (lambda (_%L34625%_)
                               (_%parse-list33526%_ _%L34625%_)))
                            (_%__kont3772837729%_
                             (lambda (_%L34595%_)
                               (cons 'box:
                                     (cons (_%parse133524%_ _%L34595%_) '()))))
                            (_%__kont3773037731%_
                             (lambda (_%L34558%_)
                               (cons 'box:
                                     (cons (_%parse133524%_ _%L34558%_) '()))))
                            (_%__kont3773237733%_
                             (lambda (_%L34534%_)
                               (_%parse133524%_ _%L34534%_)))
                            (_%__kont3773437735%_
                             (lambda (_%L34496%_)
                               (cons 'values:
                                     (cons (_%parse-vector33527%_ _%L34496%_)
                                           '()))))
                            (_%__kont3773637737%_
                             (lambda (_%L34468%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33527%_ _%L34468%_)
                                           '()))))
                            (_%__kont3773837739%_
                             (lambda (_%L34429%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33527%_
                                            (foldr (lambda (_%g3444234445%_
                                                            _%g3444334448%_)
                                                     (cons _%g3444234445%_
                                                           _%g3444334448%_))
                                                   '()
                                                   _%L34429%_))
                                           '()))))
                            (_%__kont3774237743%_
                             (lambda (_%L34375%_ _%L34377%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _%L34377%_)
                                           (cons (_%parse-vector33527%_
                                                  _%L34375%_)
                                                 '())))))
                            (_%__kont3774437745%_
                             (lambda (_%L34345%_ _%L34347%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _%L34347%_)
                                           (cons (_%parse-class-body33529%_
                                                  _%L34345%_)
                                                 '())))))
                            (_%__kont3774637747%_
                             (lambda (_%L34305%_ _%L34307%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%L34307%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%L34305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3774837749%_
                             (lambda (_%L34265%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L34265%_) '()))))
                            (_%__kont3775037751%_
                             (lambda (_%L34225%_)
                               (_%parse-qq33530%_ _%L34225%_)))
                            (_%__kont3775237753%_
                             (lambda (_%L34181%_ _%L34183%_)
                               (cons 'apply:
                                     (cons _%L34183%_
                                           (cons (_%parse133524%_ _%L34181%_)
                                                 '())))))
                            (_%__kont3775437755%_
                             (lambda (_%L34129%_)
                               (_%parse133524%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%L34129%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd33883%_)
                                  (let ((_%$e34140%_
                                         (gx#stx-source _%hd33883%_)))
                                    (if _%$e34140%_
                                        _%$e34140%_
                                        (gx#stx-source _%stx33520%_))))))))
                            (_%__kont3775637757%_
                             (lambda (_%L34103%_) (cons 'any: '())))
                            (_%__kont3775837759%_
                             (lambda (_%L34087%_)
                               (cons 'var: (cons _%L34087%_ '()))))
                            (_%__kont3776037761%_
                             (lambda (_%L34069%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L34069%_) '()))))
                            (_%__kont3776237763%_
                             (lambda () (_%parse-error33531%_ _%hd33883%_))))
                        (let* ((_%g3390734080%_
                                (lambda ()
                                  (let ((_%L34069%_ _%__stx3771137712%_))
                                    (if (gx#stx-datum? _%L34069%_)
                                        (_%__kont3776037761%_ _%L34069%_)
                                        (_%__kont3776237763%_)))))
                               (_%g3390634096%_
                                (lambda ()
                                  (let ((_%L34087%_ _%__stx3771137712%_))
                                    (if (and (gx#identifier? _%L34087%_)
                                             (not (gx#ellipsis? _%L34087%_)))
                                        (_%__kont3775837759%_ _%L34087%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3390734080%_))))))
                               (_%g3390534112%_
                                (lambda ()
                                  (let ((_%L34103%_ _%__stx3771137712%_))
                                    (if (gx#underscore? _%L34103%_)
                                        (_%__kont3775637757%_ _%L34103%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3390634096%_))))))
                               (_%__match3803838039%_
                                (lambda (_%e3404034119%_
                                         _%hd3404134123%_
                                         _%tl3404234126%_)
                                  (let ((_%L34129%_ _%hd3404134123%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%L34129%_)
                                        (_%__kont3775437755%_ _%L34129%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3390534112%_))))))
                               (_%__match3797237973%_
                                (lambda (_%e3400834285%_
                                         _%hd3400934289%_
                                         _%tl3401034292%_
                                         _%e3401134295%_
                                         _%hd3401234299%_
                                         _%tl3401334302%_)
                                  (let ((_%L34305%_ _%hd3401234299%_)
                                        (_%L34307%_ _%hd3400934289%_))
                                    (if (and (gx#identifier? _%L34307%_)
                                             (or (gx#free-identifier=?
                                                  _%L34307%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%L34307%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%L34307%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3774637747%_
                                         _%L34305%_
                                         _%L34307%_)
                                        (if (gx#identifier? _%hd3400934289%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39926_|
                                                 _%hd3400934289%_)
                                                (_%__kont3774837749%_
                                                 _%hd3401234299%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g39927_|
                                                     _%hd3400934289%_)
                                                    (_%__kont3775037751%_
                                                     _%hd3401234299%_)
                                                    (_%__match3803838039%_
                                                     _%e3400834285%_
                                                     _%hd3400934289%_
                                                     _%tl3401034292%_)))
                                            (_%__match3803838039%_
                                             _%e3400834285%_
                                             _%hd3400934289%_
                                             _%tl3401034292%_))))))
                               (_%__match3795837959%_
                                (lambda (_%e3400334335%_
                                         _%hd3400434339%_
                                         _%tl3400534342%_)
                                  (let ((_%L34345%_ _%tl3400534342%_)
                                        (_%L34347%_ _%hd3400434339%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%L34347%_))
                                        (_%__kont3774437745%_
                                         _%L34345%_
                                         _%L34347%_)
                                        (if (gx#stx-pair? _%tl3400534342%_)
                                            (let ((_%e3401134295%_
                                                   (gx#syntax-e
                                                    _%tl3400534342%_)))
                                              (let ((_%tl3401334302%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3401134295%_)))
                                                    (_%hd3401234299%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3401134295%_))))
                                                (if (gx#stx-null?
                                                     _%tl3401334302%_)
                                                    (_%__match3797237973%_
                                                     _%e3400334335%_
                                                     _%hd3400434339%_
                                                     _%tl3400534342%_
                                                     _%e3401134295%_
                                                     _%hd3401234299%_
                                                     _%tl3401334302%_)
                                                    (if (gx#identifier?
                                                         _%hd3400434339%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g39926_|
                                                             _%hd3400434339%_)
                                                            (_%__match3803838039%_
                                                             _%e3400334335%_
                                                             _%hd3400434339%_
                                                             _%tl3400534342%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39927_|
                         _%hd3400434339%_)
                        (_%__match3803838039%_
                         _%e3400334335%_
                         _%hd3400434339%_
                         _%tl3400534342%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39928_|
                             _%hd3400434339%_)
                            (if (gx#stx-pair? _%tl3401334302%_)
                                (let ((_%e3403634171%_
                                       (gx#syntax-e _%tl3401334302%_)))
                                  (let ((_%tl3403834178%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3403634171%_)))
                                        (_%hd3403734175%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3403634171%_))))
                                    (if (gx#stx-null? _%tl3403834178%_)
                                        (_%__kont3775237753%_
                                         _%hd3403734175%_
                                         _%hd3401234299%_)
                                        (_%__match3803838039%_
                                         _%e3400334335%_
                                         _%hd3400434339%_
                                         _%tl3400534342%_))))
                                (_%__match3803838039%_
                                 _%e3400334335%_
                                 _%hd3400434339%_
                                 _%tl3400534342%_))
                            (_%__match3803838039%_
                             _%e3400334335%_
                             _%hd3400434339%_
                             _%tl3400534342%_))))
                (_%__match3803838039%_
                 _%e3400334335%_
                 _%hd3400434339%_
                 _%tl3400534342%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3803838039%_
                                             _%e3400334335%_
                                             _%hd3400434339%_
                                             _%tl3400534342%_))))))
                               (_%__match3795237953%_
                                (lambda (_%e3399834365%_
                                         _%hd3399934369%_
                                         _%tl3400034372%_)
                                  (let ((_%L34375%_ _%tl3400034372%_)
                                        (_%L34377%_ _%hd3399934369%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%L34377%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3774237743%_
                                         _%L34375%_
                                         _%L34377%_)
                                        (_%__match3795837959%_
                                         _%e3399834365%_
                                         _%hd3399934369%_
                                         _%tl3400034372%_)))))
                               (_%__match3794637947%_
                                (lambda (_%e3398634395%_
                                         _%__splice3774037741%_
                                         _%target3398734399%_
                                         _%tl3398934402%_)
                                  (letrec ((_%loop3399034405%_
                                            (lambda (_%hd3398834409%_
                                                     _%body3399434412%_)
                                              (if (gx#stx-pair?
                                                   _%hd3398834409%_)
                                                  (let ((_%e3399134415%_
                                                         (gx#syntax-e
                                                          _%hd3398834409%_)))
                                                    (let ((_%lp-tl3399334422%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3399134415%_)))
                                                          (_%lp-hd3399234419%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3399134415%_))))
                                                      (_%loop3399034405%_
                                                       _%lp-tl3399334422%_
                                                       (cons _%lp-hd3399234419%_
                                                             _%body3399434412%_))))
                                                  (let ((_%body3399534425%_
                                                         (reverse _%body3399434412%_)))
                                                    (_%__kont3773837739%_
                                                     _%body3399534425%_))))))
                                    (_%loop3399034405%_
                                     _%target3398734399%_
                                     '()))))
                               (_%g3389734451%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3771137712%_)
                                      (let ((_%e3398634395%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3771137712%_))))
                                        (if (gx#stx-pair/null? _%e3398634395%_)
                                            (let ((_%__splice3774037741%_
                                                   (gx#syntax-split-splice
                                                    _%e3398634395%_
                                                    '0)))
                                              (let ((_%tl3398934402%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3774037741%_
                                                        '1)))
                                                    (_%target3398734399%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3774037741%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3398934402%_)
                                                    (_%__match3794637947%_
                                                     _%e3398634395%_
                                                     _%__splice3774037741%_
                                                     _%target3398734399%_
                                                     _%tl3398934402%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3390534112%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3390534112%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3390534112%_)))))
                               (_%g3389334568%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3771137712%_)
                                      (let ((_%e3396934554%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3771137712%_))))
                                        (_%__kont3773037731%_ _%e3396934554%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3389734451%_)))))
                               (_%__match3780037801%_
                                (lambda (_%e3392434793%_
                                         _%hd3392534797%_
                                         _%tl3392634800%_)
                                  (let ((_%L34803%_ _%tl3392634800%_))
                                    (if (gx#stx-list? _%L34803%_)
                                        (_%__kont3771837719%_ _%L34803%_)
                                        (_%__match3795237953%_
                                         _%e3392434793%_
                                         _%hd3392534797%_
                                         _%tl3392634800%_)))))
                               (_%__match3779037791%_
                                (lambda (_%e3392034878%_
                                         _%hd3392134882%_
                                         _%tl3392234885%_)
                                  (let ((_%L34888%_ _%tl3392234885%_))
                                    (if (gx#stx-list? _%L34888%_)
                                        (_%__kont3771637717%_ _%L34888%_)
                                        (_%__match3795237953%_
                                         _%e3392034878%_
                                         _%hd3392134882%_
                                         _%tl3392234885%_))))))
                          (if (gx#stx-pair? _%__stx3771137712%_)
                              (let ((_%e3391334963%_
                                     (gx#syntax-e _%__stx3771137712%_)))
                                (let ((_%tl3391534970%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3391334963%_)))
                                      (_%hd3391434967%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3391334963%_))))
                                  (if (gx#identifier? _%hd3391434967%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39929_|
                                           _%hd3391434967%_)
                                          (if (gx#stx-pair? _%tl3391534970%_)
                                              (let ((_%e3391634973%_
                                                     (gx#syntax-e
                                                      _%tl3391534970%_)))
                                                (let ((_%tl3391834980%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3391634973%_)))
                                                      (_%hd3391734977%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3391634973%_))))
                                                  (_%__kont3771437715%_
                                                   _%tl3391834980%_
                                                   _%hd3391734977%_)))
                                              (_%__match3795237953%_
                                               _%e3391334963%_
                                               _%hd3391434967%_
                                               _%tl3391534970%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39930_|
                                               _%hd3391434967%_)
                                              (_%__match3779037791%_
                                               _%e3391334963%_
                                               _%hd3391434967%_
                                               _%tl3391534970%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39931_|
                                                   _%hd3391434967%_)
                                                  (_%__match3780037801%_
                                                   _%e3391334963%_
                                                   _%hd3391434967%_
                                                   _%tl3391534970%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39932_|
                                                       _%hd3391434967%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3391534970%_)
                                                          (let ((_%e3393134763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3391534970%_)))
                    (let ((_%tl3393334770%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3393134763%_)))
                          (_%hd3393234767%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3393134763%_))))
                      (if (gx#stx-null? _%tl3393334770%_)
                          (_%__kont3772037721%_ _%hd3393234767%_)
                          (_%__match3795237953%_
                           _%e3391334963%_
                           _%hd3391434967%_
                           _%tl3391534970%_))))
                  (_%__match3795237953%_
                   _%e3391334963%_
                   _%hd3391434967%_
                   _%tl3391534970%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g39933_|
                   _%hd3391434967%_)
                  (if (gx#stx-pair? _%tl3391534970%_)
                      (let ((_%e3393934709%_ (gx#syntax-e _%tl3391534970%_)))
                        (let ((_%tl3394134716%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3393934709%_)))
                              (_%hd3394034713%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3393934709%_))))
                          (if (gx#stx-pair? _%tl3394134716%_)
                              (let ((_%e3394234719%_
                                     (gx#syntax-e _%tl3394134716%_)))
                                (let ((_%tl3394434726%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3394234719%_)))
                                      (_%hd3394334723%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3394234719%_))))
                                  (if (gx#stx-null? _%tl3394434726%_)
                                      (_%__kont3772237723%_
                                       _%hd3394334723%_
                                       _%hd3394034713%_)
                                      (_%__match3795237953%_
                                       _%e3391334963%_
                                       _%hd3391434967%_
                                       _%tl3391534970%_))))
                              (_%__match3795237953%_
                               _%e3391334963%_
                               _%hd3391434967%_
                               _%tl3391534970%_))))
                      (_%__match3795237953%_
                       _%e3391334963%_
                       _%hd3391434967%_
                       _%tl3391534970%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g39934_|
                       _%hd3391434967%_)
                      (if (gx#stx-pair? _%tl3391534970%_)
                          (let ((_%e3395134653%_
                                 (gx#syntax-e _%tl3391534970%_)))
                            (let ((_%tl3395334660%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3395134653%_)))
                                  (_%hd3395234657%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3395134653%_))))
                              (if (gx#stx-pair? _%tl3395334660%_)
                                  (let ((_%e3395434663%_
                                         (gx#syntax-e _%tl3395334660%_)))
                                    (let ((_%tl3395634670%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3395434663%_)))
                                          (_%hd3395534667%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3395434663%_))))
                                      (_%__kont3772437725%_
                                       _%tl3395634670%_
                                       _%hd3395534667%_
                                       _%hd3395234657%_)))
                                  (_%__match3795237953%_
                                   _%e3391334963%_
                                   _%hd3391434967%_
                                   _%tl3391534970%_))))
                          (_%__match3795237953%_
                           _%e3391334963%_
                           _%hd3391434967%_
                           _%tl3391534970%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g39935_|
                           _%hd3391434967%_)
                          (_%__kont3772637727%_ _%tl3391534970%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39936_|
                               _%hd3391434967%_)
                              (if (gx#stx-pair? _%tl3391534970%_)
                                  (let ((_%e3396534585%_
                                         (gx#syntax-e _%tl3391534970%_)))
                                    (let ((_%tl3396734592%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3396534585%_)))
                                          (_%hd3396634589%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3396534585%_))))
                                      (if (gx#stx-null? _%tl3396734592%_)
                                          (_%__kont3772837729%_
                                           _%hd3396634589%_)
                                          (_%__match3795237953%_
                                           _%e3391334963%_
                                           _%hd3391434967%_
                                           _%tl3391534970%_))))
                                  (_%__match3795237953%_
                                   _%e3391334963%_
                                   _%hd3391434967%_
                                   _%tl3391534970%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39937_|
                                   _%hd3391434967%_)
                                  (if (gx#stx-pair? _%tl3391534970%_)
                                      (let ((_%e3397434524%_
                                             (gx#syntax-e _%tl3391534970%_)))
                                        (let ((_%tl3397634531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3397434524%_)))
                                              (_%hd3397534528%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3397434524%_))))
                                          (if (gx#stx-null? _%tl3397634531%_)
                                              (_%__kont3773237733%_
                                               _%hd3397534528%_)
                                              (_%__kont3773437735%_
                                               _%tl3391534970%_))))
                                      (_%__kont3773437735%_ _%tl3391534970%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39938_|
                                       _%hd3391434967%_)
                                      (_%__kont3773637737%_ _%tl3391534970%_)
                                      (_%__match3795237953%_
                                       _%e3391334963%_
                                       _%hd3391434967%_
                                       _%tl3391534970%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3795237953%_
                                       _%e3391334963%_
                                       _%hd3391434967%_
                                       _%tl3391534970%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3389334568%_))))))))
                 (_%parse-list33526%_
                  (lambda (_%body33706%_)
                    (let* ((_%__stx3804138042%_ _%body33706%_)
                           (_%g3371233741%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3804138042%_))))
                      (let ((_%__kont3804438045%_
                             (lambda (_%L33865%_)
                               (_%parse133524%_ _%L33865%_)))
                            (_%__kont3804638047%_
                             (lambda (_%L33817%_ _%L33819%_ _%L33820%_)
                               (cons 'splice:
                                     (cons (_%parse133524%_ _%L33820%_)
                                           (cons (_%parse-list33526%_
                                                  _%L33817%_)
                                                 '())))))
                            (_%__kont3804838049%_
                             (lambda (_%L33775%_ _%L33777%_)
                               (cons 'cons:
                                     (cons (_%parse133524%_ _%L33777%_)
                                           (cons (_%parse-list33526%_
                                                  _%L33775%_)
                                                 '())))))
                            (_%__kont3805038051%_
                             (lambda ()
                               (if (gx#stx-null? _%body33706%_)
                                   (cons 'null: '())
                                   (if (not (gx#stx-pair? _%body33706%_))
                                       (_%parse133524%_ _%body33706%_)
                                       (_%parse-error33531%_
                                        _%body33706%_))))))
                        (let* ((_%__match3809038091%_
                                (lambda (_%e3373333765%_
                                         _%hd3373433769%_
                                         _%tl3373533772%_)
                                  (let ((_%L33775%_ _%tl3373533772%_)
                                        (_%L33777%_ _%hd3373433769%_))
                                    (if (not (gx#ellipsis? _%L33777%_))
                                        (_%__kont3804838049%_
                                         _%L33775%_
                                         _%L33777%_)
                                        (_%__kont3805038051%_)))))
                               (_%__match3808438085%_
                                (lambda (_%e3372533797%_
                                         _%hd3372633801%_
                                         _%tl3372733804%_
                                         _%e3372833807%_
                                         _%hd3372933811%_
                                         _%tl3373033814%_)
                                  (let ((_%L33817%_ _%tl3373033814%_)
                                        (_%L33819%_ _%hd3372933811%_)
                                        (_%L33820%_ _%hd3372633801%_))
                                    (if (gx#ellipsis? _%L33819%_)
                                        (_%__kont3804638047%_
                                         _%L33817%_
                                         _%L33819%_
                                         _%L33820%_)
                                        (_%__match3809038091%_
                                         _%e3372533797%_
                                         _%hd3372633801%_
                                         _%tl3372733804%_))))))
                          (if (gx#stx-pair? _%__stx3804138042%_)
                              (let ((_%e3371533841%_
                                     (gx#syntax-e _%__stx3804138042%_)))
                                (let ((_%tl3371733848%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3371533841%_)))
                                      (_%hd3371633845%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3371533841%_))))
                                  (if (gx#stx-datum? _%hd3371633845%_)
                                      (let ((_%e3371833851%_
                                             (gx#stx-e _%hd3371633845%_)))
                                        (if (equal? _%e3371833851%_ '::)
                                            (if (gx#stx-pair? _%tl3371733848%_)
                                                (let ((_%e3371933855%_
                                                       (gx#syntax-e
                                                        _%tl3371733848%_)))
                                                  (let ((_%tl3372133862%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3371933855%_)))
                                                        (_%hd3372033859%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3371933855%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3372133862%_)
                                                        (_%__kont3804438045%_
                                                         _%hd3372033859%_)
                                                        (_%__match3808438085%_
                                                         _%e3371533841%_
                                                         _%hd3371633845%_
                                                         _%tl3371733848%_
                                                         _%e3371933855%_
                                                         _%hd3372033859%_
                                                         _%tl3372133862%_))))
                                                (_%__match3809038091%_
                                                 _%e3371533841%_
                                                 _%hd3371633845%_
                                                 _%tl3371733848%_))
                                            (if (gx#stx-pair? _%tl3371733848%_)
                                                (let ((_%e3372833807%_
                                                       (gx#syntax-e
                                                        _%tl3371733848%_)))
                                                  (let ((_%tl3373033814%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3372833807%_)))
                                                        (_%hd3372933811%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3372833807%_))))
                                                    (_%__match3808438085%_
                                                     _%e3371533841%_
                                                     _%hd3371633845%_
                                                     _%tl3371733848%_
                                                     _%e3372833807%_
                                                     _%hd3372933811%_
                                                     _%tl3373033814%_)))
                                                (_%__match3809038091%_
                                                 _%e3371533841%_
                                                 _%hd3371633845%_
                                                 _%tl3371733848%_))))
                                      (if (gx#stx-pair? _%tl3371733848%_)
                                          (let ((_%e3372833807%_
                                                 (gx#syntax-e
                                                  _%tl3371733848%_)))
                                            (let ((_%tl3373033814%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3372833807%_)))
                                                  (_%hd3372933811%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3372833807%_))))
                                              (_%__match3808438085%_
                                               _%e3371533841%_
                                               _%hd3371633845%_
                                               _%tl3371733848%_
                                               _%e3372833807%_
                                               _%hd3372933811%_
                                               _%tl3373033814%_)))
                                          (_%__match3809038091%_
                                           _%e3371533841%_
                                           _%hd3371633845%_
                                           _%tl3371733848%_)))))
                              (_%__kont3805038051%_)))))))
                 (_%parse-vector33527%_
                  (lambda (_%body33703%_)
                    (if (_%simple-vector?33528%_ _%body33703%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse133524%_ _%body33703%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list33526%_ _%body33703%_)
                                    '())))))
                 (_%simple-vector?33528%_
                  (lambda (_%body33640%_)
                    (let* ((_%__stx3809338094%_ _%body33640%_)
                           (_%g3364433656%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3809338094%_))))
                      (let ((_%__kont3809638097%_
                             (lambda (_%L33684%_ _%L33686%_)
                               (if (not (gx#ellipsis? _%L33686%_))
                                   (_%simple-vector?33528%_ _%L33684%_)
                                   '#f)))
                            (_%__kont3809838099%_
                             (lambda () (gx#stx-null? _%body33640%_))))
                        (if (gx#stx-pair? _%__stx3809338094%_)
                            (let ((_%e3364833674%_
                                   (gx#syntax-e _%__stx3809338094%_)))
                              (let ((_%tl3365033681%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3364833674%_)))
                                    (_%hd3364933678%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3364833674%_))))
                                (_%__kont3809638097%_
                                 _%tl3365033681%_
                                 _%hd3364933678%_)))
                            (_%__kont3809838099%_))))))
                 (_%parse-class-body33529%_
                  (lambda (_%body33549%_)
                    (let _%recur33552%_ ((_%rest33555%_ _%body33549%_))
                      (let* ((_%__stx3810938110%_ _%rest33555%_)
                             (_%g3355933575%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3810938110%_))))
                        (let ((_%__kont3811238113%_
                               (lambda (_%L33613%_ _%L33615%_ _%L33616%_)
                                 (cons _%L33616%_
                                       (cons (_%parse133524%_ _%L33615%_)
                                             (_%recur33552%_ _%L33613%_)))))
                              (_%__kont3811438115%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest33555%_)
                                     '()
                                     (_%parse-error33531%_ _%rest33555%_)))))
                          (let ((_%__match3812838129%_
                                 (lambda (_%e3356433593%_
                                          _%hd3356533597%_
                                          _%tl3356633600%_
                                          _%e3356733603%_
                                          _%hd3356833607%_
                                          _%tl3356933610%_)
                                   (let ((_%L33613%_ _%tl3356933610%_)
                                         (_%L33615%_ _%hd3356833607%_)
                                         (_%L33616%_ _%hd3356533597%_))
                                     (if (gx#stx-keyword? _%L33616%_)
                                         (_%__kont3811238113%_
                                          _%L33613%_
                                          _%L33615%_
                                          _%L33616%_)
                                         (_%__kont3811438115%_))))))
                            (if (gx#stx-pair? _%__stx3810938110%_)
                                (let ((_%e3356433593%_
                                       (gx#syntax-e _%__stx3810938110%_)))
                                  (let ((_%tl3356633600%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3356433593%_)))
                                        (_%hd3356533597%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3356433593%_))))
                                    (if (gx#stx-pair? _%tl3356633600%_)
                                        (let ((_%e3356733603%_
                                               (gx#syntax-e _%tl3356633600%_)))
                                          (let ((_%tl3356933610%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3356733603%_)))
                                                (_%hd3356833607%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3356733603%_))))
                                            (_%__match3812838129%_
                                             _%e3356433593%_
                                             _%hd3356533597%_
                                             _%tl3356633600%_
                                             _%e3356733603%_
                                             _%hd3356833607%_
                                             _%tl3356933610%_)))
                                        (_%__kont3811438115%_))))
                                (_%__kont3811438115%_))))))))
                 (_%parse-qq33530%_
                  (lambda (_%hd33536%_)
                    (let ((_%g3353833545%_
                           (lambda (_%g3353933541%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3353933541%_))))
                      (_%g3353833545%_ _%hd33536%_))))
                 (_%parse-error33531%_
                  (lambda (_%hd33533%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx33522%_
                               (cons _%match-stx33522%_
                                     (cons _%stx33520%_
                                           (cons _%hd33533%_ '())))
                               (cons _%stx33520%_ (cons _%hd33533%_ '())))))))
          (_%parse133524%_ _%stx33520%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35210%_)
        (let ((_%match-stx35213%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35210%_
           _%match-stx35213%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g39940_
        (let ((_g39939_ (let () (declare (not safe)) (##length _g39940_))))
          (cond ((let () (declare (not safe)) (##fx= _g39939_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g39940_))
                ((let () (declare (not safe)) (##fx= _g39939_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g39940_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g39940_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx33505%_)
        (let ((__tmp39941
               (lambda (_%E33508%_)
                 (with-exception-handler
                  (let ((_%E!33511%_ (current-exception-handler)))
                    (lambda (_%e33514%_)
                      (if (syntax-error? _%e33514%_)
                          (_%E33508%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!33511%_ _%e33514%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx33505%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp39941))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32240%_)
        (letrec ((_%loop32243%_
                  (lambda (_%ptree32530%_ _%vars32532%_ _%K32533%_)
                    (let* ((_%__stx3822738228%_ _%ptree32530%_)
                           (_%g3254632656%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3822738228%_))))
                      (let ((_%__kont3823038231%_
                             (lambda (_%L33286%_)
                               (let* ((_%__stx3814738148%_ _%L33286%_)
                                      (_%g3330333337%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3814738148%_))))
                                 (let ((_%__kont3815038151%_
                                        (lambda (_%L33486%_)
                                          (_%loop32243%_
                                           _%L33486%_
                                           _%vars32532%_
                                           _%K32533%_)))
                                       (_%__kont3815238153%_
                                        (lambda (_%L33455%_)
                                          (_%loop32243%_
                                           _%L33455%_
                                           _%vars32532%_
                                           _%K32533%_)))
                                       (_%__kont3815438155%_
                                        (lambda (_%L33403%_)
                                          (_%loop32243%_
                                           _%L33403%_
                                           _%vars32532%_
                                           _%K32533%_)))
                                       (_%__kont3815638157%_
                                        (lambda ()
                                          (_%K32533%_ _%vars32532%_))))
                                   (if (gx#stx-pair? _%__stx3814738148%_)
                                       (let ((_%e3330633476%_
                                              (gx#syntax-e
                                               _%__stx3814738148%_)))
                                         (let ((_%tl3330833483%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3330633476%_)))
                                               (_%hd3330733480%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3330633476%_))))
                                           (if (gx#stx-null? _%tl3330833483%_)
                                               (_%__kont3815038151%_
                                                _%hd3330733480%_)
                                               (if (gx#stx-datum?
                                                    _%hd3330733480%_)
                                                   (let ((_%e3331333441%_
                                                          (gx#stx-e
                                                           _%hd3330733480%_)))
                                                     (if (equal? _%e3331333441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3330833483%_)
                     (let ((_%e3331433445%_ (gx#syntax-e _%tl3330833483%_)))
                       (let ((_%tl3331633452%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3331433445%_)))
                             (_%hd3331533449%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3331433445%_))))
                         (if (gx#stx-null? _%tl3331633452%_)
                             (_%__kont3815238153%_ _%hd3331533449%_)
                             (_%__kont3815638157%_))))
                     (_%__kont3815638157%_))
                 (if (equal? _%e3331333441%_ '::)
                     (if (gx#stx-pair? _%tl3330833483%_)
                         (let ((_%e3332233369%_
                                (gx#syntax-e _%tl3330833483%_)))
                           (let ((_%tl3332433376%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3332233369%_)))
                                 (_%hd3332333373%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3332233369%_))))
                             (if (gx#stx-pair? _%tl3332433376%_)
                                 (let ((_%e3332533379%_
                                        (gx#syntax-e _%tl3332433376%_)))
                                   (let ((_%tl3332733386%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3332533379%_)))
                                         (_%hd3332633383%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3332533379%_))))
                                     (if (gx#stx-datum? _%hd3332633383%_)
                                         (let ((_%e3332833389%_
                                                (gx#stx-e _%hd3332633383%_)))
                                           (if (equal? _%e3332833389%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3332733386%_)
                                                   (let ((_%e3332933393%_
                                                          (gx#syntax-e
                                                           _%tl3332733386%_)))
                                                     (let ((_%tl3333133400%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3332933393%_)))
                                                           (_%hd3333033397%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3332933393%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3333133400%_)
                                                           (_%__kont3815438155%_
                                                            _%hd3333033397%_)
                                                           (_%__kont3815638157%_))))
                                                   (_%__kont3815638157%_))
                                               (_%__kont3815638157%_)))
                                         (_%__kont3815638157%_))))
                                 (_%__kont3815638157%_))))
                         (_%__kont3815638157%_))
                     (_%__kont3815638157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3815638157%_)))))
                                       (_%__kont3815638157%_))))))
                            (_%__kont3823238233%_
                             (lambda (_%L33173%_ _%L33175%_)
                               (let* ((_%__stx3813138132%_ _%L33173%_)
                                      (_%g3319133203%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3813138132%_))))
                                 (let ((_%__kont3813438135%_
                                        (lambda (_%L33231%_ _%L33233%_)
                                          (_%loop32243%_
                                           _%L33233%_
                                           _%vars32532%_
                                           (lambda (_%g3324533247%_)
                                             (_%loop32243%_
                                              (cons _%L33175%_ _%L33231%_)
                                              _%g3324533247%_
                                              _%K32533%_)))))
                                       (_%__kont3813638137%_
                                        (lambda ()
                                          (_%K32533%_ _%vars32532%_))))
                                   (if (gx#stx-pair? _%__stx3813138132%_)
                                       (let ((_%e3319533221%_
                                              (gx#syntax-e
                                               _%__stx3813138132%_)))
                                         (let ((_%tl3319733228%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3319533221%_)))
                                               (_%hd3319633225%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3319533221%_))))
                                           (_%__kont3813438135%_
                                            _%tl3319733228%_
                                            _%hd3319633225%_)))
                                       (_%__kont3813638137%_))))))
                            (_%__kont3823438235%_
                             (lambda (_%L33142%_)
                               (_%loop32243%_
                                _%L33142%_
                                _%vars32532%_
                                _%K32533%_)))
                            (_%__kont3823638237%_
                             (lambda (_%L33088%_ _%L33090%_)
                               (_%loop32243%_
                                _%L33090%_
                                _%vars32532%_
                                (lambda (_%g3310533107%_)
                                  (_%loop32243%_
                                   _%L33088%_
                                   _%g3310533107%_
                                   _%K32533%_)))))
                            (_%__kont3823838239%_
                             (lambda (_%L33024%_ _%L33026%_)
                               (_%loop32243%_
                                _%L33026%_
                                _%vars32532%_
                                (lambda (_%g3304133043%_)
                                  (_%loop32243%_
                                   _%L33024%_
                                   _%g3304133043%_
                                   _%K32533%_)))))
                            (_%__kont3824038241%_
                             (lambda (_%L32969%_)
                               (_%loop32243%_
                                _%L32969%_
                                _%vars32532%_
                                _%K32533%_)))
                            (_%__kont3824238243%_
                             (lambda (_%L32919%_ _%L32921%_)
                               (_%loop-vector32245%_
                                _%L32919%_
                                _%vars32532%_
                                _%K32533%_)))
                            (_%__kont3824438245%_
                             (lambda (_%L32876%_)
                               (_%loop-vector32245%_
                                _%L32876%_
                                _%vars32532%_
                                _%K32533%_)))
                            (_%__kont3824638247%_
                             (lambda (_%L32819%_)
                               (_%loop-class-list32247%_
                                _%L32819%_
                                _%vars32532%_
                                _%K32533%_)))
                            (_%__kont3824838249%_
                             (lambda (_%L32760%_ _%L32762%_)
                               (_%loop32243%_
                                _%L32760%_
                                _%vars32532%_
                                _%K32533%_)))
                            (_%__kont3825038251%_
                             (lambda (_%L32698%_)
                               (if (find (lambda (_%g3271332715%_)
                                           (gx#bound-identifier=?
                                            _%g3271332715%_
                                            _%L32698%_))
                                         _%vars32532%_)
                                   (_%K32533%_ _%vars32532%_)
                                   (_%K32533%_
                                    (cons _%L32698%_ _%vars32532%_)))))
                            (_%__kont3825238253%_
                             (lambda () (_%K32533%_ _%vars32532%_))))
                        (let* ((_%__match3838438385%_
                                (lambda (_%e3260332899%_
                                         _%hd3260432903%_
                                         _%tl3260532906%_
                                         _%e3260632909%_
                                         _%hd3260732913%_
                                         _%tl3260832916%_)
                                  (let ((_%L32919%_ _%hd3260732913%_)
                                        (_%L32921%_ _%hd3260432903%_))
                                    (if (or (gx#stx-eq? 'values: _%L32921%_)
                                            (gx#stx-eq? 'vector: _%L32921%_))
                                        (_%__kont3824238243%_
                                         _%L32919%_
                                         _%L32921%_)
                                        (if (gx#stx-datum? _%hd3260432903%_)
                                            (let ((_%e3261332852%_
                                                   (gx#stx-e
                                                    _%hd3260432903%_)))
                                              (if (equal? _%e3261332852%_
                                                          'struct:)
                                                  (_%__kont3825238253%_)
                                                  (if (equal? _%e3261332852%_
                                                              'class:)
                                                      (_%__kont3825238253%_)
                                                      (if (equal? _%e3261332852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3825238253%_)
                  (if (equal? _%e3261332852%_ 'var:)
                      (_%__kont3825038251%_ _%hd3260732913%_)
                      (_%__kont3825238253%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3825238253%_))))))
                               (_%__match3827838279%_
                                (lambda (_%e3255833163%_
                                         _%hd3255933167%_
                                         _%tl3256033170%_)
                                  (let ((_%L33173%_ _%tl3256033170%_)
                                        (_%L33175%_ _%hd3255933167%_))
                                    (if (or (gx#stx-eq? 'and: _%L33175%_)
                                            (gx#stx-eq? 'or: _%L33175%_))
                                        (_%__kont3823238233%_
                                         _%L33173%_
                                         _%L33175%_)
                                        (if (gx#stx-datum? _%hd3255933167%_)
                                            (let ((_%e3256533128%_
                                                   (gx#stx-e
                                                    _%hd3255933167%_)))
                                              (if (equal? _%e3256533128%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3256033170%_)
                                                      (let ((_%e3256633132%_
                                                             (gx#syntax-e
                                                              _%tl3256033170%_)))
                                                        (let ((_%tl3256833139%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3256633132%_)))
                      (_%hd3256733136%_
                       (let () (declare (not safe)) (##car _%e3256633132%_))))
                  (if (gx#stx-null? _%tl3256833139%_)
                      (_%__kont3823438235%_ _%hd3256733136%_)
                      (_%__kont3825238253%_))))
              (_%__kont3825238253%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3256533128%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3256033170%_)
                                                          (let ((_%e3257533068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3256033170%_)))
                    (let ((_%tl3257733075%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3257533068%_)))
                          (_%hd3257633072%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3257533068%_))))
                      (if (gx#stx-pair? _%tl3257733075%_)
                          (let ((_%e3257833078%_
                                 (gx#syntax-e _%tl3257733075%_)))
                            (let ((_%tl3258033085%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3257833078%_)))
                                  (_%hd3257933082%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3257833078%_))))
                              (if (gx#stx-null? _%tl3258033085%_)
                                  (_%__kont3823638237%_
                                   _%hd3257933082%_
                                   _%hd3257633072%_)
                                  (_%__kont3825238253%_))))
                          (if (gx#stx-null? _%tl3257733075%_)
                              (_%__match3838438385%_
                               _%e3255833163%_
                               _%hd3255933167%_
                               _%tl3256033170%_
                               _%e3257533068%_
                               _%hd3257633072%_
                               _%tl3257733075%_)
                              (_%__kont3825238253%_)))))
                  (_%__kont3825238253%_))
              (if (equal? _%e3256533128%_ 'splice:)
                  (if (gx#stx-pair? _%tl3256033170%_)
                      (let ((_%e3258733004%_ (gx#syntax-e _%tl3256033170%_)))
                        (let ((_%tl3258933011%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3258733004%_)))
                              (_%hd3258833008%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3258733004%_))))
                          (if (gx#stx-pair? _%tl3258933011%_)
                              (let ((_%e3259033014%_
                                     (gx#syntax-e _%tl3258933011%_)))
                                (let ((_%tl3259233021%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3259033014%_)))
                                      (_%hd3259133018%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3259033014%_))))
                                  (if (gx#stx-null? _%tl3259233021%_)
                                      (_%__kont3823838239%_
                                       _%hd3259133018%_
                                       _%hd3258833008%_)
                                      (_%__kont3825238253%_))))
                              (if (gx#stx-null? _%tl3258933011%_)
                                  (_%__match3838438385%_
                                   _%e3255833163%_
                                   _%hd3255933167%_
                                   _%tl3256033170%_
                                   _%e3258733004%_
                                   _%hd3258833008%_
                                   _%tl3258933011%_)
                                  (_%__kont3825238253%_)))))
                      (_%__kont3825238253%_))
                  (if (equal? _%e3256533128%_ 'box:)
                      (if (gx#stx-pair? _%tl3256033170%_)
                          (let ((_%e3259832959%_
                                 (gx#syntax-e _%tl3256033170%_)))
                            (let ((_%tl3260032966%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3259832959%_)))
                                  (_%hd3259932963%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3259832959%_))))
                              (if (gx#stx-null? _%tl3260032966%_)
                                  (_%__kont3824038241%_ _%hd3259932963%_)
                                  (_%__kont3825238253%_))))
                          (_%__kont3825238253%_))
                      (if (gx#stx-pair? _%tl3256033170%_)
                          (let ((_%e3260632909%_
                                 (gx#syntax-e _%tl3256033170%_)))
                            (let ((_%tl3260832916%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3260632909%_)))
                                  (_%hd3260732913%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3260632909%_))))
                              (if (gx#stx-null? _%tl3260832916%_)
                                  (_%__match3838438385%_
                                   _%e3255833163%_
                                   _%hd3255933167%_
                                   _%tl3256033170%_
                                   _%e3260632909%_
                                   _%hd3260732913%_
                                   _%tl3260832916%_)
                                  (if (equal? _%e3256533128%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3260832916%_)
                                          (let ((_%e3261732866%_
                                                 (gx#syntax-e
                                                  _%tl3260832916%_)))
                                            (let ((_%tl3261932873%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3261732866%_)))
                                                  (_%hd3261832870%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3261732866%_))))
                                              (if (gx#stx-null?
                                                   _%tl3261932873%_)
                                                  (_%__kont3824438245%_
                                                   _%hd3261832870%_)
                                                  (_%__kont3825238253%_))))
                                          (_%__kont3825238253%_))
                                      (if (equal? _%e3256533128%_ 'class:)
                                          (if (gx#stx-pair? _%tl3260832916%_)
                                              (let ((_%e3262832809%_
                                                     (gx#syntax-e
                                                      _%tl3260832916%_)))
                                                (let ((_%tl3263032816%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3262832809%_)))
                                                      (_%hd3262932813%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3262832809%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3263032816%_)
                                                      (_%__kont3824638247%_
                                                       _%hd3262932813%_)
                                                      (_%__kont3825238253%_))))
                                              (_%__kont3825238253%_))
                                          (if (equal? _%e3256533128%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3260832916%_)
                                                  (let ((_%e3264032750%_
                                                         (gx#syntax-e
                                                          _%tl3260832916%_)))
                                                    (let ((_%tl3264232757%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3264032750%_)))
                                                          (_%hd3264132754%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3264032750%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3264232757%_)
                                                          (_%__kont3824838249%_
                                                           _%hd3264132754%_
                                                           _%hd3260732913%_)
                                                          (_%__kont3825238253%_))))
                                                  (_%__kont3825238253%_))
                                              (_%__kont3825238253%_)))))))
                          (_%__kont3825238253%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3256033170%_)
                                                (let ((_%e3260632909%_
                                                       (gx#syntax-e
                                                        _%tl3256033170%_)))
                                                  (let ((_%tl3260832916%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3260632909%_)))
                                                        (_%hd3260732913%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3260632909%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3260832916%_)
                                                        (_%__match3838438385%_
                                                         _%e3255833163%_
                                                         _%hd3255933167%_
                                                         _%tl3256033170%_
                                                         _%e3260632909%_
                                                         _%hd3260732913%_
                                                         _%tl3260832916%_)
                                                        (_%__kont3825238253%_))))
                                                (_%__kont3825238253%_))))))))
                          (if (gx#stx-pair? _%__stx3822738228%_)
                              (let ((_%e3254933262%_
                                     (gx#syntax-e _%__stx3822738228%_)))
                                (let ((_%tl3255133269%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3254933262%_)))
                                      (_%hd3255033266%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3254933262%_))))
                                  (if (gx#stx-datum? _%hd3255033266%_)
                                      (let ((_%e3255233272%_
                                             (gx#stx-e _%hd3255033266%_)))
                                        (if (equal? _%e3255233272%_ '?:)
                                            (if (gx#stx-pair? _%tl3255133269%_)
                                                (let ((_%e3255333276%_
                                                       (gx#syntax-e
                                                        _%tl3255133269%_)))
                                                  (let ((_%tl3255533283%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3255333276%_)))
                                                        (_%hd3255433280%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3255333276%_))))
                                                    (_%__kont3823038231%_
                                                     _%tl3255533283%_)))
                                                (_%__match3827838279%_
                                                 _%e3254933262%_
                                                 _%hd3255033266%_
                                                 _%tl3255133269%_))
                                            (_%__match3827838279%_
                                             _%e3254933262%_
                                             _%hd3255033266%_
                                             _%tl3255133269%_)))
                                      (_%__match3827838279%_
                                       _%e3254933262%_
                                       _%hd3255033266%_
                                       _%tl3255133269%_))))
                              (_%__kont3825238253%_)))))))
                 (_%loop-vector32245%_
                  (lambda (_%body32406%_ _%vars32408%_ _%K32409%_)
                    (let* ((_%__stx3848538486%_ _%body32406%_)
                           (_%g3241232435%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3848538486%_))))
                      (let ((_%__kont3848838489%_
                             (lambda (_%L32512%_)
                               (_%loop-list32246%_
                                _%L32512%_
                                _%vars32408%_
                                _%K32409%_)))
                            (_%__kont3849038491%_
                             (lambda (_%L32466%_)
                               (_%loop32243%_
                                _%L32466%_
                                _%vars32408%_
                                _%K32409%_))))
                        (if (gx#stx-pair? _%__stx3848538486%_)
                            (let ((_%e3241532488%_
                                   (gx#syntax-e _%__stx3848538486%_)))
                              (let ((_%tl3241732495%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3241532488%_)))
                                    (_%hd3241632492%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3241532488%_))))
                                (if (gx#stx-datum? _%hd3241632492%_)
                                    (let ((_%e3241832498%_
                                           (gx#stx-e _%hd3241632492%_)))
                                      (if (equal? _%e3241832498%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3241732495%_)
                                              (let ((_%e3241932502%_
                                                     (gx#syntax-e
                                                      _%tl3241732495%_)))
                                                (let ((_%tl3242132509%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3241932502%_)))
                                                      (_%hd3242032506%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3241932502%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3242132509%_)
                                                      (_%__kont3848838489%_
                                                       _%hd3242032506%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3241232435%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3241232435%_)))
                                          (if (equal? _%e3241832498%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3241732495%_)
                                                  (let ((_%e3242732456%_
                                                         (gx#syntax-e
                                                          _%tl3241732495%_)))
                                                    (let ((_%tl3242932463%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3242732456%_)))
                                                          (_%hd3242832460%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3242732456%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3242932463%_)
                                                          (_%__kont3849038491%_
                                                           _%hd3242832460%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3241232435%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3241232435%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3241232435%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3241232435%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3241232435%_)))))))
                 (_%loop-list32246%_
                  (lambda (_%rest32336%_ _%vars32338%_ _%K32339%_)
                    (let* ((_%__stx3853538536%_ _%rest32336%_)
                           (_%g3234232354%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3853538536%_))))
                      (let ((_%__kont3853838539%_
                             (lambda (_%L32382%_ _%L32384%_)
                               (_%loop32243%_
                                _%L32384%_
                                _%vars32338%_
                                (lambda (_%g3239632398%_)
                                  (_%loop-list32246%_
                                   _%L32382%_
                                   _%g3239632398%_
                                   _%K32339%_)))))
                            (_%__kont3854038541%_
                             (lambda () (_%K32339%_ _%vars32338%_))))
                        (if (gx#stx-pair? _%__stx3853538536%_)
                            (let ((_%e3234632372%_
                                   (gx#syntax-e _%__stx3853538536%_)))
                              (let ((_%tl3234832379%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3234632372%_)))
                                    (_%hd3234732376%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3234632372%_))))
                                (_%__kont3853838539%_
                                 _%tl3234832379%_
                                 _%hd3234732376%_)))
                            (_%__kont3854038541%_))))))
                 (_%loop-class-list32247%_
                  (lambda (_%rest32249%_ _%vars32251%_ _%K32252%_)
                    (let* ((_%__stx3855138552%_ _%rest32249%_)
                           (_%g3225532270%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3855138552%_))))
                      (let ((_%__kont3855438555%_
                             (lambda (_%L32308%_ _%L32310%_)
                               (_%loop32243%_
                                _%L32310%_
                                _%vars32251%_
                                (lambda (_%g3232632328%_)
                                  (_%loop-class-list32247%_
                                   _%L32308%_
                                   _%g3232632328%_
                                   _%K32252%_)))))
                            (_%__kont3855638557%_
                             (lambda () (_%K32252%_ _%vars32251%_))))
                        (if (gx#stx-pair? _%__stx3855138552%_)
                            (let ((_%e3225932288%_
                                   (gx#syntax-e _%__stx3855138552%_)))
                              (let ((_%tl3226132295%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3225932288%_)))
                                    (_%hd3226032292%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3225932288%_))))
                                (if (gx#stx-pair? _%tl3226132295%_)
                                    (let ((_%e3226232298%_
                                           (gx#syntax-e _%tl3226132295%_)))
                                      (let ((_%tl3226432305%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3226232298%_)))
                                            (_%hd3226332302%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3226232298%_))))
                                        (_%__kont3855438555%_
                                         _%tl3226432305%_
                                         _%hd3226332302%_)))
                                    (_%__kont3855638557%_))))
                            (_%__kont3855638557%_)))))))
          (_%loop32243%_ _%ptree32240%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29185%_ _%tgt29187%_ _%ptree29188%_ _%K29189%_ _%E29190%_)
        (letrec ((_%generate129192%_
                  (lambda (_%tgt30439%_ _%ptree30441%_ _%K30442%_ _%E30443%_)
                    (let* ((_%g3044530453%_
                            (lambda (_%g3044630449%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3044630449%_)))
                           (_%g3044432236%_
                            (lambda (_%g3044630457%_)
                              ((lambda (_%L30460%_)
                                 (let* ((_%__stx3878738788%_ _%ptree30441%_)
                                        (_%g3048730629%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3878738788%_))))
                                   (let ((_%__kont3879038791%_
                                          (lambda (_%L31951%_ _%L31953%_)
                                            (let* ((_%__stx3870538706%_
                                                    _%L31951%_)
                                                   (_%g3197032005%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3870538706%_))))
                                              (let ((_%__kont3870838709%_
                                                     (lambda ()
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%L31953%_ (cons _%L30460%_ '())))
                           (cons _%K30442%_ (cons _%E30443%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3871038711%_
                                                     (lambda (_%L32206%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%L31953%_ (cons _%L30460%_ '())))
                           (cons (_%generate129192%_
                                  _%tgt30439%_
                                  _%L32206%_
                                  _%K30442%_
                                  _%E30443%_)
                                 (cons _%E30443%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3871238713%_
                                                     (lambda (_%L32144%_)
                                                       (let* ((_%g3215832166%_
                                                               (lambda (_%g3215932162%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3215932162%_)))
                      (_%g3215732185%_
                       (lambda (_%g3215932170%_)
                         ((lambda (_%L32173%_)
                            (cons 'let
                                  (cons (cons (cons _%L32173%_
                                                    (cons (cons _%L31953%_
                                                                (cons _%L30460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons 'if
                                                    (cons _%L32173%_
                                                          (cons (_%generate129192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L32173%_
                         _%L32144%_
                         _%K30442%_
                         _%E30443%_)
                        (cons _%E30443%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _%g3215932170%_))))
                 (_%g3215732185%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3871438715%_
                                                     (lambda (_%L32060%_
                                                              _%L32062%_)
                                                       (let* ((_%g3208232090%_
                                                               (lambda (_%g3208332086%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3208332086%_)))
                      (_%g3208132109%_
                       (lambda (_%g3208332094%_)
                         ((lambda (_%L32097%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '?)
                                              (cons _%L31953%_
                                                    (cons _%L30460%_ '())))
                                        (cons (cons 'let
                                                    (cons (cons (cons _%L32097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons _%L32062%_ (cons _%L30460%_ '()))
                                    '()))
                        '())
                  (cons (_%generate129192%_
                         _%L32097%_
                         _%L32060%_
                         _%K30442%_
                         _%E30443%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30443%_ '())))))
                          _%g3208332094%_))))
                 (_%g3208132109%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%g3196732217%_
                                                       (lambda ()
                                                         (if (gx#stx-pair?
                                                              _%__stx3870538706%_)
                                                             (let ((_%e3197332196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%__stx3870538706%_)))
                       (let ((_%tl3197532203%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3197332196%_)))
                             (_%hd3197432200%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3197332196%_))))
                         (if (gx#stx-null? _%tl3197532203%_)
                             (_%__kont3871038711%_ _%hd3197432200%_)
                             (if (gx#stx-datum? _%hd3197432200%_)
                                 (let ((_%e3198032130%_
                                        (gx#stx-e _%hd3197432200%_)))
                                   (if (equal? _%e3198032130%_ '=>:)
                                       (if (gx#stx-pair? _%tl3197532203%_)
                                           (let ((_%e3198132134%_
                                                  (gx#syntax-e
                                                   _%tl3197532203%_)))
                                             (let ((_%tl3198332141%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3198132134%_)))
                                                   (_%hd3198232138%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3198132134%_))))
                                               (if (gx#stx-null?
                                                    _%tl3198332141%_)
                                                   (_%__kont3871238713%_
                                                    _%hd3198232138%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3197032005%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3197032005%_)))
                                       (if (equal? _%e3198032130%_ '::)
                                           (if (gx#stx-pair? _%tl3197532203%_)
                                               (let ((_%e3199032026%_
                                                      (gx#syntax-e
                                                       _%tl3197532203%_)))
                                                 (let ((_%tl3199232033%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3199032026%_)))
                                                       (_%hd3199132030%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3199032026%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3199232033%_)
                                                       (let ((_%e3199332036%_
                                                              (gx#syntax-e
                                                               _%tl3199232033%_)))
                                                         (let ((_%tl3199532043%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3199332036%_)))
                       (_%hd3199432040%_
                        (let () (declare (not safe)) (##car _%e3199332036%_))))
                   (if (gx#stx-datum? _%hd3199432040%_)
                       (let ((_%e3199632046%_ (gx#stx-e _%hd3199432040%_)))
                         (if (equal? _%e3199632046%_ '=>:)
                             (if (gx#stx-pair? _%tl3199532043%_)
                                 (let ((_%e3199732050%_
                                        (gx#syntax-e _%tl3199532043%_)))
                                   (let ((_%tl3199932057%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3199732050%_)))
                                         (_%hd3199832054%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3199732050%_))))
                                     (if (gx#stx-null? _%tl3199932057%_)
                                         (_%__kont3871438715%_
                                          _%hd3199832054%_
                                          _%hd3199132030%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3197032005%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3197032005%_)))
                             (let () (declare (not safe)) (_%g3197032005%_))))
                       (let () (declare (not safe)) (_%g3197032005%_)))))
               (let () (declare (not safe)) (_%g3197032005%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3197032005%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3197032005%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3197032005%_))))))
                     (let () (declare (not safe)) (_%g3197032005%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%__stx3870538706%_)
                                                      (_%__kont3870838709%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3196732217%_))))))))
                                         (_%__kont3879238793%_
                                          (lambda (_%L31848%_)
                                            (let* ((_%__stx3868938690%_
                                                    _%L31848%_)
                                                   (_%g3186131873%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3868938690%_))))
                                              (let ((_%__kont3869238693%_
                                                     (lambda (_%L31901%_
                                                              _%L31903%_)
                                                       (_%generate129192%_
                                                        _%tgt30439%_
                                                        _%L31903%_
                                                        (_%generate129192%_
                                                         _%tgt30439%_
                                                         (cons 'and:
                                                               _%L31901%_)
                                                         _%K30442%_
                                                         _%E30443%_)
                                                        _%E30443%_)))
                                                    (_%__kont3869438695%_
                                                     (lambda () _%K30442%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3868938690%_)
                                                    (let ((_%e3186531891%_
                                                           (gx#syntax-e
                                                            _%__stx3868938690%_)))
                                                      (let ((_%tl3186731898%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3186531891%_)))
                    (_%hd3186631895%_
                     (let () (declare (not safe)) (##car _%e3186531891%_))))
                (_%__kont3869238693%_ _%tl3186731898%_ _%hd3186631895%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3869438695%_))))))
                                         (_%__kont3879438795%_
                                          (lambda (_%L31755%_)
                                            (let* ((_%__stx3867338674%_
                                                    _%L31755%_)
                                                   (_%g3176831780%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3867338674%_))))
                                              (let ((_%__kont3867638677%_
                                                     (lambda (_%L31808%_
                                                              _%L31810%_)
                                                       (_%generate129192%_
                                                        _%tgt30439%_
                                                        _%L31810%_
                                                        _%K30442%_
                                                        (_%generate129192%_
                                                         _%tgt30439%_
                                                         (cons 'or: _%L31808%_)
                                                         _%K30442%_
                                                         _%E30443%_))))
                                                    (_%__kont3867838679%_
                                                     (lambda () _%E30443%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3867338674%_)
                                                    (let ((_%e3177231798%_
                                                           (gx#syntax-e
                                                            _%__stx3867338674%_)))
                                                      (let ((_%tl3177431805%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3177231798%_)))
                    (_%hd3177331802%_
                     (let () (declare (not safe)) (##car _%e3177231798%_))))
                (_%__kont3867638677%_ _%tl3177431805%_ _%hd3177331802%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3867838679%_))))))
                                         (_%__kont3879638797%_
                                          (lambda (_%L31720%_)
                                            (_%generate129192%_
                                             _%tgt30439%_
                                             _%L31720%_
                                             _%E30443%_
                                             _%K30442%_)))
                                         (_%__kont3879838799%_
                                          (lambda (_%L31594%_ _%L31596%_)
                                            (let* ((_%g3161331628%_
                                                    (lambda (_%g3161431624%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3161431624%_)))
                                                   (_%g3161231685%_
                                                    (lambda (_%g3161431632%_)
                                                      (if (gx#stx-pair?
                                                           _%g3161431632%_)
                                                          (let ((_%e3161731635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%g3161431632%_)))
                    (let ((_%hd3161831639%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3161731635%_)))
                          (_%tl3161931642%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3161731635%_))))
                      (if (gx#stx-pair? _%tl3161931642%_)
                          (let ((_%e3162031645%_
                                 (gx#syntax-e _%tl3161931642%_)))
                            (let ((_%hd3162131649%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3162031645%_)))
                                  (_%tl3162231652%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3162031645%_))))
                              (if (gx#stx-null? _%tl3162231652%_)
                                  ((lambda (_%L31655%_ _%L31657%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##pair?)
                                                       (cons _%L30460%_ '()))
                                                 (cons (let ((_%hd-pat31673%_
                                                              (gx#stx-e
                                                               _%L31596%_))
                                                             (_%tl-pat31675%_
                                                              (gx#stx-e
                                                               _%L31594%_)))
                                                         (if (and (equal? _%hd-pat31673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat31675%_ '(any:)))
                     _%K30442%_
                     (if (equal? _%tl-pat31675%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%L31657%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%L30460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate129192%_
                                            _%L31657%_
                                            _%L31596%_
                                            _%K30442%_
                                            _%E30443%_)
                                           '())))
                         (if (equal? _%hd-pat31673%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%L31655%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%L30460%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate129192%_
                                                _%L31655%_
                                                _%L31594%_
                                                _%K30442%_
                                                _%E30443%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%L31657%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%L30460%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L31655%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%L30460%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate129192%_
                                                _%L31657%_
                                                _%L31596%_
                                                (_%generate129192%_
                                                 _%L31655%_
                                                 _%L31594%_
                                                 _%K30442%_
                                                 _%E30443%_)
                                                _%E30443%_)
                                               '())))))))
               (cons _%E30443%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd3162131649%_
                                   _%hd3161831639%_)
                                  (_%g3161331628%_ _%g3161431632%_))))
                          (_%g3161331628%_ _%g3161431632%_))))
                  (_%g3161331628%_ _%g3161431632%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3161231685%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl))))))
                                         (_%__kont3880038801%_
                                          (lambda ()
                                            (cons 'if
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '##null?)
                                                              (cons _%L30460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%K30442%_ (cons _%E30443%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3880238803%_
                                          (lambda (_%L31510%_ _%L31512%_)
                                            (_%generate-splice29194%_
                                             _%tgt30439%_
                                             _%L31512%_
                                             _%L31510%_
                                             _%K30442%_
                                             _%E30443%_)))
                                         (_%__kont3880438805%_
                                          (lambda (_%L31424%_)
                                            (let* ((_%g3143831446%_
                                                    (lambda (_%g3143931442%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3143931442%_)))
                                                   (_%g3143731465%_
                                                    (lambda (_%g3143931450%_)
                                                      ((lambda (_%L31453%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##box?)
                                   (cons _%L30460%_ '()))
                             (cons (cons 'let
                                         (cons (cons (cons _%L31453%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##unbox)
                               (cons _%L30460%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (_%generate129192%_
                                                      _%L31453%_
                                                      _%L31424%_
                                                      _%K30442%_
                                                      _%E30443%_)
                                                     '())))
                                   (cons _%E30443%_ '())))))
               _%g3143931450%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3143731465%_
                                               (gx#genident 'e)))))
                                         (_%__kont3880638807%_
                                          (lambda (_%L31229%_)
                                            (let* ((_%__stx3862338624%_
                                                    _%L31229%_)
                                                   (_%g3124431267%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3862338624%_))))
                                              (let ((_%__kont3862638627%_
                                                     (lambda (_%L31344%_)
                                                       (let* ((_%g3135831366%_
                                                               (lambda (_%g3135931362%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3135931362%_)))
                      (_%g3135731385%_
                       (lambda (_%g3135931370%_)
                         ((lambda (_%L31373%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'values-count)
                                                          (cons _%L30460%_
                                                                '()))
                                                    (cons _%L31373%_ '())))
                                        (cons (_%generate-simple-vector29195%_
                                               _%tgt30439%_
                                               _%L31344%_
                                               '0
                                               _%K30442%_
                                               _%E30443%_)
                                              (cons _%E30443%_ '())))))
                          _%g3135931370%_))))
                 (_%g3135731385%_ (gx#stx-length _%L31344%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3862838629%_
                                                     (lambda (_%L31298%_)
                                                       (_%generate-list-vector29196%_
                                                        _%tgt30439%_
                                                        _%L31298%_
                                                        'values->list
                                                        _%K30442%_
                                                        _%E30443%_))))
                                                (if (gx#stx-pair?
                                                     _%__stx3862338624%_)
                                                    (let ((_%e3124731320%_
                                                           (gx#syntax-e
                                                            _%__stx3862338624%_)))
                                                      (let ((_%tl3124931327%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3124731320%_)))
                    (_%hd3124831324%_
                     (let () (declare (not safe)) (##car _%e3124731320%_))))
                (if (gx#stx-datum? _%hd3124831324%_)
                    (let ((_%e3125031330%_ (gx#stx-e _%hd3124831324%_)))
                      (if (equal? _%e3125031330%_ 'simple:)
                          (if (gx#stx-pair? _%tl3124931327%_)
                              (let ((_%e3125131334%_
                                     (gx#syntax-e _%tl3124931327%_)))
                                (let ((_%tl3125331341%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3125131334%_)))
                                      (_%hd3125231338%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3125131334%_))))
                                  (if (gx#stx-null? _%tl3125331341%_)
                                      (_%__kont3862638627%_ _%hd3125231338%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3124431267%_)))))
                              (let () (declare (not safe)) (_%g3124431267%_)))
                          (if (equal? _%e3125031330%_ 'list:)
                              (if (gx#stx-pair? _%tl3124931327%_)
                                  (let ((_%e3125931288%_
                                         (gx#syntax-e _%tl3124931327%_)))
                                    (let ((_%tl3126131295%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3125931288%_)))
                                          (_%hd3126031292%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3125931288%_))))
                                      (if (gx#stx-null? _%tl3126131295%_)
                                          (_%__kont3862838629%_
                                           _%hd3126031292%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3124431267%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3124431267%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3124431267%_)))))
                    (let () (declare (not safe)) (_%g3124431267%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3124431267%_)))))))
                                         (_%__kont3880838809%_
                                          (lambda (_%L31034%_)
                                            (let* ((_%__stx3857338574%_
                                                    _%L31034%_)
                                                   (_%g3104931072%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3857338574%_))))
                                              (let ((_%__kont3857638577%_
                                                     (lambda (_%L31149%_)
                                                       (let* ((_%g3116331171%_
                                                               (lambda (_%g3116431167%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3116431167%_)))
                      (_%g3116231190%_
                       (lambda (_%g3116431175%_)
                         ((lambda (_%L31178%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##vector?)
                                              (cons _%L30460%_ '()))
                                        (cons (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _%L30460%_ '()))
                              (cons _%L31178%_ '())))
                  (cons (_%generate-simple-vector29195%_
                         _%tgt30439%_
                         _%L31149%_
                         '0
                         _%K30442%_
                         _%E30443%_)
                        (cons _%E30443%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30443%_ '())))))
                          _%g3116431175%_))))
                 (_%g3116231190%_ (gx#stx-length _%L31149%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3857838579%_
                                                     (lambda (_%L31103%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##vector?)
                                 (cons _%L30460%_ '()))
                           (cons (_%generate-list-vector29196%_
                                  _%tgt30439%_
                                  _%L31103%_
                                  'vector->list
                                  _%K30442%_
                                  _%E30443%_)
                                 (cons _%E30443%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx3857338574%_)
                                                    (let ((_%e3105231125%_
                                                           (gx#syntax-e
                                                            _%__stx3857338574%_)))
                                                      (let ((_%tl3105431132%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3105231125%_)))
                    (_%hd3105331129%_
                     (let () (declare (not safe)) (##car _%e3105231125%_))))
                (if (gx#stx-datum? _%hd3105331129%_)
                    (let ((_%e3105531135%_ (gx#stx-e _%hd3105331129%_)))
                      (if (equal? _%e3105531135%_ 'simple:)
                          (if (gx#stx-pair? _%tl3105431132%_)
                              (let ((_%e3105631139%_
                                     (gx#syntax-e _%tl3105431132%_)))
                                (let ((_%tl3105831146%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3105631139%_)))
                                      (_%hd3105731143%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3105631139%_))))
                                  (if (gx#stx-null? _%tl3105831146%_)
                                      (_%__kont3857638577%_ _%hd3105731143%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3104931072%_)))))
                              (let () (declare (not safe)) (_%g3104931072%_)))
                          (if (equal? _%e3105531135%_ 'list:)
                              (if (gx#stx-pair? _%tl3105431132%_)
                                  (let ((_%e3106431093%_
                                         (gx#syntax-e _%tl3105431132%_)))
                                    (let ((_%tl3106631100%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3106431093%_)))
                                          (_%hd3106531097%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3106431093%_))))
                                      (if (gx#stx-null? _%tl3106631100%_)
                                          (_%__kont3857838579%_
                                           _%hd3106531097%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3104931072%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3104931072%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3104931072%_)))))
                    (let () (declare (not safe)) (_%g3104931072%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3104931072%_)))))))
                                         (_%__kont3881038811%_
                                          (lambda (_%L30985%_ _%L30987%_)
                                            (_%generate-struct29197%_
                                             (gx#stx-e _%L30987%_)
                                             _%tgt30439%_
                                             _%L30985%_
                                             _%K30442%_
                                             _%E30443%_)))
                                         (_%__kont3881238813%_
                                          (lambda (_%L30926%_ _%L30928%_)
                                            (_%generate-class29200%_
                                             (gx#stx-e _%L30928%_)
                                             _%tgt30439%_
                                             _%L30926%_
                                             _%K30442%_
                                             _%E30443%_)))
                                         (_%__kont3881438815%_
                                          (lambda (_%L30823%_)
                                            (let* ((_%g3083730845%_
                                                    (lambda (_%g3083830841%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3083830841%_)))
                                                   (_%g3083630864%_
                                                    (lambda (_%g3083830849%_)
                                                      ((lambda (_%L30852%_)
                                                         (cons 'if
                                                               (cons (cons _%L30852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%L30460%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L30823%_ '()))
                                               '())))
                             (cons _%K30442%_ (cons _%E30443%_ '())))))
               _%g3083830849%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3083630864%_
                                               (let ((_%e30868%_
                                                      (gx#stx-e _%L30823%_)))
                                                 (if (or (symbol? _%e30868%_)
                                                         (keyword? _%e30868%_)
                                                         (immediate?
                                                          _%e30868%_))
                                                     '##eq?
                                                     (if (number? _%e30868%_)
                                                         'eqv?
                                                         'equal?)))))))
                                         (_%__kont3881638817%_
                                          (lambda (_%L30743%_ _%L30745%_)
                                            (let* ((_%g3076130769%_
                                                    (lambda (_%g3076230765%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3076230765%_)))
                                                   (_%g3076030788%_
                                                    (lambda (_%g3076230773%_)
                                                      ((lambda (_%L30776%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%L30776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%L30745%_
                                                     (cons _%L30460%_ '()))
                                               '()))
                                   '())
                             (cons (_%generate129192%_
                                    _%L30776%_
                                    _%L30743%_
                                    _%K30442%_
                                    _%E30443%_)
                                   '()))))
               _%g3076230773%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3076030788%_
                                               (gx#genident 'e)))))
                                         (_%__kont3881838819%_
                                          (lambda (_%L30685%_)
                                            (cons 'let
                                                  (cons (cons (cons _%L30685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L30460%_ '()))
                      '())
                (cons _%K30442%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3882038821%_
                                          (lambda () _%K30442%_)))
                                     (if (gx#stx-pair? _%__stx3878738788%_)
                                         (let ((_%e3049131927%_
                                                (gx#syntax-e
                                                 _%__stx3878738788%_)))
                                           (let ((_%tl3049331934%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e3049131927%_)))
                                                 (_%hd3049231931%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e3049131927%_))))
                                             (if (gx#stx-datum?
                                                  _%hd3049231931%_)
                                                 (let ((_%e3049431937%_
                                                        (gx#stx-e
                                                         _%hd3049231931%_)))
                                                   (if (equal? _%e3049431937%_
                                                               '?:)
                                                       (if (gx#stx-pair?
                                                            _%tl3049331934%_)
                                                           (let ((_%e3049531941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3049331934%_)))
                     (let ((_%tl3049731948%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3049531941%_)))
                           (_%hd3049631945%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3049531941%_))))
                       (_%__kont3879038791%_
                        _%tl3049731948%_
                        _%hd3049631945%_)))
                   (let () (declare (not safe)) (_%g3048730629%_)))
               (if (equal? _%e3049431937%_ 'and:)
                   (_%__kont3879238793%_ _%tl3049331934%_)
                   (if (equal? _%e3049431937%_ 'or:)
                       (_%__kont3879438795%_ _%tl3049331934%_)
                       (if (equal? _%e3049431937%_ 'not:)
                           (if (gx#stx-pair? _%tl3049331934%_)
                               (let ((_%e3051331710%_
                                      (gx#syntax-e _%tl3049331934%_)))
                                 (let ((_%tl3051531717%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3051331710%_)))
                                       (_%hd3051431714%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3051331710%_))))
                                   (if (gx#stx-null? _%tl3051531717%_)
                                       (_%__kont3879638797%_ _%hd3051431714%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3048730629%_)))))
                               (let () (declare (not safe)) (_%g3048730629%_)))
                           (if (equal? _%e3049431937%_ 'cons:)
                               (if (gx#stx-pair? _%tl3049331934%_)
                                   (let ((_%e3052231574%_
                                          (gx#syntax-e _%tl3049331934%_)))
                                     (let ((_%tl3052431581%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3052231574%_)))
                                           (_%hd3052331578%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3052231574%_))))
                                       (if (gx#stx-pair? _%tl3052431581%_)
                                           (let ((_%e3052531584%_
                                                  (gx#syntax-e
                                                   _%tl3052431581%_)))
                                             (let ((_%tl3052731591%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3052531584%_)))
                                                   (_%hd3052631588%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3052531584%_))))
                                               (if (gx#stx-null?
                                                    _%tl3052731591%_)
                                                   (_%__kont3879838799%_
                                                    _%hd3052631588%_
                                                    _%hd3052331578%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3048730629%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3048730629%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3048730629%_)))
                               (if (equal? _%e3049431937%_ 'null:)
                                   (if (gx#stx-null? _%tl3049331934%_)
                                       (_%__kont3880038801%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3048730629%_)))
                                   (if (equal? _%e3049431937%_ 'splice:)
                                       (if (gx#stx-pair? _%tl3049331934%_)
                                           (let ((_%e3053831490%_
                                                  (gx#syntax-e
                                                   _%tl3049331934%_)))
                                             (let ((_%tl3054031497%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3053831490%_)))
                                                   (_%hd3053931494%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3053831490%_))))
                                               (if (gx#stx-pair?
                                                    _%tl3054031497%_)
                                                   (let ((_%e3054131500%_
                                                          (gx#syntax-e
                                                           _%tl3054031497%_)))
                                                     (let ((_%tl3054331507%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3054131500%_)))
                                                           (_%hd3054231504%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3054131500%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3054331507%_)
                                                           (_%__kont3880238803%_
                                                            _%hd3054231504%_
                                                            _%hd3053931494%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3048730629%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3048730629%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3048730629%_)))
                                       (if (equal? _%e3049431937%_ 'box:)
                                           (if (gx#stx-pair? _%tl3049331934%_)
                                               (let ((_%e3054931414%_
                                                      (gx#syntax-e
                                                       _%tl3049331934%_)))
                                                 (let ((_%tl3055131421%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3054931414%_)))
                                                       (_%hd3055031418%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3054931414%_))))
                                                   (if (gx#stx-null?
                                                        _%tl3055131421%_)
                                                       (_%__kont3880438805%_
                                                        _%hd3055031418%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g3048730629%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3048730629%_)))
                                           (if (equal? _%e3049431937%_
                                                       'values:)
                                               (if (gx#stx-pair?
                                                    _%tl3049331934%_)
                                                   (let ((_%e3055731219%_
                                                          (gx#syntax-e
                                                           _%tl3049331934%_)))
                                                     (let ((_%tl3055931226%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3055731219%_)))
                                                           (_%hd3055831223%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3055731219%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3055931226%_)
                                                           (_%__kont3880638807%_
                                                            _%hd3055831223%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3048730629%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3048730629%_)))
                                               (if (equal? _%e3049431937%_
                                                           'vector:)
                                                   (if (gx#stx-pair?
                                                        _%tl3049331934%_)
                                                       (let ((_%e3056531024%_
                                                              (gx#syntax-e
                                                               _%tl3049331934%_)))
                                                         (let ((_%tl3056731031%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3056531024%_)))
                       (_%hd3056631028%_
                        (let () (declare (not safe)) (##car _%e3056531024%_))))
                   (if (gx#stx-null? _%tl3056731031%_)
                       (_%__kont3880838809%_ _%hd3056631028%_)
                       (let () (declare (not safe)) (_%g3048730629%_)))))
               (let () (declare (not safe)) (_%g3048730629%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (equal? _%e3049431937%_
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _%tl3049331934%_)
                                                           (let ((_%e3057430965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3049331934%_)))
                     (let ((_%tl3057630972%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3057430965%_)))
                           (_%hd3057530969%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3057430965%_))))
                       (if (gx#stx-pair? _%tl3057630972%_)
                           (let ((_%e3057730975%_
                                  (gx#syntax-e _%tl3057630972%_)))
                             (let ((_%tl3057930982%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3057730975%_)))
                                   (_%hd3057830979%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3057730975%_))))
                               (if (gx#stx-null? _%tl3057930982%_)
                                   (_%__kont3881038811%_
                                    _%hd3057830979%_
                                    _%hd3057530969%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3048730629%_)))))
                           (let () (declare (not safe)) (_%g3048730629%_)))))
                   (let () (declare (not safe)) (_%g3048730629%_)))
               (if (equal? _%e3049431937%_ 'class:)
                   (if (gx#stx-pair? _%tl3049331934%_)
                       (let ((_%e3058630906%_ (gx#syntax-e _%tl3049331934%_)))
                         (let ((_%tl3058830913%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3058630906%_)))
                               (_%hd3058730910%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3058630906%_))))
                           (if (gx#stx-pair? _%tl3058830913%_)
                               (let ((_%e3058930916%_
                                      (gx#syntax-e _%tl3058830913%_)))
                                 (let ((_%tl3059130923%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3058930916%_)))
                                       (_%hd3059030920%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3058930916%_))))
                                   (if (gx#stx-null? _%tl3059130923%_)
                                       (_%__kont3881238813%_
                                        _%hd3059030920%_
                                        _%hd3058730910%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3048730629%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g3048730629%_)))))
                       (let () (declare (not safe)) (_%g3048730629%_)))
                   (if (equal? _%e3049431937%_ 'datum:)
                       (if (gx#stx-pair? _%tl3049331934%_)
                           (let ((_%e3059730813%_
                                  (gx#syntax-e _%tl3049331934%_)))
                             (let ((_%tl3059930820%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3059730813%_)))
                                   (_%hd3059830817%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3059730813%_))))
                               (if (gx#stx-null? _%tl3059930820%_)
                                   (_%__kont3881438815%_ _%hd3059830817%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3048730629%_)))))
                           (let () (declare (not safe)) (_%g3048730629%_)))
                       (if (equal? _%e3049431937%_ 'apply:)
                           (if (gx#stx-pair? _%tl3049331934%_)
                               (let ((_%e3060630723%_
                                      (gx#syntax-e _%tl3049331934%_)))
                                 (let ((_%tl3060830730%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3060630723%_)))
                                       (_%hd3060730727%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3060630723%_))))
                                   (if (gx#stx-pair? _%tl3060830730%_)
                                       (let ((_%e3060930733%_
                                              (gx#syntax-e _%tl3060830730%_)))
                                         (let ((_%tl3061130740%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3060930733%_)))
                                               (_%hd3061030737%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3060930733%_))))
                                           (if (gx#stx-null? _%tl3061130740%_)
                                               (_%__kont3881638817%_
                                                _%hd3061030737%_
                                                _%hd3060730727%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3048730629%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g3048730629%_)))))
                               (let () (declare (not safe)) (_%g3048730629%_)))
                           (if (equal? _%e3049431937%_ 'var:)
                               (if (gx#stx-pair? _%tl3049331934%_)
                                   (let ((_%e3061730675%_
                                          (gx#syntax-e _%tl3049331934%_)))
                                     (let ((_%tl3061930682%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3061730675%_)))
                                           (_%hd3061830679%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3061730675%_))))
                                       (if (gx#stx-null? _%tl3061930682%_)
                                           (_%__kont3881838819%_
                                            _%hd3061830679%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g3048730629%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3048730629%_)))
                               (if (equal? _%e3049431937%_ 'any:)
                                   (if (gx#stx-null? _%tl3049331934%_)
                                       (_%__kont3882038821%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3048730629%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3048730629%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3048730629%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3048730629%_))))))
                               _%g3044630457%_))))
                      (_%g3044432236%_ _%tgt30439%_))))
                 (_%generate-splice29194%_
                  (lambda (_%tgt29811%_
                           _%hd29813%_
                           _%rest29814%_
                           _%K29815%_
                           _%E29816%_)
                    (let* ((_%g2981829835%_
                            (lambda (_%g2981929831%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2981929831%_)))
                           (_%g2981730435%_
                            (lambda (_%g2981929839%_)
                              (if (gx#stx-pair/null? _%g2981929839%_)
                                  (let ((_g39942_
                                         (gx#syntax-split-splice
                                          _%g2981929839%_
                                          '0)))
                                    (begin
                                      (let ((_g39943_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g39942_)
                                                   (##vector-length _g39942_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g39943_ 2)))
                                            (error "Context expects 2 values"
                                                   _g39943_)))
                                      (let ((_%target2982129842%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g39942_ 0)))
                                            (_%tl2982329845%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g39942_ 1))))
                                        (if (gx#stx-null? _%tl2982329845%_)
                                            (letrec ((_%loop2982429848%_
                                                      (lambda (_%hd2982229852%_
                                                               _%var2982829855%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2982229852%_)
                                                            (let ((_%e2982529858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2982229852%_)))
                      (let ((_%lp-hd2982629862%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2982529858%_)))
                            (_%lp-tl2982729865%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2982529858%_))))
                        (_%loop2982429848%_
                         _%lp-tl2982729865%_
                         (cons _%lp-hd2982629862%_ _%var2982829855%_))))
                    (let ((_%var2982929868%_ (reverse _%var2982829855%_)))
                      ((lambda (_%L29872%_)
                         (let* ((_%g2988829905%_
                                 (lambda (_%g2988929901%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2988929901%_)))
                                (_%g2988730423%_
                                 (lambda (_%g2988929909%_)
                                   (if (gx#stx-pair/null? _%g2988929909%_)
                                       (let ((_g39944_
                                              (gx#syntax-split-splice
                                               _%g2988929909%_
                                               '0)))
                                         (begin
                                           (let ((_g39945_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g39944_)
                                                        (##vector-length
                                                         _g39944_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g39945_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g39945_)))
                                           (let ((_%target2989129912%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g39944_ 0)))
                                                 (_%tl2989329915%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g39944_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2989329915%_)
                                                 (letrec ((_%loop2989429918%_
                                                           (lambda (_%hd2989229922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%var-r2989829925%_)
                     (if (gx#stx-pair? _%hd2989229922%_)
                         (let ((_%e2989529928%_
                                (gx#syntax-e _%hd2989229922%_)))
                           (let ((_%lp-hd2989629932%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2989529928%_)))
                                 (_%lp-tl2989729935%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2989529928%_))))
                             (_%loop2989429918%_
                              _%lp-tl2989729935%_
                              (cons _%lp-hd2989629932%_ _%var-r2989829925%_))))
                         (let ((_%var-r2989929938%_
                                (reverse _%var-r2989829925%_)))
                           ((lambda (_%L29942%_)
                              (let* ((_%g2995929976%_
                                      (lambda (_%g2996029972%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2996029972%_)))
                                     (_%g2995830411%_
                                      (lambda (_%g2996029980%_)
                                        (if (gx#stx-pair/null? _%g2996029980%_)
                                            (let ((_g39946_
                                                   (gx#syntax-split-splice
                                                    _%g2996029980%_
                                                    '0)))
                                              (begin
                                                (let ((_g39947_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g39946_)
                                                             (##vector-length
                                                              _g39946_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g39947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g39947_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2996229983%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g39946_
                                                          0)))
                                                      (_%tl2996429986%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g39946_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2996429986%_)
                                                      (letrec ((_%loop2996529989%_
                                                                (lambda (_%hd2996329993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%init2996929996%_)
                          (if (gx#stx-pair? _%hd2996329993%_)
                              (let ((_%e2996629999%_
                                     (gx#syntax-e _%hd2996329993%_)))
                                (let ((_%lp-hd2996730003%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2996629999%_)))
                                      (_%lp-tl2996830006%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2996629999%_))))
                                  (_%loop2996529989%_
                                   _%lp-tl2996830006%_
                                   (cons _%lp-hd2996730003%_
                                         _%init2996929996%_))))
                              (let ((_%init2997030009%_
                                     (reverse _%init2996929996%_)))
                                ((lambda (_%L30013%_)
                                   (let* ((_%g3003030038%_
                                           (lambda (_%g3003130034%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g3003130034%_)))
                                          (_%g3002930407%_
                                           (lambda (_%g3003130042%_)
                                             ((lambda (_%L30045%_)
                                                (let* ((_%g3005830066%_
                                                        (lambda (_%g3005930062%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g3005930062%_)))
                                                       (_%g3005730403%_
                                                        (lambda (_%g3005930070%_)
                                                          ((lambda (_%L30073%_)
                                                             (let* ((_%g3008630094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g3008730090%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g3008730090%_)))
                            (_%g3008530399%_
                             (lambda (_%g3008730098%_)
                               ((lambda (_%L30101%_)
                                  (let* ((_%g3011430122%_
                                          (lambda (_%g3011530118%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3011530118%_)))
                                         (_%g3011330395%_
                                          (lambda (_%g3011530126%_)
                                            ((lambda (_%L30129%_)
                                               (let* ((_%g3014230150%_
                                                       (lambda (_%g3014330146%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g3014330146%_)))
                                                      (_%g3014130391%_
                                                       (lambda (_%g3014330154%_)
                                                         ((lambda (_%L30157%_)
                                                            (let* ((_%g3017030178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3017130174%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3017130174%_)))
                           (_%g3016930387%_
                            (lambda (_%g3017130182%_)
                              ((lambda (_%L30185%_)
                                 (let* ((_%g3019830206%_
                                         (lambda (_%g3019930202%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3019930202%_)))
                                        (_%g3019730383%_
                                         (lambda (_%g3019930210%_)
                                           ((lambda (_%L30213%_)
                                              (let* ((_%g3022630234%_
                                                      (lambda (_%g3022730230%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3022730230%_)))
                                                     (_%g3022530368%_
                                                      (lambda (_%g3022730238%_)
                                                        ((lambda (_%L30241%_)
                                                           (let* ((_%g3025430262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g3025530258%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3025530258%_)))
                          (_%g3025330356%_
                           (lambda (_%g3025530266%_)
                             ((lambda (_%L30269%_)
                                (let* ((_%g3028230290%_
                                        (lambda (_%g3028330286%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3028330286%_)))
                                       (_%g3028130352%_
                                        (lambda (_%g3028330294%_)
                                          ((lambda (_%L30297%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%L30073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%L30185%_
                                                     (foldr (lambda (_%g3031930322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g3032030325%_)
                      (cons _%g3031930322%_ _%g3032030325%_))
                    '()
                    _%L29872%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L30213%_ '())))
                                   '()))
                       (cons (cons _%L30129%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%L30157%_
                                                           (cons _%L30185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3031730328%_ _%g3031830331%_)
                                  (cons _%g3031730328%_ _%g3031830331%_))
                                '()
                                _%L29942%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%L30297%_ '())))
                                         '()))
                             (cons (cons _%L30101%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%L30185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3031530334%_ _%g3031630337%_)
                                  (cons _%g3031530334%_ _%g3031630337%_))
                                '()
                                _%L29942%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%L30185%_ '()))
                                     (cons (cons _%L30129%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%L30185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%L30185%_
                     (foldr (lambda (_%g3031330340%_ _%g3031430343%_)
                              (cons _%g3031330340%_ _%g3031430343%_))
                            '()
                            _%L29942%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%L30269%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%L30101%_
                             (cons _%L30045%_
                                   (foldr (lambda (_%g3031130346%_
                                                   _%g3031230349%_)
                                            (cons _%g3031130346%_
                                                  _%g3031230349%_))
                                          '()
                                          _%L30013%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3028330294%_))))
                                  (_%g3028130352%_
                                   (_%generate129192%_
                                    _%L30157%_
                                    _%hd29813%_
                                    _%L30241%_
                                    _%L30269%_))))
                              _%g3025530266%_))))
                     (_%g3025330356%_
                      (cons _%L30073%_
                            (cons _%L30185%_
                                  (foldr (lambda (_%g3035930362%_
                                                  _%g3036030365%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%g3035930362%_
                                                             '()))
                                                 _%g3036030365%_))
                                         '()
                                         _%L29942%_))))))
                 _%g3022730238%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3022530368%_
                                                 (cons _%L30101%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%L30185%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets _%L29942%_ _%L29872%_)
                       (foldr (lambda (_%g3037130375%_
                                       _%g3037230378%_
                                       _%g3037330380%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%g3037230378%_
                                                  (cons _%g3037130375%_ '())))
                                      _%g3037330380%_))
                              '()
                              _%L29942%_
                              _%L29872%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g3019930210%_))))
                                   (_%g3019730383%_
                                    (_%generate129192%_
                                     _%L30185%_
                                     _%rest29814%_
                                     _%K29815%_
                                     _%E29816%_))))
                               _%g3017130182%_))))
                      (_%g3016930387%_ (gx#genident 'rest))))
                  _%g3014330154%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3014130391%_
                                                  (gx#genident 'hd))))
                                             _%g3011530126%_))))
                                    (_%g3011330395%_
                                     (gx#genident 'splice-try))))
                                _%g3008730098%_))))
                       (_%g3008530399%_ (gx#genident 'splice-loop))))
                   _%g3005930070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g3005730403%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%g3003130042%_))))
                                     (_%g3002930407%_ _%tgt29811%_)))
                                 _%init2997030009%_))))))
                (_%loop2996529989%_ _%target2996229983%_ '()))
              (_%g2995929976%_ _%g2996029980%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2995929976%_
                                             _%g2996029980%_)))))
                                (_%g2995830411%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%g3041430417%_
                                                   _%g3041530420%_)
                                            (cons _%g3041430417%_
                                                  _%g3041530420%_))
                                          '()
                                          _%L29872%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%var-r2989929938%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2989429918%_
                                                    _%target2989129912%_
                                                    '()))
                                                 (_%g2988829905%_
                                                  _%g2988929909%_)))))
                                       (_%g2988829905%_ _%g2988929909%_)))))
                           (_%g2988730423%_
                            (gx#gentemps
                             (foldr (lambda (_%g3042630429%_ _%g3042730432%_)
                                      (cons _%g3042630429%_ _%g3042730432%_))
                                    '()
                                    _%L29872%_)))))
                       _%var2982929868%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2982429848%_
                                               _%target2982129842%_
                                               '()))
                                            (_%g2981829835%_
                                             _%g2981929839%_)))))
                                  (_%g2981829835%_ _%g2981929839%_)))))
                      (_%g2981730435%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd29813%_)))))
                 (_%generate-simple-vector29195%_
                  (lambda (_%tgt29653%_
                           _%body29655%_
                           _%start29656%_
                           _%K29657%_
                           _%E29658%_)
                    (let _%recur29660%_ ((_%rest29663%_ _%body29655%_)
                                         (_%off29665%_ _%start29656%_))
                      (let* ((_%__stx3914539146%_ _%rest29663%_)
                             (_%g2966829680%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3914539146%_))))
                        (let ((_%__kont3914839149%_
                               (lambda (_%L29708%_ _%L29710%_)
                                 (let* ((_%g2972529744%_
                                         (lambda (_%g2972629740%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2972629740%_)))
                                        (_%g2972429803%_
                                         (lambda (_%g2972629748%_)
                                           (if (gx#stx-pair? _%g2972629748%_)
                                               (let ((_%e2973029751%_
                                                      (gx#syntax-e
                                                       _%g2972629748%_)))
                                                 (let ((_%hd2973129755%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2973029751%_)))
                                                       (_%tl2973229758%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2973029751%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2973229758%_)
                                                       (let ((_%e2973329761%_
                                                              (gx#syntax-e
                                                               _%tl2973229758%_)))
                                                         (let ((_%hd2973429765%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2973329761%_)))
                       (_%tl2973529768%_
                        (let () (declare (not safe)) (##cdr _%e2973329761%_))))
                   (if (gx#stx-pair? _%tl2973529768%_)
                       (let ((_%e2973629771%_ (gx#syntax-e _%tl2973529768%_)))
                         (let ((_%hd2973729775%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e2973629771%_)))
                               (_%tl2973829778%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e2973629771%_))))
                           (if (gx#stx-null? _%tl2973829778%_)
                               ((lambda (_%L29781%_ _%L29783%_ _%L29784%_)
                                  (cons 'let
                                        (cons (cons (cons _%L29784%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##vector-ref)
                              (cons _%L29783%_ (cons _%L29781%_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (_%generate129192%_
                                                     _%L29784%_
                                                     _%L29710%_
                                                     (_%recur29660%_
                                                      _%L29708%_
                                                      (fx1+ _%off29665%_))
                                                     _%E29658%_)
                                                    '()))))
                                _%hd2973729775%_
                                _%hd2973429765%_
                                _%hd2973129755%_)
                               (_%g2972529744%_ _%g2972629748%_))))
                       (_%g2972529744%_ _%g2972629748%_))))
               (_%g2972529744%_ _%g2972629748%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2972529744%_
                                                _%g2972629748%_)))))
                                   (_%g2972429803%_
                                    (list (gx#genident 'e)
                                          _%tgt29653%_
                                          _%off29665%_)))))
                              (_%__kont3915039151%_ (lambda () _%K29657%_)))
                          (if (gx#stx-pair? _%__stx3914539146%_)
                              (let ((_%e2967229698%_
                                     (gx#syntax-e _%__stx3914539146%_)))
                                (let ((_%tl2967429705%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2967229698%_)))
                                      (_%hd2967329702%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2967229698%_))))
                                  (_%__kont3914839149%_
                                   _%tl2967429705%_
                                   _%hd2967329702%_)))
                              (_%__kont3915039151%_)))))))
                 (_%generate-list-vector29196%_
                  (lambda (_%tgt29545%_
                           _%body29547%_
                           _%->list29548%_
                           _%K29549%_
                           _%E29550%_)
                    (let* ((_%g2955229560%_
                            (lambda (_%g2955329556%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2955329556%_)))
                           (_%g2955129649%_
                            (lambda (_%g2955329564%_)
                              ((lambda (_%L29567%_)
                                 (let* ((_%g2957929587%_
                                         (lambda (_%g2958029583%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2958029583%_)))
                                        (_%g2957829645%_
                                         (lambda (_%g2958029591%_)
                                           ((lambda (_%L29594%_)
                                              (let* ((_%g2960729615%_
                                                      (lambda (_%g2960829611%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2960829611%_)))
                                                     (_%g2960629637%_
                                                      (lambda (_%g2960829619%_)
                                                        ((lambda (_%L29622%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%L29567%_ (cons _%L29622%_ '()))
                                     '())
                               (cons (_%generate129192%_
                                      _%L29567%_
                                      _%body29547%_
                                      _%K29549%_
                                      _%E29550%_)
                                     '()))))
                 _%g2960829619%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2960629637%_
                                                 (let ((_%$e29641%_
                                                        _%->list29548%_))
                                                   (if (eq? 'values->list
                                                            _%$e29641%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%L29594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e29641%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%L29594%_ '()))
                   (if (eq? 'struct->list _%$e29641%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          '##structure->list)
                                         (cons _%L29594%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx29185%_
                        _%->list29548%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2958029591%_))))
                                   (_%g2957829645%_ _%tgt29545%_)))
                               _%g2955329564%_))))
                      (_%g2955129649%_ (gx#genident 'e)))))
                 (_%generate-struct29197%_
                  (lambda (_%info29416%_
                           _%tgt29418%_
                           _%body29419%_
                           _%K29420%_
                           _%E29421%_)
                    (let* ((_%__stx3916139162%_ _%body29419%_)
                           (_%g2942429447%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3916139162%_))))
                      (let ((_%__kont3916439165%_
                             (lambda (_%L29524%_)
                               (let ((_%fields29538%_
                                      (_%struct-field-accessors29199%_
                                       _%info29416%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj39915
                                                          _%info29416%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj39915
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj39915
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj39915
                                                          'predicate)))
                                                   (cons _%tgt29418%_ '()))
                                             (cons (_%generate-simple-struct-body29198%_
                                                    _%info29416%_
                                                    _%tgt29418%_
                                                    _%L29524%_
                                                    _%K29420%_
                                                    _%E29421%_)
                                                   (cons _%E29421%_ '())))))))
                            (_%__kont3916639167%_
                             (lambda (_%L29478%_)
                               (cons 'if
                                     (cons (cons (let ((__obj39916
                                                        _%info29416%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj39916
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj39916
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj39916
                                                        'predicate)))
                                                 (cons _%tgt29418%_ '()))
                                           (cons (_%generate-list-vector29196%_
                                                  _%tgt29418%_
                                                  _%L29478%_
                                                  'struct->list
                                                  _%K29420%_
                                                  _%E29421%_)
                                                 (cons _%E29421%_ '())))))))
                        (if (gx#stx-pair? _%__stx3916139162%_)
                            (let ((_%e2942729500%_
                                   (gx#syntax-e _%__stx3916139162%_)))
                              (let ((_%tl2942929507%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2942729500%_)))
                                    (_%hd2942829504%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2942729500%_))))
                                (if (gx#stx-datum? _%hd2942829504%_)
                                    (let ((_%e2943029510%_
                                           (gx#stx-e _%hd2942829504%_)))
                                      (if (equal? _%e2943029510%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2942929507%_)
                                              (let ((_%e2943129514%_
                                                     (gx#syntax-e
                                                      _%tl2942929507%_)))
                                                (let ((_%tl2943329521%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2943129514%_)))
                                                      (_%hd2943229518%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2943129514%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2943329521%_)
                                                      (_%__kont3916439165%_
                                                       _%hd2943229518%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2942429447%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2942429447%_)))
                                          (if (equal? _%e2943029510%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2942929507%_)
                                                  (let ((_%e2943929468%_
                                                         (gx#syntax-e
                                                          _%tl2942929507%_)))
                                                    (let ((_%tl2944129475%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2943929468%_)))
                                                          (_%hd2944029472%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2943929468%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2944129475%_)
                                                          (_%__kont3916639167%_
                                                           _%hd2944029472%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2942429447%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2942429447%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2942429447%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2942429447%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2942429447%_)))))))
                 (_%generate-simple-struct-body29198%_
                  (lambda (_%info29336%_
                           _%tgt29338%_
                           _%body29339%_
                           _%K29340%_
                           _%E29341%_)
                    (let _%recur29343%_ ((_%rest29346%_ _%body29339%_)
                                         (_%fields29348%_
                                          (_%struct-field-accessors29199%_
                                           _%info29336%_)))
                      (let* ((_%__stx3921139212%_ _%rest29346%_)
                             (_%g2935129363%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3921139212%_))))
                        (let ((_%__kont3921439215%_
                               (lambda (_%L29391%_ _%L29393%_)
                                 (if (null? _%fields29348%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29185%_
                                      _%info29336%_
                                      (let ((__obj39917 _%info29336%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39917
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39917
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39917
                                             'name))))
                                     (let ((_%$tgt29408%_ (gx#genident 'e))
                                           (_%getf29410%_
                                            (car _%fields29348%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29408%_
                                                               (cons (cons _%getf29410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29338%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129192%_
                                                          _%$tgt29408%_
                                                          _%L29393%_
                                                          (_%recur29343%_
                                                           _%L29391%_
                                                           (cdr _%fields29348%_))
                                                          _%E29341%_)
                                                         '())))))))
                              (_%__kont3921639217%_ (lambda () _%K29340%_)))
                          (if (gx#stx-pair? _%__stx3921139212%_)
                              (let ((_%e2935529381%_
                                     (gx#syntax-e _%__stx3921139212%_)))
                                (let ((_%tl2935729388%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2935529381%_)))
                                      (_%hd2935629385%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2935529381%_))))
                                  (_%__kont3921439215%_
                                   _%tl2935729388%_
                                   _%hd2935629385%_)))
                              (_%__kont3921639217%_)))))))
                 (_%struct-field-accessors29199%_
                  (lambda (_%info29317%_)
                    (let _%recur29320%_ ((_%next29323%_
                                          (cons _%info29317%_ '())))
                      (if (null? _%next29323%_)
                          '()
                          (let ((_%ti29326%_ (car _%next29323%_)))
                            (let ((__tmp39949
                                   (_%recur29320%_
                                    (map gx#syntax-local-value
                                         (let ((__obj39918 _%ti29326%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj39918
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj39918
                                                  '3
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj39918
                                                'super))))))
                                  (__tmp39948
                                   (map (lambda (_%slot29329%_)
                                          (let ((_%$e29332%_
                                                 (assgetq _%slot29329%_
                                                          (let ((__obj39919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ti29326%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-direct-instance-of?
                           __obj39919
                           'gerbil.core#class-type-info::t))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref __obj39919 '17 '#f '#f))
                        (class-slot-ref
                         gerbil/core/mop~MOP-2#class-type-info::t
                         __obj39919
                         'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29332%_
                                                _%$e29332%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29185%_
                                                 _%info29317%_
                                                 _%slot29329%_))))
                                        (let ((__obj39920 _%ti29326%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj39920
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj39920
                                                 '4
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj39920
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp39949 __tmp39948)))))))
                 (_%generate-class29200%_
                  (lambda (_%info29310%_
                           _%tgt29312%_
                           _%body29313%_
                           _%K29314%_
                           _%E29315%_)
                    (cons 'if
                          (cons (cons (let ((__obj39921 _%info29310%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39921
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39921
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39921
                                             'predicate)))
                                      (cons _%tgt29312%_ '()))
                                (cons (_%generate-class-body29201%_
                                       _%info29310%_
                                       _%tgt29312%_
                                       _%body29313%_
                                       _%K29314%_
                                       _%E29315%_)
                                      (cons _%E29315%_ '()))))))
                 (_%generate-class-body29201%_
                  (lambda (_%info29203%_
                           _%tgt29205%_
                           _%body29206%_
                           _%K29207%_
                           _%E29208%_)
                    (let _%recur29210%_ ((_%rest29213%_ _%body29206%_))
                      (let* ((_%__stx3922739228%_ _%rest29213%_)
                             (_%g2921729233%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3922739228%_))))
                        (let ((_%__kont3923039231%_
                               (lambda (_%L29271%_ _%L29273%_ _%L29274%_)
                                 (let ((_%$e29294%_
                                        (assgetq (let ((__tmp39950
                                                        (keyword->string
                                                         (gx#stx-e
                                                          _%L29274%_))))
                                                   (declare (not safe))
                                                   (##string->symbol
                                                    __tmp39950))
                                                 (let ((__obj39922
                                                        _%info29203%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj39922
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj39922
                                                          '17
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj39922
                                                        'unchecked-accessors))))))
                                   (if _%$e29294%_
                                       ((lambda (_%getf29298%_)
                                          (let ((_%$tgt29301%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt29301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf29298%_ (cons _%tgt29205%_ '()))
                                  '()))
                      '())
                (cons (_%generate129192%_
                       _%$tgt29301%_
                       _%L29273%_
                       (_%recur29210%_ _%L29271%_)
                       _%E29208%_)
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e29294%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx29185%_
                                        _%info29203%_
                                        _%L29274%_)))))
                              (_%__kont3923239233%_ (lambda () _%K29207%_)))
                          (if (gx#stx-pair? _%__stx3922739228%_)
                              (let ((_%e2922229251%_
                                     (gx#syntax-e _%__stx3922739228%_)))
                                (let ((_%tl2922429258%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2922229251%_)))
                                      (_%hd2922329255%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2922229251%_))))
                                  (if (gx#stx-pair? _%tl2922429258%_)
                                      (let ((_%e2922529261%_
                                             (gx#syntax-e _%tl2922429258%_)))
                                        (let ((_%tl2922729268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2922529261%_)))
                                              (_%hd2922629265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2922529261%_))))
                                          (_%__kont3923039231%_
                                           _%tl2922729268%_
                                           _%hd2922629265%_
                                           _%hd2922329255%_)))
                                      (_%__kont3923239233%_))))
                              (_%__kont3923239233%_))))))))
          (_%generate129192%_
           _%tgt29187%_
           _%ptree29188%_
           _%K29189%_
           _%E29190%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx27998%_ _%tgt-lst28000%_ _%clauses28001%_)
        (letrec ((_%parse-body28003%_
                  (lambda (_%hd-len29007%_)
                    (let _%lp29010%_ ((_%rest29013%_ _%clauses28001%_)
                                      (_%r29015%_ '()))
                      (let* ((_%__stx3927739278%_ _%rest29013%_)
                             (_%g2901829030%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3927739278%_))))
                        (let ((_%__kont3928039281%_
                               (lambda (_%L29058%_ _%L29060%_)
                                 (let* ((_%__stx3924939250%_ _%L29060%_)
                                        (_%g2907729093%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3924939250%_))))
                                   (let ((_%__kont3925239253%_
                                          (lambda (_%L29162%_)
                                            (if (gx#stx-null? _%L29058%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%L29162%_)
                                 (let ((_%$e29173%_
                                        (gx#stx-source _%L29060%_)))
                                   (if _%$e29173%_
                                       _%$e29173%_
                                       (gx#stx-source _%stx27998%_))))
                                '())))
              _%r29015%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx27998%_
                                                 _%L29060%_))))
                                         (_%__kont3925439255%_
                                          (lambda (_%L29121%_ _%L29123%_)
                                            (_%lp29010%_
                                             _%L29058%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g2913529137%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g2913529137%_
                           _%stx27998%_))
                        _%L29123%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin) _%L29121%_)
                              (let ((_%$e29141%_ (gx#stx-source _%L29060%_)))
                                (if _%$e29141%_
                                    _%$e29141%_
                                    (gx#stx-source _%stx27998%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r29015%_))))
                                         (_%__kont3925639257%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx27998%_
                                             _%L29060%_))))
                                     (let* ((_%__match3927439275%_
                                             (lambda (_%e2908529111%_
                                                      _%hd2908629115%_
                                                      _%tl2908729118%_)
                                               (let ((_%L29121%_
                                                      _%tl2908729118%_)
                                                     (_%L29123%_
                                                      _%hd2908629115%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29123%_)
                                                          (fx= (gx#stx-length
                                                                _%L29123%_)
                                                               _%hd-len29007%_)
                                                          (gx#stx-list?
                                                           _%L29121%_)
                                                          (not (gx#stx-null?
                                                                _%L29121%_)))
                                                     (_%__kont3925439255%_
                                                      _%L29121%_
                                                      _%L29123%_)
                                                     (_%__kont3925639257%_)))))
                                            (_%__match3926839269%_
                                             (lambda (_%e2908029152%_
                                                      _%hd2908129156%_
                                                      _%tl2908229159%_)
                                               (let ((_%L29162%_
                                                      _%tl2908229159%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29162%_)
                                                          (not (gx#stx-null?
                                                                _%L29162%_)))
                                                     (_%__kont3925239253%_
                                                      _%L29162%_)
                                                     (_%__match3927439275%_
                                                      _%e2908029152%_
                                                      _%hd2908129156%_
                                                      _%tl2908229159%_))))))
                                       (if (gx#stx-pair? _%__stx3924939250%_)
                                           (let ((_%e2908029152%_
                                                  (gx#syntax-e
                                                   _%__stx3924939250%_)))
                                             (let ((_%tl2908229159%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2908029152%_)))
                                                   (_%hd2908129156%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2908029152%_))))
                                               (if (gx#identifier?
                                                    _%hd2908129156%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g39951_|
                                                        _%hd2908129156%_)
                                                       (_%__match3926839269%_
                                                        _%e2908029152%_
                                                        _%hd2908129156%_
                                                        _%tl2908229159%_)
                                                       (_%__match3927439275%_
                                                        _%e2908029152%_
                                                        _%hd2908129156%_
                                                        _%tl2908229159%_))
                                                   (_%__match3927439275%_
                                                    _%e2908029152%_
                                                    _%hd2908129156%_
                                                    _%tl2908229159%_))))
                                           (_%__kont3925639257%_)))))))
                              (_%__kont3928239283%_ (lambda () _%r29015%_)))
                          (if (gx#stx-pair? _%__stx3927739278%_)
                              (let ((_%e2902229048%_
                                     (gx#syntax-e _%__stx3927739278%_)))
                                (let ((_%tl2902429055%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2902229048%_)))
                                      (_%hd2902329052%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2902229048%_))))
                                  (_%__kont3928039281%_
                                   _%tl2902429055%_
                                   _%hd2902329052%_)))
                              (_%__kont3928239283%_)))))))
                 (_%generate-body28005%_
                  (lambda (_%body28709%_)
                    (let* ((_%g2871228720%_
                            (lambda (_%g2871328716%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2871328716%_)))
                           (_%g2871129003%_
                            (lambda (_%g2871328724%_)
                              ((lambda (_%L28727%_)
                                 (let* ((_%g2873928756%_
                                         (lambda (_%g2874028752%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2874028752%_)))
                                        (_%g2873828999%_
                                         (lambda (_%g2874028760%_)
                                           (if (gx#stx-pair/null?
                                                _%g2874028760%_)
                                               (let ((_g39952_
                                                      (gx#syntax-split-splice
                                                       _%g2874028760%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39953_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39952_)
                        (##vector-length _g39952_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39953_ 2)))
                 (error "Context expects 2 values" _g39953_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target2874228763%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g39952_
                                                             0)))
                                                         (_%tl2874428766%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g39952_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl2874428766%_)
                                                         (letrec ((_%loop2874528769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd2874328773%_ _%target2874928776%_)
                             (if (gx#stx-pair? _%hd2874328773%_)
                                 (let ((_%e2874628779%_
                                        (gx#syntax-e _%hd2874328773%_)))
                                   (let ((_%lp-hd2874728783%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2874628779%_)))
                                         (_%lp-tl2874828786%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2874628779%_))))
                                     (_%loop2874528769%_
                                      _%lp-tl2874828786%_
                                      (cons _%lp-hd2874728783%_
                                            _%target2874928776%_))))
                                 (let ((_%target2875028789%_
                                        (reverse _%target2874928776%_)))
                                   ((lambda (_%L28793%_)
                                      (let* ((_%g2881028827%_
                                              (lambda (_%g2881128823%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2881128823%_)))
                                             (_%g2880928995%_
                                              (lambda (_%g2881128831%_)
                                                (if (gx#stx-pair/null?
                                                     _%g2881128831%_)
                                                    (let ((_g39954_
                                                           (gx#syntax-split-splice
                                                            _%g2881128831%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g39955_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g39954_)
                             (##vector-length _g39954_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g39955_ 2)))
                      (error "Context expects 2 values" _g39955_)))
                (let ((_%target2881328834%_
                       (let () (declare (not safe)) (##vector-ref _g39954_ 0)))
                      (_%tl2881528837%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g39954_ 1))))
                  (if (gx#stx-null? _%tl2881528837%_)
                      (letrec ((_%loop2881628840%_
                                (lambda (_%hd2881428844%_
                                         _%fail-diagnostic2882028847%_)
                                  (if (gx#stx-pair? _%hd2881428844%_)
                                      (let ((_%e2881728850%_
                                             (gx#syntax-e _%hd2881428844%_)))
                                        (let ((_%lp-hd2881828854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2881728850%_)))
                                              (_%lp-tl2881928857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2881728850%_))))
                                          (_%loop2881628840%_
                                           _%lp-tl2881928857%_
                                           (cons _%lp-hd2881828854%_
                                                 _%fail-diagnostic2882028847%_))))
                                      (let ((_%fail-diagnostic2882128860%_
                                             (reverse _%fail-diagnostic2882028847%_)))
                                        ((lambda (_%L28864%_)
                                           (let* ((_%g2888128889%_
                                                   (lambda (_%g2888228885%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2888228885%_)))
                                                  (_%g2888028975%_
                                                   (lambda (_%g2888228893%_)
                                                     ((lambda (_%L28896%_)
                                                        (let* ((_%g2890928917%_
                                                                (lambda (_%g2891028913%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2891028913%_)))
                       (_%g2890828971%_
                        (lambda (_%g2891028921%_)
                          ((lambda (_%L28924%_)
                             (let* ((_%g2893728945%_
                                     (lambda (_%g2893828941%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2893828941%_)))
                                    (_%g2893628967%_
                                     (lambda (_%g2893828949%_)
                                       ((lambda (_%L28952%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%L28952%_ '()))))
                                        _%g2893828949%_))))
                               (_%g2893628967%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%L28727%_
                                                         (cons _%L28896%_ '()))
                                                   '())
                                             (cons _%L28924%_ '())))
                                 (gx#stx-source _%stx27998%_)))))
                           _%g2891028921%_))))
                  (_%g2890828971%_
                   (_%generate-clauses28006%_
                    _%body28709%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%L28727%_ '()) '())))))))
              _%g2888228893%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2888028975%_
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
                                     (foldr (lambda (_%g2897828983%_
                                                     _%g2897928986%_)
                                              (cons _%g2897828983%_
                                                    _%g2897928986%_))
                                            (foldr (lambda (_%g2898028989%_
                                                            _%g2898128992%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g2898028989%_ '()))
                   _%g2898128992%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%L28864%_)
                                            _%L28793%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx27998%_)))))
                                         _%fail-diagnostic2882128860%_))))))
                        (_%loop2881628840%_ _%target2881328834%_ '()))
                      (_%g2881028827%_ _%g2881128831%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2881028827%_
                                                     _%g2881128831%_)))))
                                        (_%g2880928995%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses28001%_))))
                                    _%target2875028789%_))))))
                   (_%loop2874528769%_ _%target2874228763%_ '()))
                 (_%g2873928756%_ _%g2874028760%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2873928756%_
                                                _%g2874028760%_)))))
                                   (_%g2873828999%_ _%tgt-lst28000%_)))
                               _%g2871328724%_))))
                      (_%g2871129003%_ (gx#genident 'E)))))
                 (_%generate-clauses28006%_
                  (lambda (_%rest28361%_ _%E28363%_)
                    (let* ((_%__stx3929339294%_ _%rest28361%_)
                           (_%g2836728383%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3929339294%_))))
                      (let ((_%__kont3929639297%_
                             (lambda (_%L28617%_)
                               (let* ((_%g2862828646%_
                                       (lambda (_%g2862928642%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2862928642%_)))
                                      (_%g2862728701%_
                                       (lambda (_%g2862928650%_)
                                         (if (gx#stx-pair? _%g2862928650%_)
                                             (let ((_%e2863228653%_
                                                    (gx#syntax-e
                                                     _%g2862928650%_)))
                                               (let ((_%hd2863328657%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2863228653%_)))
                                                     (_%tl2863428660%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2863228653%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2863428660%_)
                                                     (let ((_%e2863528663%_
                                                            (gx#syntax-e
                                                             _%tl2863428660%_)))
                                                       (let ((_%hd2863628667%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2863528663%_)))
                     (_%tl2863728670%_
                      (let () (declare (not safe)) (##cdr _%e2863528663%_))))
                 (if (gx#stx-pair? _%tl2863728670%_)
                     (let ((_%e2863828673%_ (gx#syntax-e _%tl2863728670%_)))
                       (let ((_%hd2863928677%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2863828673%_)))
                             (_%tl2864028680%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2863828673%_))))
                         (if (gx#stx-null? _%tl2864028680%_)
                             ((lambda (_%L28683%_ _%L28685%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _%L28685%_)
                                                      (_%generate128007%_
                                                       _%L28685%_
                                                       _%L28683%_
                                                       _%E28363%_)
                                                      _%L28683%_)
                                                  '()))))
                              _%hd2863928677%_
                              _%hd2863628667%_)
                             (_%g2862828646%_ _%g2862928650%_))))
                     (_%g2862828646%_ _%g2862928650%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2862828646%_
                                                      _%g2862928650%_))))
                                             (_%g2862828646%_
                                              _%g2862928650%_)))))
                                 (_%g2862728701%_ _%L28617%_))))
                            (_%__kont3929839299%_
                             (lambda (_%L28411%_ _%L28413%_)
                               (let* ((_%g2842628445%_
                                       (lambda (_%g2842728441%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2842728441%_)))
                                      (_%g2842528596%_
                                       (lambda (_%g2842728449%_)
                                         (if (gx#stx-pair? _%g2842728449%_)
                                             (let ((_%e2843128452%_
                                                    (gx#syntax-e
                                                     _%g2842728449%_)))
                                               (let ((_%hd2843228456%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2843128452%_)))
                                                     (_%tl2843328459%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2843128452%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2843328459%_)
                                                     (let ((_%e2843428462%_
                                                            (gx#syntax-e
                                                             _%tl2843328459%_)))
                                                       (let ((_%hd2843528466%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2843428462%_)))
                     (_%tl2843628469%_
                      (let () (declare (not safe)) (##cdr _%e2843428462%_))))
                 (if (gx#stx-pair? _%tl2843628469%_)
                     (let ((_%e2843728472%_ (gx#syntax-e _%tl2843628469%_)))
                       (let ((_%hd2843828476%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2843728472%_)))
                             (_%tl2843928479%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2843728472%_))))
                         (if (gx#stx-null? _%tl2843928479%_)
                             ((lambda (_%L28482%_ _%L28484%_ _%L28485%_)
                                (if (gx#stx-e _%L28484%_)
                                    (let* ((_%g2850228517%_
                                            (lambda (_%g2850328513%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2850328513%_)))
                                           (_%g2850128562%_
                                            (lambda (_%g2850328521%_)
                                              (if (gx#stx-pair?
                                                   _%g2850328521%_)
                                                  (let ((_%e2850628524%_
                                                         (gx#syntax-e
                                                          _%g2850328521%_)))
                                                    (let ((_%hd2850728528%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2850628524%_)))
                                                          (_%tl2850828531%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2850628524%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl2850828531%_)
                                                          (let ((_%e2850928534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2850828531%_)))
                    (let ((_%hd2851028538%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2850928534%_)))
                          (_%tl2851128541%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2850928534%_))))
                      (if (gx#stx-null? _%tl2851128541%_)
                          ((lambda (_%L28544%_ _%L28546%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _%L28485%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%L28546%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L28544%_ '()))))
                           _%hd2851028538%_
                           _%hd2850728528%_)
                          (_%g2850228517%_ _%g2850328521%_))))
                  (_%g2850228517%_ _%g2850328521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2850228517%_
                                                   _%g2850328521%_)))))
                                      (_%g2850128562%_
                                       (list (_%generate128007%_
                                              _%L28484%_
                                              _%L28482%_
                                              _%E28363%_)
                                             (_%generate-clauses28006%_
                                              _%L28411%_
                                              (cons _%L28485%_ '())))))
                                    (let* ((_%g2856628574%_
                                            (lambda (_%g2856728570%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2856728570%_)))
                                           (_%g2856528592%_
                                            (lambda (_%g2856728578%_)
                                              ((lambda (_%L28581%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L28485%_
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
                             (cons _%L28482%_ '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons _%L28581%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2856728578%_))))
                                      (_%g2856528592%_
                                       (_%generate-clauses28006%_
                                        _%L28411%_
                                        (cons _%L28485%_ '()))))))
                              _%hd2843828476%_
                              _%hd2843528466%_
                              _%hd2843228456%_)
                             (_%g2842628445%_ _%g2842728449%_))))
                     (_%g2842628445%_ _%g2842728449%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2842628445%_
                                                      _%g2842728449%_))))
                                             (_%g2842628445%_
                                              _%g2842728449%_)))))
                                 (_%g2842528596%_ _%L28413%_))))
                            (_%__kont3930039301%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28363%_ '()))))))
                        (if (gx#stx-pair? _%__stx3929339294%_)
                            (let ((_%e2837028607%_
                                   (gx#syntax-e _%__stx3929339294%_)))
                              (let ((_%tl2837228614%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2837028607%_)))
                                    (_%hd2837128611%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2837028607%_))))
                                (if (gx#stx-null? _%tl2837228614%_)
                                    (_%__kont3929639297%_ _%hd2837128611%_)
                                    (_%__kont3929839299%_
                                     _%tl2837228614%_
                                     _%hd2837128611%_))))
                            (_%__kont3930039301%_))))))
                 (_%generate128007%_
                  (lambda (_%clause28009%_ _%body28011%_ _%E28012%_)
                    (let* ((_%g2801428038%_
                            (lambda (_%g2801528034%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2801528034%_)))
                           (_%g2801328357%_
                            (lambda (_%g2801528042%_)
                              (if (gx#stx-pair? _%g2801528042%_)
                                  (let ((_%e2801828045%_
                                         (gx#syntax-e _%g2801528042%_)))
                                    (let ((_%hd2801928049%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2801828045%_)))
                                          (_%tl2802028052%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2801828045%_))))
                                      (if (gx#stx-pair? _%tl2802028052%_)
                                          (let ((_%e2802128055%_
                                                 (gx#syntax-e
                                                  _%tl2802028052%_)))
                                            (let ((_%hd2802228059%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2802128055%_)))
                                                  (_%tl2802328062%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2802128055%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2802228059%_)
                                                  (let ((_g39956_
                                                         (gx#syntax-split-splice
                                                          _%hd2802228059%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g39957_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g39956_)
                           (##vector-length _g39956_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g39957_ 2)))
                    (error "Context expects 2 values" _g39957_)))
              (let ((_%target2802428065%_
                     (let () (declare (not safe)) (##vector-ref _g39956_ 0)))
                    (_%tl2802628068%_
                     (let () (declare (not safe)) (##vector-ref _g39956_ 1))))
                (if (gx#stx-null? _%tl2802628068%_)
                    (letrec ((_%loop2802728071%_
                              (lambda (_%hd2802528075%_ _%var2803128078%_)
                                (if (gx#stx-pair? _%hd2802528075%_)
                                    (let ((_%e2802828081%_
                                           (gx#syntax-e _%hd2802528075%_)))
                                      (let ((_%lp-hd2802928085%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2802828081%_)))
                                            (_%lp-tl2803028088%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2802828081%_))))
                                        (_%loop2802728071%_
                                         _%lp-tl2803028088%_
                                         (cons _%lp-hd2802928085%_
                                               _%var2803128078%_))))
                                    (let ((_%var2803228091%_
                                           (reverse _%var2803128078%_)))
                                      (if (gx#stx-null? _%tl2802328062%_)
                                          ((lambda (_%L28095%_ _%L28097%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g2811828121%_
                                                                _%g2811928124%_)
                                                         (cons _%g2811828121%_
                                                               _%g2811928124%_))
                                                       '()
                                                       _%L28095%_)
                                                _%stx27998%_)
                                               (let* ((_%g2812728135%_
                                                       (lambda (_%g2812828131%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2812828131%_)))
                                                      (_%g2812628229%_
                                                       (lambda (_%g2812828139%_)
                                                         ((lambda (_%L28142%_)
                                                            (let* ((_%g2815528163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2815628159%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2815628159%_)))
                           (_%g2815428225%_
                            (lambda (_%g2815628167%_)
                              ((lambda (_%L28170%_)
                                 (let* ((_%g2818328191%_
                                         (lambda (_%g2818428187%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2818428187%_)))
                                        (_%g2818228213%_
                                         (lambda (_%g2818428195%_)
                                           ((lambda (_%L28198%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L28097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L28198%_ '()))
                   (cons _%L28142%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx27998%_)))
                                            _%g2818428195%_))))
                                   (_%g2818228213%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%g2821628219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2821728222%_)
                  (cons _%g2821628219%_ _%g2821728222%_))
                '()
                _%L28095%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L28170%_ '())))
                                     (gx#stx-source _%stx27998%_)))))
                               _%g2815628167%_))))
                      (_%g2815428225%_ _%body28011%_)))
                  _%g2812828139%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2812628229%_
                                                  (let _%recur28233%_ ((_%rest28236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%clause28009%_)
                               (_%rest-targets28238%_ _%tgt-lst28000%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%__stx3931939320%_
                                                            _%rest28236%_)
                                                           (_%g2824128253%_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx3931939320%_))))
                                                      (let ((_%__kont3932239323%_
                                                             (lambda (_%L28289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L28291%_)
                       (let* ((_%g2830628318%_
                               (lambda (_%g2830728314%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2830728314%_)))
                              (_%g2830528349%_
                               (lambda (_%g2830728322%_)
                                 (if (gx#stx-pair? _%g2830728322%_)
                                     (let ((_%e2831028325%_
                                            (gx#syntax-e _%g2830728322%_)))
                                       (let ((_%hd2831128329%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2831028325%_)))
                                             (_%tl2831228332%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2831028325%_))))
                                         ((lambda (_%L28335%_ _%L28337%_)
                                            (|gerbil/core/match[1]#generate-match1|
                                             _%stx27998%_
                                             _%L28337%_
                                             _%L28291%_
                                             (_%recur28233%_
                                              _%L28289%_
                                              _%L28335%_)
                                             _%E28012%_))
                                          _%tl2831228332%_
                                          _%hd2831128329%_)))
                                     (_%g2830628318%_ _%g2830728322%_)))))
                         (_%g2830528349%_ _%rest-targets28238%_))))
                    (_%__kont3932439325%_
                     (lambda ()
                       (cons _%L28097%_
                             (foldr (lambda (_%g2826328266%_ _%g2826428269%_)
                                      (cons _%g2826328266%_ _%g2826428269%_))
                                    '()
                                    _%L28095%_)))))
                (if (gx#stx-pair? _%__stx3931939320%_)
                    (let ((_%e2824528279%_ (gx#syntax-e _%__stx3931939320%_)))
                      (let ((_%tl2824728286%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2824528279%_)))
                            (_%hd2824628283%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2824528279%_))))
                        (_%__kont3932239323%_
                         _%tl2824728286%_
                         _%hd2824628283%_)))
                    (_%__kont3932439325%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%var2803228091%_
                                           _%hd2801928049%_)
                                          (_%g2801428038%_
                                           _%g2801528042%_)))))))
                      (_%loop2802728071%_ _%target2802428065%_ '()))
                    (_%g2801428038%_ _%g2801528042%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2801428038%_
                                                   _%g2801528042%_))))
                                          (_%g2801428038%_ _%g2801528042%_))))
                                  (_%g2801428038%_ _%g2801528042%_)))))
                      (_%g2801328357%_
                       (list (gx#genident 'K)
                             (let ((__tmp39958
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause28009%_)))
                               (declare (not safe))
                               (##apply append __tmp39958))))))))
          (_%generate-body28005%_
           (_%parse-body28003%_ (gx#stx-length _%tgt-lst28000%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx27900%_ _%tgt27902%_ _%clauses27903%_)
        (letrec ((_%reclause27905%_
                  (lambda (_%clause27908%_)
                    (let* ((_%__stx3933539336%_ _%clause27908%_)
                           (_%g2791327928%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3933539336%_))))
                      (let ((_%__kont3933839339%_ (lambda () _%clause27908%_))
                            (_%__kont3934039341%_
                             (lambda (_%L27956%_ _%L27958%_)
                               (gx#stx-wrap-source
                                (cons (cons _%L27958%_ '()) _%L27956%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3934239343%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx27900%_
                                _%clause27908%_))))
                        (if (gx#stx-pair? _%__stx3933539336%_)
                            (let ((_%e2791527980%_
                                   (gx#syntax-e _%__stx3933539336%_)))
                              (let ((_%tl2791727987%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2791527980%_)))
                                    (_%hd2791627984%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2791527980%_))))
                                (if (gx#identifier? _%hd2791627984%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39959_|
                                         _%hd2791627984%_)
                                        (_%__kont3933839339%_)
                                        (_%__kont3934039341%_
                                         _%tl2791727987%_
                                         _%hd2791627984%_))
                                    (_%__kont3934039341%_
                                     _%tl2791727987%_
                                     _%hd2791627984%_))))
                            (_%__kont3934239343%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx27900%_
           (cons _%tgt27902%_ '())
           (gx#stx-map _%reclause27905%_ _%clauses27903%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35236%_)
        (let* ((_%__stx3936339364%_ _%stx35236%_)
               (_%g3524135270%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3936339364%_))))
          (let ((_%__kont3936639367%_
                 (lambda (_%L35510%_)
                   (let* ((_%g3552335531%_
                           (lambda (_%g3552435527%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3552435527%_)))
                          (_%g3552235584%_
                           (lambda (_%g3552435535%_)
                             ((lambda (_%L35538%_)
                                (let* ((_%g3555035558%_
                                        (lambda (_%g3555135554%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3555135554%_)))
                                       (_%g3554935580%_
                                        (lambda (_%g3555135562%_)
                                          ((lambda (_%L35565%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%L35538%_ '())
                                                         (cons _%L35565%_
                                                               '()))))
                                           _%g3555135562%_))))
                                  (_%g3554935580%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%L35538%_ _%L35510%_))
                                    (gx#stx-source _%stx35236%_)))))
                              _%g3552435535%_))))
                     (_%g3552235584%_ (gx#genident 'e)))))
                (_%__kont3936839369%_
                 (lambda (_%L35405%_)
                   (let* ((_%g3541835426%_
                           (lambda (_%g3541935422%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3541935422%_)))
                          (_%g3541735479%_
                           (lambda (_%g3541935430%_)
                             ((lambda (_%L35433%_)
                                (let* ((_%g3544535453%_
                                        (lambda (_%g3544635449%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3544635449%_)))
                                       (_%g3544435475%_
                                        (lambda (_%g3544635457%_)
                                          ((lambda (_%L35460%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%L35433%_
                                                         (cons _%L35460%_
                                                               '()))))
                                           _%g3544635457%_))))
                                  (_%g3544435475%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%L35433%_ _%L35405%_))
                                    (gx#stx-source _%stx35236%_)))))
                              _%g3541935430%_))))
                     (_%g3541735479%_ (gx#genident 'args)))))
                (_%__kont3937039371%_
                 (lambda (_%L35297%_ _%L35299%_)
                   (let* ((_%g3531335321%_
                           (lambda (_%g3531435317%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3531435317%_)))
                          (_%g3531235374%_
                           (lambda (_%g3531435325%_)
                             ((lambda (_%L35328%_)
                                (let* ((_%g3534035348%_
                                        (lambda (_%g3534135344%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3534135344%_)))
                                       (_%g3533935370%_
                                        (lambda (_%g3534135352%_)
                                          ((lambda (_%L35355%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L35328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L35299%_ '()))
                       '())
                 (cons _%L35355%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3534135352%_))))
                                  (_%g3533935370%_
                                   (|gerbil/core/match[1]#generate-match|
                                    _%stx35236%_
                                    _%L35328%_
                                    _%L35297%_))))
                              _%g3531435325%_))))
                     (_%g3531235374%_ (gx#genident _%L35299%_))))))
            (let* ((_%__match3941639417%_
                    (lambda (_%e3525935277%_
                             _%hd3526035281%_
                             _%tl3526135284%_
                             _%e3526235287%_
                             _%hd3526335291%_
                             _%tl3526435294%_)
                      (let ((_%L35297%_ _%tl3526435294%_)
                            (_%L35299%_ _%hd3526335291%_))
                        (if (gx#stx-list? _%L35297%_)
                            (_%__kont3937039371%_ _%L35297%_ _%L35299%_)
                            (let () (declare (not safe)) (_%g3524135270%_))))))
                   (_%__match3940439405%_
                    (lambda (_%e3525135385%_
                             _%hd3525235389%_
                             _%tl3525335392%_
                             _%e3525435395%_
                             _%hd3525535399%_
                             _%tl3525635402%_)
                      (let ((_%L35405%_ _%tl3525635402%_))
                        (if (gx#stx-list? _%L35405%_)
                            (_%__kont3936839369%_ _%L35405%_)
                            (_%__match3941639417%_
                             _%e3525135385%_
                             _%hd3525235389%_
                             _%tl3525335392%_
                             _%e3525435395%_
                             _%hd3525535399%_
                             _%tl3525635402%_)))))
                   (_%__match3938839389%_
                    (lambda (_%e3524435490%_
                             _%hd3524535494%_
                             _%tl3524635497%_
                             _%e3524735500%_
                             _%hd3524835504%_
                             _%tl3524935507%_)
                      (let ((_%L35510%_ _%tl3524935507%_))
                        (if (gx#stx-list? _%L35510%_)
                            (_%__kont3936639367%_ _%L35510%_)
                            (_%__match3941639417%_
                             _%e3524435490%_
                             _%hd3524535494%_
                             _%tl3524635497%_
                             _%e3524735500%_
                             _%hd3524835504%_
                             _%tl3524935507%_))))))
              (if (gx#stx-pair? _%__stx3936339364%_)
                  (let ((_%e3524435490%_ (gx#syntax-e _%__stx3936339364%_)))
                    (let ((_%tl3524635497%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3524435490%_)))
                          (_%hd3524535494%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3524435490%_))))
                      (if (gx#stx-pair? _%tl3524635497%_)
                          (let ((_%e3524735500%_
                                 (gx#syntax-e _%tl3524635497%_)))
                            (let ((_%tl3524935507%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3524735500%_)))
                                  (_%hd3524835504%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3524735500%_))))
                              (if (gx#identifier? _%hd3524835504%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39960_|
                                       _%hd3524835504%_)
                                      (_%__match3938839389%_
                                       _%e3524435490%_
                                       _%hd3524535494%_
                                       _%tl3524635497%_
                                       _%e3524735500%_
                                       _%hd3524835504%_
                                       _%tl3524935507%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39961_|
                                           _%hd3524835504%_)
                                          (_%__match3940439405%_
                                           _%e3524435490%_
                                           _%hd3524535494%_
                                           _%tl3524635497%_
                                           _%e3524735500%_
                                           _%hd3524835504%_
                                           _%tl3524935507%_)
                                          (_%__match3941639417%_
                                           _%e3524435490%_
                                           _%hd3524535494%_
                                           _%tl3524635497%_
                                           _%e3524735500%_
                                           _%hd3524835504%_
                                           _%tl3524935507%_)))
                                  (_%__match3941639417%_
                                   _%e3524435490%_
                                   _%hd3524535494%_
                                   _%tl3524635497%_
                                   _%e3524735500%_
                                   _%hd3524835504%_
                                   _%tl3524935507%_))))
                          (let () (declare (not safe)) (_%g3524135270%_)))))
                  (let () (declare (not safe)) (_%g3524135270%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx35592%_)
        (let* ((_%g3559535619%_
                (lambda (_%g3559635615%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3559635615%_)))
               (_%g3559435831%_
                (lambda (_%g3559635623%_)
                  (if (gx#stx-pair? _%g3559635623%_)
                      (let ((_%e3559935626%_ (gx#syntax-e _%g3559635623%_)))
                        (let ((_%hd3560035630%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3559935626%_)))
                              (_%tl3560135633%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3559935626%_))))
                          (if (gx#stx-pair? _%tl3560135633%_)
                              (let ((_%e3560235636%_
                                     (gx#syntax-e _%tl3560135633%_)))
                                (let ((_%hd3560335640%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3560235636%_)))
                                      (_%tl3560435643%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3560235636%_))))
                                  (if (gx#stx-pair/null? _%hd3560335640%_)
                                      (let ((_g39962_
                                             (gx#syntax-split-splice
                                              _%hd3560335640%_
                                              '0)))
                                        (begin
                                          (let ((_g39963_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39962_)
                                                       (##vector-length
                                                        _g39962_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39963_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39963_)))
                                          (let ((_%target3560535646%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g39962_ 0)))
                                                (_%tl3560735649%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g39962_ 1))))
                                            (if (gx#stx-null? _%tl3560735649%_)
                                                (letrec ((_%loop3560835652%_
                                                          (lambda (_%hd3560635656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3561235659%_)
                    (if (gx#stx-pair? _%hd3560635656%_)
                        (let ((_%e3560935662%_ (gx#syntax-e _%hd3560635656%_)))
                          (let ((_%lp-hd3561035666%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3560935662%_)))
                                (_%lp-tl3561135669%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3560935662%_))))
                            (_%loop3560835652%_
                             _%lp-tl3561135669%_
                             (cons _%lp-hd3561035666%_ _%e3561235659%_))))
                        (let ((_%e3561335672%_ (reverse _%e3561235659%_)))
                          ((lambda (_%L35676%_ _%L35678%_)
                             (if (gx#stx-list? _%L35676%_)
                                 (let* ((_%g3569635713%_
                                         (lambda (_%g3569735709%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3569735709%_)))
                                        (_%g3569535819%_
                                         (lambda (_%g3569735717%_)
                                           (if (gx#stx-pair/null?
                                                _%g3569735717%_)
                                               (let ((_g39964_
                                                      (gx#syntax-split-splice
                                                       _%g3569735717%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39965_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39964_)
                        (##vector-length _g39964_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39965_ 2)))
                 (error "Context expects 2 values" _g39965_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3569935720%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g39964_
                                                             0)))
                                                         (_%tl3570135723%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g39964_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3570135723%_)
                                                         (letrec ((_%loop3570235726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3570035730%_ _%$e3570635733%_)
                             (if (gx#stx-pair? _%hd3570035730%_)
                                 (let ((_%e3570335736%_
                                        (gx#syntax-e _%hd3570035730%_)))
                                   (let ((_%lp-hd3570435740%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3570335736%_)))
                                         (_%lp-tl3570535743%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3570335736%_))))
                                     (_%loop3570235726%_
                                      _%lp-tl3570535743%_
                                      (cons _%lp-hd3570435740%_
                                            _%$e3570635733%_))))
                                 (let ((_%$e3570735746%_
                                        (reverse _%$e3570635733%_)))
                                   ((lambda (_%L35750%_)
                                      (let* ((_%g3576635774%_
                                              (lambda (_%g3576735770%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g3576735770%_)))
                                             (_%g3576535807%_
                                              (lambda (_%g3576735778%_)
                                                ((lambda (_%L35781%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _%L35678%_ _%L35750%_)
                         (foldr (lambda (_%g3579535799%_
                                         _%g3579635802%_
                                         _%g3579735804%_)
                                  (cons (cons _%g3579635802%_
                                              (cons _%g3579535799%_ '()))
                                        _%g3579735804%_))
                                '()
                                _%L35678%_
                                _%L35750%_))
                       (cons _%L35781%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g3576735778%_))))
                                        (_%g3576535807%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx35592%_
                                          (foldr (lambda (_%g3581035813%_
                                                          _%g3581135816%_)
                                                   (cons _%g3581035813%_
                                                         _%g3581135816%_))
                                                 '()
                                                 _%L35750%_)
                                          _%L35676%_))))
                                    _%$e3570735746%_))))))
                   (_%loop3570235726%_ _%target3569935720%_ '()))
                 (_%g3569635713%_ _%g3569735717%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3569635713%_
                                                _%g3569735717%_)))))
                                   (_%g3569535819%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g3582235825%_
                                                     _%g3582335828%_)
                                              (cons _%g3582235825%_
                                                    _%g3582335828%_))
                                            '()
                                            _%L35678%_))))
                                 (_%g3559535619%_ _%g3559635623%_)))
                           _%tl3560435643%_
                           _%e3561335672%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3560835652%_
                                                   _%target3560535646%_
                                                   '()))
                                                (_%g3559535619%_
                                                 _%g3559635623%_)))))
                                      (_%g3559535619%_ _%g3559635623%_))))
                              (_%g3559535619%_ _%g3559635623%_))))
                      (_%g3559535619%_ _%g3559635623%_)))))
          (_%g3559435831%_ _%stx35592%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx35837%_)
        (let* ((_%__stx3941939420%_ _%$stx35837%_)
               (_%g3584335926%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3941939420%_))))
          (let ((_%__kont3942239423%_
                 (lambda (_%L36256%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3627236275%_ _%g3627336278%_)
                                        (cons _%g3627236275%_ _%g3627336278%_))
                                      '()
                                      _%L36256%_)))))
                (_%__kont3942639427%_
                 (lambda (_%L36164%_ _%L36166%_ _%L36167%_ _%L36168%_)
                   (cons _%L36168%_
                         (cons (cons (cons _%L36167%_ (cons _%L36166%_ '()))
                                     '())
                               (foldr (lambda (_%g3619036193%_ _%g3619136196%_)
                                        (cons _%g3619036193%_ _%g3619136196%_))
                                      '()
                                      _%L36164%_)))))
                (_%__kont3943039431%_
                 (lambda (_%L36037%_ _%L36039%_ _%L36040%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3606636069%_ _%g3606736072%_)
                                        (cons _%g3606636069%_ _%g3606736072%_))
                                      '()
                                      _%L36039%_)
                               (cons (cons (foldr (lambda (_%g3606436075%_
                                                           _%g3606536078%_)
                                                    (cons _%g3606436075%_
                                                          _%g3606536078%_))
                                                  '()
                                                  _%L36040%_)
                                           (foldr (lambda (_%g3606236081%_
                                                           _%g3606336084%_)
                                                    (cons _%g3606236081%_
                                                          _%g3606336084%_))
                                                  '()
                                                  _%L36037%_))
                                     '()))))))
            (let* ((_%__match3951239513%_
                    (lambda (_%e3588935933%_
                             _%hd3589035937%_
                             _%tl3589135940%_
                             _%e3589235943%_
                             _%hd3589335947%_
                             _%tl3589435950%_
                             _%__splice3943239433%_
                             _%target3589535953%_
                             _%tl3589735956%_)
                      (letrec ((_%loop3589835959%_
                                (lambda (_%hd3589635963%_
                                         _%expr3590235966%_
                                         _%hd3590335968%_)
                                  (if (gx#stx-pair? _%hd3589635963%_)
                                      (let ((_%e3589935971%_
                                             (gx#syntax-e _%hd3589635963%_)))
                                        (let ((_%lp-tl3590135978%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3589935971%_)))
                                              (_%lp-hd3590035975%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3589935971%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3590035975%_)
                                              (let ((_%e3591535981%_
                                                     (gx#syntax-e
                                                      _%lp-hd3590035975%_)))
                                                (let ((_%tl3591735988%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3591535981%_)))
                                                      (_%hd3591635985%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3591535981%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3591735988%_)
                                                      (let ((_%e3591835991%_
                                                             (gx#syntax-e
                                                              _%tl3591735988%_)))
                                                        (let ((_%tl3592035998%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3591835991%_)))
                      (_%hd3591935995%_
                       (let () (declare (not safe)) (##car _%e3591835991%_))))
                  (if (gx#stx-null? _%tl3592035998%_)
                      (_%loop3589835959%_
                       _%lp-tl3590135978%_
                       (cons _%hd3591935995%_ _%expr3590235966%_)
                       (cons _%hd3591635985%_ _%hd3590335968%_))
                      (let () (declare (not safe)) (_%g3584335926%_)))))
              (let () (declare (not safe)) (_%g3584335926%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3584335926%_)))))
                                      (let ((_%hd3590536004%_
                                             (reverse _%hd3590335968%_))
                                            (_%expr3590436001%_
                                             (reverse _%expr3590235966%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3589435950%_)
                                            (let ((_%__splice3943439435%_
                                                   (gx#syntax-split-splice
                                                    _%tl3589435950%_
                                                    '0)))
                                              (let ((_%tl3590836010%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3943439435%_
                                                        '1)))
                                                    (_%target3590636007%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3943439435%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3590836010%_)
                                                    (letrec ((_%loop3590936013%_
                                                              (lambda (_%hd3590736017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3591336020%_)
                        (if (gx#stx-pair? _%hd3590736017%_)
                            (let ((_%e3591036023%_
                                   (gx#syntax-e _%hd3590736017%_)))
                              (let ((_%lp-tl3591236030%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3591036023%_)))
                                    (_%lp-hd3591136027%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3591036023%_))))
                                (_%loop3590936013%_
                                 _%lp-tl3591236030%_
                                 (cons _%lp-hd3591136027%_
                                       _%body3591336020%_))))
                            (let ((_%body3591436033%_
                                   (reverse _%body3591336020%_)))
                              (_%__kont3943039431%_
                               _%body3591436033%_
                               _%expr3590436001%_
                               _%hd3590536004%_))))))
              (_%loop3590936013%_ _%target3590636007%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3584335926%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3584335926%_))))))))
                        (_%loop3589835959%_ _%target3589535953%_ '() '()))))
                   (_%__match3950439505%_
                    (lambda (_%e3588935933%_
                             _%hd3589035937%_
                             _%tl3589135940%_
                             _%e3589235943%_
                             _%hd3589335947%_
                             _%tl3589435950%_)
                      (if (gx#stx-pair/null? _%hd3589335947%_)
                          (let ((_%__splice3943239433%_
                                 (gx#syntax-split-splice _%hd3589335947%_ '0)))
                            (let ((_%tl3589735956%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3943239433%_ '1)))
                                  (_%target3589535953%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3943239433%_
                                      '0))))
                              (if (gx#stx-null? _%tl3589735956%_)
                                  (_%__match3951239513%_
                                   _%e3588935933%_
                                   _%hd3589035937%_
                                   _%tl3589135940%_
                                   _%e3589235943%_
                                   _%hd3589335947%_
                                   _%tl3589435950%_
                                   _%__splice3943239433%_
                                   _%target3589535953%_
                                   _%tl3589735956%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3584335926%_)))))
                          (let () (declare (not safe)) (_%g3584335926%_)))))
                   (_%__match3949239493%_
                    (lambda (_%e3586536094%_
                             _%hd3586636098%_
                             _%tl3586736101%_
                             _%e3586836104%_
                             _%hd3586936108%_
                             _%tl3587036111%_
                             _%e3587136114%_
                             _%hd3587236118%_
                             _%tl3587336121%_
                             _%e3587436124%_
                             _%hd3587536128%_
                             _%tl3587636131%_
                             _%__splice3942839429%_
                             _%target3587736134%_
                             _%tl3587936137%_)
                      (letrec ((_%loop3588036140%_
                                (lambda (_%hd3587836144%_ _%body3588436147%_)
                                  (if (gx#stx-pair? _%hd3587836144%_)
                                      (let ((_%e3588136150%_
                                             (gx#syntax-e _%hd3587836144%_)))
                                        (let ((_%lp-tl3588336157%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3588136150%_)))
                                              (_%lp-hd3588236154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3588136150%_))))
                                          (_%loop3588036140%_
                                           _%lp-tl3588336157%_
                                           (cons _%lp-hd3588236154%_
                                                 _%body3588436147%_))))
                                      (let ((_%body3588536160%_
                                             (reverse _%body3588436147%_)))
                                        (let ((_%L36164%_ _%body3588536160%_)
                                              (_%L36166%_ _%hd3587536128%_)
                                              (_%L36167%_ _%hd3587236118%_)
                                              (_%L36168%_ _%hd3586636098%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%L36167%_)
                                              (_%__kont3942639427%_
                                               _%L36164%_
                                               _%L36166%_
                                               _%L36167%_
                                               _%L36168%_)
                                              (_%__match3950439505%_
                                               _%e3586536094%_
                                               _%hd3586636098%_
                                               _%tl3586736101%_
                                               _%e3586836104%_
                                               _%hd3586936108%_
                                               _%tl3587036111%_))))))))
                        (_%loop3588036140%_ _%target3587736134%_ '()))))
                   (_%__match3945839459%_
                    (lambda (_%e3584636206%_
                             _%hd3584736210%_
                             _%tl3584836213%_
                             _%e3584936216%_
                             _%hd3585036220%_
                             _%tl3585136223%_
                             _%__splice3942439425%_
                             _%target3585236226%_
                             _%tl3585436229%_)
                      (letrec ((_%loop3585536232%_
                                (lambda (_%hd3585336236%_ _%body3585936239%_)
                                  (if (gx#stx-pair? _%hd3585336236%_)
                                      (let ((_%e3585636242%_
                                             (gx#syntax-e _%hd3585336236%_)))
                                        (let ((_%lp-tl3585836249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3585636242%_)))
                                              (_%lp-hd3585736246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3585636242%_))))
                                          (_%loop3585536232%_
                                           _%lp-tl3585836249%_
                                           (cons _%lp-hd3585736246%_
                                                 _%body3585936239%_))))
                                      (let ((_%body3586036252%_
                                             (reverse _%body3585936239%_)))
                                        (_%__kont3942239423%_
                                         _%body3586036252%_))))))
                        (_%loop3585536232%_ _%target3585236226%_ '())))))
              (if (gx#stx-pair? _%__stx3941939420%_)
                  (let ((_%e3584636206%_ (gx#syntax-e _%__stx3941939420%_)))
                    (let ((_%tl3584836213%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3584636206%_)))
                          (_%hd3584736210%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3584636206%_))))
                      (if (gx#stx-pair? _%tl3584836213%_)
                          (let ((_%e3584936216%_
                                 (gx#syntax-e _%tl3584836213%_)))
                            (let ((_%tl3585136223%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3584936216%_)))
                                  (_%hd3585036220%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3584936216%_))))
                              (if (gx#stx-null? _%hd3585036220%_)
                                  (if (gx#stx-pair/null? _%tl3585136223%_)
                                      (let ((_%__splice3942439425%_
                                             (gx#syntax-split-splice
                                              _%tl3585136223%_
                                              '0)))
                                        (let ((_%tl3585436229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3942439425%_
                                                  '1)))
                                              (_%target3585236226%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3942439425%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3585436229%_)
                                              (_%__match3945839459%_
                                               _%e3584636206%_
                                               _%hd3584736210%_
                                               _%tl3584836213%_
                                               _%e3584936216%_
                                               _%hd3585036220%_
                                               _%tl3585136223%_
                                               _%__splice3942439425%_
                                               _%target3585236226%_
                                               _%tl3585436229%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3585036220%_)
                                                  (let ((_%__splice3943239433%_
                                                         (gx#syntax-split-splice
                                                          _%hd3585036220%_
                                                          '0)))
                                                    (let ((_%tl3589735956%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3943239433%_
                                                              '1)))
                                                          (_%target3589535953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3943239433%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3589735956%_)
                                                          (_%__match3951239513%_
                                                           _%e3584636206%_
                                                           _%hd3584736210%_
                                                           _%tl3584836213%_
                                                           _%e3584936216%_
                                                           _%hd3585036220%_
                                                           _%tl3585136223%_
                                                           _%__splice3943239433%_
                                                           _%target3589535953%_
                                                           _%tl3589735956%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3584335926%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3584335926%_))))))
                                      (if (gx#stx-pair/null? _%hd3585036220%_)
                                          (let ((_%__splice3943239433%_
                                                 (gx#syntax-split-splice
                                                  _%hd3585036220%_
                                                  '0)))
                                            (let ((_%tl3589735956%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3943239433%_
                                                      '1)))
                                                  (_%target3589535953%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3943239433%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3589735956%_)
                                                  (_%__match3951239513%_
                                                   _%e3584636206%_
                                                   _%hd3584736210%_
                                                   _%tl3584836213%_
                                                   _%e3584936216%_
                                                   _%hd3585036220%_
                                                   _%tl3585136223%_
                                                   _%__splice3943239433%_
                                                   _%target3589535953%_
                                                   _%tl3589735956%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3584335926%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3584335926%_))))
                                  (if (gx#stx-pair? _%hd3585036220%_)
                                      (let ((_%e3587136114%_
                                             (gx#syntax-e _%hd3585036220%_)))
                                        (let ((_%tl3587336121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3587136114%_)))
                                              (_%hd3587236118%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3587136114%_))))
                                          (if (gx#stx-pair? _%tl3587336121%_)
                                              (let ((_%e3587436124%_
                                                     (gx#syntax-e
                                                      _%tl3587336121%_)))
                                                (let ((_%tl3587636131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3587436124%_)))
                                                      (_%hd3587536128%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3587436124%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3587636131%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3585136223%_)
                                                          (let ((_%__splice3942839429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl3585136223%_ '0)))
                    (let ((_%tl3587936137%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3942839429%_ '1)))
                          (_%target3587736134%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3942839429%_ '0))))
                      (if (gx#stx-null? _%tl3587936137%_)
                          (_%__match3949239493%_
                           _%e3584636206%_
                           _%hd3584736210%_
                           _%tl3584836213%_
                           _%e3584936216%_
                           _%hd3585036220%_
                           _%tl3585136223%_
                           _%e3587136114%_
                           _%hd3587236118%_
                           _%tl3587336121%_
                           _%e3587436124%_
                           _%hd3587536128%_
                           _%tl3587636131%_
                           _%__splice3942839429%_
                           _%target3587736134%_
                           _%tl3587936137%_)
                          (if (gx#stx-pair/null? _%hd3585036220%_)
                              (let ((_%__splice3943239433%_
                                     (gx#syntax-split-splice
                                      _%hd3585036220%_
                                      '0)))
                                (let ((_%tl3589735956%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3943239433%_
                                          '1)))
                                      (_%target3589535953%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3943239433%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3589735956%_)
                                      (_%__match3951239513%_
                                       _%e3584636206%_
                                       _%hd3584736210%_
                                       _%tl3584836213%_
                                       _%e3584936216%_
                                       _%hd3585036220%_
                                       _%tl3585136223%_
                                       _%__splice3943239433%_
                                       _%target3589535953%_
                                       _%tl3589735956%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3584335926%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3584335926%_))))))
                  (if (gx#stx-pair/null? _%hd3585036220%_)
                      (let ((_%__splice3943239433%_
                             (gx#syntax-split-splice _%hd3585036220%_ '0)))
                        (let ((_%tl3589735956%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3943239433%_ '1)))
                              (_%target3589535953%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3943239433%_ '0))))
                          (if (gx#stx-null? _%tl3589735956%_)
                              (_%__match3951239513%_
                               _%e3584636206%_
                               _%hd3584736210%_
                               _%tl3584836213%_
                               _%e3584936216%_
                               _%hd3585036220%_
                               _%tl3585136223%_
                               _%__splice3943239433%_
                               _%target3589535953%_
                               _%tl3589735956%_)
                              (let ()
                                (declare (not safe))
                                (_%g3584335926%_)))))
                      (let () (declare (not safe)) (_%g3584335926%_))))
              (if (gx#stx-pair/null? _%hd3585036220%_)
                  (let ((_%__splice3943239433%_
                         (gx#syntax-split-splice _%hd3585036220%_ '0)))
                    (let ((_%tl3589735956%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3943239433%_ '1)))
                          (_%target3589535953%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3943239433%_ '0))))
                      (if (gx#stx-null? _%tl3589735956%_)
                          (_%__match3951239513%_
                           _%e3584636206%_
                           _%hd3584736210%_
                           _%tl3584836213%_
                           _%e3584936216%_
                           _%hd3585036220%_
                           _%tl3585136223%_
                           _%__splice3943239433%_
                           _%target3589535953%_
                           _%tl3589735956%_)
                          (let () (declare (not safe)) (_%g3584335926%_)))))
                  (let () (declare (not safe)) (_%g3584335926%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3585036220%_)
                                                  (let ((_%__splice3943239433%_
                                                         (gx#syntax-split-splice
                                                          _%hd3585036220%_
                                                          '0)))
                                                    (let ((_%tl3589735956%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3943239433%_
                                                              '1)))
                                                          (_%target3589535953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3943239433%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3589735956%_)
                                                          (_%__match3951239513%_
                                                           _%e3584636206%_
                                                           _%hd3584736210%_
                                                           _%tl3584836213%_
                                                           _%e3584936216%_
                                                           _%hd3585036220%_
                                                           _%tl3585136223%_
                                                           _%__splice3943239433%_
                                                           _%target3589535953%_
                                                           _%tl3589735956%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3584335926%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3584335926%_))))))
                                      (if (gx#stx-pair/null? _%hd3585036220%_)
                                          (let ((_%__splice3943239433%_
                                                 (gx#syntax-split-splice
                                                  _%hd3585036220%_
                                                  '0)))
                                            (let ((_%tl3589735956%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3943239433%_
                                                      '1)))
                                                  (_%target3589535953%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3943239433%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3589735956%_)
                                                  (_%__match3951239513%_
                                                   _%e3584636206%_
                                                   _%hd3584736210%_
                                                   _%tl3584836213%_
                                                   _%e3584936216%_
                                                   _%hd3585036220%_
                                                   _%tl3585136223%_
                                                   _%__splice3943239433%_
                                                   _%target3589535953%_
                                                   _%tl3589735956%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3584335926%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3584335926%_)))))))
                          (let () (declare (not safe)) (_%g3584335926%_)))))
                  (let () (declare (not safe)) (_%g3584335926%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36289%_)
        (let* ((_%__stx3951539516%_ _%$stx36289%_)
               (_%g3629436346%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3951539516%_))))
          (let ((_%__kont3951839519%_
                 (lambda (_%L36516%_
                          _%L36518%_
                          _%L36519%_
                          _%L36520%_
                          _%L36521%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%L36520%_ (cons _%L36519%_ '()))
                                     '())
                               (cons (cons _%L36521%_
                                           (cons _%L36518%_
                                                 (foldr (lambda (_%g3654636549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3654736552%_)
                  (cons _%g3654636549%_ _%g3654736552%_))
                '()
                _%L36516%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3952239523%_
                 (lambda (_%L36403%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3642036423%_ _%g3642136426%_)
                                        (cons _%g3642036423%_ _%g3642136426%_))
                                      '()
                                      _%L36403%_))))))
            (let* ((_%__match3958839589%_
                    (lambda (_%e3632636353%_
                             _%hd3632736357%_
                             _%tl3632836360%_
                             _%e3632936363%_
                             _%hd3633036367%_
                             _%tl3633136370%_
                             _%__splice3952439525%_
                             _%target3633236373%_
                             _%tl3633436376%_)
                      (letrec ((_%loop3633536379%_
                                (lambda (_%hd3633336383%_ _%body3633936386%_)
                                  (if (gx#stx-pair? _%hd3633336383%_)
                                      (let ((_%e3633636389%_
                                             (gx#syntax-e _%hd3633336383%_)))
                                        (let ((_%lp-tl3633836396%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3633636389%_)))
                                              (_%lp-hd3633736393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3633636389%_))))
                                          (_%loop3633536379%_
                                           _%lp-tl3633836396%_
                                           (cons _%lp-hd3633736393%_
                                                 _%body3633936386%_))))
                                      (let ((_%body3634036399%_
                                             (reverse _%body3633936386%_)))
                                        (_%__kont3952239523%_
                                         _%body3634036399%_))))))
                        (_%loop3633536379%_ _%target3633236373%_ '()))))
                   (_%__match3956639567%_
                    (lambda (_%e3630136436%_
                             _%hd3630236440%_
                             _%tl3630336443%_
                             _%e3630436446%_
                             _%hd3630536450%_
                             _%tl3630636453%_
                             _%e3630736456%_
                             _%hd3630836460%_
                             _%tl3630936463%_
                             _%e3631036466%_
                             _%hd3631136470%_
                             _%tl3631236473%_
                             _%e3631336476%_
                             _%hd3631436480%_
                             _%tl3631536483%_
                             _%__splice3952039521%_
                             _%target3631636486%_
                             _%tl3631836489%_)
                      (letrec ((_%loop3631936492%_
                                (lambda (_%hd3631736496%_ _%body3632336499%_)
                                  (if (gx#stx-pair? _%hd3631736496%_)
                                      (let ((_%e3632036502%_
                                             (gx#syntax-e _%hd3631736496%_)))
                                        (let ((_%lp-tl3632236509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3632036502%_)))
                                              (_%lp-hd3632136506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3632036502%_))))
                                          (_%loop3631936492%_
                                           _%lp-tl3632236509%_
                                           (cons _%lp-hd3632136506%_
                                                 _%body3632336499%_))))
                                      (let ((_%body3632436512%_
                                             (reverse _%body3632336499%_)))
                                        (_%__kont3951839519%_
                                         _%body3632436512%_
                                         _%tl3630936463%_
                                         _%hd3631436480%_
                                         _%hd3631136470%_
                                         _%hd3630236440%_))))))
                        (_%loop3631936492%_ _%target3631636486%_ '())))))
              (if (gx#stx-pair? _%__stx3951539516%_)
                  (let ((_%e3630136436%_ (gx#syntax-e _%__stx3951539516%_)))
                    (let ((_%tl3630336443%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3630136436%_)))
                          (_%hd3630236440%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3630136436%_))))
                      (if (gx#stx-pair? _%tl3630336443%_)
                          (let ((_%e3630436446%_
                                 (gx#syntax-e _%tl3630336443%_)))
                            (let ((_%tl3630636453%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3630436446%_)))
                                  (_%hd3630536450%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3630436446%_))))
                              (if (gx#stx-pair? _%hd3630536450%_)
                                  (let ((_%e3630736456%_
                                         (gx#syntax-e _%hd3630536450%_)))
                                    (let ((_%tl3630936463%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3630736456%_)))
                                          (_%hd3630836460%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3630736456%_))))
                                      (if (gx#stx-pair? _%hd3630836460%_)
                                          (let ((_%e3631036466%_
                                                 (gx#syntax-e
                                                  _%hd3630836460%_)))
                                            (let ((_%tl3631236473%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3631036466%_)))
                                                  (_%hd3631136470%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3631036466%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3631236473%_)
                                                  (let ((_%e3631336476%_
                                                         (gx#syntax-e
                                                          _%tl3631236473%_)))
                                                    (let ((_%tl3631536483%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3631336476%_)))
                                                          (_%hd3631436480%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3631336476%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3631536483%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3630636453%_)
                                                              (let ((_%__splice3952039521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl3630636453%_ '0)))
                        (let ((_%tl3631836489%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3952039521%_ '1)))
                              (_%target3631636486%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3952039521%_ '0))))
                          (if (gx#stx-null? _%tl3631836489%_)
                              (_%__match3956639567%_
                               _%e3630136436%_
                               _%hd3630236440%_
                               _%tl3630336443%_
                               _%e3630436446%_
                               _%hd3630536450%_
                               _%tl3630636453%_
                               _%e3630736456%_
                               _%hd3630836460%_
                               _%tl3630936463%_
                               _%e3631036466%_
                               _%hd3631136470%_
                               _%tl3631236473%_
                               _%e3631336476%_
                               _%hd3631436480%_
                               _%tl3631536483%_
                               _%__splice3952039521%_
                               _%target3631636486%_
                               _%tl3631836489%_)
                              (let ()
                                (declare (not safe))
                                (_%g3629436346%_)))))
                      (let () (declare (not safe)) (_%g3629436346%_)))
                  (let () (declare (not safe)) (_%g3629436346%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3629436346%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3629436346%_)))))
                                  (if (gx#stx-null? _%hd3630536450%_)
                                      (if (gx#stx-pair/null? _%tl3630636453%_)
                                          (let ((_%__splice3952439525%_
                                                 (gx#syntax-split-splice
                                                  _%tl3630636453%_
                                                  '0)))
                                            (let ((_%tl3633436376%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3952439525%_
                                                      '1)))
                                                  (_%target3633236373%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3952439525%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3633436376%_)
                                                  (_%__match3958839589%_
                                                   _%e3630136436%_
                                                   _%hd3630236440%_
                                                   _%tl3630336443%_
                                                   _%e3630436446%_
                                                   _%hd3630536450%_
                                                   _%tl3630636453%_
                                                   _%__splice3952439525%_
                                                   _%target3633236373%_
                                                   _%tl3633436376%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3629436346%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3629436346%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3629436346%_))))))
                          (let () (declare (not safe)) (_%g3629436346%_)))))
                  (let () (declare (not safe)) (_%g3629436346%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx36561%_)
        (let* ((_%__stx3959139592%_ _%$stx36561%_)
               (_%g3657236718%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3959139592%_))))
          (let ((_%__kont3959439595%_
                 (lambda (_%L37322%_ _%L37324%_ _%L37325%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3734637349%_ _%g3734737352%_)
                                  (cons (cons _%L37325%_
                                              (cons _%g3734637349%_
                                                    (cons _%L37322%_ '())))
                                        _%g3734737352%_))
                                '()
                                _%L37324%_))))
                (_%__kont3959839599%_
                 (lambda (_%L37212%_ _%L37214%_ _%L37215%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3723637239%_ _%g3723737242%_)
                                  (cons (cons _%L37215%_
                                              (cons _%g3723637239%_
                                                    (cons _%L37212%_ '())))
                                        _%g3723737242%_))
                                '()
                                _%L37214%_))))
                (_%__kont3960239603%_
                 (lambda (_%L37112%_ _%L37114%_ _%L37115%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%L37115%_
                                     (cons _%L37114%_ (cons _%L37112%_ '())))
                               '()))))
                (_%__kont3960439605%_
                 (lambda (_%L37038%_ _%L37040%_)
                   (cons _%L37040%_ (cons _%L37038%_ '()))))
                (_%__kont3960639607%_
                 (lambda (_%L36986%_ _%L36988%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%L36988%_
                                           (cons _%L36986%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont3960839609%_
                 (lambda (_%L36938%_ _%L36940%_ _%L36941%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%L36941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L36940%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36938%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3961039611%_
                 (lambda (_%L36869%_ _%L36871%_ _%L36872%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36872%_
                                                       (cons _%L36871%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36869%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3961239613%_
                 (lambda (_%L36789%_ _%L36791%_ _%L36792%_ _%L36793%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36793%_
                                                       (cons _%L36792%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36789%_
                                                             (cons (cons _%L36791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match3976439765%_
                    (lambda (_%e3666236898%_
                             _%hd3666336902%_
                             _%tl3666436905%_
                             _%e3666536908%_
                             _%hd3666636912%_
                             _%tl3666736915%_
                             _%e3666836918%_
                             _%hd3666936922%_
                             _%tl3667036925%_)
                      (if (gx#identifier? _%hd3666936922%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39982_|
                               _%hd3666936922%_)
                              (if (gx#stx-pair? _%tl3667036925%_)
                                  (let ((_%e3667136928%_
                                         (gx#syntax-e _%tl3667036925%_)))
                                    (let ((_%tl3667336935%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3667136928%_)))
                                          (_%hd3667236932%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3667136928%_))))
                                      (if (gx#stx-null? _%tl3667336935%_)
                                          (_%__kont3960839609%_
                                           _%hd3667236932%_
                                           _%hd3666636912%_
                                           _%hd3666336902%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3657236718%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3657236718%_)))
                              (let () (declare (not safe)) (_%g3657236718%_)))
                          (if (gx#stx-datum? _%hd3666936922%_)
                              (let ((_%e3668636855%_
                                     (gx#stx-e _%hd3666936922%_)))
                                (if (equal? _%e3668636855%_ '::)
                                    (if (gx#stx-pair? _%tl3667036925%_)
                                        (let ((_%e3668736859%_
                                               (gx#syntax-e _%tl3667036925%_)))
                                          (let ((_%tl3668936866%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3668736859%_)))
                                                (_%hd3668836863%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3668736859%_))))
                                            (if (gx#stx-null? _%tl3668936866%_)
                                                (_%__kont3961039611%_
                                                 _%hd3668836863%_
                                                 _%hd3666636912%_
                                                 _%hd3666336902%_)
                                                (if (gx#stx-pair?
                                                     _%tl3668936866%_)
                                                    (let ((_%e3670736769%_
                                                           (gx#syntax-e
                                                            _%tl3668936866%_)))
                                                      (let ((_%tl3670936776%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3670736769%_)))
                    (_%hd3670836773%_
                     (let () (declare (not safe)) (##car _%e3670736769%_))))
                (if (gx#identifier? _%hd3670836773%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39983_|
                         _%hd3670836773%_)
                        (if (gx#stx-pair? _%tl3670936776%_)
                            (let ((_%e3671036779%_
                                   (gx#syntax-e _%tl3670936776%_)))
                              (let ((_%tl3671236786%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3671036779%_)))
                                    (_%hd3671136783%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3671036779%_))))
                                (if (gx#stx-null? _%tl3671236786%_)
                                    (_%__kont3961239613%_
                                     _%hd3671136783%_
                                     _%hd3668836863%_
                                     _%hd3666636912%_
                                     _%hd3666336902%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3657236718%_)))))
                            (let () (declare (not safe)) (_%g3657236718%_)))
                        (let () (declare (not safe)) (_%g3657236718%_)))
                    (let () (declare (not safe)) (_%g3657236718%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3657236718%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3657236718%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3657236718%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3657236718%_))))))
                   (_%__match3974439745%_
                    (lambda (_%e3665336966%_
                             _%hd3665436970%_
                             _%tl3665536973%_
                             _%e3665636976%_
                             _%hd3665736980%_
                             _%tl3665836983%_)
                      (if (gx#stx-null? _%tl3665836983%_)
                          (_%__kont3960639607%_
                           _%hd3665736980%_
                           _%hd3665436970%_)
                          (if (gx#stx-pair? _%tl3665836983%_)
                              (let ((_%e3666836918%_
                                     (gx#syntax-e _%tl3665836983%_)))
                                (let ((_%tl3667036925%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3666836918%_)))
                                      (_%hd3666936922%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3666836918%_))))
                                  (if (gx#identifier? _%hd3666936922%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39982_|
                                           _%hd3666936922%_)
                                          (if (gx#stx-pair? _%tl3667036925%_)
                                              (let ((_%e3667136928%_
                                                     (gx#syntax-e
                                                      _%tl3667036925%_)))
                                                (let ((_%tl3667336935%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3667136928%_)))
                                                      (_%hd3667236932%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3667136928%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3667336935%_)
                                                      (_%__kont3960839609%_
                                                       _%hd3667236932%_
                                                       _%hd3665736980%_
                                                       _%hd3665436970%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3657236718%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3657236718%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3657236718%_)))
                                      (if (gx#stx-datum? _%hd3666936922%_)
                                          (let ((_%e3668636855%_
                                                 (gx#stx-e _%hd3666936922%_)))
                                            (if (equal? _%e3668636855%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3667036925%_)
                                                    (let ((_%e3668736859%_
                                                           (gx#syntax-e
                                                            _%tl3667036925%_)))
                                                      (let ((_%tl3668936866%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3668736859%_)))
                    (_%hd3668836863%_
                     (let () (declare (not safe)) (##car _%e3668736859%_))))
                (if (gx#stx-null? _%tl3668936866%_)
                    (_%__kont3961039611%_
                     _%hd3668836863%_
                     _%hd3665736980%_
                     _%hd3665436970%_)
                    (if (gx#stx-pair? _%tl3668936866%_)
                        (let ((_%e3670736769%_ (gx#syntax-e _%tl3668936866%_)))
                          (let ((_%tl3670936776%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3670736769%_)))
                                (_%hd3670836773%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3670736769%_))))
                            (if (gx#identifier? _%hd3670836773%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39983_|
                                     _%hd3670836773%_)
                                    (if (gx#stx-pair? _%tl3670936776%_)
                                        (let ((_%e3671036779%_
                                               (gx#syntax-e _%tl3670936776%_)))
                                          (let ((_%tl3671236786%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3671036779%_)))
                                                (_%hd3671136783%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3671036779%_))))
                                            (if (gx#stx-null? _%tl3671236786%_)
                                                (_%__kont3961239613%_
                                                 _%hd3671136783%_
                                                 _%hd3668836863%_
                                                 _%hd3665736980%_
                                                 _%hd3665436970%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3657236718%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3657236718%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3657236718%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3657236718%_)))))
                        (let () (declare (not safe)) (_%g3657236718%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3657236718%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3657236718%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3657236718%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3657236718%_))))))
                   (_%__match3967439675%_
                    (lambda (_%e3660137142%_
                             _%hd3660237146%_
                             _%tl3660337149%_
                             _%e3660437152%_
                             _%hd3660537156%_
                             _%tl3660637159%_
                             _%e3660737162%_
                             _%hd3660837166%_
                             _%tl3660937169%_
                             _%__splice3960039601%_
                             _%target3661037172%_
                             _%tl3661237175%_)
                      (letrec ((_%loop3661337178%_
                                (lambda (_%hd3661137182%_ _%pred3661737185%_)
                                  (if (gx#stx-pair? _%hd3661137182%_)
                                      (let ((_%e3661437188%_
                                             (gx#syntax-e _%hd3661137182%_)))
                                        (let ((_%lp-tl3661637195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3661437188%_)))
                                              (_%lp-hd3661537192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3661437188%_))))
                                          (_%loop3661337178%_
                                           _%lp-tl3661637195%_
                                           (cons _%lp-hd3661537192%_
                                                 _%pred3661737185%_))))
                                      (let ((_%pred3661837198%_
                                             (reverse _%pred3661737185%_)))
                                        (if (gx#stx-pair? _%tl3660637159%_)
                                            (let ((_%e3661937202%_
                                                   (gx#syntax-e
                                                    _%tl3660637159%_)))
                                              (let ((_%tl3662137209%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3661937202%_)))
                                                    (_%hd3662037206%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3661937202%_))))
                                                (if (gx#stx-null?
                                                     _%tl3662137209%_)
                                                    (_%__kont3959839599%_
                                                     _%hd3662037206%_
                                                     _%pred3661837198%_
                                                     _%hd3660237146%_)
                                                    (_%__match3976439765%_
                                                     _%e3660137142%_
                                                     _%hd3660237146%_
                                                     _%tl3660337149%_
                                                     _%e3660437152%_
                                                     _%hd3660537156%_
                                                     _%tl3660637159%_
                                                     _%e3661937202%_
                                                     _%hd3662037206%_
                                                     _%tl3662137209%_))))
                                            (_%__match3974439745%_
                                             _%e3660137142%_
                                             _%hd3660237146%_
                                             _%tl3660337149%_
                                             _%e3660437152%_
                                             _%hd3660537156%_
                                             _%tl3660637159%_)))))))
                        (_%loop3661337178%_ _%target3661037172%_ '()))))
                   (_%__match3964439645%_
                    (lambda (_%e3657737252%_
                             _%hd3657837256%_
                             _%tl3657937259%_
                             _%e3658037262%_
                             _%hd3658137266%_
                             _%tl3658237269%_
                             _%e3658337272%_
                             _%hd3658437276%_
                             _%tl3658537279%_
                             _%__splice3959639597%_
                             _%target3658637282%_
                             _%tl3658837285%_)
                      (letrec ((_%loop3658937288%_
                                (lambda (_%hd3658737292%_ _%pred3659337295%_)
                                  (if (gx#stx-pair? _%hd3658737292%_)
                                      (let ((_%e3659037298%_
                                             (gx#syntax-e _%hd3658737292%_)))
                                        (let ((_%lp-tl3659237305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3659037298%_)))
                                              (_%lp-hd3659137302%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3659037298%_))))
                                          (_%loop3658937288%_
                                           _%lp-tl3659237305%_
                                           (cons _%lp-hd3659137302%_
                                                 _%pred3659337295%_))))
                                      (let ((_%pred3659437308%_
                                             (reverse _%pred3659337295%_)))
                                        (if (gx#stx-pair? _%tl3658237269%_)
                                            (let ((_%e3659537312%_
                                                   (gx#syntax-e
                                                    _%tl3658237269%_)))
                                              (let ((_%tl3659737319%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3659537312%_)))
                                                    (_%hd3659637316%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3659537312%_))))
                                                (if (gx#stx-null?
                                                     _%tl3659737319%_)
                                                    (_%__kont3959439595%_
                                                     _%hd3659637316%_
                                                     _%pred3659437308%_
                                                     _%hd3657837256%_)
                                                    (_%__match3976439765%_
                                                     _%e3657737252%_
                                                     _%hd3657837256%_
                                                     _%tl3657937259%_
                                                     _%e3658037262%_
                                                     _%hd3658137266%_
                                                     _%tl3658237269%_
                                                     _%e3659537312%_
                                                     _%hd3659637316%_
                                                     _%tl3659737319%_))))
                                            (_%__match3974439745%_
                                             _%e3657737252%_
                                             _%hd3657837256%_
                                             _%tl3657937259%_
                                             _%e3658037262%_
                                             _%hd3658137266%_
                                             _%tl3658237269%_)))))))
                        (_%loop3658937288%_ _%target3658637282%_ '())))))
              (if (gx#stx-pair? _%__stx3959139592%_)
                  (let ((_%e3657737252%_ (gx#syntax-e _%__stx3959139592%_)))
                    (let ((_%tl3657937259%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3657737252%_)))
                          (_%hd3657837256%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3657737252%_))))
                      (if (gx#stx-pair? _%tl3657937259%_)
                          (let ((_%e3658037262%_
                                 (gx#syntax-e _%tl3657937259%_)))
                            (let ((_%tl3658237269%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3658037262%_)))
                                  (_%hd3658137266%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3658037262%_))))
                              (if (gx#stx-pair? _%hd3658137266%_)
                                  (let ((_%e3658337272%_
                                         (gx#syntax-e _%hd3658137266%_)))
                                    (let ((_%tl3658537279%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3658337272%_)))
                                          (_%hd3658437276%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3658337272%_))))
                                      (if (gx#identifier? _%hd3658437276%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39984_|
                                               _%hd3658437276%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3658537279%_)
                                                  (let ((_%__splice3959639597%_
                                                         (gx#syntax-split-splice
                                                          _%tl3658537279%_
                                                          '0)))
                                                    (let ((_%tl3658837285%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3959639597%_
                                                              '1)))
                                                          (_%target3658637282%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3959639597%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3658837285%_)
                                                          (_%__match3964439645%_
                                                           _%e3657737252%_
                                                           _%hd3657837256%_
                                                           _%tl3657937259%_
                                                           _%e3658037262%_
                                                           _%hd3658137266%_
                                                           _%tl3658237269%_
                                                           _%e3658337272%_
                                                           _%hd3658437276%_
                                                           _%tl3658537279%_
                                                           _%__splice3959639597%_
                                                           _%target3658637282%_
                                                           _%tl3658837285%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3658237269%_)
                                                              (let ((_%e3664837028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3658237269%_)))
                        (let ((_%tl3665037035%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3664837028%_)))
                              (_%hd3664937032%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3664837028%_))))
                          (if (gx#stx-null? _%tl3665037035%_)
                              (_%__kont3960439605%_
                               _%hd3664937032%_
                               _%hd3658137266%_)
                              (if (gx#identifier? _%hd3664937032%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39982_|
                                       _%hd3664937032%_)
                                      (if (gx#stx-pair? _%tl3665037035%_)
                                          (let ((_%e3667136928%_
                                                 (gx#syntax-e
                                                  _%tl3665037035%_)))
                                            (let ((_%tl3667336935%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3667136928%_)))
                                                  (_%hd3667236932%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3667136928%_))))
                                              (if (gx#stx-null?
                                                   _%tl3667336935%_)
                                                  (_%__kont3960839609%_
                                                   _%hd3667236932%_
                                                   _%hd3658137266%_
                                                   _%hd3657837256%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3657236718%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3657236718%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3657236718%_)))
                                  (if (gx#stx-datum? _%hd3664937032%_)
                                      (let ((_%e3668636855%_
                                             (gx#stx-e _%hd3664937032%_)))
                                        (if (equal? _%e3668636855%_ '::)
                                            (if (gx#stx-pair? _%tl3665037035%_)
                                                (let ((_%e3668736859%_
                                                       (gx#syntax-e
                                                        _%tl3665037035%_)))
                                                  (let ((_%tl3668936866%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3668736859%_)))
                                                        (_%hd3668836863%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3668736859%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3668936866%_)
                                                        (_%__kont3961039611%_
                                                         _%hd3668836863%_
                                                         _%hd3658137266%_
                                                         _%hd3657837256%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3668936866%_)
                                                            (let ((_%e3670736769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3668936866%_)))
                      (let ((_%tl3670936776%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3670736769%_)))
                            (_%hd3670836773%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3670736769%_))))
                        (if (gx#identifier? _%hd3670836773%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39983_|
                                 _%hd3670836773%_)
                                (if (gx#stx-pair? _%tl3670936776%_)
                                    (let ((_%e3671036779%_
                                           (gx#syntax-e _%tl3670936776%_)))
                                      (let ((_%tl3671236786%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3671036779%_)))
                                            (_%hd3671136783%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3671036779%_))))
                                        (if (gx#stx-null? _%tl3671236786%_)
                                            (_%__kont3961239613%_
                                             _%hd3671136783%_
                                             _%hd3668836863%_
                                             _%hd3658137266%_
                                             _%hd3657837256%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3657236718%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3657236718%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3657236718%_)))
                            (let () (declare (not safe)) (_%g3657236718%_)))))
                    (let () (declare (not safe)) (_%g3657236718%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3657236718%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3657236718%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3657236718%_)))))))
                      (if (gx#stx-null? _%tl3658237269%_)
                          (_%__kont3960639607%_
                           _%hd3658137266%_
                           _%hd3657837256%_)
                          (let () (declare (not safe)) (_%g3657236718%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3658237269%_)
                                                      (let ((_%e3664837028%_
                                                             (gx#syntax-e
                                                              _%tl3658237269%_)))
                                                        (let ((_%tl3665037035%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3664837028%_)))
                      (_%hd3664937032%_
                       (let () (declare (not safe)) (##car _%e3664837028%_))))
                  (if (gx#stx-null? _%tl3665037035%_)
                      (_%__kont3960439605%_ _%hd3664937032%_ _%hd3658137266%_)
                      (if (gx#identifier? _%hd3664937032%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39982_|
                               _%hd3664937032%_)
                              (if (gx#stx-pair? _%tl3665037035%_)
                                  (let ((_%e3667136928%_
                                         (gx#syntax-e _%tl3665037035%_)))
                                    (let ((_%tl3667336935%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3667136928%_)))
                                          (_%hd3667236932%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3667136928%_))))
                                      (if (gx#stx-null? _%tl3667336935%_)
                                          (_%__kont3960839609%_
                                           _%hd3667236932%_
                                           _%hd3658137266%_
                                           _%hd3657837256%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3657236718%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3657236718%_)))
                              (let () (declare (not safe)) (_%g3657236718%_)))
                          (if (gx#stx-datum? _%hd3664937032%_)
                              (let ((_%e3668636855%_
                                     (gx#stx-e _%hd3664937032%_)))
                                (if (equal? _%e3668636855%_ '::)
                                    (if (gx#stx-pair? _%tl3665037035%_)
                                        (let ((_%e3668736859%_
                                               (gx#syntax-e _%tl3665037035%_)))
                                          (let ((_%tl3668936866%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3668736859%_)))
                                                (_%hd3668836863%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3668736859%_))))
                                            (if (gx#stx-null? _%tl3668936866%_)
                                                (_%__kont3961039611%_
                                                 _%hd3668836863%_
                                                 _%hd3658137266%_
                                                 _%hd3657837256%_)
                                                (if (gx#stx-pair?
                                                     _%tl3668936866%_)
                                                    (let ((_%e3670736769%_
                                                           (gx#syntax-e
                                                            _%tl3668936866%_)))
                                                      (let ((_%tl3670936776%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3670736769%_)))
                    (_%hd3670836773%_
                     (let () (declare (not safe)) (##car _%e3670736769%_))))
                (if (gx#identifier? _%hd3670836773%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39983_|
                         _%hd3670836773%_)
                        (if (gx#stx-pair? _%tl3670936776%_)
                            (let ((_%e3671036779%_
                                   (gx#syntax-e _%tl3670936776%_)))
                              (let ((_%tl3671236786%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3671036779%_)))
                                    (_%hd3671136783%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3671036779%_))))
                                (if (gx#stx-null? _%tl3671236786%_)
                                    (_%__kont3961239613%_
                                     _%hd3671136783%_
                                     _%hd3668836863%_
                                     _%hd3658137266%_
                                     _%hd3657837256%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3657236718%_)))))
                            (let () (declare (not safe)) (_%g3657236718%_)))
                        (let () (declare (not safe)) (_%g3657236718%_)))
                    (let () (declare (not safe)) (_%g3657236718%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3657236718%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3657236718%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3657236718%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3657236718%_)))))))
              (if (gx#stx-null? _%tl3658237269%_)
                  (_%__kont3960639607%_ _%hd3658137266%_ _%hd3657837256%_)
                  (let () (declare (not safe)) (_%g3657236718%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39985_|
                                                   _%hd3658437276%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3658537279%_)
                                                      (let ((_%__splice3960039601%_
                                                             (gx#syntax-split-splice
                                                              _%tl3658537279%_
                                                              '0)))
                                                        (let ((_%tl3661237175%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice3960039601%_ '1)))
                      (_%target3661037172%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice3960039601%_ '0))))
                  (if (gx#stx-null? _%tl3661237175%_)
                      (_%__match3967439675%_
                       _%e3657737252%_
                       _%hd3657837256%_
                       _%tl3657937259%_
                       _%e3658037262%_
                       _%hd3658137266%_
                       _%tl3658237269%_
                       _%e3658337272%_
                       _%hd3658437276%_
                       _%tl3658537279%_
                       _%__splice3960039601%_
                       _%target3661037172%_
                       _%tl3661237175%_)
                      (if (gx#stx-pair? _%tl3658237269%_)
                          (let ((_%e3664837028%_
                                 (gx#syntax-e _%tl3658237269%_)))
                            (let ((_%tl3665037035%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3664837028%_)))
                                  (_%hd3664937032%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3664837028%_))))
                              (if (gx#stx-null? _%tl3665037035%_)
                                  (_%__kont3960439605%_
                                   _%hd3664937032%_
                                   _%hd3658137266%_)
                                  (if (gx#identifier? _%hd3664937032%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39982_|
                                           _%hd3664937032%_)
                                          (if (gx#stx-pair? _%tl3665037035%_)
                                              (let ((_%e3667136928%_
                                                     (gx#syntax-e
                                                      _%tl3665037035%_)))
                                                (let ((_%tl3667336935%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3667136928%_)))
                                                      (_%hd3667236932%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3667136928%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3667336935%_)
                                                      (_%__kont3960839609%_
                                                       _%hd3667236932%_
                                                       _%hd3658137266%_
                                                       _%hd3657837256%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3657236718%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3657236718%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3657236718%_)))
                                      (if (gx#stx-datum? _%hd3664937032%_)
                                          (let ((_%e3668636855%_
                                                 (gx#stx-e _%hd3664937032%_)))
                                            (if (equal? _%e3668636855%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3665037035%_)
                                                    (let ((_%e3668736859%_
                                                           (gx#syntax-e
                                                            _%tl3665037035%_)))
                                                      (let ((_%tl3668936866%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3668736859%_)))
                    (_%hd3668836863%_
                     (let () (declare (not safe)) (##car _%e3668736859%_))))
                (if (gx#stx-null? _%tl3668936866%_)
                    (_%__kont3961039611%_
                     _%hd3668836863%_
                     _%hd3658137266%_
                     _%hd3657837256%_)
                    (if (gx#stx-pair? _%tl3668936866%_)
                        (let ((_%e3670736769%_ (gx#syntax-e _%tl3668936866%_)))
                          (let ((_%tl3670936776%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3670736769%_)))
                                (_%hd3670836773%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3670736769%_))))
                            (if (gx#identifier? _%hd3670836773%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39983_|
                                     _%hd3670836773%_)
                                    (if (gx#stx-pair? _%tl3670936776%_)
                                        (let ((_%e3671036779%_
                                               (gx#syntax-e _%tl3670936776%_)))
                                          (let ((_%tl3671236786%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3671036779%_)))
                                                (_%hd3671136783%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3671036779%_))))
                                            (if (gx#stx-null? _%tl3671236786%_)
                                                (_%__kont3961239613%_
                                                 _%hd3671136783%_
                                                 _%hd3668836863%_
                                                 _%hd3658137266%_
                                                 _%hd3657837256%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3657236718%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3657236718%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3657236718%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3657236718%_)))))
                        (let () (declare (not safe)) (_%g3657236718%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3657236718%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3657236718%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3657236718%_)))))))
                          (if (gx#stx-null? _%tl3658237269%_)
                              (_%__kont3960639607%_
                               _%hd3658137266%_
                               _%hd3657837256%_)
                              (let ()
                                (declare (not safe))
                                (_%g3657236718%_)))))))
              (if (gx#stx-pair? _%tl3658237269%_)
                  (let ((_%e3664837028%_ (gx#syntax-e _%tl3658237269%_)))
                    (let ((_%tl3665037035%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3664837028%_)))
                          (_%hd3664937032%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3664837028%_))))
                      (if (gx#stx-null? _%tl3665037035%_)
                          (_%__kont3960439605%_
                           _%hd3664937032%_
                           _%hd3658137266%_)
                          (if (gx#identifier? _%hd3664937032%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39982_|
                                   _%hd3664937032%_)
                                  (if (gx#stx-pair? _%tl3665037035%_)
                                      (let ((_%e3667136928%_
                                             (gx#syntax-e _%tl3665037035%_)))
                                        (let ((_%tl3667336935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3667136928%_)))
                                              (_%hd3667236932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3667136928%_))))
                                          (if (gx#stx-null? _%tl3667336935%_)
                                              (_%__kont3960839609%_
                                               _%hd3667236932%_
                                               _%hd3658137266%_
                                               _%hd3657837256%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3657236718%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3657236718%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3657236718%_)))
                              (if (gx#stx-datum? _%hd3664937032%_)
                                  (let ((_%e3668636855%_
                                         (gx#stx-e _%hd3664937032%_)))
                                    (if (equal? _%e3668636855%_ '::)
                                        (if (gx#stx-pair? _%tl3665037035%_)
                                            (let ((_%e3668736859%_
                                                   (gx#syntax-e
                                                    _%tl3665037035%_)))
                                              (let ((_%tl3668936866%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3668736859%_)))
                                                    (_%hd3668836863%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3668736859%_))))
                                                (if (gx#stx-null?
                                                     _%tl3668936866%_)
                                                    (_%__kont3961039611%_
                                                     _%hd3668836863%_
                                                     _%hd3658137266%_
                                                     _%hd3657837256%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3668936866%_)
                                                        (let ((_%e3670736769%_
                                                               (gx#syntax-e
                                                                _%tl3668936866%_)))
                                                          (let ((_%tl3670936776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3670736769%_)))
                        (_%hd3670836773%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3670736769%_))))
                    (if (gx#identifier? _%hd3670836773%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39983_|
                             _%hd3670836773%_)
                            (if (gx#stx-pair? _%tl3670936776%_)
                                (let ((_%e3671036779%_
                                       (gx#syntax-e _%tl3670936776%_)))
                                  (let ((_%tl3671236786%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3671036779%_)))
                                        (_%hd3671136783%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3671036779%_))))
                                    (if (gx#stx-null? _%tl3671236786%_)
                                        (_%__kont3961239613%_
                                         _%hd3671136783%_
                                         _%hd3668836863%_
                                         _%hd3658137266%_
                                         _%hd3657837256%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3657236718%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3657236718%_)))
                            (let () (declare (not safe)) (_%g3657236718%_)))
                        (let () (declare (not safe)) (_%g3657236718%_)))))
                (let () (declare (not safe)) (_%g3657236718%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3657236718%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3657236718%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3657236718%_)))))))
                  (if (gx#stx-null? _%tl3658237269%_)
                      (_%__kont3960639607%_ _%hd3658137266%_ _%hd3657837256%_)
                      (let () (declare (not safe)) (_%g3657236718%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39986_|
                                                       _%hd3658437276%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3658537279%_)
                                                          (let ((_%e3663437092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3658537279%_)))
                    (let ((_%tl3663637099%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3663437092%_)))
                          (_%hd3663537096%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3663437092%_))))
                      (if (gx#stx-null? _%tl3663637099%_)
                          (if (gx#stx-pair? _%tl3658237269%_)
                              (let ((_%e3663737102%_
                                     (gx#syntax-e _%tl3658237269%_)))
                                (let ((_%tl3663937109%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3663737102%_)))
                                      (_%hd3663837106%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3663737102%_))))
                                  (if (gx#stx-null? _%tl3663937109%_)
                                      (_%__kont3960239603%_
                                       _%hd3663837106%_
                                       _%hd3663537096%_
                                       _%hd3657837256%_)
                                      (if (gx#identifier? _%hd3663837106%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39982_|
                                               _%hd3663837106%_)
                                              (if (gx#stx-pair?
                                                   _%tl3663937109%_)
                                                  (let ((_%e3667136928%_
                                                         (gx#syntax-e
                                                          _%tl3663937109%_)))
                                                    (let ((_%tl3667336935%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3667136928%_)))
                                                          (_%hd3667236932%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3667136928%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3667336935%_)
                                                          (_%__kont3960839609%_
                                                           _%hd3667236932%_
                                                           _%hd3658137266%_
                                                           _%hd3657837256%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3657236718%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3657236718%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3657236718%_)))
                                          (if (gx#stx-datum? _%hd3663837106%_)
                                              (let ((_%e3668636855%_
                                                     (gx#stx-e
                                                      _%hd3663837106%_)))
                                                (if (equal? _%e3668636855%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3663937109%_)
                                                        (let ((_%e3668736859%_
                                                               (gx#syntax-e
                                                                _%tl3663937109%_)))
                                                          (let ((_%tl3668936866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3668736859%_)))
                        (_%hd3668836863%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3668736859%_))))
                    (if (gx#stx-null? _%tl3668936866%_)
                        (_%__kont3961039611%_
                         _%hd3668836863%_
                         _%hd3658137266%_
                         _%hd3657837256%_)
                        (if (gx#stx-pair? _%tl3668936866%_)
                            (let ((_%e3670736769%_
                                   (gx#syntax-e _%tl3668936866%_)))
                              (let ((_%tl3670936776%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3670736769%_)))
                                    (_%hd3670836773%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3670736769%_))))
                                (if (gx#identifier? _%hd3670836773%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39983_|
                                         _%hd3670836773%_)
                                        (if (gx#stx-pair? _%tl3670936776%_)
                                            (let ((_%e3671036779%_
                                                   (gx#syntax-e
                                                    _%tl3670936776%_)))
                                              (let ((_%tl3671236786%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3671036779%_)))
                                                    (_%hd3671136783%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3671036779%_))))
                                                (if (gx#stx-null?
                                                     _%tl3671236786%_)
                                                    (_%__kont3961239613%_
                                                     _%hd3671136783%_
                                                     _%hd3668836863%_
                                                     _%hd3658137266%_
                                                     _%hd3657837256%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3657236718%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3657236718%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3657236718%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3657236718%_)))))
                            (let () (declare (not safe)) (_%g3657236718%_))))))
                (let () (declare (not safe)) (_%g3657236718%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3657236718%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3657236718%_)))))))
                              (if (gx#stx-null? _%tl3658237269%_)
                                  (_%__kont3960639607%_
                                   _%hd3658137266%_
                                   _%hd3657837256%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3657236718%_))))
                          (if (gx#stx-pair? _%tl3658237269%_)
                              (let ((_%e3664837028%_
                                     (gx#syntax-e _%tl3658237269%_)))
                                (let ((_%tl3665037035%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3664837028%_)))
                                      (_%hd3664937032%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3664837028%_))))
                                  (if (gx#stx-null? _%tl3665037035%_)
                                      (_%__kont3960439605%_
                                       _%hd3664937032%_
                                       _%hd3658137266%_)
                                      (if (gx#identifier? _%hd3664937032%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39982_|
                                               _%hd3664937032%_)
                                              (if (gx#stx-pair?
                                                   _%tl3665037035%_)
                                                  (let ((_%e3667136928%_
                                                         (gx#syntax-e
                                                          _%tl3665037035%_)))
                                                    (let ((_%tl3667336935%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3667136928%_)))
                                                          (_%hd3667236932%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3667136928%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3667336935%_)
                                                          (_%__kont3960839609%_
                                                           _%hd3667236932%_
                                                           _%hd3658137266%_
                                                           _%hd3657837256%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3657236718%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3657236718%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3657236718%_)))
                                          (if (gx#stx-datum? _%hd3664937032%_)
                                              (let ((_%e3668636855%_
                                                     (gx#stx-e
                                                      _%hd3664937032%_)))
                                                (if (equal? _%e3668636855%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3665037035%_)
                                                        (let ((_%e3668736859%_
                                                               (gx#syntax-e
                                                                _%tl3665037035%_)))
                                                          (let ((_%tl3668936866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3668736859%_)))
                        (_%hd3668836863%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3668736859%_))))
                    (if (gx#stx-null? _%tl3668936866%_)
                        (_%__kont3961039611%_
                         _%hd3668836863%_
                         _%hd3658137266%_
                         _%hd3657837256%_)
                        (if (gx#stx-pair? _%tl3668936866%_)
                            (let ((_%e3670736769%_
                                   (gx#syntax-e _%tl3668936866%_)))
                              (let ((_%tl3670936776%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3670736769%_)))
                                    (_%hd3670836773%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3670736769%_))))
                                (if (gx#identifier? _%hd3670836773%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39983_|
                                         _%hd3670836773%_)
                                        (if (gx#stx-pair? _%tl3670936776%_)
                                            (let ((_%e3671036779%_
                                                   (gx#syntax-e
                                                    _%tl3670936776%_)))
                                              (let ((_%tl3671236786%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3671036779%_)))
                                                    (_%hd3671136783%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3671036779%_))))
                                                (if (gx#stx-null?
                                                     _%tl3671236786%_)
                                                    (_%__kont3961239613%_
                                                     _%hd3671136783%_
                                                     _%hd3668836863%_
                                                     _%hd3658137266%_
                                                     _%hd3657837256%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3657236718%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3657236718%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3657236718%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3657236718%_)))))
                            (let () (declare (not safe)) (_%g3657236718%_))))))
                (let () (declare (not safe)) (_%g3657236718%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3657236718%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3657236718%_)))))))
                              (if (gx#stx-null? _%tl3658237269%_)
                                  (_%__kont3960639607%_
                                   _%hd3658137266%_
                                   _%hd3657837256%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3657236718%_)))))))
                  (if (gx#stx-pair? _%tl3658237269%_)
                      (let ((_%e3664837028%_ (gx#syntax-e _%tl3658237269%_)))
                        (let ((_%tl3665037035%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3664837028%_)))
                              (_%hd3664937032%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3664837028%_))))
                          (if (gx#stx-null? _%tl3665037035%_)
                              (_%__kont3960439605%_
                               _%hd3664937032%_
                               _%hd3658137266%_)
                              (if (gx#identifier? _%hd3664937032%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39982_|
                                       _%hd3664937032%_)
                                      (if (gx#stx-pair? _%tl3665037035%_)
                                          (let ((_%e3667136928%_
                                                 (gx#syntax-e
                                                  _%tl3665037035%_)))
                                            (let ((_%tl3667336935%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3667136928%_)))
                                                  (_%hd3667236932%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3667136928%_))))
                                              (if (gx#stx-null?
                                                   _%tl3667336935%_)
                                                  (_%__kont3960839609%_
                                                   _%hd3667236932%_
                                                   _%hd3658137266%_
                                                   _%hd3657837256%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3657236718%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3657236718%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3657236718%_)))
                                  (if (gx#stx-datum? _%hd3664937032%_)
                                      (let ((_%e3668636855%_
                                             (gx#stx-e _%hd3664937032%_)))
                                        (if (equal? _%e3668636855%_ '::)
                                            (if (gx#stx-pair? _%tl3665037035%_)
                                                (let ((_%e3668736859%_
                                                       (gx#syntax-e
                                                        _%tl3665037035%_)))
                                                  (let ((_%tl3668936866%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3668736859%_)))
                                                        (_%hd3668836863%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3668736859%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3668936866%_)
                                                        (_%__kont3961039611%_
                                                         _%hd3668836863%_
                                                         _%hd3658137266%_
                                                         _%hd3657837256%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3668936866%_)
                                                            (let ((_%e3670736769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3668936866%_)))
                      (let ((_%tl3670936776%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3670736769%_)))
                            (_%hd3670836773%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3670736769%_))))
                        (if (gx#identifier? _%hd3670836773%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39983_|
                                 _%hd3670836773%_)
                                (if (gx#stx-pair? _%tl3670936776%_)
                                    (let ((_%e3671036779%_
                                           (gx#syntax-e _%tl3670936776%_)))
                                      (let ((_%tl3671236786%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3671036779%_)))
                                            (_%hd3671136783%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3671036779%_))))
                                        (if (gx#stx-null? _%tl3671236786%_)
                                            (_%__kont3961239613%_
                                             _%hd3671136783%_
                                             _%hd3668836863%_
                                             _%hd3658137266%_
                                             _%hd3657837256%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3657236718%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3657236718%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3657236718%_)))
                            (let () (declare (not safe)) (_%g3657236718%_)))))
                    (let () (declare (not safe)) (_%g3657236718%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3657236718%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3657236718%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3657236718%_)))))))
                      (if (gx#stx-null? _%tl3658237269%_)
                          (_%__kont3960639607%_
                           _%hd3658137266%_
                           _%hd3657837256%_)
                          (let () (declare (not safe)) (_%g3657236718%_)))))
              (if (gx#stx-pair? _%tl3658237269%_)
                  (let ((_%e3664837028%_ (gx#syntax-e _%tl3658237269%_)))
                    (let ((_%tl3665037035%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3664837028%_)))
                          (_%hd3664937032%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3664837028%_))))
                      (if (gx#stx-null? _%tl3665037035%_)
                          (_%__kont3960439605%_
                           _%hd3664937032%_
                           _%hd3658137266%_)
                          (if (gx#identifier? _%hd3664937032%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39982_|
                                   _%hd3664937032%_)
                                  (if (gx#stx-pair? _%tl3665037035%_)
                                      (let ((_%e3667136928%_
                                             (gx#syntax-e _%tl3665037035%_)))
                                        (let ((_%tl3667336935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3667136928%_)))
                                              (_%hd3667236932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3667136928%_))))
                                          (if (gx#stx-null? _%tl3667336935%_)
                                              (_%__kont3960839609%_
                                               _%hd3667236932%_
                                               _%hd3658137266%_
                                               _%hd3657837256%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3657236718%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3657236718%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3657236718%_)))
                              (if (gx#stx-datum? _%hd3664937032%_)
                                  (let ((_%e3668636855%_
                                         (gx#stx-e _%hd3664937032%_)))
                                    (if (equal? _%e3668636855%_ '::)
                                        (if (gx#stx-pair? _%tl3665037035%_)
                                            (let ((_%e3668736859%_
                                                   (gx#syntax-e
                                                    _%tl3665037035%_)))
                                              (let ((_%tl3668936866%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3668736859%_)))
                                                    (_%hd3668836863%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3668736859%_))))
                                                (if (gx#stx-null?
                                                     _%tl3668936866%_)
                                                    (_%__kont3961039611%_
                                                     _%hd3668836863%_
                                                     _%hd3658137266%_
                                                     _%hd3657837256%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3668936866%_)
                                                        (let ((_%e3670736769%_
                                                               (gx#syntax-e
                                                                _%tl3668936866%_)))
                                                          (let ((_%tl3670936776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3670736769%_)))
                        (_%hd3670836773%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3670736769%_))))
                    (if (gx#identifier? _%hd3670836773%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39983_|
                             _%hd3670836773%_)
                            (if (gx#stx-pair? _%tl3670936776%_)
                                (let ((_%e3671036779%_
                                       (gx#syntax-e _%tl3670936776%_)))
                                  (let ((_%tl3671236786%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3671036779%_)))
                                        (_%hd3671136783%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3671036779%_))))
                                    (if (gx#stx-null? _%tl3671236786%_)
                                        (_%__kont3961239613%_
                                         _%hd3671136783%_
                                         _%hd3668836863%_
                                         _%hd3658137266%_
                                         _%hd3657837256%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3657236718%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3657236718%_)))
                            (let () (declare (not safe)) (_%g3657236718%_)))
                        (let () (declare (not safe)) (_%g3657236718%_)))))
                (let () (declare (not safe)) (_%g3657236718%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3657236718%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3657236718%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3657236718%_)))))))
                  (if (gx#stx-null? _%tl3658237269%_)
                      (_%__kont3960639607%_ _%hd3658137266%_ _%hd3657837256%_)
                      (let () (declare (not safe)) (_%g3657236718%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3658237269%_)
                                              (let ((_%e3664837028%_
                                                     (gx#syntax-e
                                                      _%tl3658237269%_)))
                                                (let ((_%tl3665037035%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3664837028%_)))
                                                      (_%hd3664937032%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3664837028%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3665037035%_)
                                                      (_%__kont3960439605%_
                                                       _%hd3664937032%_
                                                       _%hd3658137266%_)
                                                      (if (gx#identifier?
                                                           _%hd3664937032%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g39982_|
                                                               _%hd3664937032%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3665037035%_)
                          (let ((_%e3667136928%_
                                 (gx#syntax-e _%tl3665037035%_)))
                            (let ((_%tl3667336935%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3667136928%_)))
                                  (_%hd3667236932%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3667136928%_))))
                              (if (gx#stx-null? _%tl3667336935%_)
                                  (_%__kont3960839609%_
                                   _%hd3667236932%_
                                   _%hd3658137266%_
                                   _%hd3657837256%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3657236718%_)))))
                          (let () (declare (not safe)) (_%g3657236718%_)))
                      (let () (declare (not safe)) (_%g3657236718%_)))
                  (if (gx#stx-datum? _%hd3664937032%_)
                      (let ((_%e3668636855%_ (gx#stx-e _%hd3664937032%_)))
                        (if (equal? _%e3668636855%_ '::)
                            (if (gx#stx-pair? _%tl3665037035%_)
                                (let ((_%e3668736859%_
                                       (gx#syntax-e _%tl3665037035%_)))
                                  (let ((_%tl3668936866%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3668736859%_)))
                                        (_%hd3668836863%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3668736859%_))))
                                    (if (gx#stx-null? _%tl3668936866%_)
                                        (_%__kont3961039611%_
                                         _%hd3668836863%_
                                         _%hd3658137266%_
                                         _%hd3657837256%_)
                                        (if (gx#stx-pair? _%tl3668936866%_)
                                            (let ((_%e3670736769%_
                                                   (gx#syntax-e
                                                    _%tl3668936866%_)))
                                              (let ((_%tl3670936776%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3670736769%_)))
                                                    (_%hd3670836773%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3670736769%_))))
                                                (if (gx#identifier?
                                                     _%hd3670836773%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g39983_|
                                                         _%hd3670836773%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3670936776%_)
                                                            (let ((_%e3671036779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3670936776%_)))
                      (let ((_%tl3671236786%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3671036779%_)))
                            (_%hd3671136783%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3671036779%_))))
                        (if (gx#stx-null? _%tl3671236786%_)
                            (_%__kont3961239613%_
                             _%hd3671136783%_
                             _%hd3668836863%_
                             _%hd3658137266%_
                             _%hd3657837256%_)
                            (let () (declare (not safe)) (_%g3657236718%_)))))
                    (let () (declare (not safe)) (_%g3657236718%_)))
                (let () (declare (not safe)) (_%g3657236718%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3657236718%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3657236718%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3657236718%_)))
                            (let () (declare (not safe)) (_%g3657236718%_))))
                      (let () (declare (not safe)) (_%g3657236718%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3658237269%_)
                                                  (_%__kont3960639607%_
                                                   _%hd3658137266%_
                                                   _%hd3657837256%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3657236718%_)))))))
                                  (if (gx#stx-pair? _%tl3658237269%_)
                                      (let ((_%e3664837028%_
                                             (gx#syntax-e _%tl3658237269%_)))
                                        (let ((_%tl3665037035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3664837028%_)))
                                              (_%hd3664937032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3664837028%_))))
                                          (if (gx#stx-null? _%tl3665037035%_)
                                              (_%__kont3960439605%_
                                               _%hd3664937032%_
                                               _%hd3658137266%_)
                                              (if (gx#identifier?
                                                   _%hd3664937032%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39982_|
                                                       _%hd3664937032%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3665037035%_)
                                                          (let ((_%e3667136928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3665037035%_)))
                    (let ((_%tl3667336935%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3667136928%_)))
                          (_%hd3667236932%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3667136928%_))))
                      (if (gx#stx-null? _%tl3667336935%_)
                          (_%__kont3960839609%_
                           _%hd3667236932%_
                           _%hd3658137266%_
                           _%hd3657837256%_)
                          (let () (declare (not safe)) (_%g3657236718%_)))))
                  (let () (declare (not safe)) (_%g3657236718%_)))
              (let () (declare (not safe)) (_%g3657236718%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3664937032%_)
                                                      (let ((_%e3668636855%_
                                                             (gx#stx-e
                                                              _%hd3664937032%_)))
                                                        (if (equal? _%e3668636855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3665037035%_)
                        (let ((_%e3668736859%_ (gx#syntax-e _%tl3665037035%_)))
                          (let ((_%tl3668936866%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3668736859%_)))
                                (_%hd3668836863%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3668736859%_))))
                            (if (gx#stx-null? _%tl3668936866%_)
                                (_%__kont3961039611%_
                                 _%hd3668836863%_
                                 _%hd3658137266%_
                                 _%hd3657837256%_)
                                (if (gx#stx-pair? _%tl3668936866%_)
                                    (let ((_%e3670736769%_
                                           (gx#syntax-e _%tl3668936866%_)))
                                      (let ((_%tl3670936776%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3670736769%_)))
                                            (_%hd3670836773%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3670736769%_))))
                                        (if (gx#identifier? _%hd3670836773%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39983_|
                                                 _%hd3670836773%_)
                                                (if (gx#stx-pair?
                                                     _%tl3670936776%_)
                                                    (let ((_%e3671036779%_
                                                           (gx#syntax-e
                                                            _%tl3670936776%_)))
                                                      (let ((_%tl3671236786%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3671036779%_)))
                    (_%hd3671136783%_
                     (let () (declare (not safe)) (##car _%e3671036779%_))))
                (if (gx#stx-null? _%tl3671236786%_)
                    (_%__kont3961239613%_
                     _%hd3671136783%_
                     _%hd3668836863%_
                     _%hd3658137266%_
                     _%hd3657837256%_)
                    (let () (declare (not safe)) (_%g3657236718%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3657236718%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3657236718%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3657236718%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3657236718%_))))))
                        (let () (declare (not safe)) (_%g3657236718%_)))
                    (let () (declare (not safe)) (_%g3657236718%_))))
              (let () (declare (not safe)) (_%g3657236718%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3658237269%_)
                                          (_%__kont3960639607%_
                                           _%hd3658137266%_
                                           _%hd3657837256%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3657236718%_)))))))
                          (let () (declare (not safe)) (_%g3657236718%_)))))
                  (let () (declare (not safe)) (_%g3657236718%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37361%_)
        (let* ((_%__stx3985939860%_ _%$stx37361%_)
               (_%g3736637400%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3985939860%_))))
          (let ((_%__kont3986239863%_
                 (lambda (_%L37504%_ _%L37506%_ _%L37507%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%L37507%_
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
                                       (cons _%L37506%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%L37504%_ '()))
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
                (_%__kont3986439865%_
                 (lambda (_%L37437%_ _%L37439%_ _%L37440%_)
                   (cons _%L37440%_
                         (cons _%L37439%_
                               (cons _%L37437%_
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
            (let ((_%__match3989239893%_
                   (lambda (_%e3737137464%_
                            _%hd3737237468%_
                            _%tl3737337471%_
                            _%e3737437474%_
                            _%hd3737537478%_
                            _%tl3737637481%_
                            _%e3737737484%_
                            _%hd3737837488%_
                            _%tl3737937491%_
                            _%e3738037494%_
                            _%hd3738137498%_
                            _%tl3738237501%_)
                     (let ((_%L37504%_ _%hd3738137498%_)
                           (_%L37506%_ _%hd3737837488%_)
                           (_%L37507%_ _%hd3737537478%_))
                       (if (gx#identifier? _%L37507%_)
                           (_%__kont3986239863%_
                            _%L37504%_
                            _%L37506%_
                            _%L37507%_)
                           (let () (declare (not safe)) (_%g3736637400%_)))))))
              (if (gx#stx-pair? _%__stx3985939860%_)
                  (let ((_%e3737137464%_ (gx#syntax-e _%__stx3985939860%_)))
                    (let ((_%tl3737337471%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3737137464%_)))
                          (_%hd3737237468%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3737137464%_))))
                      (if (gx#stx-pair? _%tl3737337471%_)
                          (let ((_%e3737437474%_
                                 (gx#syntax-e _%tl3737337471%_)))
                            (let ((_%tl3737637481%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3737437474%_)))
                                  (_%hd3737537478%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3737437474%_))))
                              (if (gx#stx-pair? _%tl3737637481%_)
                                  (let ((_%e3737737484%_
                                         (gx#syntax-e _%tl3737637481%_)))
                                    (let ((_%tl3737937491%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3737737484%_)))
                                          (_%hd3737837488%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3737737484%_))))
                                      (if (gx#stx-pair? _%tl3737937491%_)
                                          (let ((_%e3738037494%_
                                                 (gx#syntax-e
                                                  _%tl3737937491%_)))
                                            (let ((_%tl3738237501%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3738037494%_)))
                                                  (_%hd3738137498%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3738037494%_))))
                                              (if (gx#stx-null?
                                                   _%tl3738237501%_)
                                                  (_%__match3989239893%_
                                                   _%e3737137464%_
                                                   _%hd3737237468%_
                                                   _%tl3737337471%_
                                                   _%e3737437474%_
                                                   _%hd3737537478%_
                                                   _%tl3737637481%_
                                                   _%e3737737484%_
                                                   _%hd3737837488%_
                                                   _%tl3737937491%_
                                                   _%e3738037494%_
                                                   _%hd3738137498%_
                                                   _%tl3738237501%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3736637400%_)))))
                                          (if (gx#stx-null? _%tl3737937491%_)
                                              (_%__kont3986439865%_
                                               _%hd3737837488%_
                                               _%hd3737537478%_
                                               _%hd3737237468%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3736637400%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3736637400%_)))))
                          (let () (declare (not safe)) (_%g3736637400%_)))))
                  (let () (declare (not safe)) (_%g3736637400%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx37529%_)
        (let* ((_%g3753337548%_
                (lambda (_%g3753437544%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3753437544%_)))
               (_%g3753237591%_
                (lambda (_%g3753437552%_)
                  (if (gx#stx-pair? _%g3753437552%_)
                      (let ((_%e3753737555%_ (gx#syntax-e _%g3753437552%_)))
                        (let ((_%hd3753837559%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3753737555%_)))
                              (_%tl3753937562%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3753737555%_))))
                          (if (gx#stx-pair? _%tl3753937562%_)
                              (let ((_%e3754037565%_
                                     (gx#syntax-e _%tl3753937562%_)))
                                (let ((_%hd3754137569%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3754037565%_)))
                                      (_%tl3754237572%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3754037565%_))))
                                  ((lambda (_%L37575%_ _%L37577%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%L37577%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%L37575%_)
                                                       '()))))
                                   _%tl3754237572%_
                                   _%hd3754137569%_)))
                              (_%g3753337548%_ _%g3753437552%_))))
                      (_%g3753337548%_ _%g3753437552%_)))))
          (_%g3753237591%_ _%$stx37529%_))))))
