(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g39730_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39731_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39732_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39733_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39734_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39735_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39736_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39737_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39738_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39739_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39740_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39741_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39742_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39743_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39744_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39757_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39765_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39766_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39767_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39772_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39773_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39774_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39775_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39776_|
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
      (lambda _%$args35051%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35051%_)))
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
      (lambda (_%stx35048%_)
        (if (gx#identifier? _%stx35048%_)
            (let ((__tmp39729 (gx#syntax-local-value _%stx35048%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp39729))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx33350%_ _%match-stx33352%_)
        (letrec ((_%parse133354%_
                  (lambda (_%hd33713%_)
                    (let* ((_%__stx3751737518%_ _%hd33713%_)
                           (_%g3373933881%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3751737518%_))))
                      (let ((_%__kont3752037521%_
                             (lambda (_%g3374134811%_ _%g3374234813%_)
                               (let* ((_%__stx3743737438%_ _%g3374134811%_)
                                      (_%g3483034863%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3743737438%_))))
                                 (let ((_%__kont3744037441%_
                                        (lambda ()
                                          (cons '?:
                                                (cons _%g3374234813%_ '()))))
                                       (_%__kont3744237443%_
                                        (lambda (_%g3483235004%_)
                                          (cons '?:
                                                (cons _%g3374234813%_
                                                      (cons (_%parse133354%_
                                                             _%g3483235004%_)
                                                            '())))))
                                       (_%__kont3744437445%_
                                        (lambda (_%g3483634974%_)
                                          (cons '?:
                                                (cons _%g3374234813%_
                                                      (cons '=>:
                                                            (cons (_%parse133354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g3483634974%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3744637447%_
                                        (lambda (_%g3484334925%_
                                                 _%g3484434927%_)
                                          (cons '?:
                                                (cons _%g3374234813%_
                                                      (cons '::
                                                            (cons _%g3484434927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse133354%_ _%g3484334925%_)
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3744837449%_
                                        (lambda ()
                                          (_%parse-error33361%_ _%hd33713%_))))
                                   (let ((_%g3482635015%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3743737438%_)
                                                (let ((_%e3483334994%_
                                                       (gx#syntax-e
                                                        _%__stx3743737438%_)))
                                                  (let ((_%tl3483535001%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3483334994%_)))
                                                        (_%hd3483434998%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3483334994%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3483535001%_)
                                                        (_%__kont3744237443%_
                                                         _%hd3483434998%_)
                                                        (if (gx#identifier?
                                                             _%hd3483434998%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39730_|
                         _%hd3483434998%_)
                        (if (gx#stx-pair? _%tl3483535001%_)
                            (let ((_%e3484034964%_
                                   (gx#syntax-e _%tl3483535001%_)))
                              (let ((_%tl3484234971%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3484034964%_)))
                                    (_%hd3484134968%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3484034964%_))))
                                (if (gx#stx-null? _%tl3484234971%_)
                                    (_%__kont3744437445%_ _%hd3484134968%_)
                                    (_%__kont3744837449%_))))
                            (_%__kont3744837449%_))
                        (_%__kont3744837449%_))
                    (if (gx#stx-datum? _%hd3483434998%_)
                        (let ((_%e3484834891%_ (gx#stx-e _%hd3483434998%_)))
                          (if (equal? _%e3484834891%_ '::)
                              (if (gx#stx-pair? _%tl3483535001%_)
                                  (let ((_%e3484934895%_
                                         (gx#syntax-e _%tl3483535001%_)))
                                    (let ((_%tl3485134902%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3484934895%_)))
                                          (_%hd3485034899%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3484934895%_))))
                                      (if (gx#stx-pair? _%tl3485134902%_)
                                          (let ((_%e3485234905%_
                                                 (gx#syntax-e
                                                  _%tl3485134902%_)))
                                            (let ((_%tl3485434912%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3485234905%_)))
                                                  (_%hd3485334909%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3485234905%_))))
                                              (if (gx#identifier?
                                                   _%hd3485334909%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39731_|
                                                       _%hd3485334909%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3485434912%_)
                                                          (let ((_%e3485534915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3485434912%_)))
                    (let ((_%tl3485734922%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3485534915%_)))
                          (_%hd3485634919%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3485534915%_))))
                      (if (gx#stx-null? _%tl3485734922%_)
                          (_%__kont3744637447%_
                           _%hd3485634919%_
                           _%hd3485034899%_)
                          (_%__kont3744837449%_))))
                  (_%__kont3744837449%_))
              (_%__kont3744837449%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3744837449%_))))
                                          (_%__kont3744837449%_))))
                                  (_%__kont3744837449%_))
                              (_%__kont3744837449%_)))
                        (_%__kont3744837449%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3744837449%_)))))
                                     (if (gx#stx-null? _%__stx3743737438%_)
                                         (_%__kont3744037441%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3482635015%_))))))))
                            (_%__kont3752237523%_
                             (lambda (_%g3374934716%_)
                               (let* ((_%__stx3741937420%_ _%g3374934716%_)
                                      (_%g3472834739%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3741937420%_))))
                                 (let ((_%__kont3742237423%_
                                        (lambda (_%g3473034767%_)
                                          (_%parse133354%_ _%g3473034767%_)))
                                       (_%__kont3742437425%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse133354%_
                                                 _%g3374934716%_)))))
                                   (if (gx#stx-pair? _%__stx3741937420%_)
                                       (let ((_%e3473134757%_
                                              (gx#syntax-e
                                               _%__stx3741937420%_)))
                                         (let ((_%tl3473334764%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3473134757%_)))
                                               (_%hd3473234761%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3473134757%_))))
                                           (if (gx#stx-null? _%tl3473334764%_)
                                               (_%__kont3742237423%_
                                                _%hd3473234761%_)
                                               (_%__kont3742437425%_))))
                                       (_%__kont3742437425%_))))))
                            (_%__kont3752437525%_
                             (lambda (_%g3375334631%_)
                               (let* ((_%__stx3740137402%_ _%g3375334631%_)
                                      (_%g3464334654%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3740137402%_))))
                                 (let ((_%__kont3740437405%_
                                        (lambda (_%g3464534682%_)
                                          (_%parse133354%_ _%g3464534682%_)))
                                       (_%__kont3740637407%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse133354%_
                                                 _%g3375334631%_)))))
                                   (if (gx#stx-pair? _%__stx3740137402%_)
                                       (let ((_%e3464634672%_
                                              (gx#syntax-e
                                               _%__stx3740137402%_)))
                                         (let ((_%tl3464834679%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3464634672%_)))
                                               (_%hd3464734676%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3464634672%_))))
                                           (if (gx#stx-null? _%tl3464834679%_)
                                               (_%__kont3740437405%_
                                                _%hd3464734676%_)
                                               (_%__kont3740637407%_))))
                                       (_%__kont3740637407%_))))))
                            (_%__kont3752637527%_
                             (lambda (_%g3375734601%_)
                               (cons 'not:
                                     (cons (_%parse133354%_ _%g3375734601%_)
                                           '()))))
                            (_%__kont3752837529%_
                             (lambda (_%g3376434557%_ _%g3376534559%_)
                               (cons 'cons:
                                     (cons (_%parse133354%_ _%g3376534559%_)
                                           (cons (_%parse133354%_
                                                  _%g3376434557%_)
                                                 '())))))
                            (_%__kont3753037531%_
                             (lambda (_%g3377534501%_
                                      _%g3377634503%_
                                      _%g3377734504%_)
                               (if (gx#stx-null? _%g3377534501%_)
                                   (cons 'cons:
                                         (cons (_%parse133354%_
                                                _%g3377734504%_)
                                               (cons (_%parse133354%_
                                                      _%g3377634503%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse133354%_
                                                _%g3377734504%_)
                                               (cons (_%parse133354%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%g3377634503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g3377534501%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3753237533%_
                             (lambda (_%g3378734453%_)
                               (_%parse-list33356%_ _%g3378734453%_)))
                            (_%__kont3753437535%_
                             (lambda (_%g3379134423%_)
                               (cons 'box:
                                     (cons (_%parse133354%_ _%g3379134423%_)
                                           '()))))
                            (_%__kont3753637537%_
                             (lambda (_%g3379834386%_)
                               (cons 'box:
                                     (cons (_%parse133354%_ _%g3379834386%_)
                                           '()))))
                            (_%__kont3753837539%_
                             (lambda (_%g3380034362%_)
                               (_%parse133354%_ _%g3380034362%_)))
                            (_%__kont3754037541%_
                             (lambda (_%g3380734324%_)
                               (cons 'values:
                                     (cons (_%parse-vector33357%_
                                            _%g3380734324%_)
                                           '()))))
                            (_%__kont3754237543%_
                             (lambda (_%g3381134296%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33357%_
                                            _%g3381134296%_)
                                           '()))))
                            (_%__kont3754437545%_
                             (lambda (_%g3381534257%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33357%_
                                            (foldr (lambda (_%g3427034273%_
                                                            _%g3427134276%_)
                                                     (cons _%g3427034273%_
                                                           _%g3427134276%_))
                                                   '()
                                                   _%g3381534257%_))
                                           '()))))
                            (_%__kont3754837549%_
                             (lambda (_%g3382634205%_ _%g3382734207%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value
                                            _%g3382734207%_)
                                           (cons (_%parse-vector33357%_
                                                  _%g3382634205%_)
                                                 '())))))
                            (_%__kont3755037551%_
                             (lambda (_%g3383134175%_ _%g3383234177%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value
                                            _%g3383234177%_)
                                           (cons (_%parse-class-body33359%_
                                                  _%g3383134175%_)
                                                 '())))))
                            (_%__kont3755237553%_
                             (lambda (_%g3383634135%_ _%g3383734137%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%g3383734137%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%g3383634135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3755437555%_
                             (lambda (_%g3384434095%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g3384434095%_) '()))))
                            (_%__kont3755637557%_
                             (lambda (_%g3385134055%_)
                               (_%parse-qq33360%_ _%g3385134055%_)))
                            (_%__kont3755837559%_
                             (lambda (_%g3385834011%_ _%g3385934013%_)
                               (cons 'apply:
                                     (cons _%g3385934013%_
                                           (cons (_%parse133354%_
                                                  _%g3385834011%_)
                                                 '())))))
                            (_%__kont3756037561%_
                             (lambda (_%g3386933959%_)
                               (_%parse133354%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%g3386933959%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd33713%_)
                                  (let ((_%$e33970%_
                                         (gx#stx-source _%hd33713%_)))
                                    (if _%$e33970%_
                                        _%$e33970%_
                                        (gx#stx-source _%stx33350%_))))))))
                            (_%__kont3756237563%_
                             (lambda (_%g3387333933%_) (cons 'any: '())))
                            (_%__kont3756437565%_
                             (lambda (_%g3387433917%_)
                               (cons 'var: (cons _%g3387433917%_ '()))))
                            (_%__kont3756637567%_
                             (lambda (_%g3387533899%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g3387533899%_) '()))))
                            (_%__kont3756837569%_
                             (lambda () (_%parse-error33361%_ _%hd33713%_))))
                        (let* ((_%g3373733910%_
                                (lambda ()
                                  (let ((_%g3387533899%_ _%__stx3751737518%_))
                                    (if (gx#stx-datum? _%g3387533899%_)
                                        (_%__kont3756637567%_ _%g3387533899%_)
                                        (_%__kont3756837569%_)))))
                               (_%g3373633926%_
                                (lambda ()
                                  (let ((_%g3387433917%_ _%__stx3751737518%_))
                                    (if (and (gx#identifier? _%g3387433917%_)
                                             (not (gx#ellipsis?
                                                   _%g3387433917%_)))
                                        (_%__kont3756437565%_ _%g3387433917%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3373733910%_))))))
                               (_%g3373533942%_
                                (lambda ()
                                  (let ((_%g3387333933%_ _%__stx3751737518%_))
                                    (if (gx#underscore? _%g3387333933%_)
                                        (_%__kont3756237563%_ _%g3387333933%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3373633926%_))))))
                               (_%__match3784437845%_
                                (lambda (_%e3387033949%_
                                         _%hd3387133953%_
                                         _%tl3387233956%_)
                                  (let ((_%g3386933959%_ _%hd3387133953%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%g3386933959%_)
                                        (_%__kont3756037561%_ _%g3386933959%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3373533942%_))))))
                               (_%__match3777837779%_
                                (lambda (_%e3383834115%_
                                         _%hd3383934119%_
                                         _%tl3384034122%_
                                         _%e3384134125%_
                                         _%hd3384234129%_
                                         _%tl3384334132%_)
                                  (let ((_%g3383634135%_ _%hd3384234129%_)
                                        (_%g3383734137%_ _%hd3383934119%_))
                                    (if (and (gx#identifier? _%g3383734137%_)
                                             (or (gx#free-identifier=?
                                                  _%g3383734137%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%g3383734137%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%g3383734137%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3755237553%_
                                         _%g3383634135%_
                                         _%g3383734137%_)
                                        (if (gx#identifier? _%hd3383934119%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39732_|
                                                 _%hd3383934119%_)
                                                (_%__kont3755437555%_
                                                 _%hd3384234129%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g39733_|
                                                     _%hd3383934119%_)
                                                    (_%__kont3755637557%_
                                                     _%hd3384234129%_)
                                                    (_%__match3784437845%_
                                                     _%e3383834115%_
                                                     _%hd3383934119%_
                                                     _%tl3384034122%_)))
                                            (_%__match3784437845%_
                                             _%e3383834115%_
                                             _%hd3383934119%_
                                             _%tl3384034122%_))))))
                               (_%__match3776437765%_
                                (lambda (_%e3383334165%_
                                         _%hd3383434169%_
                                         _%tl3383534172%_)
                                  (let ((_%g3383134175%_ _%tl3383534172%_)
                                        (_%g3383234177%_ _%hd3383434169%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%g3383234177%_))
                                        (_%__kont3755037551%_
                                         _%g3383134175%_
                                         _%g3383234177%_)
                                        (if (gx#stx-pair? _%tl3383534172%_)
                                            (let ((_%e3384134125%_
                                                   (gx#syntax-e
                                                    _%tl3383534172%_)))
                                              (let ((_%tl3384334132%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3384134125%_)))
                                                    (_%hd3384234129%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3384134125%_))))
                                                (if (gx#stx-null?
                                                     _%tl3384334132%_)
                                                    (_%__match3777837779%_
                                                     _%e3383334165%_
                                                     _%hd3383434169%_
                                                     _%tl3383534172%_
                                                     _%e3384134125%_
                                                     _%hd3384234129%_
                                                     _%tl3384334132%_)
                                                    (if (gx#identifier?
                                                         _%hd3383434169%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g39732_|
                                                             _%hd3383434169%_)
                                                            (_%__match3784437845%_
                                                             _%e3383334165%_
                                                             _%hd3383434169%_
                                                             _%tl3383534172%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39733_|
                         _%hd3383434169%_)
                        (_%__match3784437845%_
                         _%e3383334165%_
                         _%hd3383434169%_
                         _%tl3383534172%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39734_|
                             _%hd3383434169%_)
                            (if (gx#stx-pair? _%tl3384334132%_)
                                (let ((_%e3386634001%_
                                       (gx#syntax-e _%tl3384334132%_)))
                                  (let ((_%tl3386834008%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3386634001%_)))
                                        (_%hd3386734005%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3386634001%_))))
                                    (if (gx#stx-null? _%tl3386834008%_)
                                        (_%__kont3755837559%_
                                         _%hd3386734005%_
                                         _%hd3384234129%_)
                                        (_%__match3784437845%_
                                         _%e3383334165%_
                                         _%hd3383434169%_
                                         _%tl3383534172%_))))
                                (_%__match3784437845%_
                                 _%e3383334165%_
                                 _%hd3383434169%_
                                 _%tl3383534172%_))
                            (_%__match3784437845%_
                             _%e3383334165%_
                             _%hd3383434169%_
                             _%tl3383534172%_))))
                (_%__match3784437845%_
                 _%e3383334165%_
                 _%hd3383434169%_
                 _%tl3383534172%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3784437845%_
                                             _%e3383334165%_
                                             _%hd3383434169%_
                                             _%tl3383534172%_))))))
                               (_%__match3775837759%_
                                (lambda (_%e3382834195%_
                                         _%hd3382934199%_
                                         _%tl3383034202%_)
                                  (let ((_%g3382634205%_ _%tl3383034202%_)
                                        (_%g3382734207%_ _%hd3382934199%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%g3382734207%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3754837549%_
                                         _%g3382634205%_
                                         _%g3382734207%_)
                                        (_%__match3776437765%_
                                         _%e3382834195%_
                                         _%hd3382934199%_
                                         _%tl3383034202%_)))))
                               (_%__match3775237753%_
                                (lambda (_%e3381634225%_
                                         _%__splice3754637547%_
                                         _%target3381734229%_
                                         _%tl3381934232%_)
                                  (letrec ((_%loop3382034235%_
                                            (lambda (_%hd3381834239%_
                                                     _%body3382434242%_)
                                              (if (gx#stx-pair?
                                                   _%hd3381834239%_)
                                                  (let ((_%e3382134244%_
                                                         (gx#syntax-e
                                                          _%hd3381834239%_)))
                                                    (let ((_%lp-tl3382334251%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3382134244%_)))
                                                          (_%lp-hd3382234248%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3382134244%_))))
                                                      (_%loop3382034235%_
                                                       _%lp-tl3382334251%_
                                                       (cons _%lp-hd3382234248%_
                                                             _%body3382434242%_))))
                                                  (let ((_%body3382534254%_
                                                         (reverse _%body3382434242%_)))
                                                    (_%__kont3754437545%_
                                                     _%body3382534254%_))))))
                                    (_%loop3382034235%_
                                     _%target3381734229%_
                                     '()))))
                               (_%g3372734279%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3751737518%_)
                                      (let ((_%e3381634225%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3751737518%_))))
                                        (if (gx#stx-pair/null? _%e3381634225%_)
                                            (let ((_%__splice3754637547%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e3381634225%_
                                                    '0)))
                                              (let ((_%tl3381934232%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3754637547%_
                                                        '1)))
                                                    (_%target3381734229%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3754637547%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3381934232%_)
                                                    (_%__match3775237753%_
                                                     _%e3381634225%_
                                                     _%__splice3754637547%_
                                                     _%target3381734229%_
                                                     _%tl3381934232%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3373533942%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3373533942%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3373533942%_)))))
                               (_%g3372334396%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3751737518%_)
                                      (let ((_%e3379934382%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3751737518%_))))
                                        (_%__kont3753637537%_ _%e3379934382%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3372734279%_)))))
                               (_%__match3760637607%_
                                (lambda (_%e3375434621%_
                                         _%hd3375534625%_
                                         _%tl3375634628%_)
                                  (let ((_%g3375334631%_ _%tl3375634628%_))
                                    (if (gx#stx-list? _%g3375334631%_)
                                        (_%__kont3752437525%_ _%g3375334631%_)
                                        (_%__match3775837759%_
                                         _%e3375434621%_
                                         _%hd3375534625%_
                                         _%tl3375634628%_)))))
                               (_%__match3759637597%_
                                (lambda (_%e3375034706%_
                                         _%hd3375134710%_
                                         _%tl3375234713%_)
                                  (let ((_%g3374934716%_ _%tl3375234713%_))
                                    (if (gx#stx-list? _%g3374934716%_)
                                        (_%__kont3752237523%_ _%g3374934716%_)
                                        (_%__match3775837759%_
                                         _%e3375034706%_
                                         _%hd3375134710%_
                                         _%tl3375234713%_))))))
                          (if (gx#stx-pair? _%__stx3751737518%_)
                              (let ((_%e3374334791%_
                                     (gx#syntax-e _%__stx3751737518%_)))
                                (let ((_%tl3374534798%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3374334791%_)))
                                      (_%hd3374434795%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3374334791%_))))
                                  (if (gx#identifier? _%hd3374434795%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39735_|
                                           _%hd3374434795%_)
                                          (if (gx#stx-pair? _%tl3374534798%_)
                                              (let ((_%e3374634801%_
                                                     (gx#syntax-e
                                                      _%tl3374534798%_)))
                                                (let ((_%tl3374834808%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3374634801%_)))
                                                      (_%hd3374734805%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3374634801%_))))
                                                  (_%__kont3752037521%_
                                                   _%tl3374834808%_
                                                   _%hd3374734805%_)))
                                              (_%__match3775837759%_
                                               _%e3374334791%_
                                               _%hd3374434795%_
                                               _%tl3374534798%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39736_|
                                               _%hd3374434795%_)
                                              (_%__match3759637597%_
                                               _%e3374334791%_
                                               _%hd3374434795%_
                                               _%tl3374534798%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39737_|
                                                   _%hd3374434795%_)
                                                  (_%__match3760637607%_
                                                   _%e3374334791%_
                                                   _%hd3374434795%_
                                                   _%tl3374534798%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39738_|
                                                       _%hd3374434795%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3374534798%_)
                                                          (let ((_%e3376134591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3374534798%_)))
                    (let ((_%tl3376334598%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3376134591%_)))
                          (_%hd3376234595%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3376134591%_))))
                      (if (gx#stx-null? _%tl3376334598%_)
                          (_%__kont3752637527%_ _%hd3376234595%_)
                          (_%__match3775837759%_
                           _%e3374334791%_
                           _%hd3374434795%_
                           _%tl3374534798%_))))
                  (_%__match3775837759%_
                   _%e3374334791%_
                   _%hd3374434795%_
                   _%tl3374534798%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g39739_|
                   _%hd3374434795%_)
                  (if (gx#stx-pair? _%tl3374534798%_)
                      (let ((_%e3376934537%_ (gx#syntax-e _%tl3374534798%_)))
                        (let ((_%tl3377134544%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3376934537%_)))
                              (_%hd3377034541%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3376934537%_))))
                          (if (gx#stx-pair? _%tl3377134544%_)
                              (let ((_%e3377234547%_
                                     (gx#syntax-e _%tl3377134544%_)))
                                (let ((_%tl3377434554%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3377234547%_)))
                                      (_%hd3377334551%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3377234547%_))))
                                  (if (gx#stx-null? _%tl3377434554%_)
                                      (_%__kont3752837529%_
                                       _%hd3377334551%_
                                       _%hd3377034541%_)
                                      (_%__match3775837759%_
                                       _%e3374334791%_
                                       _%hd3374434795%_
                                       _%tl3374534798%_))))
                              (_%__match3775837759%_
                               _%e3374334791%_
                               _%hd3374434795%_
                               _%tl3374534798%_))))
                      (_%__match3775837759%_
                       _%e3374334791%_
                       _%hd3374434795%_
                       _%tl3374534798%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g39740_|
                       _%hd3374434795%_)
                      (if (gx#stx-pair? _%tl3374534798%_)
                          (let ((_%e3378134481%_
                                 (gx#syntax-e _%tl3374534798%_)))
                            (let ((_%tl3378334488%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3378134481%_)))
                                  (_%hd3378234485%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3378134481%_))))
                              (if (gx#stx-pair? _%tl3378334488%_)
                                  (let ((_%e3378434491%_
                                         (gx#syntax-e _%tl3378334488%_)))
                                    (let ((_%tl3378634498%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3378434491%_)))
                                          (_%hd3378534495%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3378434491%_))))
                                      (_%__kont3753037531%_
                                       _%tl3378634498%_
                                       _%hd3378534495%_
                                       _%hd3378234485%_)))
                                  (_%__match3775837759%_
                                   _%e3374334791%_
                                   _%hd3374434795%_
                                   _%tl3374534798%_))))
                          (_%__match3775837759%_
                           _%e3374334791%_
                           _%hd3374434795%_
                           _%tl3374534798%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g39741_|
                           _%hd3374434795%_)
                          (_%__kont3753237533%_ _%tl3374534798%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39742_|
                               _%hd3374434795%_)
                              (if (gx#stx-pair? _%tl3374534798%_)
                                  (let ((_%e3379534413%_
                                         (gx#syntax-e _%tl3374534798%_)))
                                    (let ((_%tl3379734420%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3379534413%_)))
                                          (_%hd3379634417%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3379534413%_))))
                                      (if (gx#stx-null? _%tl3379734420%_)
                                          (_%__kont3753437535%_
                                           _%hd3379634417%_)
                                          (_%__match3775837759%_
                                           _%e3374334791%_
                                           _%hd3374434795%_
                                           _%tl3374534798%_))))
                                  (_%__match3775837759%_
                                   _%e3374334791%_
                                   _%hd3374434795%_
                                   _%tl3374534798%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39743_|
                                   _%hd3374434795%_)
                                  (if (gx#stx-pair? _%tl3374534798%_)
                                      (let ((_%e3380434352%_
                                             (gx#syntax-e _%tl3374534798%_)))
                                        (let ((_%tl3380634359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3380434352%_)))
                                              (_%hd3380534356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3380434352%_))))
                                          (if (gx#stx-null? _%tl3380634359%_)
                                              (_%__kont3753837539%_
                                               _%hd3380534356%_)
                                              (_%__kont3754037541%_
                                               _%tl3374534798%_))))
                                      (_%__kont3754037541%_ _%tl3374534798%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39744_|
                                       _%hd3374434795%_)
                                      (_%__kont3754237543%_ _%tl3374534798%_)
                                      (_%__match3775837759%_
                                       _%e3374334791%_
                                       _%hd3374434795%_
                                       _%tl3374534798%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3775837759%_
                                       _%e3374334791%_
                                       _%hd3374434795%_
                                       _%tl3374534798%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3372334396%_))))))))
                 (_%parse-list33356%_
                  (lambda (_%body33536%_)
                    (let* ((_%__stx3784737848%_ _%body33536%_)
                           (_%g3354233571%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3784737848%_))))
                      (let ((_%__kont3785037851%_
                             (lambda (_%g3354433695%_)
                               (_%parse133354%_ _%g3354433695%_)))
                            (_%__kont3785237853%_
                             (lambda (_%g3355233647%_
                                      _%g3355333649%_
                                      _%g3355433650%_)
                               (cons 'splice:
                                     (cons (_%parse133354%_ _%g3355433650%_)
                                           (cons (_%parse-list33356%_
                                                  _%g3355233647%_)
                                                 '())))))
                            (_%__kont3785437855%_
                             (lambda (_%g3356133605%_ _%g3356233607%_)
                               (cons 'cons:
                                     (cons (_%parse133354%_ _%g3356233607%_)
                                           (cons (_%parse-list33356%_
                                                  _%g3356133605%_)
                                                 '())))))
                            (_%__kont3785637857%_
                             (lambda ()
                               (if (gx#stx-null? _%body33536%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body33536%_)
                                       (_%parse-error33361%_ _%body33536%_)
                                       (_%parse133354%_ _%body33536%_))))))
                        (let* ((_%__match3789637897%_
                                (lambda (_%e3356333595%_
                                         _%hd3356433599%_
                                         _%tl3356533602%_)
                                  (let ((_%g3356133605%_ _%tl3356533602%_)
                                        (_%g3356233607%_ _%hd3356433599%_))
                                    (if (gx#ellipsis? _%g3356233607%_)
                                        (_%__kont3785637857%_)
                                        (_%__kont3785437855%_
                                         _%g3356133605%_
                                         _%g3356233607%_)))))
                               (_%__match3789037891%_
                                (lambda (_%e3355533627%_
                                         _%hd3355633631%_
                                         _%tl3355733634%_
                                         _%e3355833637%_
                                         _%hd3355933641%_
                                         _%tl3356033644%_)
                                  (let ((_%g3355233647%_ _%tl3356033644%_)
                                        (_%g3355333649%_ _%hd3355933641%_)
                                        (_%g3355433650%_ _%hd3355633631%_))
                                    (if (gx#ellipsis? _%g3355333649%_)
                                        (_%__kont3785237853%_
                                         _%g3355233647%_
                                         _%g3355333649%_
                                         _%g3355433650%_)
                                        (_%__match3789637897%_
                                         _%e3355533627%_
                                         _%hd3355633631%_
                                         _%tl3355733634%_))))))
                          (if (gx#stx-pair? _%__stx3784737848%_)
                              (let ((_%e3354533671%_
                                     (gx#syntax-e _%__stx3784737848%_)))
                                (let ((_%tl3354733678%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3354533671%_)))
                                      (_%hd3354633675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3354533671%_))))
                                  (if (gx#stx-datum? _%hd3354633675%_)
                                      (let ((_%e3354833681%_
                                             (gx#stx-e _%hd3354633675%_)))
                                        (if (equal? _%e3354833681%_ '::)
                                            (if (gx#stx-pair? _%tl3354733678%_)
                                                (let ((_%e3354933685%_
                                                       (gx#syntax-e
                                                        _%tl3354733678%_)))
                                                  (let ((_%tl3355133692%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3354933685%_)))
                                                        (_%hd3355033689%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3354933685%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3355133692%_)
                                                        (_%__kont3785037851%_
                                                         _%hd3355033689%_)
                                                        (_%__match3789037891%_
                                                         _%e3354533671%_
                                                         _%hd3354633675%_
                                                         _%tl3354733678%_
                                                         _%e3354933685%_
                                                         _%hd3355033689%_
                                                         _%tl3355133692%_))))
                                                (_%__match3789637897%_
                                                 _%e3354533671%_
                                                 _%hd3354633675%_
                                                 _%tl3354733678%_))
                                            (if (gx#stx-pair? _%tl3354733678%_)
                                                (let ((_%e3355833637%_
                                                       (gx#syntax-e
                                                        _%tl3354733678%_)))
                                                  (let ((_%tl3356033644%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3355833637%_)))
                                                        (_%hd3355933641%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3355833637%_))))
                                                    (_%__match3789037891%_
                                                     _%e3354533671%_
                                                     _%hd3354633675%_
                                                     _%tl3354733678%_
                                                     _%e3355833637%_
                                                     _%hd3355933641%_
                                                     _%tl3356033644%_)))
                                                (_%__match3789637897%_
                                                 _%e3354533671%_
                                                 _%hd3354633675%_
                                                 _%tl3354733678%_))))
                                      (if (gx#stx-pair? _%tl3354733678%_)
                                          (let ((_%e3355833637%_
                                                 (gx#syntax-e
                                                  _%tl3354733678%_)))
                                            (let ((_%tl3356033644%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3355833637%_)))
                                                  (_%hd3355933641%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3355833637%_))))
                                              (_%__match3789037891%_
                                               _%e3354533671%_
                                               _%hd3354633675%_
                                               _%tl3354733678%_
                                               _%e3355833637%_
                                               _%hd3355933641%_
                                               _%tl3356033644%_)))
                                          (_%__match3789637897%_
                                           _%e3354533671%_
                                           _%hd3354633675%_
                                           _%tl3354733678%_)))))
                              (_%__kont3785637857%_)))))))
                 (_%parse-vector33357%_
                  (lambda (_%body33533%_)
                    (if (_%simple-vector?33358%_ _%body33533%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse133354%_ _%body33533%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list33356%_ _%body33533%_)
                                    '())))))
                 (_%simple-vector?33358%_
                  (lambda (_%body33470%_)
                    (let* ((_%__stx3789937900%_ _%body33470%_)
                           (_%g3347433486%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3789937900%_))))
                      (let ((_%__kont3790237903%_
                             (lambda (_%g3347633514%_ _%g3347733516%_)
                               (if (gx#ellipsis? _%g3347733516%_)
                                   '#f
                                   (_%simple-vector?33358%_ _%g3347633514%_))))
                            (_%__kont3790437905%_
                             (lambda () (gx#stx-null? _%body33470%_))))
                        (if (gx#stx-pair? _%__stx3789937900%_)
                            (let ((_%e3347833504%_
                                   (gx#syntax-e _%__stx3789937900%_)))
                              (let ((_%tl3348033511%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3347833504%_)))
                                    (_%hd3347933508%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3347833504%_))))
                                (_%__kont3790237903%_
                                 _%tl3348033511%_
                                 _%hd3347933508%_)))
                            (_%__kont3790437905%_))))))
                 (_%parse-class-body33359%_
                  (lambda (_%body33379%_)
                    (let _%recur33382%_ ((_%rest33385%_ _%body33379%_))
                      (let* ((_%__stx3791537916%_ _%rest33385%_)
                             (_%g3338933405%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3791537916%_))))
                        (let ((_%__kont3791837919%_
                               (lambda (_%g3339133443%_
                                        _%g3339233445%_
                                        _%g3339333446%_)
                                 (cons _%g3339333446%_
                                       (cons (_%parse133354%_ _%g3339233445%_)
                                             (_%recur33382%_
                                              _%g3339133443%_)))))
                              (_%__kont3792037921%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest33385%_)
                                     '()
                                     (_%parse-error33361%_ _%rest33385%_)))))
                          (let ((_%__match3793437935%_
                                 (lambda (_%e3339433423%_
                                          _%hd3339533427%_
                                          _%tl3339633430%_
                                          _%e3339733433%_
                                          _%hd3339833437%_
                                          _%tl3339933440%_)
                                   (let ((_%g3339133443%_ _%tl3339933440%_)
                                         (_%g3339233445%_ _%hd3339833437%_)
                                         (_%g3339333446%_ _%hd3339533427%_))
                                     (if (gx#stx-keyword? _%g3339333446%_)
                                         (_%__kont3791837919%_
                                          _%g3339133443%_
                                          _%g3339233445%_
                                          _%g3339333446%_)
                                         (_%__kont3792037921%_))))))
                            (if (gx#stx-pair? _%__stx3791537916%_)
                                (let ((_%e3339433423%_
                                       (gx#syntax-e _%__stx3791537916%_)))
                                  (let ((_%tl3339633430%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3339433423%_)))
                                        (_%hd3339533427%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3339433423%_))))
                                    (if (gx#stx-pair? _%tl3339633430%_)
                                        (let ((_%e3339733433%_
                                               (gx#syntax-e _%tl3339633430%_)))
                                          (let ((_%tl3339933440%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3339733433%_)))
                                                (_%hd3339833437%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3339733433%_))))
                                            (_%__match3793437935%_
                                             _%e3339433423%_
                                             _%hd3339533427%_
                                             _%tl3339633430%_
                                             _%e3339733433%_
                                             _%hd3339833437%_
                                             _%tl3339933440%_)))
                                        (_%__kont3792037921%_))))
                                (_%__kont3792037921%_))))))))
                 (_%parse-qq33360%_
                  (lambda (_%hd33366%_)
                    (let ((_%g3336833375%_
                           (lambda (_%g3336933371%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3336933371%_))))
                      (_%g3336833375%_ _%hd33366%_))))
                 (_%parse-error33361%_
                  (lambda (_%hd33363%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx33352%_
                               (cons _%match-stx33352%_
                                     (cons _%stx33350%_
                                           (cons _%hd33363%_ '())))
                               (cons _%stx33350%_ (cons _%hd33363%_ '())))))))
          (_%parse133354%_ _%stx33350%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35038%_)
        (let ((_%match-stx35041%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35038%_
           _%match-stx35041%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g39745_
        (let ((_g39746_ (let () (declare (not safe)) (##length _g39745_))))
          (cond ((let () (declare (not safe)) (##fx= _g39746_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g39745_))
                ((let () (declare (not safe)) (##fx= _g39746_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g39745_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g39745_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx33335%_)
        (let ((__tmp39747
               (lambda (_%E33338%_)
                 (with-exception-handler
                  (let ((_%E!33341%_ (current-exception-handler)))
                    (lambda (_%e33344%_)
                      (if (syntax-error? _%e33344%_)
                          (_%E33338%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!33341%_ _%e33344%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx33335%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp39747))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32070%_)
        (letrec ((_%loop32073%_
                  (lambda (_%ptree32360%_ _%vars32362%_ _%K32363%_)
                    (let* ((_%__stx3803338034%_ _%ptree32360%_)
                           (_%g3237632486%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3803338034%_))))
                      (let ((_%__kont3803638037%_
                             (lambda (_%g3237833116%_)
                               (let* ((_%__stx3795337954%_ _%g3237833116%_)
                                      (_%g3313333167%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3795337954%_))))
                                 (let ((_%__kont3795637957%_
                                        (lambda (_%g3313533316%_)
                                          (_%loop32073%_
                                           _%g3313533316%_
                                           _%vars32362%_
                                           _%K32363%_)))
                                       (_%__kont3795837959%_
                                        (lambda (_%g3313933285%_)
                                          (_%loop32073%_
                                           _%g3313933285%_
                                           _%vars32362%_
                                           _%K32363%_)))
                                       (_%__kont3796037961%_
                                        (lambda (_%g3314733233%_)
                                          (_%loop32073%_
                                           _%g3314733233%_
                                           _%vars32362%_
                                           _%K32363%_)))
                                       (_%__kont3796237963%_
                                        (lambda ()
                                          (_%K32363%_ _%vars32362%_))))
                                   (if (gx#stx-pair? _%__stx3795337954%_)
                                       (let ((_%e3313633306%_
                                              (gx#syntax-e
                                               _%__stx3795337954%_)))
                                         (let ((_%tl3313833313%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3313633306%_)))
                                               (_%hd3313733310%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3313633306%_))))
                                           (if (gx#stx-null? _%tl3313833313%_)
                                               (_%__kont3795637957%_
                                                _%hd3313733310%_)
                                               (if (gx#stx-datum?
                                                    _%hd3313733310%_)
                                                   (let ((_%e3314333271%_
                                                          (gx#stx-e
                                                           _%hd3313733310%_)))
                                                     (if (equal? _%e3314333271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3313833313%_)
                     (let ((_%e3314433275%_ (gx#syntax-e _%tl3313833313%_)))
                       (let ((_%tl3314633282%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3314433275%_)))
                             (_%hd3314533279%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3314433275%_))))
                         (if (gx#stx-null? _%tl3314633282%_)
                             (_%__kont3795837959%_ _%hd3314533279%_)
                             (_%__kont3796237963%_))))
                     (_%__kont3796237963%_))
                 (if (equal? _%e3314333271%_ '::)
                     (if (gx#stx-pair? _%tl3313833313%_)
                         (let ((_%e3315233199%_
                                (gx#syntax-e _%tl3313833313%_)))
                           (let ((_%tl3315433206%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3315233199%_)))
                                 (_%hd3315333203%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3315233199%_))))
                             (if (gx#stx-pair? _%tl3315433206%_)
                                 (let ((_%e3315533209%_
                                        (gx#syntax-e _%tl3315433206%_)))
                                   (let ((_%tl3315733216%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3315533209%_)))
                                         (_%hd3315633213%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3315533209%_))))
                                     (if (gx#stx-datum? _%hd3315633213%_)
                                         (let ((_%e3315833219%_
                                                (gx#stx-e _%hd3315633213%_)))
                                           (if (equal? _%e3315833219%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3315733216%_)
                                                   (let ((_%e3315933223%_
                                                          (gx#syntax-e
                                                           _%tl3315733216%_)))
                                                     (let ((_%tl3316133230%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3315933223%_)))
                                                           (_%hd3316033227%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3315933223%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3316133230%_)
                                                           (_%__kont3796037961%_
                                                            _%hd3316033227%_)
                                                           (_%__kont3796237963%_))))
                                                   (_%__kont3796237963%_))
                                               (_%__kont3796237963%_)))
                                         (_%__kont3796237963%_))))
                                 (_%__kont3796237963%_))))
                         (_%__kont3796237963%_))
                     (_%__kont3796237963%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3796237963%_)))))
                                       (_%__kont3796237963%_))))))
                            (_%__kont3803838039%_
                             (lambda (_%g3238633003%_ _%g3238733005%_)
                               (let* ((_%__stx3793737938%_ _%g3238633003%_)
                                      (_%g3302133033%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3793737938%_))))
                                 (let ((_%__kont3794037941%_
                                        (lambda (_%g3302333061%_
                                                 _%g3302433063%_)
                                          (_%loop32073%_
                                           _%g3302433063%_
                                           _%vars32362%_
                                           (lambda (_%g3307533077%_)
                                             (_%loop32073%_
                                              (cons _%g3238733005%_
                                                    _%g3302333061%_)
                                              _%g3307533077%_
                                              _%K32363%_)))))
                                       (_%__kont3794237943%_
                                        (lambda ()
                                          (_%K32363%_ _%vars32362%_))))
                                   (if (gx#stx-pair? _%__stx3793737938%_)
                                       (let ((_%e3302533051%_
                                              (gx#syntax-e
                                               _%__stx3793737938%_)))
                                         (let ((_%tl3302733058%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3302533051%_)))
                                               (_%hd3302633055%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3302533051%_))))
                                           (_%__kont3794037941%_
                                            _%tl3302733058%_
                                            _%hd3302633055%_)))
                                       (_%__kont3794237943%_))))))
                            (_%__kont3804038041%_
                             (lambda (_%g3239132972%_)
                               (_%loop32073%_
                                _%g3239132972%_
                                _%vars32362%_
                                _%K32363%_)))
                            (_%__kont3804238043%_
                             (lambda (_%g3239932918%_ _%g3240032920%_)
                               (_%loop32073%_
                                _%g3240032920%_
                                _%vars32362%_
                                (lambda (_%g3293532937%_)
                                  (_%loop32073%_
                                   _%g3239932918%_
                                   _%g3293532937%_
                                   _%K32363%_)))))
                            (_%__kont3804438045%_
                             (lambda (_%g3241132854%_ _%g3241232856%_)
                               (_%loop32073%_
                                _%g3241232856%_
                                _%vars32362%_
                                (lambda (_%g3287132873%_)
                                  (_%loop32073%_
                                   _%g3241132854%_
                                   _%g3287132873%_
                                   _%K32363%_)))))
                            (_%__kont3804638047%_
                             (lambda (_%g3242332799%_)
                               (_%loop32073%_
                                _%g3242332799%_
                                _%vars32362%_
                                _%K32363%_)))
                            (_%__kont3804838049%_
                             (lambda (_%g3243132749%_ _%g3243232751%_)
                               (_%loop-vector32075%_
                                _%g3243132749%_
                                _%vars32362%_
                                _%K32363%_)))
                            (_%__kont3805038051%_
                             (lambda (_%g3243932706%_)
                               (_%loop-vector32075%_
                                _%g3243932706%_
                                _%vars32362%_
                                _%K32363%_)))
                            (_%__kont3805238053%_
                             (lambda (_%g3245032649%_)
                               (_%loop-class-list32077%_
                                _%g3245032649%_
                                _%vars32362%_
                                _%K32363%_)))
                            (_%__kont3805438055%_
                             (lambda (_%g3246132590%_ _%g3246232592%_)
                               (_%loop32073%_
                                _%g3246132590%_
                                _%vars32362%_
                                _%K32363%_)))
                            (_%__kont3805638057%_
                             (lambda (_%g3247332528%_)
                               (if (find (lambda (_%g3254332545%_)
                                           (gx#bound-identifier=?
                                            _%g3254332545%_
                                            _%g3247332528%_))
                                         _%vars32362%_)
                                   (_%K32363%_ _%vars32362%_)
                                   (_%K32363%_
                                    (cons _%g3247332528%_ _%vars32362%_)))))
                            (_%__kont3805838059%_
                             (lambda () (_%K32363%_ _%vars32362%_))))
                        (let* ((_%__match3819038191%_
                                (lambda (_%e3243332729%_
                                         _%hd3243432733%_
                                         _%tl3243532736%_
                                         _%e3243632739%_
                                         _%hd3243732743%_
                                         _%tl3243832746%_)
                                  (let ((_%g3243132749%_ _%hd3243732743%_)
                                        (_%g3243232751%_ _%hd3243432733%_))
                                    (if (or (gx#stx-eq?
                                             'values:
                                             _%g3243232751%_)
                                            (gx#stx-eq?
                                             'vector:
                                             _%g3243232751%_))
                                        (_%__kont3804838049%_
                                         _%g3243132749%_
                                         _%g3243232751%_)
                                        (if (gx#stx-datum? _%hd3243432733%_)
                                            (let ((_%e3244332682%_
                                                   (gx#stx-e
                                                    _%hd3243432733%_)))
                                              (if (equal? _%e3244332682%_
                                                          'struct:)
                                                  (_%__kont3805838059%_)
                                                  (if (equal? _%e3244332682%_
                                                              'class:)
                                                      (_%__kont3805838059%_)
                                                      (if (equal? _%e3244332682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3805838059%_)
                  (if (equal? _%e3244332682%_ 'var:)
                      (_%__kont3805638057%_ _%hd3243732743%_)
                      (_%__kont3805838059%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3805838059%_))))))
                               (_%__match3808438085%_
                                (lambda (_%e3238832993%_
                                         _%hd3238932997%_
                                         _%tl3239033000%_)
                                  (let ((_%g3238633003%_ _%tl3239033000%_)
                                        (_%g3238733005%_ _%hd3238932997%_))
                                    (if (or (gx#stx-eq? 'and: _%g3238733005%_)
                                            (gx#stx-eq? 'or: _%g3238733005%_))
                                        (_%__kont3803838039%_
                                         _%g3238633003%_
                                         _%g3238733005%_)
                                        (if (gx#stx-datum? _%hd3238932997%_)
                                            (let ((_%e3239532958%_
                                                   (gx#stx-e
                                                    _%hd3238932997%_)))
                                              (if (equal? _%e3239532958%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3239033000%_)
                                                      (let ((_%e3239632962%_
                                                             (gx#syntax-e
                                                              _%tl3239033000%_)))
                                                        (let ((_%tl3239832969%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3239632962%_)))
                      (_%hd3239732966%_
                       (let () (declare (not safe)) (##car _%e3239632962%_))))
                  (if (gx#stx-null? _%tl3239832969%_)
                      (_%__kont3804038041%_ _%hd3239732966%_)
                      (_%__kont3805838059%_))))
              (_%__kont3805838059%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3239532958%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3239033000%_)
                                                          (let ((_%e3240532898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3239033000%_)))
                    (let ((_%tl3240732905%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3240532898%_)))
                          (_%hd3240632902%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3240532898%_))))
                      (if (gx#stx-pair? _%tl3240732905%_)
                          (let ((_%e3240832908%_
                                 (gx#syntax-e _%tl3240732905%_)))
                            (let ((_%tl3241032915%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3240832908%_)))
                                  (_%hd3240932912%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3240832908%_))))
                              (if (gx#stx-null? _%tl3241032915%_)
                                  (_%__kont3804238043%_
                                   _%hd3240932912%_
                                   _%hd3240632902%_)
                                  (_%__kont3805838059%_))))
                          (if (gx#stx-null? _%tl3240732905%_)
                              (_%__match3819038191%_
                               _%e3238832993%_
                               _%hd3238932997%_
                               _%tl3239033000%_
                               _%e3240532898%_
                               _%hd3240632902%_
                               _%tl3240732905%_)
                              (_%__kont3805838059%_)))))
                  (_%__kont3805838059%_))
              (if (equal? _%e3239532958%_ 'splice:)
                  (if (gx#stx-pair? _%tl3239033000%_)
                      (let ((_%e3241732834%_ (gx#syntax-e _%tl3239033000%_)))
                        (let ((_%tl3241932841%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3241732834%_)))
                              (_%hd3241832838%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3241732834%_))))
                          (if (gx#stx-pair? _%tl3241932841%_)
                              (let ((_%e3242032844%_
                                     (gx#syntax-e _%tl3241932841%_)))
                                (let ((_%tl3242232851%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3242032844%_)))
                                      (_%hd3242132848%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3242032844%_))))
                                  (if (gx#stx-null? _%tl3242232851%_)
                                      (_%__kont3804438045%_
                                       _%hd3242132848%_
                                       _%hd3241832838%_)
                                      (_%__kont3805838059%_))))
                              (if (gx#stx-null? _%tl3241932841%_)
                                  (_%__match3819038191%_
                                   _%e3238832993%_
                                   _%hd3238932997%_
                                   _%tl3239033000%_
                                   _%e3241732834%_
                                   _%hd3241832838%_
                                   _%tl3241932841%_)
                                  (_%__kont3805838059%_)))))
                      (_%__kont3805838059%_))
                  (if (equal? _%e3239532958%_ 'box:)
                      (if (gx#stx-pair? _%tl3239033000%_)
                          (let ((_%e3242832789%_
                                 (gx#syntax-e _%tl3239033000%_)))
                            (let ((_%tl3243032796%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3242832789%_)))
                                  (_%hd3242932793%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3242832789%_))))
                              (if (gx#stx-null? _%tl3243032796%_)
                                  (_%__kont3804638047%_ _%hd3242932793%_)
                                  (_%__kont3805838059%_))))
                          (_%__kont3805838059%_))
                      (if (gx#stx-pair? _%tl3239033000%_)
                          (let ((_%e3243632739%_
                                 (gx#syntax-e _%tl3239033000%_)))
                            (let ((_%tl3243832746%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3243632739%_)))
                                  (_%hd3243732743%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3243632739%_))))
                              (if (gx#stx-null? _%tl3243832746%_)
                                  (_%__match3819038191%_
                                   _%e3238832993%_
                                   _%hd3238932997%_
                                   _%tl3239033000%_
                                   _%e3243632739%_
                                   _%hd3243732743%_
                                   _%tl3243832746%_)
                                  (if (equal? _%e3239532958%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3243832746%_)
                                          (let ((_%e3244732696%_
                                                 (gx#syntax-e
                                                  _%tl3243832746%_)))
                                            (let ((_%tl3244932703%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3244732696%_)))
                                                  (_%hd3244832700%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3244732696%_))))
                                              (if (gx#stx-null?
                                                   _%tl3244932703%_)
                                                  (_%__kont3805038051%_
                                                   _%hd3244832700%_)
                                                  (_%__kont3805838059%_))))
                                          (_%__kont3805838059%_))
                                      (if (equal? _%e3239532958%_ 'class:)
                                          (if (gx#stx-pair? _%tl3243832746%_)
                                              (let ((_%e3245832639%_
                                                     (gx#syntax-e
                                                      _%tl3243832746%_)))
                                                (let ((_%tl3246032646%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3245832639%_)))
                                                      (_%hd3245932643%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3245832639%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3246032646%_)
                                                      (_%__kont3805238053%_
                                                       _%hd3245932643%_)
                                                      (_%__kont3805838059%_))))
                                              (_%__kont3805838059%_))
                                          (if (equal? _%e3239532958%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3243832746%_)
                                                  (let ((_%e3247032580%_
                                                         (gx#syntax-e
                                                          _%tl3243832746%_)))
                                                    (let ((_%tl3247232587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3247032580%_)))
                                                          (_%hd3247132584%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3247032580%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3247232587%_)
                                                          (_%__kont3805438055%_
                                                           _%hd3247132584%_
                                                           _%hd3243732743%_)
                                                          (_%__kont3805838059%_))))
                                                  (_%__kont3805838059%_))
                                              (_%__kont3805838059%_)))))))
                          (_%__kont3805838059%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3239033000%_)
                                                (let ((_%e3243632739%_
                                                       (gx#syntax-e
                                                        _%tl3239033000%_)))
                                                  (let ((_%tl3243832746%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3243632739%_)))
                                                        (_%hd3243732743%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3243632739%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3243832746%_)
                                                        (_%__match3819038191%_
                                                         _%e3238832993%_
                                                         _%hd3238932997%_
                                                         _%tl3239033000%_
                                                         _%e3243632739%_
                                                         _%hd3243732743%_
                                                         _%tl3243832746%_)
                                                        (_%__kont3805838059%_))))
                                                (_%__kont3805838059%_))))))))
                          (if (gx#stx-pair? _%__stx3803338034%_)
                              (let ((_%e3237933092%_
                                     (gx#syntax-e _%__stx3803338034%_)))
                                (let ((_%tl3238133099%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3237933092%_)))
                                      (_%hd3238033096%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3237933092%_))))
                                  (if (gx#stx-datum? _%hd3238033096%_)
                                      (let ((_%e3238233102%_
                                             (gx#stx-e _%hd3238033096%_)))
                                        (if (equal? _%e3238233102%_ '?:)
                                            (if (gx#stx-pair? _%tl3238133099%_)
                                                (let ((_%e3238333106%_
                                                       (gx#syntax-e
                                                        _%tl3238133099%_)))
                                                  (let ((_%tl3238533113%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3238333106%_)))
                                                        (_%hd3238433110%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3238333106%_))))
                                                    (_%__kont3803638037%_
                                                     _%tl3238533113%_)))
                                                (_%__match3808438085%_
                                                 _%e3237933092%_
                                                 _%hd3238033096%_
                                                 _%tl3238133099%_))
                                            (_%__match3808438085%_
                                             _%e3237933092%_
                                             _%hd3238033096%_
                                             _%tl3238133099%_)))
                                      (_%__match3808438085%_
                                       _%e3237933092%_
                                       _%hd3238033096%_
                                       _%tl3238133099%_))))
                              (_%__kont3805838059%_)))))))
                 (_%loop-vector32075%_
                  (lambda (_%body32236%_ _%vars32238%_ _%K32239%_)
                    (let* ((_%__stx3829138292%_ _%body32236%_)
                           (_%g3224232265%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3829138292%_))))
                      (let ((_%__kont3829438295%_
                             (lambda (_%g3224432342%_)
                               (_%loop-list32076%_
                                _%g3224432342%_
                                _%vars32238%_
                                _%K32239%_)))
                            (_%__kont3829638297%_
                             (lambda (_%g3225232296%_)
                               (_%loop32073%_
                                _%g3225232296%_
                                _%vars32238%_
                                _%K32239%_))))
                        (if (gx#stx-pair? _%__stx3829138292%_)
                            (let ((_%e3224532318%_
                                   (gx#syntax-e _%__stx3829138292%_)))
                              (let ((_%tl3224732325%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3224532318%_)))
                                    (_%hd3224632322%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3224532318%_))))
                                (if (gx#stx-datum? _%hd3224632322%_)
                                    (let ((_%e3224832328%_
                                           (gx#stx-e _%hd3224632322%_)))
                                      (if (equal? _%e3224832328%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3224732325%_)
                                              (let ((_%e3224932332%_
                                                     (gx#syntax-e
                                                      _%tl3224732325%_)))
                                                (let ((_%tl3225132339%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3224932332%_)))
                                                      (_%hd3225032336%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3224932332%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3225132339%_)
                                                      (_%__kont3829438295%_
                                                       _%hd3225032336%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3224232265%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3224232265%_)))
                                          (if (equal? _%e3224832328%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3224732325%_)
                                                  (let ((_%e3225732286%_
                                                         (gx#syntax-e
                                                          _%tl3224732325%_)))
                                                    (let ((_%tl3225932293%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3225732286%_)))
                                                          (_%hd3225832290%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3225732286%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3225932293%_)
                                                          (_%__kont3829638297%_
                                                           _%hd3225832290%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3224232265%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3224232265%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3224232265%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3224232265%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3224232265%_)))))))
                 (_%loop-list32076%_
                  (lambda (_%rest32166%_ _%vars32168%_ _%K32169%_)
                    (let* ((_%__stx3834138342%_ _%rest32166%_)
                           (_%g3217232184%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3834138342%_))))
                      (let ((_%__kont3834438345%_
                             (lambda (_%g3217432212%_ _%g3217532214%_)
                               (_%loop32073%_
                                _%g3217532214%_
                                _%vars32168%_
                                (lambda (_%g3222632228%_)
                                  (_%loop-list32076%_
                                   _%g3217432212%_
                                   _%g3222632228%_
                                   _%K32169%_)))))
                            (_%__kont3834638347%_
                             (lambda () (_%K32169%_ _%vars32168%_))))
                        (if (gx#stx-pair? _%__stx3834138342%_)
                            (let ((_%e3217632202%_
                                   (gx#syntax-e _%__stx3834138342%_)))
                              (let ((_%tl3217832209%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3217632202%_)))
                                    (_%hd3217732206%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3217632202%_))))
                                (_%__kont3834438345%_
                                 _%tl3217832209%_
                                 _%hd3217732206%_)))
                            (_%__kont3834638347%_))))))
                 (_%loop-class-list32077%_
                  (lambda (_%rest32079%_ _%vars32081%_ _%K32082%_)
                    (let* ((_%__stx3835738358%_ _%rest32079%_)
                           (_%g3208532100%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3835738358%_))))
                      (let ((_%__kont3836038361%_
                             (lambda (_%g3208732138%_ _%g3208832140%_)
                               (_%loop32073%_
                                _%g3208832140%_
                                _%vars32081%_
                                (lambda (_%g3215632158%_)
                                  (_%loop-class-list32077%_
                                   _%g3208732138%_
                                   _%g3215632158%_
                                   _%K32082%_)))))
                            (_%__kont3836238363%_
                             (lambda () (_%K32082%_ _%vars32081%_))))
                        (if (gx#stx-pair? _%__stx3835738358%_)
                            (let ((_%e3208932118%_
                                   (gx#syntax-e _%__stx3835738358%_)))
                              (let ((_%tl3209132125%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3208932118%_)))
                                    (_%hd3209032122%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3208932118%_))))
                                (if (gx#stx-pair? _%tl3209132125%_)
                                    (let ((_%e3209232128%_
                                           (gx#syntax-e _%tl3209132125%_)))
                                      (let ((_%tl3209432135%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3209232128%_)))
                                            (_%hd3209332132%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3209232128%_))))
                                        (_%__kont3836038361%_
                                         _%tl3209432135%_
                                         _%hd3209332132%_)))
                                    (_%__kont3836238363%_))))
                            (_%__kont3836238363%_)))))))
          (_%loop32073%_ _%ptree32070%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29002%_ _%tgt29004%_ _%ptree29005%_ _%K29006%_ _%E29007%_)
        (letrec ((_%generate129009%_
                  (lambda (_%tgt30269%_ _%ptree30271%_ _%K30272%_ _%E30273%_)
                    (let* ((_%g3027530283%_
                            (lambda (_%g3027630279%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3027630279%_)))
                           (_%g3027432066%_
                            (lambda (_%g3027630287%_)
                              ((lambda (_%g3027730290%_)
                                 (let* ((_%__stx3859338594%_ _%ptree30271%_)
                                        (_%g3031730459%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3859338594%_))))
                                   (let ((_%__kont3859638597%_
                                          (lambda (_%g3031931781%_
                                                   _%g3032031783%_)
                                            (let* ((_%__stx3851138512%_
                                                    _%g3031931781%_)
                                                   (_%g3180031835%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3851138512%_))))
                                              (let ((_%__kont3851438515%_
                                                     (lambda ()
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%g3032031783%_
                                       (cons _%g3027730290%_ '())))
                           (cons _%K30272%_ (cons _%E30273%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3851638517%_
                                                     (lambda (_%g3180232036%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%g3032031783%_
                                       (cons _%g3027730290%_ '())))
                           (cons (_%generate129009%_
                                  _%tgt30269%_
                                  _%g3180232036%_
                                  _%K30272%_
                                  _%E30273%_)
                                 (cons _%E30273%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3851838519%_
                                                     (lambda (_%g3180631974%_)
                                                       (let* ((_%g3198831996%_
                                                               (lambda (_%g3198931992%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3198931992%_)))
                      (_%g3198732015%_
                       (lambda (_%g3198932000%_)
                         ((lambda (_%g3199032003%_)
                            (cons 'let
                                  (cons (cons (cons _%g3199032003%_
                                                    (cons (cons _%g3032031783%_
                                                                (cons _%g3027730290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons 'if
                                                    (cons _%g3199032003%_
                                                          (cons (_%generate129009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3199032003%_
                         _%g3180631974%_
                         _%K30272%_
                         _%E30273%_)
                        (cons _%E30273%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _%g3198932000%_))))
                 (_%g3198732015%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3852038521%_
                                                     (lambda (_%g3181431890%_
                                                              _%g3181531892%_)
                                                       (let* ((_%g3191231920%_
                                                               (lambda (_%g3191331916%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3191331916%_)))
                      (_%g3191131939%_
                       (lambda (_%g3191331924%_)
                         ((lambda (_%g3191431927%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '?)
                                              (cons _%g3032031783%_
                                                    (cons _%g3027730290%_
                                                          '())))
                                        (cons (cons 'let
                                                    (cons (cons (cons _%g3191431927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons _%g3181531892%_
                                          (cons _%g3027730290%_ '()))
                                    '()))
                        '())
                  (cons (_%generate129009%_
                         _%g3191431927%_
                         _%g3181431890%_
                         _%K30272%_
                         _%E30273%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30273%_ '())))))
                          _%g3191331924%_))))
                 (_%g3191131939%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%g3179732047%_
                                                       (lambda ()
                                                         (if (gx#stx-pair?
                                                              _%__stx3851138512%_)
                                                             (let ((_%e3180332026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%__stx3851138512%_)))
                       (let ((_%tl3180532033%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3180332026%_)))
                             (_%hd3180432030%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3180332026%_))))
                         (if (gx#stx-null? _%tl3180532033%_)
                             (_%__kont3851638517%_ _%hd3180432030%_)
                             (if (gx#stx-datum? _%hd3180432030%_)
                                 (let ((_%e3181031960%_
                                        (gx#stx-e _%hd3180432030%_)))
                                   (if (equal? _%e3181031960%_ '=>:)
                                       (if (gx#stx-pair? _%tl3180532033%_)
                                           (let ((_%e3181131964%_
                                                  (gx#syntax-e
                                                   _%tl3180532033%_)))
                                             (let ((_%tl3181331971%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3181131964%_)))
                                                   (_%hd3181231968%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3181131964%_))))
                                               (if (gx#stx-null?
                                                    _%tl3181331971%_)
                                                   (_%__kont3851838519%_
                                                    _%hd3181231968%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3180031835%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3180031835%_)))
                                       (if (equal? _%e3181031960%_ '::)
                                           (if (gx#stx-pair? _%tl3180532033%_)
                                               (let ((_%e3182031856%_
                                                      (gx#syntax-e
                                                       _%tl3180532033%_)))
                                                 (let ((_%tl3182231863%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3182031856%_)))
                                                       (_%hd3182131860%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3182031856%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3182231863%_)
                                                       (let ((_%e3182331866%_
                                                              (gx#syntax-e
                                                               _%tl3182231863%_)))
                                                         (let ((_%tl3182531873%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3182331866%_)))
                       (_%hd3182431870%_
                        (let () (declare (not safe)) (##car _%e3182331866%_))))
                   (if (gx#stx-datum? _%hd3182431870%_)
                       (let ((_%e3182631876%_ (gx#stx-e _%hd3182431870%_)))
                         (if (equal? _%e3182631876%_ '=>:)
                             (if (gx#stx-pair? _%tl3182531873%_)
                                 (let ((_%e3182731880%_
                                        (gx#syntax-e _%tl3182531873%_)))
                                   (let ((_%tl3182931887%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3182731880%_)))
                                         (_%hd3182831884%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3182731880%_))))
                                     (if (gx#stx-null? _%tl3182931887%_)
                                         (_%__kont3852038521%_
                                          _%hd3182831884%_
                                          _%hd3182131860%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3180031835%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3180031835%_)))
                             (let () (declare (not safe)) (_%g3180031835%_))))
                       (let () (declare (not safe)) (_%g3180031835%_)))))
               (let () (declare (not safe)) (_%g3180031835%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3180031835%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3180031835%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3180031835%_))))))
                     (let () (declare (not safe)) (_%g3180031835%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%__stx3851138512%_)
                                                      (_%__kont3851438515%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3179732047%_))))))))
                                         (_%__kont3859838599%_
                                          (lambda (_%g3032831678%_)
                                            (let* ((_%__stx3849538496%_
                                                    _%g3032831678%_)
                                                   (_%g3169131703%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3849538496%_))))
                                              (let ((_%__kont3849838499%_
                                                     (lambda (_%g3169331731%_
                                                              _%g3169431733%_)
                                                       (_%generate129009%_
                                                        _%tgt30269%_
                                                        _%g3169431733%_
                                                        (_%generate129009%_
                                                         _%tgt30269%_
                                                         (cons 'and:
                                                               _%g3169331731%_)
                                                         _%K30272%_
                                                         _%E30273%_)
                                                        _%E30273%_)))
                                                    (_%__kont3850038501%_
                                                     (lambda () _%K30272%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3849538496%_)
                                                    (let ((_%e3169531721%_
                                                           (gx#syntax-e
                                                            _%__stx3849538496%_)))
                                                      (let ((_%tl3169731728%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3169531721%_)))
                    (_%hd3169631725%_
                     (let () (declare (not safe)) (##car _%e3169531721%_))))
                (_%__kont3849838499%_ _%tl3169731728%_ _%hd3169631725%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3850038501%_))))))
                                         (_%__kont3860038601%_
                                          (lambda (_%g3033331585%_)
                                            (let* ((_%__stx3847938480%_
                                                    _%g3033331585%_)
                                                   (_%g3159831610%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3847938480%_))))
                                              (let ((_%__kont3848238483%_
                                                     (lambda (_%g3160031638%_
                                                              _%g3160131640%_)
                                                       (_%generate129009%_
                                                        _%tgt30269%_
                                                        _%g3160131640%_
                                                        _%K30272%_
                                                        (_%generate129009%_
                                                         _%tgt30269%_
                                                         (cons 'or:
                                                               _%g3160031638%_)
                                                         _%K30272%_
                                                         _%E30273%_))))
                                                    (_%__kont3848438485%_
                                                     (lambda () _%E30273%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3847938480%_)
                                                    (let ((_%e3160231628%_
                                                           (gx#syntax-e
                                                            _%__stx3847938480%_)))
                                                      (let ((_%tl3160431635%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3160231628%_)))
                    (_%hd3160331632%_
                     (let () (declare (not safe)) (##car _%e3160231628%_))))
                (_%__kont3848238483%_ _%tl3160431635%_ _%hd3160331632%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3848438485%_))))))
                                         (_%__kont3860238603%_
                                          (lambda (_%g3033831550%_)
                                            (_%generate129009%_
                                             _%tgt30269%_
                                             _%g3033831550%_
                                             _%E30273%_
                                             _%K30272%_)))
                                         (_%__kont3860438605%_
                                          (lambda (_%g3034631424%_
                                                   _%g3034731426%_)
                                            (let* ((_%g3144331458%_
                                                    (lambda (_%g3144431454%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3144431454%_)))
                                                   (_%g3144231515%_
                                                    (lambda (_%g3144431462%_)
                                                      (if (gx#stx-pair?
                                                           _%g3144431462%_)
                                                          (let ((_%e3144731465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%g3144431462%_)))
                    (let ((_%hd3144831469%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3144731465%_)))
                          (_%tl3144931472%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3144731465%_))))
                      (if (gx#stx-pair? _%tl3144931472%_)
                          (let ((_%e3145031475%_
                                 (gx#syntax-e _%tl3144931472%_)))
                            (let ((_%hd3145131479%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3145031475%_)))
                                  (_%tl3145231482%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3145031475%_))))
                              (if (gx#stx-null? _%tl3145231482%_)
                                  ((lambda (_%g3144531485%_ _%g3144631487%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'pair?)
                                                       (cons _%g3027730290%_
                                                             '()))
                                                 (cons (let ((_%hd-pat31503%_
                                                              (gx#stx-e
                                                               _%g3034731426%_))
                                                             (_%tl-pat31505%_
                                                              (gx#stx-e
                                                               _%g3034631424%_)))
                                                         (if (and (equal? _%hd-pat31503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat31505%_ '(any:)))
                     _%K30272%_
                     (if (equal? _%tl-pat31505%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%g3144631487%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%g3027730290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate129009%_
                                            _%g3144631487%_
                                            _%g3034731426%_
                                            _%K30272%_
                                            _%E30273%_)
                                           '())))
                         (if (equal? _%hd-pat31503%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%g3144531485%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%g3027730290%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate129009%_
                                                _%g3144531485%_
                                                _%g3034631424%_
                                                _%K30272%_
                                                _%E30273%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%g3144631487%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%g3027730290%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%g3144531485%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%g3027730290%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate129009%_
                                                _%g3144631487%_
                                                _%g3034731426%_
                                                (_%generate129009%_
                                                 _%g3144531485%_
                                                 _%g3034631424%_
                                                 _%K30272%_
                                                 _%E30273%_)
                                                _%E30273%_)
                                               '())))))))
               (cons _%E30273%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd3145131479%_
                                   _%hd3144831469%_)
                                  (_%g3144331458%_ _%g3144431462%_))))
                          (_%g3144331458%_ _%g3144431462%_))))
                  (_%g3144331458%_ _%g3144431462%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3144231515%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl))))))
                                         (_%__kont3860638607%_
                                          (lambda ()
                                            (cons 'if
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'null?)
                                                              (cons _%g3027730290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%K30272%_ (cons _%E30273%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3860838609%_
                                          (lambda (_%g3036231340%_
                                                   _%g3036331342%_)
                                            (_%generate-splice29011%_
                                             _%tgt30269%_
                                             _%g3036331342%_
                                             _%g3036231340%_
                                             _%K30272%_
                                             _%E30273%_)))
                                         (_%__kont3861038611%_
                                          (lambda (_%g3037431254%_)
                                            (let* ((_%g3126831276%_
                                                    (lambda (_%g3126931272%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3126931272%_)))
                                                   (_%g3126731295%_
                                                    (lambda (_%g3126931280%_)
                                                      ((lambda (_%g3127031283%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'box?)
                                   (cons _%g3027730290%_ '()))
                             (cons (cons 'let
                                         (cons (cons (cons _%g3127031283%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##unbox)
                               (cons _%g3027730290%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (_%generate129009%_
                                                      _%g3127031283%_
                                                      _%g3037431254%_
                                                      _%K30272%_
                                                      _%E30273%_)
                                                     '())))
                                   (cons _%E30273%_ '())))))
               _%g3126931280%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3126731295%_
                                               (gx#genident 'e)))))
                                         (_%__kont3861238613%_
                                          (lambda (_%g3038231059%_)
                                            (let* ((_%__stx3842938430%_
                                                    _%g3038231059%_)
                                                   (_%g3107431097%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3842938430%_))))
                                              (let ((_%__kont3843238433%_
                                                     (lambda (_%g3107631174%_)
                                                       (let* ((_%g3118831196%_
                                                               (lambda (_%g3118931192%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3118931192%_)))
                      (_%g3118731215%_
                       (lambda (_%g3118931200%_)
                         ((lambda (_%g3119031203%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'values-count)
                                                          (cons _%g3027730290%_
                                                                '()))
                                                    (cons _%g3119031203%_
                                                          '())))
                                        (cons (_%generate-simple-vector29012%_
                                               _%tgt30269%_
                                               _%g3107631174%_
                                               '0
                                               '##values-ref
                                               _%K30272%_
                                               _%E30273%_)
                                              (cons _%E30273%_ '())))))
                          _%g3118931200%_))))
                 (_%g3118731215%_ (gx#stx-length _%g3107631174%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3843438435%_
                                                     (lambda (_%g3108431128%_)
                                                       (_%generate-list-vector29013%_
                                                        _%tgt30269%_
                                                        _%g3108431128%_
                                                        'values->list
                                                        _%K30272%_
                                                        _%E30273%_))))
                                                (if (gx#stx-pair?
                                                     _%__stx3842938430%_)
                                                    (let ((_%e3107731150%_
                                                           (gx#syntax-e
                                                            _%__stx3842938430%_)))
                                                      (let ((_%tl3107931157%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3107731150%_)))
                    (_%hd3107831154%_
                     (let () (declare (not safe)) (##car _%e3107731150%_))))
                (if (gx#stx-datum? _%hd3107831154%_)
                    (let ((_%e3108031160%_ (gx#stx-e _%hd3107831154%_)))
                      (if (equal? _%e3108031160%_ 'simple:)
                          (if (gx#stx-pair? _%tl3107931157%_)
                              (let ((_%e3108131164%_
                                     (gx#syntax-e _%tl3107931157%_)))
                                (let ((_%tl3108331171%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3108131164%_)))
                                      (_%hd3108231168%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3108131164%_))))
                                  (if (gx#stx-null? _%tl3108331171%_)
                                      (_%__kont3843238433%_ _%hd3108231168%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3107431097%_)))))
                              (let () (declare (not safe)) (_%g3107431097%_)))
                          (if (equal? _%e3108031160%_ 'list:)
                              (if (gx#stx-pair? _%tl3107931157%_)
                                  (let ((_%e3108931118%_
                                         (gx#syntax-e _%tl3107931157%_)))
                                    (let ((_%tl3109131125%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3108931118%_)))
                                          (_%hd3109031122%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3108931118%_))))
                                      (if (gx#stx-null? _%tl3109131125%_)
                                          (_%__kont3843438435%_
                                           _%hd3109031122%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3107431097%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3107431097%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3107431097%_)))))
                    (let () (declare (not safe)) (_%g3107431097%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3107431097%_)))))))
                                         (_%__kont3861438615%_
                                          (lambda (_%g3039030864%_)
                                            (let* ((_%__stx3837938380%_
                                                    _%g3039030864%_)
                                                   (_%g3087930902%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3837938380%_))))
                                              (let ((_%__kont3838238383%_
                                                     (lambda (_%g3088130979%_)
                                                       (let* ((_%g3099331001%_
                                                               (lambda (_%g3099430997%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3099430997%_)))
                      (_%g3099231020%_
                       (lambda (_%g3099431005%_)
                         ((lambda (_%g3099531008%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f 'vector?)
                                              (cons _%g3027730290%_ '()))
                                        (cons (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _%g3027730290%_ '()))
                              (cons _%g3099531008%_ '())))
                  (cons (_%generate-simple-vector29012%_
                         _%tgt30269%_
                         _%g3088130979%_
                         '0
                         '##vector-ref
                         _%K30272%_
                         _%E30273%_)
                        (cons _%E30273%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30273%_ '())))))
                          _%g3099431005%_))))
                 (_%g3099231020%_ (gx#stx-length _%g3088130979%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3838438385%_
                                                     (lambda (_%g3088930933%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'vector?)
                                 (cons _%g3027730290%_ '()))
                           (cons (_%generate-list-vector29013%_
                                  _%tgt30269%_
                                  _%g3088930933%_
                                  'vector->list
                                  _%K30272%_
                                  _%E30273%_)
                                 (cons _%E30273%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx3837938380%_)
                                                    (let ((_%e3088230955%_
                                                           (gx#syntax-e
                                                            _%__stx3837938380%_)))
                                                      (let ((_%tl3088430962%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3088230955%_)))
                    (_%hd3088330959%_
                     (let () (declare (not safe)) (##car _%e3088230955%_))))
                (if (gx#stx-datum? _%hd3088330959%_)
                    (let ((_%e3088530965%_ (gx#stx-e _%hd3088330959%_)))
                      (if (equal? _%e3088530965%_ 'simple:)
                          (if (gx#stx-pair? _%tl3088430962%_)
                              (let ((_%e3088630969%_
                                     (gx#syntax-e _%tl3088430962%_)))
                                (let ((_%tl3088830976%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3088630969%_)))
                                      (_%hd3088730973%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3088630969%_))))
                                  (if (gx#stx-null? _%tl3088830976%_)
                                      (_%__kont3838238383%_ _%hd3088730973%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3087930902%_)))))
                              (let () (declare (not safe)) (_%g3087930902%_)))
                          (if (equal? _%e3088530965%_ 'list:)
                              (if (gx#stx-pair? _%tl3088430962%_)
                                  (let ((_%e3089430923%_
                                         (gx#syntax-e _%tl3088430962%_)))
                                    (let ((_%tl3089630930%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3089430923%_)))
                                          (_%hd3089530927%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3089430923%_))))
                                      (if (gx#stx-null? _%tl3089630930%_)
                                          (_%__kont3838438385%_
                                           _%hd3089530927%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3087930902%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3087930902%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3087930902%_)))))
                    (let () (declare (not safe)) (_%g3087930902%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3087930902%_)))))))
                                         (_%__kont3861638617%_
                                          (lambda (_%g3039830815%_
                                                   _%g3039930817%_)
                                            (_%generate-struct29014%_
                                             (gx#stx-e _%g3039930817%_)
                                             _%tgt30269%_
                                             _%g3039830815%_
                                             _%K30272%_
                                             _%E30273%_)))
                                         (_%__kont3861838619%_
                                          (lambda (_%g3041030756%_
                                                   _%g3041130758%_)
                                            (_%generate-class29017%_
                                             (gx#stx-e _%g3041130758%_)
                                             _%tgt30269%_
                                             _%g3041030756%_
                                             _%K30272%_
                                             _%E30273%_)))
                                         (_%__kont3862038621%_
                                          (lambda (_%g3042230653%_)
                                            (let* ((_%g3066730675%_
                                                    (lambda (_%g3066830671%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3066830671%_)))
                                                   (_%g3066630694%_
                                                    (lambda (_%g3066830679%_)
                                                      ((lambda (_%g3066930682%_)
                                                         (cons 'if
                                                               (cons (cons _%g3066930682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%g3027730290%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g3042230653%_
                                                           '()))
                                               '())))
                             (cons _%K30272%_ (cons _%E30273%_ '())))))
               _%g3066830679%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3066630694%_
                                               (let ((_%e30698%_
                                                      (gx#stx-e
                                                       _%g3042230653%_)))
                                                 (if (or (symbol? _%e30698%_)
                                                         (keyword? _%e30698%_)
                                                         (immediate?
                                                          _%e30698%_))
                                                     '##eq?
                                                     (if (number? _%e30698%_)
                                                         'eqv?
                                                         'equal?)))))))
                                         (_%__kont3862238623%_
                                          (lambda (_%g3043030573%_
                                                   _%g3043130575%_)
                                            (let* ((_%g3059130599%_
                                                    (lambda (_%g3059230595%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3059230595%_)))
                                                   (_%g3059030618%_
                                                    (lambda (_%g3059230603%_)
                                                      ((lambda (_%g3059330606%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%g3059330606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%g3043130575%_
                                                     (cons _%g3027730290%_
                                                           '()))
                                               '()))
                                   '())
                             (cons (_%generate129009%_
                                    _%g3059330606%_
                                    _%g3043030573%_
                                    _%K30272%_
                                    _%E30273%_)
                                   '()))))
               _%g3059230603%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3059030618%_
                                               (gx#genident 'e)))))
                                         (_%__kont3862438625%_
                                          (lambda (_%g3044230515%_)
                                            (cons 'let
                                                  (cons (cons (cons _%g3044230515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g3027730290%_ '()))
                      '())
                (cons _%K30272%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3862638627%_
                                          (lambda () _%K30272%_)))
                                     (if (gx#stx-pair? _%__stx3859338594%_)
                                         (let ((_%e3032131757%_
                                                (gx#syntax-e
                                                 _%__stx3859338594%_)))
                                           (let ((_%tl3032331764%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e3032131757%_)))
                                                 (_%hd3032231761%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e3032131757%_))))
                                             (if (gx#stx-datum?
                                                  _%hd3032231761%_)
                                                 (let ((_%e3032431767%_
                                                        (gx#stx-e
                                                         _%hd3032231761%_)))
                                                   (if (equal? _%e3032431767%_
                                                               '?:)
                                                       (if (gx#stx-pair?
                                                            _%tl3032331764%_)
                                                           (let ((_%e3032531771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3032331764%_)))
                     (let ((_%tl3032731778%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3032531771%_)))
                           (_%hd3032631775%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3032531771%_))))
                       (_%__kont3859638597%_
                        _%tl3032731778%_
                        _%hd3032631775%_)))
                   (let () (declare (not safe)) (_%g3031730459%_)))
               (if (equal? _%e3032431767%_ 'and:)
                   (_%__kont3859838599%_ _%tl3032331764%_)
                   (if (equal? _%e3032431767%_ 'or:)
                       (_%__kont3860038601%_ _%tl3032331764%_)
                       (if (equal? _%e3032431767%_ 'not:)
                           (if (gx#stx-pair? _%tl3032331764%_)
                               (let ((_%e3034331540%_
                                      (gx#syntax-e _%tl3032331764%_)))
                                 (let ((_%tl3034531547%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3034331540%_)))
                                       (_%hd3034431544%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3034331540%_))))
                                   (if (gx#stx-null? _%tl3034531547%_)
                                       (_%__kont3860238603%_ _%hd3034431544%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3031730459%_)))))
                               (let () (declare (not safe)) (_%g3031730459%_)))
                           (if (equal? _%e3032431767%_ 'cons:)
                               (if (gx#stx-pair? _%tl3032331764%_)
                                   (let ((_%e3035231404%_
                                          (gx#syntax-e _%tl3032331764%_)))
                                     (let ((_%tl3035431411%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3035231404%_)))
                                           (_%hd3035331408%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3035231404%_))))
                                       (if (gx#stx-pair? _%tl3035431411%_)
                                           (let ((_%e3035531414%_
                                                  (gx#syntax-e
                                                   _%tl3035431411%_)))
                                             (let ((_%tl3035731421%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3035531414%_)))
                                                   (_%hd3035631418%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3035531414%_))))
                                               (if (gx#stx-null?
                                                    _%tl3035731421%_)
                                                   (_%__kont3860438605%_
                                                    _%hd3035631418%_
                                                    _%hd3035331408%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3031730459%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3031730459%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3031730459%_)))
                               (if (equal? _%e3032431767%_ 'null:)
                                   (if (gx#stx-null? _%tl3032331764%_)
                                       (_%__kont3860638607%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3031730459%_)))
                                   (if (equal? _%e3032431767%_ 'splice:)
                                       (if (gx#stx-pair? _%tl3032331764%_)
                                           (let ((_%e3036831320%_
                                                  (gx#syntax-e
                                                   _%tl3032331764%_)))
                                             (let ((_%tl3037031327%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3036831320%_)))
                                                   (_%hd3036931324%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3036831320%_))))
                                               (if (gx#stx-pair?
                                                    _%tl3037031327%_)
                                                   (let ((_%e3037131330%_
                                                          (gx#syntax-e
                                                           _%tl3037031327%_)))
                                                     (let ((_%tl3037331337%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3037131330%_)))
                                                           (_%hd3037231334%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3037131330%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3037331337%_)
                                                           (_%__kont3860838609%_
                                                            _%hd3037231334%_
                                                            _%hd3036931324%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3031730459%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3031730459%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3031730459%_)))
                                       (if (equal? _%e3032431767%_ 'box:)
                                           (if (gx#stx-pair? _%tl3032331764%_)
                                               (let ((_%e3037931244%_
                                                      (gx#syntax-e
                                                       _%tl3032331764%_)))
                                                 (let ((_%tl3038131251%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3037931244%_)))
                                                       (_%hd3038031248%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3037931244%_))))
                                                   (if (gx#stx-null?
                                                        _%tl3038131251%_)
                                                       (_%__kont3861038611%_
                                                        _%hd3038031248%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g3031730459%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3031730459%_)))
                                           (if (equal? _%e3032431767%_
                                                       'values:)
                                               (if (gx#stx-pair?
                                                    _%tl3032331764%_)
                                                   (let ((_%e3038731049%_
                                                          (gx#syntax-e
                                                           _%tl3032331764%_)))
                                                     (let ((_%tl3038931056%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3038731049%_)))
                                                           (_%hd3038831053%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3038731049%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3038931056%_)
                                                           (_%__kont3861238613%_
                                                            _%hd3038831053%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3031730459%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3031730459%_)))
                                               (if (equal? _%e3032431767%_
                                                           'vector:)
                                                   (if (gx#stx-pair?
                                                        _%tl3032331764%_)
                                                       (let ((_%e3039530854%_
                                                              (gx#syntax-e
                                                               _%tl3032331764%_)))
                                                         (let ((_%tl3039730861%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3039530854%_)))
                       (_%hd3039630858%_
                        (let () (declare (not safe)) (##car _%e3039530854%_))))
                   (if (gx#stx-null? _%tl3039730861%_)
                       (_%__kont3861438615%_ _%hd3039630858%_)
                       (let () (declare (not safe)) (_%g3031730459%_)))))
               (let () (declare (not safe)) (_%g3031730459%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (equal? _%e3032431767%_
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _%tl3032331764%_)
                                                           (let ((_%e3040430795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3032331764%_)))
                     (let ((_%tl3040630802%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3040430795%_)))
                           (_%hd3040530799%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3040430795%_))))
                       (if (gx#stx-pair? _%tl3040630802%_)
                           (let ((_%e3040730805%_
                                  (gx#syntax-e _%tl3040630802%_)))
                             (let ((_%tl3040930812%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3040730805%_)))
                                   (_%hd3040830809%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3040730805%_))))
                               (if (gx#stx-null? _%tl3040930812%_)
                                   (_%__kont3861638617%_
                                    _%hd3040830809%_
                                    _%hd3040530799%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3031730459%_)))))
                           (let () (declare (not safe)) (_%g3031730459%_)))))
                   (let () (declare (not safe)) (_%g3031730459%_)))
               (if (equal? _%e3032431767%_ 'class:)
                   (if (gx#stx-pair? _%tl3032331764%_)
                       (let ((_%e3041630736%_ (gx#syntax-e _%tl3032331764%_)))
                         (let ((_%tl3041830743%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3041630736%_)))
                               (_%hd3041730740%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3041630736%_))))
                           (if (gx#stx-pair? _%tl3041830743%_)
                               (let ((_%e3041930746%_
                                      (gx#syntax-e _%tl3041830743%_)))
                                 (let ((_%tl3042130753%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3041930746%_)))
                                       (_%hd3042030750%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3041930746%_))))
                                   (if (gx#stx-null? _%tl3042130753%_)
                                       (_%__kont3861838619%_
                                        _%hd3042030750%_
                                        _%hd3041730740%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3031730459%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g3031730459%_)))))
                       (let () (declare (not safe)) (_%g3031730459%_)))
                   (if (equal? _%e3032431767%_ 'datum:)
                       (if (gx#stx-pair? _%tl3032331764%_)
                           (let ((_%e3042730643%_
                                  (gx#syntax-e _%tl3032331764%_)))
                             (let ((_%tl3042930650%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3042730643%_)))
                                   (_%hd3042830647%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3042730643%_))))
                               (if (gx#stx-null? _%tl3042930650%_)
                                   (_%__kont3862038621%_ _%hd3042830647%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3031730459%_)))))
                           (let () (declare (not safe)) (_%g3031730459%_)))
                       (if (equal? _%e3032431767%_ 'apply:)
                           (if (gx#stx-pair? _%tl3032331764%_)
                               (let ((_%e3043630553%_
                                      (gx#syntax-e _%tl3032331764%_)))
                                 (let ((_%tl3043830560%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3043630553%_)))
                                       (_%hd3043730557%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3043630553%_))))
                                   (if (gx#stx-pair? _%tl3043830560%_)
                                       (let ((_%e3043930563%_
                                              (gx#syntax-e _%tl3043830560%_)))
                                         (let ((_%tl3044130570%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3043930563%_)))
                                               (_%hd3044030567%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3043930563%_))))
                                           (if (gx#stx-null? _%tl3044130570%_)
                                               (_%__kont3862238623%_
                                                _%hd3044030567%_
                                                _%hd3043730557%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3031730459%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g3031730459%_)))))
                               (let () (declare (not safe)) (_%g3031730459%_)))
                           (if (equal? _%e3032431767%_ 'var:)
                               (if (gx#stx-pair? _%tl3032331764%_)
                                   (let ((_%e3044730505%_
                                          (gx#syntax-e _%tl3032331764%_)))
                                     (let ((_%tl3044930512%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3044730505%_)))
                                           (_%hd3044830509%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3044730505%_))))
                                       (if (gx#stx-null? _%tl3044930512%_)
                                           (_%__kont3862438625%_
                                            _%hd3044830509%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g3031730459%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3031730459%_)))
                               (if (equal? _%e3032431767%_ 'any:)
                                   (if (gx#stx-null? _%tl3032331764%_)
                                       (_%__kont3862638627%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3031730459%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3031730459%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3031730459%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3031730459%_))))))
                               _%g3027630287%_))))
                      (_%g3027432066%_ _%tgt30269%_))))
                 (_%generate-splice29011%_
                  (lambda (_%tgt29647%_
                           _%hd29649%_
                           _%rest29650%_
                           _%K29651%_
                           _%E29652%_)
                    (let* ((_%g2965429671%_
                            (lambda (_%g2965529667%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2965529667%_)))
                           (_%g2965330265%_
                            (lambda (_%g2965529675%_)
                              (if (gx#stx-pair/null? _%g2965529675%_)
                                  (let ((_g39748_
                                         (gx#syntax-split-splice
                                          _%g2965529675%_
                                          '0)))
                                    (begin
                                      (let ((_g39749_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g39748_)
                                                   (##values-length _g39748_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g39749_ 2)))
                                            (error "Context expects 2 values"
                                                   _g39749_)))
                                      (let ((_%target2965729678%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g39748_ 0)))
                                            (_%tl2965929681%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g39748_ 1))))
                                        (if (gx#stx-null? _%tl2965929681%_)
                                            (letrec ((_%loop2966029684%_
                                                      (lambda (_%hd2965829688%_
                                                               _%var2966429691%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2965829688%_)
                                                            (let ((_%e2966129693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2965829688%_)))
                      (let ((_%lp-hd2966229697%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2966129693%_)))
                            (_%lp-tl2966329700%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2966129693%_))))
                        (_%loop2966029684%_
                         _%lp-tl2966329700%_
                         (cons _%lp-hd2966229697%_ _%var2966429691%_))))
                    (let ((_%var2966529703%_ (reverse _%var2966429691%_)))
                      ((lambda (_%g2965629706%_)
                         (let* ((_%g2972229739%_
                                 (lambda (_%g2972329735%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2972329735%_)))
                                (_%g2972130253%_
                                 (lambda (_%g2972329743%_)
                                   (if (gx#stx-pair/null? _%g2972329743%_)
                                       (let ((_g39750_
                                              (gx#syntax-split-splice
                                               _%g2972329743%_
                                               '0)))
                                         (begin
                                           (let ((_g39751_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g39750_)
                                                        (##values-length
                                                         _g39750_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g39751_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g39751_)))
                                           (let ((_%target2972529746%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g39750_ 0)))
                                                 (_%tl2972729749%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g39750_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2972729749%_)
                                                 (letrec ((_%loop2972829752%_
                                                           (lambda (_%hd2972629756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%var-r2973229759%_)
                     (if (gx#stx-pair? _%hd2972629756%_)
                         (let ((_%e2972929761%_
                                (gx#syntax-e _%hd2972629756%_)))
                           (let ((_%lp-hd2973029765%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2972929761%_)))
                                 (_%lp-tl2973129768%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2972929761%_))))
                             (_%loop2972829752%_
                              _%lp-tl2973129768%_
                              (cons _%lp-hd2973029765%_ _%var-r2973229759%_))))
                         (let ((_%var-r2973329771%_
                                (reverse _%var-r2973229759%_)))
                           ((lambda (_%g2972429774%_)
                              (let* ((_%g2979129808%_
                                      (lambda (_%g2979229804%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2979229804%_)))
                                     (_%g2979030241%_
                                      (lambda (_%g2979229812%_)
                                        (if (gx#stx-pair/null? _%g2979229812%_)
                                            (let ((_g39752_
                                                   (gx#syntax-split-splice
                                                    _%g2979229812%_
                                                    '0)))
                                              (begin
                                                (let ((_g39753_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g39752_)
                                                             (##values-length
                                                              _g39752_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g39753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g39753_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2979429815%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g39752_
                                                          0)))
                                                      (_%tl2979629818%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g39752_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2979629818%_)
                                                      (letrec ((_%loop2979729821%_
                                                                (lambda (_%hd2979529825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%init2980129828%_)
                          (if (gx#stx-pair? _%hd2979529825%_)
                              (let ((_%e2979829830%_
                                     (gx#syntax-e _%hd2979529825%_)))
                                (let ((_%lp-hd2979929834%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2979829830%_)))
                                      (_%lp-tl2980029837%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2979829830%_))))
                                  (_%loop2979729821%_
                                   _%lp-tl2980029837%_
                                   (cons _%lp-hd2979929834%_
                                         _%init2980129828%_))))
                              (let ((_%init2980229840%_
                                     (reverse _%init2980129828%_)))
                                ((lambda (_%g2979329843%_)
                                   (let* ((_%g2986029868%_
                                           (lambda (_%g2986129864%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2986129864%_)))
                                          (_%g2985930237%_
                                           (lambda (_%g2986129872%_)
                                             ((lambda (_%g2986229875%_)
                                                (let* ((_%g2988829896%_
                                                        (lambda (_%g2988929892%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2988929892%_)))
                                                       (_%g2988730233%_
                                                        (lambda (_%g2988929900%_)
                                                          ((lambda (_%g2989029903%_)
                                                             (let* ((_%g2991629924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g2991729920%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2991729920%_)))
                            (_%g2991530229%_
                             (lambda (_%g2991729928%_)
                               ((lambda (_%g2991829931%_)
                                  (let* ((_%g2994429952%_
                                          (lambda (_%g2994529948%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g2994529948%_)))
                                         (_%g2994330225%_
                                          (lambda (_%g2994529956%_)
                                            ((lambda (_%g2994629959%_)
                                               (let* ((_%g2997229980%_
                                                       (lambda (_%g2997329976%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2997329976%_)))
                                                      (_%g2997130221%_
                                                       (lambda (_%g2997329984%_)
                                                         ((lambda (_%g2997429987%_)
                                                            (let* ((_%g3000030008%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3000130004%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3000130004%_)))
                           (_%g2999930217%_
                            (lambda (_%g3000130012%_)
                              ((lambda (_%g3000230015%_)
                                 (let* ((_%g3002830036%_
                                         (lambda (_%g3002930032%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3002930032%_)))
                                        (_%g3002730213%_
                                         (lambda (_%g3002930040%_)
                                           ((lambda (_%g3003030043%_)
                                              (let* ((_%g3005630064%_
                                                      (lambda (_%g3005730060%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3005730060%_)))
                                                     (_%g3005530198%_
                                                      (lambda (_%g3005730068%_)
                                                        ((lambda (_%g3005830071%_)
                                                           (let* ((_%g3008430092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g3008530088%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3008530088%_)))
                          (_%g3008330186%_
                           (lambda (_%g3008530096%_)
                             ((lambda (_%g3008630099%_)
                                (let* ((_%g3011230120%_
                                        (lambda (_%g3011330116%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3011330116%_)))
                                       (_%g3011130182%_
                                        (lambda (_%g3011330124%_)
                                          ((lambda (_%g3011430127%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%g2989029903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%g3000230015%_
                                                     (foldr (lambda (_%g3014130152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g3014230155%_)
                      (cons _%g3014130152%_ _%g3014230155%_))
                    '()
                    _%g2965629706%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%g3003030043%_ '())))
                                   '()))
                       (cons (cons _%g2994629959%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%g2997429987%_
                                                           (cons _%g3000230015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3014330158%_ _%g3014430161%_)
                                  (cons _%g3014330158%_ _%g3014430161%_))
                                '()
                                _%g2972429774%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%g3011430127%_
                                                           '())))
                                         '()))
                             (cons (cons _%g2991829931%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%g3000230015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3014530164%_ _%g3014630167%_)
                                  (cons _%g3014530164%_ _%g3014630167%_))
                                '()
                                _%g2972429774%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%g3000230015%_ '()))
                                     (cons (cons _%g2994629959%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%g3000230015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%g3000230015%_
                     (foldr (lambda (_%g3014730170%_ _%g3014830173%_)
                              (cons _%g3014730170%_ _%g3014830173%_))
                            '()
                            _%g2972429774%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%g3008630099%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%g2991829931%_
                             (cons _%g2986229875%_
                                   (foldr (lambda (_%g3014930176%_
                                                   _%g3015030179%_)
                                            (cons _%g3014930176%_
                                                  _%g3015030179%_))
                                          '()
                                          _%g2979329843%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3011330124%_))))
                                  (_%g3011130182%_
                                   (_%generate129009%_
                                    _%g2997429987%_
                                    _%hd29649%_
                                    _%g3005830071%_
                                    _%g3008630099%_))))
                              _%g3008530096%_))))
                     (_%g3008330186%_
                      (cons _%g2989029903%_
                            (cons _%g3000230015%_
                                  (foldr (lambda (_%g3018930192%_
                                                  _%g3019030195%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%g3018930192%_
                                                             '()))
                                                 _%g3019030195%_))
                                         '()
                                         _%g2972429774%_))))))
                 _%g3005730068%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3005530198%_
                                                 (cons _%g2991829931%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%g3000230015%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets
                        _%g2972429774%_
                        _%g2965629706%_)
                       (foldr (lambda (_%g3020130205%_
                                       _%g3020230208%_
                                       _%g3020330210%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%g3020230208%_
                                                  (cons _%g3020130205%_ '())))
                                      _%g3020330210%_))
                              '()
                              _%g2972429774%_
                              _%g2965629706%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g3002930040%_))))
                                   (_%g3002730213%_
                                    (_%generate129009%_
                                     _%g3000230015%_
                                     _%rest29650%_
                                     _%K29651%_
                                     _%E29652%_))))
                               _%g3000130012%_))))
                      (_%g2999930217%_ (gx#genident 'rest))))
                  _%g2997329984%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2997130221%_
                                                  (gx#genident 'hd))))
                                             _%g2994529956%_))))
                                    (_%g2994330225%_
                                     (gx#genident 'splice-try))))
                                _%g2991729928%_))))
                       (_%g2991530229%_ (gx#genident 'splice-loop))))
                   _%g2988929900%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2988730233%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%g2986129872%_))))
                                     (_%g2985930237%_ _%tgt29647%_)))
                                 _%init2980229840%_))))))
                (_%loop2979729821%_ _%target2979429815%_ '()))
              (_%g2979129808%_ _%g2979229812%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2979129808%_
                                             _%g2979229812%_)))))
                                (_%g2979030241%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%g3024430247%_
                                                   _%g3024530250%_)
                                            (cons _%g3024430247%_
                                                  _%g3024530250%_))
                                          '()
                                          _%g2965629706%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%var-r2973329771%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2972829752%_
                                                    _%target2972529746%_
                                                    '()))
                                                 (_%g2972229739%_
                                                  _%g2972329743%_)))))
                                       (_%g2972229739%_ _%g2972329743%_)))))
                           (_%g2972130253%_
                            (gx#gentemps
                             (foldr (lambda (_%g3025630259%_ _%g3025730262%_)
                                      (cons _%g3025630259%_ _%g3025730262%_))
                                    '()
                                    _%g2965629706%_)))))
                       _%var2966529703%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2966029684%_
                                               _%target2965729678%_
                                               '()))
                                            (_%g2965429671%_
                                             _%g2965529675%_)))))
                                  (_%g2965429671%_ _%g2965529675%_)))))
                      (_%g2965330265%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd29649%_)))))
                 (_%generate-simple-vector29012%_
                  (lambda (_%tgt29470%_
                           _%body29472%_
                           _%start29473%_
                           _%ref29474%_
                           _%K29475%_
                           _%E29476%_)
                    (let _%recur29478%_ ((_%rest29481%_ _%body29472%_)
                                         (_%off29483%_ _%start29473%_))
                      (let* ((_%__stx3895138952%_ _%rest29481%_)
                             (_%g2948629498%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3895138952%_))))
                        (let ((_%__kont3895438955%_
                               (lambda (_%g2948829526%_ _%g2948929528%_)
                                 (let* ((_%g2954329566%_
                                         (lambda (_%g2954429562%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2954429562%_)))
                                        (_%g2954229639%_
                                         (lambda (_%g2954429570%_)
                                           (if (gx#stx-pair? _%g2954429570%_)
                                               (let ((_%e2954929573%_
                                                      (gx#syntax-e
                                                       _%g2954429570%_)))
                                                 (let ((_%hd2955029577%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2954929573%_)))
                                                       (_%tl2955129580%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2954929573%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2955129580%_)
                                                       (let ((_%e2955229583%_
                                                              (gx#syntax-e
                                                               _%tl2955129580%_)))
                                                         (let ((_%hd2955329587%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2955229583%_)))
                       (_%tl2955429590%_
                        (let () (declare (not safe)) (##cdr _%e2955229583%_))))
                   (if (gx#stx-pair? _%tl2955429590%_)
                       (let ((_%e2955529593%_ (gx#syntax-e _%tl2955429590%_)))
                         (let ((_%hd2955629597%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e2955529593%_)))
                               (_%tl2955729600%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e2955529593%_))))
                           (if (gx#stx-pair? _%tl2955729600%_)
                               (let ((_%e2955829603%_
                                      (gx#syntax-e _%tl2955729600%_)))
                                 (let ((_%hd2955929607%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2955829603%_)))
                                       (_%tl2956029610%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2955829603%_))))
                                   (if (gx#stx-null? _%tl2956029610%_)
                                       ((lambda (_%g2954529613%_
                                                 _%g2954629615%_
                                                 _%g2954729616%_
                                                 _%g2954829617%_)
                                          (cons 'let
                                                (cons (cons (cons _%g2954829617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _%g2954529613%_
                                      (cons _%g2954729616%_
                                            (cons _%g2954629615%_ '())))
                                '()))
                    '())
              (cons (_%generate129009%_
                     _%g2954829617%_
                     _%g2948929528%_
                     (_%recur29478%_ _%g2948829526%_ (fx1+ _%off29483%_))
                     _%E29476%_)
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%hd2955929607%_
                                        _%hd2955629597%_
                                        _%hd2955329587%_
                                        _%hd2955029577%_)
                                       (_%g2954329566%_ _%g2954429570%_))))
                               (_%g2954329566%_ _%g2954429570%_))))
                       (_%g2954329566%_ _%g2954429570%_))))
               (_%g2954329566%_ _%g2954429570%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2954329566%_
                                                _%g2954429570%_)))))
                                   (_%g2954229639%_
                                    (list (gx#genident 'e)
                                          _%tgt29470%_
                                          _%off29483%_
                                          _%ref29474%_)))))
                              (_%__kont3895638957%_ (lambda () _%K29475%_)))
                          (if (gx#stx-pair? _%__stx3895138952%_)
                              (let ((_%e2949029516%_
                                     (gx#syntax-e _%__stx3895138952%_)))
                                (let ((_%tl2949229523%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2949029516%_)))
                                      (_%hd2949129520%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2949029516%_))))
                                  (_%__kont3895438955%_
                                   _%tl2949229523%_
                                   _%hd2949129520%_)))
                              (_%__kont3895638957%_)))))))
                 (_%generate-list-vector29013%_
                  (lambda (_%tgt29362%_
                           _%body29364%_
                           _%->list29365%_
                           _%K29366%_
                           _%E29367%_)
                    (let* ((_%g2936929377%_
                            (lambda (_%g2937029373%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2937029373%_)))
                           (_%g2936829466%_
                            (lambda (_%g2937029381%_)
                              ((lambda (_%g2937129384%_)
                                 (let* ((_%g2939629404%_
                                         (lambda (_%g2939729400%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2939729400%_)))
                                        (_%g2939529462%_
                                         (lambda (_%g2939729408%_)
                                           ((lambda (_%g2939829411%_)
                                              (let* ((_%g2942429432%_
                                                      (lambda (_%g2942529428%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2942529428%_)))
                                                     (_%g2942329454%_
                                                      (lambda (_%g2942529436%_)
                                                        ((lambda (_%g2942629439%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%g2937129384%_
                                           (cons _%g2942629439%_ '()))
                                     '())
                               (cons (_%generate129009%_
                                      _%g2937129384%_
                                      _%body29364%_
                                      _%K29366%_
                                      _%E29367%_)
                                     '()))))
                 _%g2942529436%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2942329454%_
                                                 (let ((_%$e29458%_
                                                        _%->list29365%_))
                                                   (if (eq? 'values->list
                                                            _%$e29458%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%g2939829411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e29458%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%g2939829411%_ '()))
                   (if (eq? 'struct->list _%$e29458%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax '#f 'struct->list)
                                         (cons _%g2939829411%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx29002%_
                        _%->list29365%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2939729408%_))))
                                   (_%g2939529462%_ _%tgt29362%_)))
                               _%g2937029381%_))))
                      (_%g2936829466%_ (gx#genident 'e)))))
                 (_%generate-struct29014%_
                  (lambda (_%info29233%_
                           _%tgt29235%_
                           _%body29236%_
                           _%K29237%_
                           _%E29238%_)
                    (let* ((_%__stx3896738968%_ _%body29236%_)
                           (_%g2924129264%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3896738968%_))))
                      (let ((_%__kont3897038971%_
                             (lambda (_%g2924329341%_)
                               (let ((_%fields29355%_
                                      (_%struct-field-accessors29016%_
                                       _%info29233%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj39721
                                                          _%info29233%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj39721
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj39721
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj39721
                                                          'predicate)))
                                                   (cons _%tgt29235%_ '()))
                                             (cons (_%generate-simple-struct-body29015%_
                                                    _%info29233%_
                                                    _%tgt29235%_
                                                    _%g2924329341%_
                                                    _%K29237%_
                                                    _%E29238%_)
                                                   (cons _%E29238%_ '())))))))
                            (_%__kont3897238973%_
                             (lambda (_%g2925129295%_)
                               (cons 'if
                                     (cons (cons (let ((__obj39722
                                                        _%info29233%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj39722
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj39722
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj39722
                                                        'predicate)))
                                                 (cons _%tgt29235%_ '()))
                                           (cons (_%generate-list-vector29013%_
                                                  _%tgt29235%_
                                                  _%g2925129295%_
                                                  'struct->list
                                                  _%K29237%_
                                                  _%E29238%_)
                                                 (cons _%E29238%_ '())))))))
                        (if (gx#stx-pair? _%__stx3896738968%_)
                            (let ((_%e2924429317%_
                                   (gx#syntax-e _%__stx3896738968%_)))
                              (let ((_%tl2924629324%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2924429317%_)))
                                    (_%hd2924529321%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2924429317%_))))
                                (if (gx#stx-datum? _%hd2924529321%_)
                                    (let ((_%e2924729327%_
                                           (gx#stx-e _%hd2924529321%_)))
                                      (if (equal? _%e2924729327%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2924629324%_)
                                              (let ((_%e2924829331%_
                                                     (gx#syntax-e
                                                      _%tl2924629324%_)))
                                                (let ((_%tl2925029338%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2924829331%_)))
                                                      (_%hd2924929335%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2924829331%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2925029338%_)
                                                      (_%__kont3897038971%_
                                                       _%hd2924929335%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2924129264%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2924129264%_)))
                                          (if (equal? _%e2924729327%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2924629324%_)
                                                  (let ((_%e2925629285%_
                                                         (gx#syntax-e
                                                          _%tl2924629324%_)))
                                                    (let ((_%tl2925829292%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2925629285%_)))
                                                          (_%hd2925729289%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2925629285%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2925829292%_)
                                                          (_%__kont3897238973%_
                                                           _%hd2925729289%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2924129264%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2924129264%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2924129264%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2924129264%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2924129264%_)))))))
                 (_%generate-simple-struct-body29015%_
                  (lambda (_%info29153%_
                           _%tgt29155%_
                           _%body29156%_
                           _%K29157%_
                           _%E29158%_)
                    (let _%recur29160%_ ((_%rest29163%_ _%body29156%_)
                                         (_%fields29165%_
                                          (_%struct-field-accessors29016%_
                                           _%info29153%_)))
                      (let* ((_%__stx3901739018%_ _%rest29163%_)
                             (_%g2916829180%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3901739018%_))))
                        (let ((_%__kont3902039021%_
                               (lambda (_%g2917029208%_ _%g2917129210%_)
                                 (if (null? _%fields29165%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29002%_
                                      _%info29153%_
                                      (let ((__obj39723 _%info29153%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39723
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39723
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39723
                                             'name))))
                                     (let ((_%$tgt29225%_ (gx#genident 'e))
                                           (_%getf29227%_
                                            (car _%fields29165%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29225%_
                                                               (cons (cons _%getf29227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29155%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129009%_
                                                          _%$tgt29225%_
                                                          _%g2917129210%_
                                                          (_%recur29160%_
                                                           _%g2917029208%_
                                                           (cdr _%fields29165%_))
                                                          _%E29158%_)
                                                         '())))))))
                              (_%__kont3902239023%_ (lambda () _%K29157%_)))
                          (if (gx#stx-pair? _%__stx3901739018%_)
                              (let ((_%e2917229198%_
                                     (gx#syntax-e _%__stx3901739018%_)))
                                (let ((_%tl2917429205%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2917229198%_)))
                                      (_%hd2917329202%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2917229198%_))))
                                  (_%__kont3902039021%_
                                   _%tl2917429205%_
                                   _%hd2917329202%_)))
                              (_%__kont3902239023%_)))))))
                 (_%struct-field-accessors29016%_
                  (lambda (_%info29134%_)
                    (let _%recur29137%_ ((_%next29140%_
                                          (cons _%info29134%_ '())))
                      (if (null? _%next29140%_)
                          '()
                          (let ((_%ti29143%_ (car _%next29140%_)))
                            (let ((__tmp39755
                                   (_%recur29137%_
                                    (map gx#syntax-local-value
                                         (let ((__obj39724 _%ti29143%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj39724
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj39724
                                                  '4
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj39724
                                                'super))))))
                                  (__tmp39754
                                   (map (lambda (_%slot29146%_)
                                          (let ((_%$e29149%_
                                                 (agetq _%slot29146%_
                                                        (let ((__obj39725
                                                               _%ti29143%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj39725
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj39725 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj39725
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29149%_
                                                _%$e29149%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29002%_
                                                 _%info29134%_
                                                 _%slot29146%_))))
                                        (let ((__obj39726 _%ti29143%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj39726
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj39726
                                                 '5
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj39726
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp39755 __tmp39754)))))))
                 (_%generate-class29017%_
                  (lambda (_%info29127%_
                           _%tgt29129%_
                           _%body29130%_
                           _%K29131%_
                           _%E29132%_)
                    (cons 'if
                          (cons (cons (let ((__obj39727 _%info29127%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39727
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39727
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39727
                                             'predicate)))
                                      (cons _%tgt29129%_ '()))
                                (cons (_%generate-class-body29018%_
                                       _%info29127%_
                                       _%tgt29129%_
                                       _%body29130%_
                                       _%K29131%_
                                       _%E29132%_)
                                      (cons _%E29132%_ '()))))))
                 (_%generate-class-body29018%_
                  (lambda (_%info29020%_
                           _%tgt29022%_
                           _%body29023%_
                           _%K29024%_
                           _%E29025%_)
                    (let _%recur29027%_ ((_%rest29030%_ _%body29023%_))
                      (let* ((_%__stx3903339034%_ _%rest29030%_)
                             (_%g2903429050%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3903339034%_))))
                        (let ((_%__kont3903639037%_
                               (lambda (_%g2903629088%_
                                        _%g2903729090%_
                                        _%g2903829091%_)
                                 (let ((_%$e29111%_
                                        (agetq (let ((__tmp39756
                                                      (keyword->string
                                                       (gx#stx-e
                                                        _%g2903829091%_))))
                                                 (declare (not safe))
                                                 (##string->symbol __tmp39756))
                                               (let ((__obj39728
                                                      _%info29020%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj39728
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj39728
                                                        '17
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj39728
                                                      'unchecked-accessors))))))
                                   (if _%$e29111%_
                                       ((lambda (_%getf29115%_)
                                          (let ((_%$tgt29118%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt29118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf29115%_ (cons _%tgt29022%_ '()))
                                  '()))
                      '())
                (cons (_%generate129009%_
                       _%$tgt29118%_
                       _%g2903729090%_
                       (_%recur29027%_ _%g2903629088%_)
                       _%E29025%_)
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e29111%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx29002%_
                                        _%info29020%_
                                        _%g2903829091%_)))))
                              (_%__kont3903839039%_ (lambda () _%K29024%_)))
                          (if (gx#stx-pair? _%__stx3903339034%_)
                              (let ((_%e2903929068%_
                                     (gx#syntax-e _%__stx3903339034%_)))
                                (let ((_%tl2904129075%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2903929068%_)))
                                      (_%hd2904029072%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2903929068%_))))
                                  (if (gx#stx-pair? _%tl2904129075%_)
                                      (let ((_%e2904229078%_
                                             (gx#syntax-e _%tl2904129075%_)))
                                        (let ((_%tl2904429085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2904229078%_)))
                                              (_%hd2904329082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2904229078%_))))
                                          (_%__kont3903639037%_
                                           _%tl2904429085%_
                                           _%hd2904329082%_
                                           _%hd2904029072%_)))
                                      (_%__kont3903839039%_))))
                              (_%__kont3903839039%_))))))))
          (_%generate129009%_
           _%tgt29004%_
           _%ptree29005%_
           _%K29006%_
           _%E29007%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx27821%_ _%tgt-lst27823%_ _%clauses27824%_)
        (letrec ((_%parse-body27826%_
                  (lambda (_%hd-len28824%_)
                    (let _%lp28827%_ ((_%rest28830%_ _%clauses27824%_)
                                      (_%r28832%_ '()))
                      (let* ((_%__stx3908339084%_ _%rest28830%_)
                             (_%g2883528847%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3908339084%_))))
                        (let ((_%__kont3908639087%_
                               (lambda (_%g2883728875%_ _%g2883828877%_)
                                 (let* ((_%__stx3905539056%_ _%g2883828877%_)
                                        (_%g2889428910%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3905539056%_))))
                                   (let ((_%__kont3905839059%_
                                          (lambda (_%g2889628979%_)
                                            (if (gx#stx-null? _%g2883728875%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%g2889628979%_)
                                 (let ((_%$e28990%_
                                        (gx#stx-source _%g2883828877%_)))
                                   (if _%$e28990%_
                                       _%$e28990%_
                                       (gx#stx-source _%stx27821%_))))
                                '())))
              _%r28832%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx27821%_
                                                 _%g2883828877%_))))
                                         (_%__kont3906039061%_
                                          (lambda (_%g2890028938%_
                                                   _%g2890128940%_)
                                            (_%lp28827%_
                                             _%g2883728875%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g2895228954%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g2895228954%_
                           _%stx27821%_))
                        _%g2890128940%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin)
                                    _%g2890028938%_)
                              (let ((_%$e28958%_
                                     (gx#stx-source _%g2883828877%_)))
                                (if _%$e28958%_
                                    _%$e28958%_
                                    (gx#stx-source _%stx27821%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r28832%_))))
                                         (_%__kont3906239063%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx27821%_
                                             _%g2883828877%_))))
                                     (let* ((_%__match3908039081%_
                                             (lambda (_%e2890228928%_
                                                      _%hd2890328932%_
                                                      _%tl2890428935%_)
                                               (let ((_%g2890028938%_
                                                      _%tl2890428935%_)
                                                     (_%g2890128940%_
                                                      _%hd2890328932%_))
                                                 (if (and (gx#stx-list?
                                                           _%g2890128940%_)
                                                          (fx= (gx#stx-length
                                                                _%g2890128940%_)
                                                               _%hd-len28824%_)
                                                          (gx#stx-list?
                                                           _%g2890028938%_)
                                                          (not (gx#stx-null?
                                                                _%g2890028938%_)))
                                                     (_%__kont3906039061%_
                                                      _%g2890028938%_
                                                      _%g2890128940%_)
                                                     (_%__kont3906239063%_)))))
                                            (_%__match3907439075%_
                                             (lambda (_%e2889728969%_
                                                      _%hd2889828973%_
                                                      _%tl2889928976%_)
                                               (let ((_%g2889628979%_
                                                      _%tl2889928976%_))
                                                 (if (and (gx#stx-list?
                                                           _%g2889628979%_)
                                                          (not (gx#stx-null?
                                                                _%g2889628979%_)))
                                                     (_%__kont3905839059%_
                                                      _%g2889628979%_)
                                                     (_%__match3908039081%_
                                                      _%e2889728969%_
                                                      _%hd2889828973%_
                                                      _%tl2889928976%_))))))
                                       (if (gx#stx-pair? _%__stx3905539056%_)
                                           (let ((_%e2889728969%_
                                                  (gx#syntax-e
                                                   _%__stx3905539056%_)))
                                             (let ((_%tl2889928976%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2889728969%_)))
                                                   (_%hd2889828973%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2889728969%_))))
                                               (if (gx#identifier?
                                                    _%hd2889828973%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g39757_|
                                                        _%hd2889828973%_)
                                                       (_%__match3907439075%_
                                                        _%e2889728969%_
                                                        _%hd2889828973%_
                                                        _%tl2889928976%_)
                                                       (_%__match3908039081%_
                                                        _%e2889728969%_
                                                        _%hd2889828973%_
                                                        _%tl2889928976%_))
                                                   (_%__match3908039081%_
                                                    _%e2889728969%_
                                                    _%hd2889828973%_
                                                    _%tl2889928976%_))))
                                           (_%__kont3906239063%_)))))))
                              (_%__kont3908839089%_ (lambda () _%r28832%_)))
                          (if (gx#stx-pair? _%__stx3908339084%_)
                              (let ((_%e2883928865%_
                                     (gx#syntax-e _%__stx3908339084%_)))
                                (let ((_%tl2884128872%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2883928865%_)))
                                      (_%hd2884028869%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2883928865%_))))
                                  (_%__kont3908639087%_
                                   _%tl2884128872%_
                                   _%hd2884028869%_)))
                              (_%__kont3908839089%_)))))))
                 (_%generate-body27828%_
                  (lambda (_%body28530%_)
                    (let* ((_%g2853328541%_
                            (lambda (_%g2853428537%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2853428537%_)))
                           (_%g2853228820%_
                            (lambda (_%g2853428545%_)
                              ((lambda (_%g2853528548%_)
                                 (let* ((_%g2856028577%_
                                         (lambda (_%g2856128573%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2856128573%_)))
                                        (_%g2855928816%_
                                         (lambda (_%g2856128581%_)
                                           (if (gx#stx-pair/null?
                                                _%g2856128581%_)
                                               (let ((_g39758_
                                                      (gx#syntax-split-splice
                                                       _%g2856128581%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39759_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39758_)
                        (##values-length _g39758_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39759_ 2)))
                 (error "Context expects 2 values" _g39759_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target2856328584%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39758_
                                                             0)))
                                                         (_%tl2856528587%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39758_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl2856528587%_)
                                                         (letrec ((_%loop2856628590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd2856428594%_ _%target2857028597%_)
                             (if (gx#stx-pair? _%hd2856428594%_)
                                 (let ((_%e2856728599%_
                                        (gx#syntax-e _%hd2856428594%_)))
                                   (let ((_%lp-hd2856828603%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2856728599%_)))
                                         (_%lp-tl2856928606%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2856728599%_))))
                                     (_%loop2856628590%_
                                      _%lp-tl2856928606%_
                                      (cons _%lp-hd2856828603%_
                                            _%target2857028597%_))))
                                 (let ((_%target2857128609%_
                                        (reverse _%target2857028597%_)))
                                   ((lambda (_%g2856228612%_)
                                      (let* ((_%g2862928646%_
                                              (lambda (_%g2863028642%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2863028642%_)))
                                             (_%g2862828812%_
                                              (lambda (_%g2863028650%_)
                                                (if (gx#stx-pair/null?
                                                     _%g2863028650%_)
                                                    (let ((_g39760_
                                                           (gx#syntax-split-splice
                                                            _%g2863028650%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g39761_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g39760_)
                             (##values-length _g39760_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g39761_ 2)))
                      (error "Context expects 2 values" _g39761_)))
                (let ((_%target2863228653%_
                       (let () (declare (not safe)) (##values-ref _g39760_ 0)))
                      (_%tl2863428656%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g39760_ 1))))
                  (if (gx#stx-null? _%tl2863428656%_)
                      (letrec ((_%loop2863528659%_
                                (lambda (_%hd2863328663%_
                                         _%fail-diagnostic2863928666%_)
                                  (if (gx#stx-pair? _%hd2863328663%_)
                                      (let ((_%e2863628668%_
                                             (gx#syntax-e _%hd2863328663%_)))
                                        (let ((_%lp-hd2863728672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2863628668%_)))
                                              (_%lp-tl2863828675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2863628668%_))))
                                          (_%loop2863528659%_
                                           _%lp-tl2863828675%_
                                           (cons _%lp-hd2863728672%_
                                                 _%fail-diagnostic2863928666%_))))
                                      (let ((_%fail-diagnostic2864028678%_
                                             (reverse _%fail-diagnostic2863928666%_)))
                                        ((lambda (_%g2863128681%_)
                                           (let* ((_%g2869828706%_
                                                   (lambda (_%g2869928702%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2869928702%_)))
                                                  (_%g2869728792%_
                                                   (lambda (_%g2869928710%_)
                                                     ((lambda (_%g2870028713%_)
                                                        (let* ((_%g2872628734%_
                                                                (lambda (_%g2872728730%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2872728730%_)))
                       (_%g2872528788%_
                        (lambda (_%g2872728738%_)
                          ((lambda (_%g2872828741%_)
                             (let* ((_%g2875428762%_
                                     (lambda (_%g2875528758%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2875528758%_)))
                                    (_%g2875328784%_
                                     (lambda (_%g2875528766%_)
                                       ((lambda (_%g2875628769%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%g2875628769%_
                                                            '()))))
                                        _%g2875528766%_))))
                               (_%g2875328784%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%g2853528548%_
                                                         (cons _%g2870028713%_
                                                               '()))
                                                   '())
                                             (cons _%g2872828741%_ '())))
                                 (gx#stx-source _%stx27821%_)))))
                           _%g2872728738%_))))
                  (_%g2872528788%_
                   (_%generate-clauses27829%_
                    _%body28530%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%g2853528548%_ '()) '())))))))
              _%g2869928710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2869728792%_
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
                                     (foldr (lambda (_%g2879528800%_
                                                     _%g2879628803%_)
                                              (cons _%g2879528800%_
                                                    _%g2879628803%_))
                                            (foldr (lambda (_%g2879728806%_
                                                            _%g2879828809%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g2879728806%_ '()))
                   _%g2879828809%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%g2863128681%_)
                                            _%g2856228612%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx27821%_)))))
                                         _%fail-diagnostic2864028678%_))))))
                        (_%loop2863528659%_ _%target2863228653%_ '()))
                      (_%g2862928646%_ _%g2863028650%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2862928646%_
                                                     _%g2863028650%_)))))
                                        (_%g2862828812%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses27824%_))))
                                    _%target2857128609%_))))))
                   (_%loop2856628590%_ _%target2856328584%_ '()))
                 (_%g2856028577%_ _%g2856128581%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2856028577%_
                                                _%g2856128581%_)))))
                                   (_%g2855928816%_ _%tgt-lst27823%_)))
                               _%g2853428545%_))))
                      (_%g2853228820%_ (gx#genident 'E)))))
                 (_%generate-clauses27829%_
                  (lambda (_%rest28182%_ _%E28184%_)
                    (let* ((_%__stx3909939100%_ _%rest28182%_)
                           (_%g2818828204%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3909939100%_))))
                      (let ((_%__kont3910239103%_
                             (lambda (_%g2819028438%_)
                               (let* ((_%g2844928467%_
                                       (lambda (_%g2845028463%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2845028463%_)))
                                      (_%g2844828522%_
                                       (lambda (_%g2845028471%_)
                                         (if (gx#stx-pair? _%g2845028471%_)
                                             (let ((_%e2845328474%_
                                                    (gx#syntax-e
                                                     _%g2845028471%_)))
                                               (let ((_%hd2845428478%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2845328474%_)))
                                                     (_%tl2845528481%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2845328474%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2845528481%_)
                                                     (let ((_%e2845628484%_
                                                            (gx#syntax-e
                                                             _%tl2845528481%_)))
                                                       (let ((_%hd2845728488%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2845628484%_)))
                     (_%tl2845828491%_
                      (let () (declare (not safe)) (##cdr _%e2845628484%_))))
                 (if (gx#stx-pair? _%tl2845828491%_)
                     (let ((_%e2845928494%_ (gx#syntax-e _%tl2845828491%_)))
                       (let ((_%hd2846028498%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2845928494%_)))
                             (_%tl2846128501%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2845928494%_))))
                         (if (gx#stx-null? _%tl2846128501%_)
                             ((lambda (_%g2845128504%_ _%g2845228506%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e
                                                       _%g2845228506%_)
                                                      (_%generate127830%_
                                                       _%g2845228506%_
                                                       _%g2845128504%_
                                                       _%E28184%_)
                                                      _%g2845128504%_)
                                                  '()))))
                              _%hd2846028498%_
                              _%hd2845728488%_)
                             (_%g2844928467%_ _%g2845028471%_))))
                     (_%g2844928467%_ _%g2845028471%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2844928467%_
                                                      _%g2845028471%_))))
                                             (_%g2844928467%_
                                              _%g2845028471%_)))))
                                 (_%g2844828522%_ _%g2819028438%_))))
                            (_%__kont3910439105%_
                             (lambda (_%g2819428232%_ _%g2819528234%_)
                               (let* ((_%g2824728266%_
                                       (lambda (_%g2824828262%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2824828262%_)))
                                      (_%g2824628417%_
                                       (lambda (_%g2824828270%_)
                                         (if (gx#stx-pair? _%g2824828270%_)
                                             (let ((_%e2825228273%_
                                                    (gx#syntax-e
                                                     _%g2824828270%_)))
                                               (let ((_%hd2825328277%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2825228273%_)))
                                                     (_%tl2825428280%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2825228273%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2825428280%_)
                                                     (let ((_%e2825528283%_
                                                            (gx#syntax-e
                                                             _%tl2825428280%_)))
                                                       (let ((_%hd2825628287%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2825528283%_)))
                     (_%tl2825728290%_
                      (let () (declare (not safe)) (##cdr _%e2825528283%_))))
                 (if (gx#stx-pair? _%tl2825728290%_)
                     (let ((_%e2825828293%_ (gx#syntax-e _%tl2825728290%_)))
                       (let ((_%hd2825928297%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2825828293%_)))
                             (_%tl2826028300%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2825828293%_))))
                         (if (gx#stx-null? _%tl2826028300%_)
                             ((lambda (_%g2824928303%_
                                       _%g2825028305%_
                                       _%g2825128306%_)
                                (if (gx#stx-e _%g2825028305%_)
                                    (let* ((_%g2832328338%_
                                            (lambda (_%g2832428334%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2832428334%_)))
                                           (_%g2832228383%_
                                            (lambda (_%g2832428342%_)
                                              (if (gx#stx-pair?
                                                   _%g2832428342%_)
                                                  (let ((_%e2832728345%_
                                                         (gx#syntax-e
                                                          _%g2832428342%_)))
                                                    (let ((_%hd2832828349%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2832728345%_)))
                                                          (_%tl2832928352%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2832728345%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl2832928352%_)
                                                          (let ((_%e2833028355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2832928352%_)))
                    (let ((_%hd2833128359%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2833028355%_)))
                          (_%tl2833228362%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2833028355%_))))
                      (if (gx#stx-null? _%tl2833228362%_)
                          ((lambda (_%g2832528365%_ _%g2832628367%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _%g2825128306%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%g2832628367%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%g2832528365%_ '()))))
                           _%hd2833128359%_
                           _%hd2832828349%_)
                          (_%g2832328338%_ _%g2832428342%_))))
                  (_%g2832328338%_ _%g2832428342%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2832328338%_
                                                   _%g2832428342%_)))))
                                      (_%g2832228383%_
                                       (list (_%generate127830%_
                                              _%g2825028305%_
                                              _%g2824928303%_
                                              _%E28184%_)
                                             (_%generate-clauses27829%_
                                              _%g2819428232%_
                                              (cons _%g2825128306%_ '())))))
                                    (let* ((_%g2838728395%_
                                            (lambda (_%g2838828391%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2838828391%_)))
                                           (_%g2838628413%_
                                            (lambda (_%g2838828399%_)
                                              ((lambda (_%g2838928402%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g2825128306%_
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
                             (cons _%g2824928303%_ '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons _%g2838928402%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2838828399%_))))
                                      (_%g2838628413%_
                                       (_%generate-clauses27829%_
                                        _%g2819428232%_
                                        (cons _%g2825128306%_ '()))))))
                              _%hd2825928297%_
                              _%hd2825628287%_
                              _%hd2825328277%_)
                             (_%g2824728266%_ _%g2824828270%_))))
                     (_%g2824728266%_ _%g2824828270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2824728266%_
                                                      _%g2824828270%_))))
                                             (_%g2824728266%_
                                              _%g2824828270%_)))))
                                 (_%g2824628417%_ _%g2819528234%_))))
                            (_%__kont3910639107%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28184%_ '()))))))
                        (if (gx#stx-pair? _%__stx3909939100%_)
                            (let ((_%e2819128428%_
                                   (gx#syntax-e _%__stx3909939100%_)))
                              (let ((_%tl2819328435%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2819128428%_)))
                                    (_%hd2819228432%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2819128428%_))))
                                (if (gx#stx-null? _%tl2819328435%_)
                                    (_%__kont3910239103%_ _%hd2819228432%_)
                                    (_%__kont3910439105%_
                                     _%tl2819328435%_
                                     _%hd2819228432%_))))
                            (_%__kont3910639107%_))))))
                 (_%generate127830%_
                  (lambda (_%clause27832%_ _%body27834%_ _%E27835%_)
                    (let* ((_%g2783727861%_
                            (lambda (_%g2783827857%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2783827857%_)))
                           (_%g2783628178%_
                            (lambda (_%g2783827865%_)
                              (if (gx#stx-pair? _%g2783827865%_)
                                  (let ((_%e2784127868%_
                                         (gx#syntax-e _%g2783827865%_)))
                                    (let ((_%hd2784227872%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2784127868%_)))
                                          (_%tl2784327875%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2784127868%_))))
                                      (if (gx#stx-pair? _%tl2784327875%_)
                                          (let ((_%e2784427878%_
                                                 (gx#syntax-e
                                                  _%tl2784327875%_)))
                                            (let ((_%hd2784527882%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2784427878%_)))
                                                  (_%tl2784627885%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2784427878%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2784527882%_)
                                                  (let ((_g39762_
                                                         (gx#syntax-split-splice
                                                          _%hd2784527882%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g39763_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g39762_)
                           (##values-length _g39762_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g39763_ 2)))
                    (error "Context expects 2 values" _g39763_)))
              (let ((_%target2784727888%_
                     (let () (declare (not safe)) (##values-ref _g39762_ 0)))
                    (_%tl2784927891%_
                     (let () (declare (not safe)) (##values-ref _g39762_ 1))))
                (if (gx#stx-null? _%tl2784927891%_)
                    (letrec ((_%loop2785027894%_
                              (lambda (_%hd2784827898%_ _%var2785427901%_)
                                (if (gx#stx-pair? _%hd2784827898%_)
                                    (let ((_%e2785127903%_
                                           (gx#syntax-e _%hd2784827898%_)))
                                      (let ((_%lp-hd2785227907%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2785127903%_)))
                                            (_%lp-tl2785327910%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2785127903%_))))
                                        (_%loop2785027894%_
                                         _%lp-tl2785327910%_
                                         (cons _%lp-hd2785227907%_
                                               _%var2785427901%_))))
                                    (let ((_%var2785527913%_
                                           (reverse _%var2785427901%_)))
                                      (if (gx#stx-null? _%tl2784627885%_)
                                          ((lambda (_%g2783927916%_
                                                    _%g2784027918%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g2793927942%_
                                                                _%g2794027945%_)
                                                         (cons _%g2793927942%_
                                                               _%g2794027945%_))
                                                       '()
                                                       _%g2783927916%_)
                                                _%stx27821%_)
                                               (let* ((_%g2794827956%_
                                                       (lambda (_%g2794927952%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2794927952%_)))
                                                      (_%g2794728050%_
                                                       (lambda (_%g2794927960%_)
                                                         ((lambda (_%g2795027963%_)
                                                            (let* ((_%g2797627984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2797727980%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2797727980%_)))
                           (_%g2797528046%_
                            (lambda (_%g2797727988%_)
                              ((lambda (_%g2797827991%_)
                                 (let* ((_%g2800428012%_
                                         (lambda (_%g2800528008%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2800528008%_)))
                                        (_%g2800328034%_
                                         (lambda (_%g2800528016%_)
                                           ((lambda (_%g2800628019%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%g2784027918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g2800628019%_ '()))
                   (cons _%g2795027963%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx27821%_)))
                                            _%g2800528016%_))))
                                   (_%g2800328034%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%g2803728040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2803828043%_)
                  (cons _%g2803728040%_ _%g2803828043%_))
                '()
                _%g2783927916%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g2797827991%_ '())))
                                     (gx#stx-source _%stx27821%_)))))
                               _%g2797727988%_))))
                      (_%g2797528046%_ _%body27834%_)))
                  _%g2794927960%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2794728050%_
                                                  (let _%recur28054%_ ((_%rest28057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%clause27832%_)
                               (_%rest-targets28059%_ _%tgt-lst27823%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%__stx3912539126%_
                                                            _%rest28057%_)
                                                           (_%g2806228074%_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx3912539126%_))))
                                                      (let ((_%__kont3912839129%_
                                                             (lambda (_%g2806428110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2806528112%_)
                       (let* ((_%g2812728139%_
                               (lambda (_%g2812828135%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2812828135%_)))
                              (_%g2812628170%_
                               (lambda (_%g2812828143%_)
                                 (if (gx#stx-pair? _%g2812828143%_)
                                     (let ((_%e2813128146%_
                                            (gx#syntax-e _%g2812828143%_)))
                                       (let ((_%hd2813228150%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2813128146%_)))
                                             (_%tl2813328153%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2813128146%_))))
                                         ((lambda (_%g2812928156%_
                                                   _%g2813028158%_)
                                            (|gerbil/core/match[1]#generate-match1|
                                             _%stx27821%_
                                             _%g2813028158%_
                                             _%g2806528112%_
                                             (_%recur28054%_
                                              _%g2806428110%_
                                              _%g2812928156%_)
                                             _%E27835%_))
                                          _%tl2813328153%_
                                          _%hd2813228150%_)))
                                     (_%g2812728139%_ _%g2812828143%_)))))
                         (_%g2812628170%_ _%rest-targets28059%_))))
                    (_%__kont3913039131%_
                     (lambda ()
                       (cons _%g2784027918%_
                             (foldr (lambda (_%g2808428087%_ _%g2808528090%_)
                                      (cons _%g2808428087%_ _%g2808528090%_))
                                    '()
                                    _%g2783927916%_)))))
                (if (gx#stx-pair? _%__stx3912539126%_)
                    (let ((_%e2806628100%_ (gx#syntax-e _%__stx3912539126%_)))
                      (let ((_%tl2806828107%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2806628100%_)))
                            (_%hd2806728104%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2806628100%_))))
                        (_%__kont3912839129%_
                         _%tl2806828107%_
                         _%hd2806728104%_)))
                    (_%__kont3913039131%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%var2785527913%_
                                           _%hd2784227872%_)
                                          (_%g2783727861%_
                                           _%g2783827865%_)))))))
                      (_%loop2785027894%_ _%target2784727888%_ '()))
                    (_%g2783727861%_ _%g2783827865%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2783727861%_
                                                   _%g2783827865%_))))
                                          (_%g2783727861%_ _%g2783827865%_))))
                                  (_%g2783727861%_ _%g2783827865%_)))))
                      (_%g2783628178%_
                       (list (gx#genident 'K)
                             (let ((__tmp39764
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause27832%_)))
                               (declare (not safe))
                               (##apply append __tmp39764))))))))
          (_%generate-body27828%_
           (_%parse-body27826%_ (gx#stx-length _%tgt-lst27823%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx27723%_ _%tgt27725%_ _%clauses27726%_)
        (letrec ((_%reclause27728%_
                  (lambda (_%clause27731%_)
                    (let* ((_%__stx3914139142%_ _%clause27731%_)
                           (_%g2773627751%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3914139142%_))))
                      (let ((_%__kont3914439145%_ (lambda () _%clause27731%_))
                            (_%__kont3914639147%_
                             (lambda (_%g2774127779%_ _%g2774227781%_)
                               (gx#stx-wrap-source
                                (cons (cons _%g2774227781%_ '())
                                      _%g2774127779%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3914839149%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx27723%_
                                _%clause27731%_))))
                        (if (gx#stx-pair? _%__stx3914139142%_)
                            (let ((_%e2773827803%_
                                   (gx#syntax-e _%__stx3914139142%_)))
                              (let ((_%tl2774027810%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2773827803%_)))
                                    (_%hd2773927807%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2773827803%_))))
                                (if (gx#identifier? _%hd2773927807%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39765_|
                                         _%hd2773927807%_)
                                        (_%__kont3914439145%_)
                                        (_%__kont3914639147%_
                                         _%tl2774027810%_
                                         _%hd2773927807%_))
                                    (_%__kont3914639147%_
                                     _%tl2774027810%_
                                     _%hd2773927807%_))))
                            (_%__kont3914839149%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx27723%_
           (cons _%tgt27725%_ '())
           (gx#stx-map _%reclause27728%_ _%clauses27726%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35064%_)
        (let* ((_%__stx3916939170%_ _%stx35064%_)
               (_%g3506935098%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3916939170%_))))
          (let ((_%__kont3917239173%_
                 (lambda (_%g3507135338%_)
                   (let* ((_%g3535135359%_
                           (lambda (_%g3535235355%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3535235355%_)))
                          (_%g3535035412%_
                           (lambda (_%g3535235363%_)
                             ((lambda (_%g3535335366%_)
                                (let* ((_%g3537835386%_
                                        (lambda (_%g3537935382%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3537935382%_)))
                                       (_%g3537735408%_
                                        (lambda (_%g3537935390%_)
                                          ((lambda (_%g3538035393%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%g3535335366%_
                                                               '())
                                                         (cons _%g3538035393%_
                                                               '()))))
                                           _%g3537935390%_))))
                                  (_%g3537735408%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%g3535335366%_
                                                _%g3507135338%_))
                                    (gx#stx-source _%stx35064%_)))))
                              _%g3535235363%_))))
                     (_%g3535035412%_ (gx#genident 'e)))))
                (_%__kont3917439175%_
                 (lambda (_%g3507835233%_)
                   (let* ((_%g3524635254%_
                           (lambda (_%g3524735250%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3524735250%_)))
                          (_%g3524535307%_
                           (lambda (_%g3524735258%_)
                             ((lambda (_%g3524835261%_)
                                (let* ((_%g3527335281%_
                                        (lambda (_%g3527435277%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3527435277%_)))
                                       (_%g3527235303%_
                                        (lambda (_%g3527435285%_)
                                          ((lambda (_%g3527535288%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%g3524835261%_
                                                         (cons _%g3527535288%_
                                                               '()))))
                                           _%g3527435285%_))))
                                  (_%g3527235303%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%g3524835261%_
                                                _%g3507835233%_))
                                    (gx#stx-source _%stx35064%_)))))
                              _%g3524735258%_))))
                     (_%g3524535307%_ (gx#genident 'args)))))
                (_%__kont3917639177%_
                 (lambda (_%g3508535125%_ _%g3508635127%_)
                   (let* ((_%g3514135149%_
                           (lambda (_%g3514235145%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3514235145%_)))
                          (_%g3514035202%_
                           (lambda (_%g3514235153%_)
                             ((lambda (_%g3514335156%_)
                                (let* ((_%g3516835176%_
                                        (lambda (_%g3516935172%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3516935172%_)))
                                       (_%g3516735198%_
                                        (lambda (_%g3516935180%_)
                                          ((lambda (_%g3517035183%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%g3514335156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%g3508635127%_ '()))
                       '())
                 (cons _%g3517035183%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3516935180%_))))
                                  (_%g3516735198%_
                                   (|gerbil/core/match[1]#generate-match|
                                    _%stx35064%_
                                    _%g3514335156%_
                                    _%g3508535125%_))))
                              _%g3514235153%_))))
                     (_%g3514035202%_ (gx#genident _%g3508635127%_))))))
            (let* ((_%__match3922239223%_
                    (lambda (_%e3508735105%_
                             _%hd3508835109%_
                             _%tl3508935112%_
                             _%e3509035115%_
                             _%hd3509135119%_
                             _%tl3509235122%_)
                      (let ((_%g3508535125%_ _%tl3509235122%_)
                            (_%g3508635127%_ _%hd3509135119%_))
                        (if (gx#stx-list? _%g3508535125%_)
                            (_%__kont3917639177%_
                             _%g3508535125%_
                             _%g3508635127%_)
                            (let () (declare (not safe)) (_%g3506935098%_))))))
                   (_%__match3921039211%_
                    (lambda (_%e3507935213%_
                             _%hd3508035217%_
                             _%tl3508135220%_
                             _%e3508235223%_
                             _%hd3508335227%_
                             _%tl3508435230%_)
                      (let ((_%g3507835233%_ _%tl3508435230%_))
                        (if (gx#stx-list? _%g3507835233%_)
                            (_%__kont3917439175%_ _%g3507835233%_)
                            (_%__match3922239223%_
                             _%e3507935213%_
                             _%hd3508035217%_
                             _%tl3508135220%_
                             _%e3508235223%_
                             _%hd3508335227%_
                             _%tl3508435230%_)))))
                   (_%__match3919439195%_
                    (lambda (_%e3507235318%_
                             _%hd3507335322%_
                             _%tl3507435325%_
                             _%e3507535328%_
                             _%hd3507635332%_
                             _%tl3507735335%_)
                      (let ((_%g3507135338%_ _%tl3507735335%_))
                        (if (gx#stx-list? _%g3507135338%_)
                            (_%__kont3917239173%_ _%g3507135338%_)
                            (_%__match3922239223%_
                             _%e3507235318%_
                             _%hd3507335322%_
                             _%tl3507435325%_
                             _%e3507535328%_
                             _%hd3507635332%_
                             _%tl3507735335%_))))))
              (if (gx#stx-pair? _%__stx3916939170%_)
                  (let ((_%e3507235318%_ (gx#syntax-e _%__stx3916939170%_)))
                    (let ((_%tl3507435325%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3507235318%_)))
                          (_%hd3507335322%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3507235318%_))))
                      (if (gx#stx-pair? _%tl3507435325%_)
                          (let ((_%e3507535328%_
                                 (gx#syntax-e _%tl3507435325%_)))
                            (let ((_%tl3507735335%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3507535328%_)))
                                  (_%hd3507635332%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3507535328%_))))
                              (if (gx#identifier? _%hd3507635332%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39766_|
                                       _%hd3507635332%_)
                                      (_%__match3919439195%_
                                       _%e3507235318%_
                                       _%hd3507335322%_
                                       _%tl3507435325%_
                                       _%e3507535328%_
                                       _%hd3507635332%_
                                       _%tl3507735335%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39767_|
                                           _%hd3507635332%_)
                                          (_%__match3921039211%_
                                           _%e3507235318%_
                                           _%hd3507335322%_
                                           _%tl3507435325%_
                                           _%e3507535328%_
                                           _%hd3507635332%_
                                           _%tl3507735335%_)
                                          (_%__match3922239223%_
                                           _%e3507235318%_
                                           _%hd3507335322%_
                                           _%tl3507435325%_
                                           _%e3507535328%_
                                           _%hd3507635332%_
                                           _%tl3507735335%_)))
                                  (_%__match3922239223%_
                                   _%e3507235318%_
                                   _%hd3507335322%_
                                   _%tl3507435325%_
                                   _%e3507535328%_
                                   _%hd3507635332%_
                                   _%tl3507735335%_))))
                          (let () (declare (not safe)) (_%g3506935098%_)))))
                  (let () (declare (not safe)) (_%g3506935098%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx35420%_)
        (let* ((_%g3542335447%_
                (lambda (_%g3542435443%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3542435443%_)))
               (_%g3542235655%_
                (lambda (_%g3542435451%_)
                  (if (gx#stx-pair? _%g3542435451%_)
                      (let ((_%e3542735454%_ (gx#syntax-e _%g3542435451%_)))
                        (let ((_%hd3542835458%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3542735454%_)))
                              (_%tl3542935461%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3542735454%_))))
                          (if (gx#stx-pair? _%tl3542935461%_)
                              (let ((_%e3543035464%_
                                     (gx#syntax-e _%tl3542935461%_)))
                                (let ((_%hd3543135468%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3543035464%_)))
                                      (_%tl3543235471%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3543035464%_))))
                                  (if (gx#stx-pair/null? _%hd3543135468%_)
                                      (let ((_g39768_
                                             (gx#syntax-split-splice
                                              _%hd3543135468%_
                                              '0)))
                                        (begin
                                          (let ((_g39769_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39768_)
                                                       (##values-length
                                                        _g39768_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39769_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39769_)))
                                          (let ((_%target3543335474%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39768_ 0)))
                                                (_%tl3543535477%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39768_ 1))))
                                            (if (gx#stx-null? _%tl3543535477%_)
                                                (letrec ((_%loop3543635480%_
                                                          (lambda (_%hd3543435484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3544035487%_)
                    (if (gx#stx-pair? _%hd3543435484%_)
                        (let ((_%e3543735489%_ (gx#syntax-e _%hd3543435484%_)))
                          (let ((_%lp-hd3543835493%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3543735489%_)))
                                (_%lp-tl3543935496%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3543735489%_))))
                            (_%loop3543635480%_
                             _%lp-tl3543935496%_
                             (cons _%lp-hd3543835493%_ _%e3544035487%_))))
                        (let ((_%e3544135499%_ (reverse _%e3544035487%_)))
                          ((lambda (_%g3542535502%_ _%g3542635504%_)
                             (if (gx#stx-list? _%g3542535502%_)
                                 (let* ((_%g3552235539%_
                                         (lambda (_%g3552335535%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3552335535%_)))
                                        (_%g3552135643%_
                                         (lambda (_%g3552335543%_)
                                           (if (gx#stx-pair/null?
                                                _%g3552335543%_)
                                               (let ((_g39770_
                                                      (gx#syntax-split-splice
                                                       _%g3552335543%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39771_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39770_)
                        (##values-length _g39770_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39771_ 2)))
                 (error "Context expects 2 values" _g39771_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3552535546%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39770_
                                                             0)))
                                                         (_%tl3552735549%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39770_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3552735549%_)
                                                         (letrec ((_%loop3552835552%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3552635556%_ _%$e3553235559%_)
                             (if (gx#stx-pair? _%hd3552635556%_)
                                 (let ((_%e3552935561%_
                                        (gx#syntax-e _%hd3552635556%_)))
                                   (let ((_%lp-hd3553035565%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3552935561%_)))
                                         (_%lp-tl3553135568%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3552935561%_))))
                                     (_%loop3552835552%_
                                      _%lp-tl3553135568%_
                                      (cons _%lp-hd3553035565%_
                                            _%$e3553235559%_))))
                                 (let ((_%$e3553335571%_
                                        (reverse _%$e3553235559%_)))
                                   ((lambda (_%g3552435574%_)
                                      (let* ((_%g3559035598%_
                                              (lambda (_%g3559135594%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g3559135594%_)))
                                             (_%g3558935631%_
                                              (lambda (_%g3559135602%_)
                                                ((lambda (_%g3559235605%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets
                          _%g3542635504%_
                          _%g3552435574%_)
                         (foldr (lambda (_%g3561935623%_
                                         _%g3562035626%_
                                         _%g3562135628%_)
                                  (cons (cons _%g3562035626%_
                                              (cons _%g3561935623%_ '()))
                                        _%g3562135628%_))
                                '()
                                _%g3542635504%_
                                _%g3552435574%_))
                       (cons _%g3559235605%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g3559135602%_))))
                                        (_%g3558935631%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx35420%_
                                          (foldr (lambda (_%g3563435637%_
                                                          _%g3563535640%_)
                                                   (cons _%g3563435637%_
                                                         _%g3563535640%_))
                                                 '()
                                                 _%g3552435574%_)
                                          _%g3542535502%_))))
                                    _%$e3553335571%_))))))
                   (_%loop3552835552%_ _%target3552535546%_ '()))
                 (_%g3552235539%_ _%g3552335543%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3552235539%_
                                                _%g3552335543%_)))))
                                   (_%g3552135643%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g3564635649%_
                                                     _%g3564735652%_)
                                              (cons _%g3564635649%_
                                                    _%g3564735652%_))
                                            '()
                                            _%g3542635504%_))))
                                 (_%g3542335447%_ _%g3542435451%_)))
                           _%tl3543235471%_
                           _%e3544135499%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3543635480%_
                                                   _%target3543335474%_
                                                   '()))
                                                (_%g3542335447%_
                                                 _%g3542435451%_)))))
                                      (_%g3542335447%_ _%g3542435451%_))))
                              (_%g3542335447%_ _%g3542435451%_))))
                      (_%g3542335447%_ _%g3542435451%_)))))
          (_%g3542235655%_ _%stx35420%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx35661%_)
        (let* ((_%__stx3922539226%_ _%$stx35661%_)
               (_%g3566735750%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3922539226%_))))
          (let ((_%__kont3922839229%_
                 (lambda (_%g3566936070%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3608636089%_ _%g3608736092%_)
                                        (cons _%g3608636089%_ _%g3608736092%_))
                                      '()
                                      _%g3566936070%_)))))
                (_%__kont3923239233%_
                 (lambda (_%g3568535980%_
                          _%g3568635982%_
                          _%g3568735983%_
                          _%g3568835984%_)
                   (cons _%g3568835984%_
                         (cons (cons (cons _%g3568735983%_
                                           (cons _%g3568635982%_ '()))
                                     '())
                               (foldr (lambda (_%g3600636009%_ _%g3600736012%_)
                                        (cons _%g3600636009%_ _%g3600736012%_))
                                      '()
                                      _%g3568535980%_)))))
                (_%__kont3923639237%_
                 (lambda (_%g3571035855%_ _%g3571135857%_ _%g3571235858%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3588035887%_ _%g3588135890%_)
                                        (cons _%g3588035887%_ _%g3588135890%_))
                                      '()
                                      _%g3571135857%_)
                               (cons (cons (foldr (lambda (_%g3588235893%_
                                                           _%g3588335896%_)
                                                    (cons _%g3588235893%_
                                                          _%g3588335896%_))
                                                  '()
                                                  _%g3571235858%_)
                                           (foldr (lambda (_%g3588435899%_
                                                           _%g3588535902%_)
                                                    (cons _%g3588435899%_
                                                          _%g3588535902%_))
                                                  '()
                                                  _%g3571035855%_))
                                     '()))))))
            (let* ((_%__match3931839319%_
                    (lambda (_%e3571335757%_
                             _%hd3571435761%_
                             _%tl3571535764%_
                             _%e3571635767%_
                             _%hd3571735771%_
                             _%tl3571835774%_
                             _%__splice3923839239%_
                             _%target3571935777%_
                             _%tl3572135780%_)
                      (letrec ((_%loop3572235783%_
                                (lambda (_%hd3572035787%_
                                         _%expr3572635790%_
                                         _%hd3572735791%_)
                                  (if (gx#stx-pair? _%hd3572035787%_)
                                      (let ((_%e3572335793%_
                                             (gx#syntax-e _%hd3572035787%_)))
                                        (let ((_%lp-tl3572535800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3572335793%_)))
                                              (_%lp-hd3572435797%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3572335793%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3572435797%_)
                                              (let ((_%e3573035803%_
                                                     (gx#syntax-e
                                                      _%lp-hd3572435797%_)))
                                                (let ((_%tl3573235810%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3573035803%_)))
                                                      (_%hd3573135807%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3573035803%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3573235810%_)
                                                      (let ((_%e3573335813%_
                                                             (gx#syntax-e
                                                              _%tl3573235810%_)))
                                                        (let ((_%tl3573535820%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3573335813%_)))
                      (_%hd3573435817%_
                       (let () (declare (not safe)) (##car _%e3573335813%_))))
                  (if (gx#stx-null? _%tl3573535820%_)
                      (_%loop3572235783%_
                       _%lp-tl3572535800%_
                       (cons _%hd3573435817%_ _%expr3572635790%_)
                       (cons _%hd3573135807%_ _%hd3572735791%_))
                      (let () (declare (not safe)) (_%g3566735750%_)))))
              (let () (declare (not safe)) (_%g3566735750%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3566735750%_)))))
                                      (let ((_%hd3572935825%_
                                             (reverse _%hd3572735791%_))
                                            (_%expr3572835823%_
                                             (reverse _%expr3572635790%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3571835774%_)
                                            (let ((_%__splice3924039241%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl3571835774%_
                                                    '0)))
                                              (let ((_%tl3573835830%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3924039241%_
                                                        '1)))
                                                    (_%target3573635827%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3924039241%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3573835830%_)
                                                    (letrec ((_%loop3573935833%_
                                                              (lambda (_%hd3573735837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3574335840%_)
                        (if (gx#stx-pair? _%hd3573735837%_)
                            (let ((_%e3574035842%_
                                   (gx#syntax-e _%hd3573735837%_)))
                              (let ((_%lp-tl3574235849%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3574035842%_)))
                                    (_%lp-hd3574135846%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3574035842%_))))
                                (_%loop3573935833%_
                                 _%lp-tl3574235849%_
                                 (cons _%lp-hd3574135846%_
                                       _%body3574335840%_))))
                            (let ((_%body3574435852%_
                                   (reverse _%body3574335840%_)))
                              (_%__kont3923639237%_
                               _%body3574435852%_
                               _%expr3572835823%_
                               _%hd3572935825%_))))))
              (_%loop3573935833%_ _%target3573635827%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3566735750%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3566735750%_))))))))
                        (_%loop3572235783%_ _%target3571935777%_ '() '()))))
                   (_%__match3931039311%_
                    (lambda (_%e3571335757%_
                             _%hd3571435761%_
                             _%tl3571535764%_
                             _%e3571635767%_
                             _%hd3571735771%_
                             _%tl3571835774%_)
                      (if (gx#stx-pair/null? _%hd3571735771%_)
                          (let ((_%__splice3923839239%_
                                 (gx#syntax-split-splice->vector
                                  _%hd3571735771%_
                                  '0)))
                            (let ((_%tl3572135780%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3923839239%_ '1)))
                                  (_%target3571935777%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3923839239%_
                                      '0))))
                              (if (gx#stx-null? _%tl3572135780%_)
                                  (_%__match3931839319%_
                                   _%e3571335757%_
                                   _%hd3571435761%_
                                   _%tl3571535764%_
                                   _%e3571635767%_
                                   _%hd3571735771%_
                                   _%tl3571835774%_
                                   _%__splice3923839239%_
                                   _%target3571935777%_
                                   _%tl3572135780%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3566735750%_)))))
                          (let () (declare (not safe)) (_%g3566735750%_)))))
                   (_%__match3929839299%_
                    (lambda (_%e3568935912%_
                             _%hd3569035916%_
                             _%tl3569135919%_
                             _%e3569235922%_
                             _%hd3569335926%_
                             _%tl3569435929%_
                             _%e3569535932%_
                             _%hd3569635936%_
                             _%tl3569735939%_
                             _%e3569835942%_
                             _%hd3569935946%_
                             _%tl3570035949%_
                             _%__splice3923439235%_
                             _%target3570135952%_
                             _%tl3570335955%_)
                      (letrec ((_%loop3570435958%_
                                (lambda (_%hd3570235962%_ _%body3570835965%_)
                                  (if (gx#stx-pair? _%hd3570235962%_)
                                      (let ((_%e3570535967%_
                                             (gx#syntax-e _%hd3570235962%_)))
                                        (let ((_%lp-tl3570735974%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3570535967%_)))
                                              (_%lp-hd3570635971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3570535967%_))))
                                          (_%loop3570435958%_
                                           _%lp-tl3570735974%_
                                           (cons _%lp-hd3570635971%_
                                                 _%body3570835965%_))))
                                      (let ((_%body3570935977%_
                                             (reverse _%body3570835965%_)))
                                        (let ((_%g3568535980%_
                                               _%body3570935977%_)
                                              (_%g3568635982%_
                                               _%hd3569935946%_)
                                              (_%g3568735983%_
                                               _%hd3569635936%_)
                                              (_%g3568835984%_
                                               _%hd3569035916%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%g3568735983%_)
                                              (_%__kont3923239233%_
                                               _%g3568535980%_
                                               _%g3568635982%_
                                               _%g3568735983%_
                                               _%g3568835984%_)
                                              (_%__match3931039311%_
                                               _%e3568935912%_
                                               _%hd3569035916%_
                                               _%tl3569135919%_
                                               _%e3569235922%_
                                               _%hd3569335926%_
                                               _%tl3569435929%_))))))))
                        (_%loop3570435958%_ _%target3570135952%_ '()))))
                   (_%__match3926439265%_
                    (lambda (_%e3567036022%_
                             _%hd3567136026%_
                             _%tl3567236029%_
                             _%e3567336032%_
                             _%hd3567436036%_
                             _%tl3567536039%_
                             _%__splice3923039231%_
                             _%target3567636042%_
                             _%tl3567836045%_)
                      (letrec ((_%loop3567936048%_
                                (lambda (_%hd3567736052%_ _%body3568336055%_)
                                  (if (gx#stx-pair? _%hd3567736052%_)
                                      (let ((_%e3568036057%_
                                             (gx#syntax-e _%hd3567736052%_)))
                                        (let ((_%lp-tl3568236064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3568036057%_)))
                                              (_%lp-hd3568136061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3568036057%_))))
                                          (_%loop3567936048%_
                                           _%lp-tl3568236064%_
                                           (cons _%lp-hd3568136061%_
                                                 _%body3568336055%_))))
                                      (let ((_%body3568436067%_
                                             (reverse _%body3568336055%_)))
                                        (_%__kont3922839229%_
                                         _%body3568436067%_))))))
                        (_%loop3567936048%_ _%target3567636042%_ '())))))
              (if (gx#stx-pair? _%__stx3922539226%_)
                  (let ((_%e3567036022%_ (gx#syntax-e _%__stx3922539226%_)))
                    (let ((_%tl3567236029%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3567036022%_)))
                          (_%hd3567136026%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3567036022%_))))
                      (if (gx#stx-pair? _%tl3567236029%_)
                          (let ((_%e3567336032%_
                                 (gx#syntax-e _%tl3567236029%_)))
                            (let ((_%tl3567536039%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3567336032%_)))
                                  (_%hd3567436036%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3567336032%_))))
                              (if (gx#stx-null? _%hd3567436036%_)
                                  (if (gx#stx-pair/null? _%tl3567536039%_)
                                      (let ((_%__splice3923039231%_
                                             (gx#syntax-split-splice->vector
                                              _%tl3567536039%_
                                              '0)))
                                        (let ((_%tl3567836045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3923039231%_
                                                  '1)))
                                              (_%target3567636042%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3923039231%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3567836045%_)
                                              (_%__match3926439265%_
                                               _%e3567036022%_
                                               _%hd3567136026%_
                                               _%tl3567236029%_
                                               _%e3567336032%_
                                               _%hd3567436036%_
                                               _%tl3567536039%_
                                               _%__splice3923039231%_
                                               _%target3567636042%_
                                               _%tl3567836045%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3567436036%_)
                                                  (let ((_%__splice3923839239%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3567436036%_
                                                          '0)))
                                                    (let ((_%tl3572135780%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3923839239%_
                                                              '1)))
                                                          (_%target3571935777%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3923839239%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3572135780%_)
                                                          (_%__match3931839319%_
                                                           _%e3567036022%_
                                                           _%hd3567136026%_
                                                           _%tl3567236029%_
                                                           _%e3567336032%_
                                                           _%hd3567436036%_
                                                           _%tl3567536039%_
                                                           _%__splice3923839239%_
                                                           _%target3571935777%_
                                                           _%tl3572135780%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3566735750%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3566735750%_))))))
                                      (if (gx#stx-pair/null? _%hd3567436036%_)
                                          (let ((_%__splice3923839239%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3567436036%_
                                                  '0)))
                                            (let ((_%tl3572135780%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3923839239%_
                                                      '1)))
                                                  (_%target3571935777%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3923839239%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3572135780%_)
                                                  (_%__match3931839319%_
                                                   _%e3567036022%_
                                                   _%hd3567136026%_
                                                   _%tl3567236029%_
                                                   _%e3567336032%_
                                                   _%hd3567436036%_
                                                   _%tl3567536039%_
                                                   _%__splice3923839239%_
                                                   _%target3571935777%_
                                                   _%tl3572135780%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3566735750%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3566735750%_))))
                                  (if (gx#stx-pair? _%hd3567436036%_)
                                      (let ((_%e3569535932%_
                                             (gx#syntax-e _%hd3567436036%_)))
                                        (let ((_%tl3569735939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3569535932%_)))
                                              (_%hd3569635936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3569535932%_))))
                                          (if (gx#stx-pair? _%tl3569735939%_)
                                              (let ((_%e3569835942%_
                                                     (gx#syntax-e
                                                      _%tl3569735939%_)))
                                                (let ((_%tl3570035949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3569835942%_)))
                                                      (_%hd3569935946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3569835942%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3570035949%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3567536039%_)
                                                          (let ((_%__splice3923439235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl3567536039%_ '0)))
                    (let ((_%tl3570335955%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3923439235%_ '1)))
                          (_%target3570135952%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3923439235%_ '0))))
                      (if (gx#stx-null? _%tl3570335955%_)
                          (_%__match3929839299%_
                           _%e3567036022%_
                           _%hd3567136026%_
                           _%tl3567236029%_
                           _%e3567336032%_
                           _%hd3567436036%_
                           _%tl3567536039%_
                           _%e3569535932%_
                           _%hd3569635936%_
                           _%tl3569735939%_
                           _%e3569835942%_
                           _%hd3569935946%_
                           _%tl3570035949%_
                           _%__splice3923439235%_
                           _%target3570135952%_
                           _%tl3570335955%_)
                          (if (gx#stx-pair/null? _%hd3567436036%_)
                              (let ((_%__splice3923839239%_
                                     (gx#syntax-split-splice->vector
                                      _%hd3567436036%_
                                      '0)))
                                (let ((_%tl3572135780%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3923839239%_
                                          '1)))
                                      (_%target3571935777%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3923839239%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3572135780%_)
                                      (_%__match3931839319%_
                                       _%e3567036022%_
                                       _%hd3567136026%_
                                       _%tl3567236029%_
                                       _%e3567336032%_
                                       _%hd3567436036%_
                                       _%tl3567536039%_
                                       _%__splice3923839239%_
                                       _%target3571935777%_
                                       _%tl3572135780%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3566735750%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3566735750%_))))))
                  (if (gx#stx-pair/null? _%hd3567436036%_)
                      (let ((_%__splice3923839239%_
                             (gx#syntax-split-splice->vector
                              _%hd3567436036%_
                              '0)))
                        (let ((_%tl3572135780%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3923839239%_ '1)))
                              (_%target3571935777%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3923839239%_ '0))))
                          (if (gx#stx-null? _%tl3572135780%_)
                              (_%__match3931839319%_
                               _%e3567036022%_
                               _%hd3567136026%_
                               _%tl3567236029%_
                               _%e3567336032%_
                               _%hd3567436036%_
                               _%tl3567536039%_
                               _%__splice3923839239%_
                               _%target3571935777%_
                               _%tl3572135780%_)
                              (let ()
                                (declare (not safe))
                                (_%g3566735750%_)))))
                      (let () (declare (not safe)) (_%g3566735750%_))))
              (if (gx#stx-pair/null? _%hd3567436036%_)
                  (let ((_%__splice3923839239%_
                         (gx#syntax-split-splice->vector _%hd3567436036%_ '0)))
                    (let ((_%tl3572135780%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3923839239%_ '1)))
                          (_%target3571935777%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3923839239%_ '0))))
                      (if (gx#stx-null? _%tl3572135780%_)
                          (_%__match3931839319%_
                           _%e3567036022%_
                           _%hd3567136026%_
                           _%tl3567236029%_
                           _%e3567336032%_
                           _%hd3567436036%_
                           _%tl3567536039%_
                           _%__splice3923839239%_
                           _%target3571935777%_
                           _%tl3572135780%_)
                          (let () (declare (not safe)) (_%g3566735750%_)))))
                  (let () (declare (not safe)) (_%g3566735750%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3567436036%_)
                                                  (let ((_%__splice3923839239%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3567436036%_
                                                          '0)))
                                                    (let ((_%tl3572135780%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3923839239%_
                                                              '1)))
                                                          (_%target3571935777%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3923839239%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3572135780%_)
                                                          (_%__match3931839319%_
                                                           _%e3567036022%_
                                                           _%hd3567136026%_
                                                           _%tl3567236029%_
                                                           _%e3567336032%_
                                                           _%hd3567436036%_
                                                           _%tl3567536039%_
                                                           _%__splice3923839239%_
                                                           _%target3571935777%_
                                                           _%tl3572135780%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3566735750%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3566735750%_))))))
                                      (if (gx#stx-pair/null? _%hd3567436036%_)
                                          (let ((_%__splice3923839239%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3567436036%_
                                                  '0)))
                                            (let ((_%tl3572135780%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3923839239%_
                                                      '1)))
                                                  (_%target3571935777%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3923839239%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3572135780%_)
                                                  (_%__match3931839319%_
                                                   _%e3567036022%_
                                                   _%hd3567136026%_
                                                   _%tl3567236029%_
                                                   _%e3567336032%_
                                                   _%hd3567436036%_
                                                   _%tl3567536039%_
                                                   _%__splice3923839239%_
                                                   _%target3571935777%_
                                                   _%tl3572135780%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3566735750%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3566735750%_)))))))
                          (let () (declare (not safe)) (_%g3566735750%_)))))
                  (let () (declare (not safe)) (_%g3566735750%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36103%_)
        (let* ((_%__stx3932139322%_ _%$stx36103%_)
               (_%g3610836160%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3932139322%_))))
          (let ((_%__kont3932439325%_
                 (lambda (_%g3611036326%_
                          _%g3611136328%_
                          _%g3611236329%_
                          _%g3611336330%_
                          _%g3611436331%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%g3611336330%_
                                           (cons _%g3611236329%_ '()))
                                     '())
                               (cons (cons _%g3611436331%_
                                           (cons _%g3611136328%_
                                                 (foldr (lambda (_%g3635636359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3635736362%_)
                  (cons _%g3635636359%_ _%g3635736362%_))
                '()
                _%g3611036326%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3932839329%_
                 (lambda (_%g3613936215%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3623236235%_ _%g3623336238%_)
                                        (cons _%g3623236235%_ _%g3623336238%_))
                                      '()
                                      _%g3613936215%_))))))
            (let* ((_%__match3939439395%_
                    (lambda (_%e3614036167%_
                             _%hd3614136171%_
                             _%tl3614236174%_
                             _%e3614336177%_
                             _%hd3614436181%_
                             _%tl3614536184%_
                             _%__splice3933039331%_
                             _%target3614636187%_
                             _%tl3614836190%_)
                      (letrec ((_%loop3614936193%_
                                (lambda (_%hd3614736197%_ _%body3615336200%_)
                                  (if (gx#stx-pair? _%hd3614736197%_)
                                      (let ((_%e3615036202%_
                                             (gx#syntax-e _%hd3614736197%_)))
                                        (let ((_%lp-tl3615236209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3615036202%_)))
                                              (_%lp-hd3615136206%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3615036202%_))))
                                          (_%loop3614936193%_
                                           _%lp-tl3615236209%_
                                           (cons _%lp-hd3615136206%_
                                                 _%body3615336200%_))))
                                      (let ((_%body3615436212%_
                                             (reverse _%body3615336200%_)))
                                        (_%__kont3932839329%_
                                         _%body3615436212%_))))))
                        (_%loop3614936193%_ _%target3614636187%_ '()))))
                   (_%__match3937239373%_
                    (lambda (_%e3611536248%_
                             _%hd3611636252%_
                             _%tl3611736255%_
                             _%e3611836258%_
                             _%hd3611936262%_
                             _%tl3612036265%_
                             _%e3612136268%_
                             _%hd3612236272%_
                             _%tl3612336275%_
                             _%e3612436278%_
                             _%hd3612536282%_
                             _%tl3612636285%_
                             _%e3612736288%_
                             _%hd3612836292%_
                             _%tl3612936295%_
                             _%__splice3932639327%_
                             _%target3613036298%_
                             _%tl3613236301%_)
                      (letrec ((_%loop3613336304%_
                                (lambda (_%hd3613136308%_ _%body3613736311%_)
                                  (if (gx#stx-pair? _%hd3613136308%_)
                                      (let ((_%e3613436313%_
                                             (gx#syntax-e _%hd3613136308%_)))
                                        (let ((_%lp-tl3613636320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3613436313%_)))
                                              (_%lp-hd3613536317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3613436313%_))))
                                          (_%loop3613336304%_
                                           _%lp-tl3613636320%_
                                           (cons _%lp-hd3613536317%_
                                                 _%body3613736311%_))))
                                      (let ((_%body3613836323%_
                                             (reverse _%body3613736311%_)))
                                        (_%__kont3932439325%_
                                         _%body3613836323%_
                                         _%tl3612336275%_
                                         _%hd3612836292%_
                                         _%hd3612536282%_
                                         _%hd3611636252%_))))))
                        (_%loop3613336304%_ _%target3613036298%_ '())))))
              (if (gx#stx-pair? _%__stx3932139322%_)
                  (let ((_%e3611536248%_ (gx#syntax-e _%__stx3932139322%_)))
                    (let ((_%tl3611736255%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3611536248%_)))
                          (_%hd3611636252%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3611536248%_))))
                      (if (gx#stx-pair? _%tl3611736255%_)
                          (let ((_%e3611836258%_
                                 (gx#syntax-e _%tl3611736255%_)))
                            (let ((_%tl3612036265%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3611836258%_)))
                                  (_%hd3611936262%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3611836258%_))))
                              (if (gx#stx-pair? _%hd3611936262%_)
                                  (let ((_%e3612136268%_
                                         (gx#syntax-e _%hd3611936262%_)))
                                    (let ((_%tl3612336275%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3612136268%_)))
                                          (_%hd3612236272%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3612136268%_))))
                                      (if (gx#stx-pair? _%hd3612236272%_)
                                          (let ((_%e3612436278%_
                                                 (gx#syntax-e
                                                  _%hd3612236272%_)))
                                            (let ((_%tl3612636285%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3612436278%_)))
                                                  (_%hd3612536282%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3612436278%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3612636285%_)
                                                  (let ((_%e3612736288%_
                                                         (gx#syntax-e
                                                          _%tl3612636285%_)))
                                                    (let ((_%tl3612936295%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3612736288%_)))
                                                          (_%hd3612836292%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3612736288%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3612936295%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3612036265%_)
                                                              (let ((_%__splice3932639327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl3612036265%_
                              '0)))
                        (let ((_%tl3613236301%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3932639327%_ '1)))
                              (_%target3613036298%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3932639327%_ '0))))
                          (if (gx#stx-null? _%tl3613236301%_)
                              (_%__match3937239373%_
                               _%e3611536248%_
                               _%hd3611636252%_
                               _%tl3611736255%_
                               _%e3611836258%_
                               _%hd3611936262%_
                               _%tl3612036265%_
                               _%e3612136268%_
                               _%hd3612236272%_
                               _%tl3612336275%_
                               _%e3612436278%_
                               _%hd3612536282%_
                               _%tl3612636285%_
                               _%e3612736288%_
                               _%hd3612836292%_
                               _%tl3612936295%_
                               _%__splice3932639327%_
                               _%target3613036298%_
                               _%tl3613236301%_)
                              (let ()
                                (declare (not safe))
                                (_%g3610836160%_)))))
                      (let () (declare (not safe)) (_%g3610836160%_)))
                  (let () (declare (not safe)) (_%g3610836160%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3610836160%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3610836160%_)))))
                                  (if (gx#stx-null? _%hd3611936262%_)
                                      (if (gx#stx-pair/null? _%tl3612036265%_)
                                          (let ((_%__splice3933039331%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl3612036265%_
                                                  '0)))
                                            (let ((_%tl3614836190%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3933039331%_
                                                      '1)))
                                                  (_%target3614636187%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3933039331%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3614836190%_)
                                                  (_%__match3939439395%_
                                                   _%e3611536248%_
                                                   _%hd3611636252%_
                                                   _%tl3611736255%_
                                                   _%e3611836258%_
                                                   _%hd3611936262%_
                                                   _%tl3612036265%_
                                                   _%__splice3933039331%_
                                                   _%target3614636187%_
                                                   _%tl3614836190%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3610836160%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3610836160%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3610836160%_))))))
                          (let () (declare (not safe)) (_%g3610836160%_)))))
                  (let () (declare (not safe)) (_%g3610836160%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx36371%_)
        (let* ((_%__stx3939739398%_ _%$stx36371%_)
               (_%g3638236528%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3939739398%_))))
          (let ((_%__kont3940039401%_
                 (lambda (_%g3638437128%_ _%g3638537130%_ _%g3638637131%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3715237155%_ _%g3715337158%_)
                                  (cons (cons _%g3638637131%_
                                              (cons _%g3715237155%_
                                                    (cons _%g3638437128%_
                                                          '())))
                                        _%g3715337158%_))
                                '()
                                _%g3638537130%_))))
                (_%__kont3940439405%_
                 (lambda (_%g3640837020%_ _%g3640937022%_ _%g3641037023%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3704437047%_ _%g3704537050%_)
                                  (cons (cons _%g3641037023%_
                                              (cons _%g3704437047%_
                                                    (cons _%g3640837020%_
                                                          '())))
                                        _%g3704537050%_))
                                '()
                                _%g3640937022%_))))
                (_%__kont3940839409%_
                 (lambda (_%g3643236922%_ _%g3643336924%_ _%g3643436925%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%g3643436925%_
                                     (cons _%g3643336924%_
                                           (cons _%g3643236922%_ '())))
                               '()))))
                (_%__kont3941039411%_
                 (lambda (_%g3645036848%_ _%g3645136850%_)
                   (cons _%g3645136850%_ (cons _%g3645036848%_ '()))))
                (_%__kont3941239413%_
                 (lambda (_%g3646136796%_ _%g3646236798%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%g3646236798%_
                                           (cons _%g3646136796%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont3941439415%_
                 (lambda (_%g3646936748%_ _%g3647036750%_ _%g3647136751%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%g3647136751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g3647036750%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3646936748%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3941639417%_
                 (lambda (_%g3648436679%_ _%g3648536681%_ _%g3648636682%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g3648636682%_
                                                       (cons _%g3648536681%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3648436679%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3941839419%_
                 (lambda (_%g3650036599%_
                          _%g3650136601%_
                          _%g3650236602%_
                          _%g3650336603%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g3650336603%_
                                                       (cons _%g3650236602%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3650036599%_
                                                             (cons (cons _%g3650136601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match3957039571%_
                    (lambda (_%e3647236708%_
                             _%hd3647336712%_
                             _%tl3647436715%_
                             _%e3647536718%_
                             _%hd3647636722%_
                             _%tl3647736725%_
                             _%e3647836728%_
                             _%hd3647936732%_
                             _%tl3648036735%_)
                      (if (gx#identifier? _%hd3647936732%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39772_|
                               _%hd3647936732%_)
                              (if (gx#stx-pair? _%tl3648036735%_)
                                  (let ((_%e3648136738%_
                                         (gx#syntax-e _%tl3648036735%_)))
                                    (let ((_%tl3648336745%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3648136738%_)))
                                          (_%hd3648236742%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3648136738%_))))
                                      (if (gx#stx-null? _%tl3648336745%_)
                                          (_%__kont3941439415%_
                                           _%hd3648236742%_
                                           _%hd3647636722%_
                                           _%hd3647336712%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3638236528%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3638236528%_)))
                              (let () (declare (not safe)) (_%g3638236528%_)))
                          (if (gx#stx-datum? _%hd3647936732%_)
                              (let ((_%e3649636665%_
                                     (gx#stx-e _%hd3647936732%_)))
                                (if (equal? _%e3649636665%_ '::)
                                    (if (gx#stx-pair? _%tl3648036735%_)
                                        (let ((_%e3649736669%_
                                               (gx#syntax-e _%tl3648036735%_)))
                                          (let ((_%tl3649936676%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3649736669%_)))
                                                (_%hd3649836673%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3649736669%_))))
                                            (if (gx#stx-null? _%tl3649936676%_)
                                                (_%__kont3941639417%_
                                                 _%hd3649836673%_
                                                 _%hd3647636722%_
                                                 _%hd3647336712%_)
                                                (if (gx#stx-pair?
                                                     _%tl3649936676%_)
                                                    (let ((_%e3651736579%_
                                                           (gx#syntax-e
                                                            _%tl3649936676%_)))
                                                      (let ((_%tl3651936586%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3651736579%_)))
                    (_%hd3651836583%_
                     (let () (declare (not safe)) (##car _%e3651736579%_))))
                (if (gx#identifier? _%hd3651836583%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39773_|
                         _%hd3651836583%_)
                        (if (gx#stx-pair? _%tl3651936586%_)
                            (let ((_%e3652036589%_
                                   (gx#syntax-e _%tl3651936586%_)))
                              (let ((_%tl3652236596%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3652036589%_)))
                                    (_%hd3652136593%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3652036589%_))))
                                (if (gx#stx-null? _%tl3652236596%_)
                                    (_%__kont3941839419%_
                                     _%hd3652136593%_
                                     _%hd3649836673%_
                                     _%hd3647636722%_
                                     _%hd3647336712%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3638236528%_)))))
                            (let () (declare (not safe)) (_%g3638236528%_)))
                        (let () (declare (not safe)) (_%g3638236528%_)))
                    (let () (declare (not safe)) (_%g3638236528%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3638236528%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3638236528%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3638236528%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3638236528%_))))))
                   (_%__match3955039551%_
                    (lambda (_%e3646336776%_
                             _%hd3646436780%_
                             _%tl3646536783%_
                             _%e3646636786%_
                             _%hd3646736790%_
                             _%tl3646836793%_)
                      (if (gx#stx-null? _%tl3646836793%_)
                          (_%__kont3941239413%_
                           _%hd3646736790%_
                           _%hd3646436780%_)
                          (if (gx#stx-pair? _%tl3646836793%_)
                              (let ((_%e3647836728%_
                                     (gx#syntax-e _%tl3646836793%_)))
                                (let ((_%tl3648036735%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3647836728%_)))
                                      (_%hd3647936732%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3647836728%_))))
                                  (if (gx#identifier? _%hd3647936732%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39772_|
                                           _%hd3647936732%_)
                                          (if (gx#stx-pair? _%tl3648036735%_)
                                              (let ((_%e3648136738%_
                                                     (gx#syntax-e
                                                      _%tl3648036735%_)))
                                                (let ((_%tl3648336745%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3648136738%_)))
                                                      (_%hd3648236742%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3648136738%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3648336745%_)
                                                      (_%__kont3941439415%_
                                                       _%hd3648236742%_
                                                       _%hd3646736790%_
                                                       _%hd3646436780%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3638236528%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3638236528%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3638236528%_)))
                                      (if (gx#stx-datum? _%hd3647936732%_)
                                          (let ((_%e3649636665%_
                                                 (gx#stx-e _%hd3647936732%_)))
                                            (if (equal? _%e3649636665%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3648036735%_)
                                                    (let ((_%e3649736669%_
                                                           (gx#syntax-e
                                                            _%tl3648036735%_)))
                                                      (let ((_%tl3649936676%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3649736669%_)))
                    (_%hd3649836673%_
                     (let () (declare (not safe)) (##car _%e3649736669%_))))
                (if (gx#stx-null? _%tl3649936676%_)
                    (_%__kont3941639417%_
                     _%hd3649836673%_
                     _%hd3646736790%_
                     _%hd3646436780%_)
                    (if (gx#stx-pair? _%tl3649936676%_)
                        (let ((_%e3651736579%_ (gx#syntax-e _%tl3649936676%_)))
                          (let ((_%tl3651936586%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3651736579%_)))
                                (_%hd3651836583%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3651736579%_))))
                            (if (gx#identifier? _%hd3651836583%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39773_|
                                     _%hd3651836583%_)
                                    (if (gx#stx-pair? _%tl3651936586%_)
                                        (let ((_%e3652036589%_
                                               (gx#syntax-e _%tl3651936586%_)))
                                          (let ((_%tl3652236596%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3652036589%_)))
                                                (_%hd3652136593%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3652036589%_))))
                                            (if (gx#stx-null? _%tl3652236596%_)
                                                (_%__kont3941839419%_
                                                 _%hd3652136593%_
                                                 _%hd3649836673%_
                                                 _%hd3646736790%_
                                                 _%hd3646436780%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3638236528%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3638236528%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3638236528%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3638236528%_)))))
                        (let () (declare (not safe)) (_%g3638236528%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3638236528%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3638236528%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3638236528%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3638236528%_))))))
                   (_%__match3948039481%_
                    (lambda (_%e3641136952%_
                             _%hd3641236956%_
                             _%tl3641336959%_
                             _%e3641436962%_
                             _%hd3641536966%_
                             _%tl3641636969%_
                             _%e3641736972%_
                             _%hd3641836976%_
                             _%tl3641936979%_
                             _%__splice3940639407%_
                             _%target3642036982%_
                             _%tl3642236985%_)
                      (letrec ((_%loop3642336988%_
                                (lambda (_%hd3642136992%_ _%pred3642736995%_)
                                  (if (gx#stx-pair? _%hd3642136992%_)
                                      (let ((_%e3642436997%_
                                             (gx#syntax-e _%hd3642136992%_)))
                                        (let ((_%lp-tl3642637004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3642436997%_)))
                                              (_%lp-hd3642537001%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3642436997%_))))
                                          (_%loop3642336988%_
                                           _%lp-tl3642637004%_
                                           (cons _%lp-hd3642537001%_
                                                 _%pred3642736995%_))))
                                      (let ((_%pred3642837007%_
                                             (reverse _%pred3642736995%_)))
                                        (if (gx#stx-pair? _%tl3641636969%_)
                                            (let ((_%e3642937010%_
                                                   (gx#syntax-e
                                                    _%tl3641636969%_)))
                                              (let ((_%tl3643137017%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3642937010%_)))
                                                    (_%hd3643037014%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3642937010%_))))
                                                (if (gx#stx-null?
                                                     _%tl3643137017%_)
                                                    (_%__kont3940439405%_
                                                     _%hd3643037014%_
                                                     _%pred3642837007%_
                                                     _%hd3641236956%_)
                                                    (_%__match3957039571%_
                                                     _%e3641136952%_
                                                     _%hd3641236956%_
                                                     _%tl3641336959%_
                                                     _%e3641436962%_
                                                     _%hd3641536966%_
                                                     _%tl3641636969%_
                                                     _%e3642937010%_
                                                     _%hd3643037014%_
                                                     _%tl3643137017%_))))
                                            (_%__match3955039551%_
                                             _%e3641136952%_
                                             _%hd3641236956%_
                                             _%tl3641336959%_
                                             _%e3641436962%_
                                             _%hd3641536966%_
                                             _%tl3641636969%_)))))))
                        (_%loop3642336988%_ _%target3642036982%_ '()))))
                   (_%__match3945039451%_
                    (lambda (_%e3638737060%_
                             _%hd3638837064%_
                             _%tl3638937067%_
                             _%e3639037070%_
                             _%hd3639137074%_
                             _%tl3639237077%_
                             _%e3639337080%_
                             _%hd3639437084%_
                             _%tl3639537087%_
                             _%__splice3940239403%_
                             _%target3639637090%_
                             _%tl3639837093%_)
                      (letrec ((_%loop3639937096%_
                                (lambda (_%hd3639737100%_ _%pred3640337103%_)
                                  (if (gx#stx-pair? _%hd3639737100%_)
                                      (let ((_%e3640037105%_
                                             (gx#syntax-e _%hd3639737100%_)))
                                        (let ((_%lp-tl3640237112%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3640037105%_)))
                                              (_%lp-hd3640137109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3640037105%_))))
                                          (_%loop3639937096%_
                                           _%lp-tl3640237112%_
                                           (cons _%lp-hd3640137109%_
                                                 _%pred3640337103%_))))
                                      (let ((_%pred3640437115%_
                                             (reverse _%pred3640337103%_)))
                                        (if (gx#stx-pair? _%tl3639237077%_)
                                            (let ((_%e3640537118%_
                                                   (gx#syntax-e
                                                    _%tl3639237077%_)))
                                              (let ((_%tl3640737125%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3640537118%_)))
                                                    (_%hd3640637122%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3640537118%_))))
                                                (if (gx#stx-null?
                                                     _%tl3640737125%_)
                                                    (_%__kont3940039401%_
                                                     _%hd3640637122%_
                                                     _%pred3640437115%_
                                                     _%hd3638837064%_)
                                                    (_%__match3957039571%_
                                                     _%e3638737060%_
                                                     _%hd3638837064%_
                                                     _%tl3638937067%_
                                                     _%e3639037070%_
                                                     _%hd3639137074%_
                                                     _%tl3639237077%_
                                                     _%e3640537118%_
                                                     _%hd3640637122%_
                                                     _%tl3640737125%_))))
                                            (_%__match3955039551%_
                                             _%e3638737060%_
                                             _%hd3638837064%_
                                             _%tl3638937067%_
                                             _%e3639037070%_
                                             _%hd3639137074%_
                                             _%tl3639237077%_)))))))
                        (_%loop3639937096%_ _%target3639637090%_ '())))))
              (if (gx#stx-pair? _%__stx3939739398%_)
                  (let ((_%e3638737060%_ (gx#syntax-e _%__stx3939739398%_)))
                    (let ((_%tl3638937067%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3638737060%_)))
                          (_%hd3638837064%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3638737060%_))))
                      (if (gx#stx-pair? _%tl3638937067%_)
                          (let ((_%e3639037070%_
                                 (gx#syntax-e _%tl3638937067%_)))
                            (let ((_%tl3639237077%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3639037070%_)))
                                  (_%hd3639137074%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3639037070%_))))
                              (if (gx#stx-pair? _%hd3639137074%_)
                                  (let ((_%e3639337080%_
                                         (gx#syntax-e _%hd3639137074%_)))
                                    (let ((_%tl3639537087%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3639337080%_)))
                                          (_%hd3639437084%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3639337080%_))))
                                      (if (gx#identifier? _%hd3639437084%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39774_|
                                               _%hd3639437084%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3639537087%_)
                                                  (let ((_%__splice3940239403%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl3639537087%_
                                                          '0)))
                                                    (let ((_%tl3639837093%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3940239403%_
                                                              '1)))
                                                          (_%target3639637090%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3940239403%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3639837093%_)
                                                          (_%__match3945039451%_
                                                           _%e3638737060%_
                                                           _%hd3638837064%_
                                                           _%tl3638937067%_
                                                           _%e3639037070%_
                                                           _%hd3639137074%_
                                                           _%tl3639237077%_
                                                           _%e3639337080%_
                                                           _%hd3639437084%_
                                                           _%tl3639537087%_
                                                           _%__splice3940239403%_
                                                           _%target3639637090%_
                                                           _%tl3639837093%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3639237077%_)
                                                              (let ((_%e3645836838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3639237077%_)))
                        (let ((_%tl3646036845%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3645836838%_)))
                              (_%hd3645936842%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3645836838%_))))
                          (if (gx#stx-null? _%tl3646036845%_)
                              (_%__kont3941039411%_
                               _%hd3645936842%_
                               _%hd3639137074%_)
                              (if (gx#identifier? _%hd3645936842%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39772_|
                                       _%hd3645936842%_)
                                      (if (gx#stx-pair? _%tl3646036845%_)
                                          (let ((_%e3648136738%_
                                                 (gx#syntax-e
                                                  _%tl3646036845%_)))
                                            (let ((_%tl3648336745%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3648136738%_)))
                                                  (_%hd3648236742%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3648136738%_))))
                                              (if (gx#stx-null?
                                                   _%tl3648336745%_)
                                                  (_%__kont3941439415%_
                                                   _%hd3648236742%_
                                                   _%hd3639137074%_
                                                   _%hd3638837064%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3638236528%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3638236528%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3638236528%_)))
                                  (if (gx#stx-datum? _%hd3645936842%_)
                                      (let ((_%e3649636665%_
                                             (gx#stx-e _%hd3645936842%_)))
                                        (if (equal? _%e3649636665%_ '::)
                                            (if (gx#stx-pair? _%tl3646036845%_)
                                                (let ((_%e3649736669%_
                                                       (gx#syntax-e
                                                        _%tl3646036845%_)))
                                                  (let ((_%tl3649936676%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3649736669%_)))
                                                        (_%hd3649836673%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3649736669%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3649936676%_)
                                                        (_%__kont3941639417%_
                                                         _%hd3649836673%_
                                                         _%hd3639137074%_
                                                         _%hd3638837064%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3649936676%_)
                                                            (let ((_%e3651736579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3649936676%_)))
                      (let ((_%tl3651936586%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3651736579%_)))
                            (_%hd3651836583%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3651736579%_))))
                        (if (gx#identifier? _%hd3651836583%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39773_|
                                 _%hd3651836583%_)
                                (if (gx#stx-pair? _%tl3651936586%_)
                                    (let ((_%e3652036589%_
                                           (gx#syntax-e _%tl3651936586%_)))
                                      (let ((_%tl3652236596%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3652036589%_)))
                                            (_%hd3652136593%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3652036589%_))))
                                        (if (gx#stx-null? _%tl3652236596%_)
                                            (_%__kont3941839419%_
                                             _%hd3652136593%_
                                             _%hd3649836673%_
                                             _%hd3639137074%_
                                             _%hd3638837064%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3638236528%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3638236528%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3638236528%_)))
                            (let () (declare (not safe)) (_%g3638236528%_)))))
                    (let () (declare (not safe)) (_%g3638236528%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3638236528%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3638236528%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3638236528%_)))))))
                      (if (gx#stx-null? _%tl3639237077%_)
                          (_%__kont3941239413%_
                           _%hd3639137074%_
                           _%hd3638837064%_)
                          (let () (declare (not safe)) (_%g3638236528%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3639237077%_)
                                                      (let ((_%e3645836838%_
                                                             (gx#syntax-e
                                                              _%tl3639237077%_)))
                                                        (let ((_%tl3646036845%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3645836838%_)))
                      (_%hd3645936842%_
                       (let () (declare (not safe)) (##car _%e3645836838%_))))
                  (if (gx#stx-null? _%tl3646036845%_)
                      (_%__kont3941039411%_ _%hd3645936842%_ _%hd3639137074%_)
                      (if (gx#identifier? _%hd3645936842%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39772_|
                               _%hd3645936842%_)
                              (if (gx#stx-pair? _%tl3646036845%_)
                                  (let ((_%e3648136738%_
                                         (gx#syntax-e _%tl3646036845%_)))
                                    (let ((_%tl3648336745%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3648136738%_)))
                                          (_%hd3648236742%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3648136738%_))))
                                      (if (gx#stx-null? _%tl3648336745%_)
                                          (_%__kont3941439415%_
                                           _%hd3648236742%_
                                           _%hd3639137074%_
                                           _%hd3638837064%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3638236528%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3638236528%_)))
                              (let () (declare (not safe)) (_%g3638236528%_)))
                          (if (gx#stx-datum? _%hd3645936842%_)
                              (let ((_%e3649636665%_
                                     (gx#stx-e _%hd3645936842%_)))
                                (if (equal? _%e3649636665%_ '::)
                                    (if (gx#stx-pair? _%tl3646036845%_)
                                        (let ((_%e3649736669%_
                                               (gx#syntax-e _%tl3646036845%_)))
                                          (let ((_%tl3649936676%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3649736669%_)))
                                                (_%hd3649836673%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3649736669%_))))
                                            (if (gx#stx-null? _%tl3649936676%_)
                                                (_%__kont3941639417%_
                                                 _%hd3649836673%_
                                                 _%hd3639137074%_
                                                 _%hd3638837064%_)
                                                (if (gx#stx-pair?
                                                     _%tl3649936676%_)
                                                    (let ((_%e3651736579%_
                                                           (gx#syntax-e
                                                            _%tl3649936676%_)))
                                                      (let ((_%tl3651936586%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3651736579%_)))
                    (_%hd3651836583%_
                     (let () (declare (not safe)) (##car _%e3651736579%_))))
                (if (gx#identifier? _%hd3651836583%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39773_|
                         _%hd3651836583%_)
                        (if (gx#stx-pair? _%tl3651936586%_)
                            (let ((_%e3652036589%_
                                   (gx#syntax-e _%tl3651936586%_)))
                              (let ((_%tl3652236596%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3652036589%_)))
                                    (_%hd3652136593%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3652036589%_))))
                                (if (gx#stx-null? _%tl3652236596%_)
                                    (_%__kont3941839419%_
                                     _%hd3652136593%_
                                     _%hd3649836673%_
                                     _%hd3639137074%_
                                     _%hd3638837064%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3638236528%_)))))
                            (let () (declare (not safe)) (_%g3638236528%_)))
                        (let () (declare (not safe)) (_%g3638236528%_)))
                    (let () (declare (not safe)) (_%g3638236528%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3638236528%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3638236528%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3638236528%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3638236528%_)))))))
              (if (gx#stx-null? _%tl3639237077%_)
                  (_%__kont3941239413%_ _%hd3639137074%_ _%hd3638837064%_)
                  (let () (declare (not safe)) (_%g3638236528%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39775_|
                                                   _%hd3639437084%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3639537087%_)
                                                      (let ((_%__splice3940639407%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl3639537087%_
                                                              '0)))
                                                        (let ((_%tl3642236985%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice3940639407%_ '1)))
                      (_%target3642036982%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice3940639407%_ '0))))
                  (if (gx#stx-null? _%tl3642236985%_)
                      (_%__match3948039481%_
                       _%e3638737060%_
                       _%hd3638837064%_
                       _%tl3638937067%_
                       _%e3639037070%_
                       _%hd3639137074%_
                       _%tl3639237077%_
                       _%e3639337080%_
                       _%hd3639437084%_
                       _%tl3639537087%_
                       _%__splice3940639407%_
                       _%target3642036982%_
                       _%tl3642236985%_)
                      (if (gx#stx-pair? _%tl3639237077%_)
                          (let ((_%e3645836838%_
                                 (gx#syntax-e _%tl3639237077%_)))
                            (let ((_%tl3646036845%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3645836838%_)))
                                  (_%hd3645936842%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3645836838%_))))
                              (if (gx#stx-null? _%tl3646036845%_)
                                  (_%__kont3941039411%_
                                   _%hd3645936842%_
                                   _%hd3639137074%_)
                                  (if (gx#identifier? _%hd3645936842%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39772_|
                                           _%hd3645936842%_)
                                          (if (gx#stx-pair? _%tl3646036845%_)
                                              (let ((_%e3648136738%_
                                                     (gx#syntax-e
                                                      _%tl3646036845%_)))
                                                (let ((_%tl3648336745%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3648136738%_)))
                                                      (_%hd3648236742%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3648136738%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3648336745%_)
                                                      (_%__kont3941439415%_
                                                       _%hd3648236742%_
                                                       _%hd3639137074%_
                                                       _%hd3638837064%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3638236528%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3638236528%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3638236528%_)))
                                      (if (gx#stx-datum? _%hd3645936842%_)
                                          (let ((_%e3649636665%_
                                                 (gx#stx-e _%hd3645936842%_)))
                                            (if (equal? _%e3649636665%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3646036845%_)
                                                    (let ((_%e3649736669%_
                                                           (gx#syntax-e
                                                            _%tl3646036845%_)))
                                                      (let ((_%tl3649936676%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3649736669%_)))
                    (_%hd3649836673%_
                     (let () (declare (not safe)) (##car _%e3649736669%_))))
                (if (gx#stx-null? _%tl3649936676%_)
                    (_%__kont3941639417%_
                     _%hd3649836673%_
                     _%hd3639137074%_
                     _%hd3638837064%_)
                    (if (gx#stx-pair? _%tl3649936676%_)
                        (let ((_%e3651736579%_ (gx#syntax-e _%tl3649936676%_)))
                          (let ((_%tl3651936586%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3651736579%_)))
                                (_%hd3651836583%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3651736579%_))))
                            (if (gx#identifier? _%hd3651836583%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39773_|
                                     _%hd3651836583%_)
                                    (if (gx#stx-pair? _%tl3651936586%_)
                                        (let ((_%e3652036589%_
                                               (gx#syntax-e _%tl3651936586%_)))
                                          (let ((_%tl3652236596%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3652036589%_)))
                                                (_%hd3652136593%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3652036589%_))))
                                            (if (gx#stx-null? _%tl3652236596%_)
                                                (_%__kont3941839419%_
                                                 _%hd3652136593%_
                                                 _%hd3649836673%_
                                                 _%hd3639137074%_
                                                 _%hd3638837064%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3638236528%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3638236528%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3638236528%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3638236528%_)))))
                        (let () (declare (not safe)) (_%g3638236528%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3638236528%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3638236528%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3638236528%_)))))))
                          (if (gx#stx-null? _%tl3639237077%_)
                              (_%__kont3941239413%_
                               _%hd3639137074%_
                               _%hd3638837064%_)
                              (let ()
                                (declare (not safe))
                                (_%g3638236528%_)))))))
              (if (gx#stx-pair? _%tl3639237077%_)
                  (let ((_%e3645836838%_ (gx#syntax-e _%tl3639237077%_)))
                    (let ((_%tl3646036845%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3645836838%_)))
                          (_%hd3645936842%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3645836838%_))))
                      (if (gx#stx-null? _%tl3646036845%_)
                          (_%__kont3941039411%_
                           _%hd3645936842%_
                           _%hd3639137074%_)
                          (if (gx#identifier? _%hd3645936842%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39772_|
                                   _%hd3645936842%_)
                                  (if (gx#stx-pair? _%tl3646036845%_)
                                      (let ((_%e3648136738%_
                                             (gx#syntax-e _%tl3646036845%_)))
                                        (let ((_%tl3648336745%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3648136738%_)))
                                              (_%hd3648236742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3648136738%_))))
                                          (if (gx#stx-null? _%tl3648336745%_)
                                              (_%__kont3941439415%_
                                               _%hd3648236742%_
                                               _%hd3639137074%_
                                               _%hd3638837064%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3638236528%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3638236528%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3638236528%_)))
                              (if (gx#stx-datum? _%hd3645936842%_)
                                  (let ((_%e3649636665%_
                                         (gx#stx-e _%hd3645936842%_)))
                                    (if (equal? _%e3649636665%_ '::)
                                        (if (gx#stx-pair? _%tl3646036845%_)
                                            (let ((_%e3649736669%_
                                                   (gx#syntax-e
                                                    _%tl3646036845%_)))
                                              (let ((_%tl3649936676%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3649736669%_)))
                                                    (_%hd3649836673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3649736669%_))))
                                                (if (gx#stx-null?
                                                     _%tl3649936676%_)
                                                    (_%__kont3941639417%_
                                                     _%hd3649836673%_
                                                     _%hd3639137074%_
                                                     _%hd3638837064%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3649936676%_)
                                                        (let ((_%e3651736579%_
                                                               (gx#syntax-e
                                                                _%tl3649936676%_)))
                                                          (let ((_%tl3651936586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3651736579%_)))
                        (_%hd3651836583%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3651736579%_))))
                    (if (gx#identifier? _%hd3651836583%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39773_|
                             _%hd3651836583%_)
                            (if (gx#stx-pair? _%tl3651936586%_)
                                (let ((_%e3652036589%_
                                       (gx#syntax-e _%tl3651936586%_)))
                                  (let ((_%tl3652236596%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3652036589%_)))
                                        (_%hd3652136593%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3652036589%_))))
                                    (if (gx#stx-null? _%tl3652236596%_)
                                        (_%__kont3941839419%_
                                         _%hd3652136593%_
                                         _%hd3649836673%_
                                         _%hd3639137074%_
                                         _%hd3638837064%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3638236528%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3638236528%_)))
                            (let () (declare (not safe)) (_%g3638236528%_)))
                        (let () (declare (not safe)) (_%g3638236528%_)))))
                (let () (declare (not safe)) (_%g3638236528%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3638236528%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3638236528%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3638236528%_)))))))
                  (if (gx#stx-null? _%tl3639237077%_)
                      (_%__kont3941239413%_ _%hd3639137074%_ _%hd3638837064%_)
                      (let () (declare (not safe)) (_%g3638236528%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39776_|
                                                       _%hd3639437084%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3639537087%_)
                                                          (let ((_%e3644436902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3639537087%_)))
                    (let ((_%tl3644636909%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3644436902%_)))
                          (_%hd3644536906%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3644436902%_))))
                      (if (gx#stx-null? _%tl3644636909%_)
                          (if (gx#stx-pair? _%tl3639237077%_)
                              (let ((_%e3644736912%_
                                     (gx#syntax-e _%tl3639237077%_)))
                                (let ((_%tl3644936919%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3644736912%_)))
                                      (_%hd3644836916%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3644736912%_))))
                                  (if (gx#stx-null? _%tl3644936919%_)
                                      (_%__kont3940839409%_
                                       _%hd3644836916%_
                                       _%hd3644536906%_
                                       _%hd3638837064%_)
                                      (if (gx#identifier? _%hd3644836916%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39772_|
                                               _%hd3644836916%_)
                                              (if (gx#stx-pair?
                                                   _%tl3644936919%_)
                                                  (let ((_%e3648136738%_
                                                         (gx#syntax-e
                                                          _%tl3644936919%_)))
                                                    (let ((_%tl3648336745%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3648136738%_)))
                                                          (_%hd3648236742%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3648136738%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3648336745%_)
                                                          (_%__kont3941439415%_
                                                           _%hd3648236742%_
                                                           _%hd3639137074%_
                                                           _%hd3638837064%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3638236528%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3638236528%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3638236528%_)))
                                          (if (gx#stx-datum? _%hd3644836916%_)
                                              (let ((_%e3649636665%_
                                                     (gx#stx-e
                                                      _%hd3644836916%_)))
                                                (if (equal? _%e3649636665%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3644936919%_)
                                                        (let ((_%e3649736669%_
                                                               (gx#syntax-e
                                                                _%tl3644936919%_)))
                                                          (let ((_%tl3649936676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3649736669%_)))
                        (_%hd3649836673%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3649736669%_))))
                    (if (gx#stx-null? _%tl3649936676%_)
                        (_%__kont3941639417%_
                         _%hd3649836673%_
                         _%hd3639137074%_
                         _%hd3638837064%_)
                        (if (gx#stx-pair? _%tl3649936676%_)
                            (let ((_%e3651736579%_
                                   (gx#syntax-e _%tl3649936676%_)))
                              (let ((_%tl3651936586%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3651736579%_)))
                                    (_%hd3651836583%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3651736579%_))))
                                (if (gx#identifier? _%hd3651836583%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39773_|
                                         _%hd3651836583%_)
                                        (if (gx#stx-pair? _%tl3651936586%_)
                                            (let ((_%e3652036589%_
                                                   (gx#syntax-e
                                                    _%tl3651936586%_)))
                                              (let ((_%tl3652236596%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3652036589%_)))
                                                    (_%hd3652136593%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3652036589%_))))
                                                (if (gx#stx-null?
                                                     _%tl3652236596%_)
                                                    (_%__kont3941839419%_
                                                     _%hd3652136593%_
                                                     _%hd3649836673%_
                                                     _%hd3639137074%_
                                                     _%hd3638837064%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3638236528%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3638236528%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3638236528%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3638236528%_)))))
                            (let () (declare (not safe)) (_%g3638236528%_))))))
                (let () (declare (not safe)) (_%g3638236528%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3638236528%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3638236528%_)))))))
                              (if (gx#stx-null? _%tl3639237077%_)
                                  (_%__kont3941239413%_
                                   _%hd3639137074%_
                                   _%hd3638837064%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3638236528%_))))
                          (if (gx#stx-pair? _%tl3639237077%_)
                              (let ((_%e3645836838%_
                                     (gx#syntax-e _%tl3639237077%_)))
                                (let ((_%tl3646036845%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3645836838%_)))
                                      (_%hd3645936842%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3645836838%_))))
                                  (if (gx#stx-null? _%tl3646036845%_)
                                      (_%__kont3941039411%_
                                       _%hd3645936842%_
                                       _%hd3639137074%_)
                                      (if (gx#identifier? _%hd3645936842%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39772_|
                                               _%hd3645936842%_)
                                              (if (gx#stx-pair?
                                                   _%tl3646036845%_)
                                                  (let ((_%e3648136738%_
                                                         (gx#syntax-e
                                                          _%tl3646036845%_)))
                                                    (let ((_%tl3648336745%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3648136738%_)))
                                                          (_%hd3648236742%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3648136738%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3648336745%_)
                                                          (_%__kont3941439415%_
                                                           _%hd3648236742%_
                                                           _%hd3639137074%_
                                                           _%hd3638837064%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3638236528%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3638236528%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3638236528%_)))
                                          (if (gx#stx-datum? _%hd3645936842%_)
                                              (let ((_%e3649636665%_
                                                     (gx#stx-e
                                                      _%hd3645936842%_)))
                                                (if (equal? _%e3649636665%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3646036845%_)
                                                        (let ((_%e3649736669%_
                                                               (gx#syntax-e
                                                                _%tl3646036845%_)))
                                                          (let ((_%tl3649936676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3649736669%_)))
                        (_%hd3649836673%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3649736669%_))))
                    (if (gx#stx-null? _%tl3649936676%_)
                        (_%__kont3941639417%_
                         _%hd3649836673%_
                         _%hd3639137074%_
                         _%hd3638837064%_)
                        (if (gx#stx-pair? _%tl3649936676%_)
                            (let ((_%e3651736579%_
                                   (gx#syntax-e _%tl3649936676%_)))
                              (let ((_%tl3651936586%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3651736579%_)))
                                    (_%hd3651836583%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3651736579%_))))
                                (if (gx#identifier? _%hd3651836583%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39773_|
                                         _%hd3651836583%_)
                                        (if (gx#stx-pair? _%tl3651936586%_)
                                            (let ((_%e3652036589%_
                                                   (gx#syntax-e
                                                    _%tl3651936586%_)))
                                              (let ((_%tl3652236596%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3652036589%_)))
                                                    (_%hd3652136593%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3652036589%_))))
                                                (if (gx#stx-null?
                                                     _%tl3652236596%_)
                                                    (_%__kont3941839419%_
                                                     _%hd3652136593%_
                                                     _%hd3649836673%_
                                                     _%hd3639137074%_
                                                     _%hd3638837064%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3638236528%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3638236528%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3638236528%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3638236528%_)))))
                            (let () (declare (not safe)) (_%g3638236528%_))))))
                (let () (declare (not safe)) (_%g3638236528%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3638236528%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3638236528%_)))))))
                              (if (gx#stx-null? _%tl3639237077%_)
                                  (_%__kont3941239413%_
                                   _%hd3639137074%_
                                   _%hd3638837064%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3638236528%_)))))))
                  (if (gx#stx-pair? _%tl3639237077%_)
                      (let ((_%e3645836838%_ (gx#syntax-e _%tl3639237077%_)))
                        (let ((_%tl3646036845%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3645836838%_)))
                              (_%hd3645936842%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3645836838%_))))
                          (if (gx#stx-null? _%tl3646036845%_)
                              (_%__kont3941039411%_
                               _%hd3645936842%_
                               _%hd3639137074%_)
                              (if (gx#identifier? _%hd3645936842%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39772_|
                                       _%hd3645936842%_)
                                      (if (gx#stx-pair? _%tl3646036845%_)
                                          (let ((_%e3648136738%_
                                                 (gx#syntax-e
                                                  _%tl3646036845%_)))
                                            (let ((_%tl3648336745%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3648136738%_)))
                                                  (_%hd3648236742%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3648136738%_))))
                                              (if (gx#stx-null?
                                                   _%tl3648336745%_)
                                                  (_%__kont3941439415%_
                                                   _%hd3648236742%_
                                                   _%hd3639137074%_
                                                   _%hd3638837064%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3638236528%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3638236528%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3638236528%_)))
                                  (if (gx#stx-datum? _%hd3645936842%_)
                                      (let ((_%e3649636665%_
                                             (gx#stx-e _%hd3645936842%_)))
                                        (if (equal? _%e3649636665%_ '::)
                                            (if (gx#stx-pair? _%tl3646036845%_)
                                                (let ((_%e3649736669%_
                                                       (gx#syntax-e
                                                        _%tl3646036845%_)))
                                                  (let ((_%tl3649936676%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3649736669%_)))
                                                        (_%hd3649836673%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3649736669%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3649936676%_)
                                                        (_%__kont3941639417%_
                                                         _%hd3649836673%_
                                                         _%hd3639137074%_
                                                         _%hd3638837064%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3649936676%_)
                                                            (let ((_%e3651736579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3649936676%_)))
                      (let ((_%tl3651936586%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3651736579%_)))
                            (_%hd3651836583%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3651736579%_))))
                        (if (gx#identifier? _%hd3651836583%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39773_|
                                 _%hd3651836583%_)
                                (if (gx#stx-pair? _%tl3651936586%_)
                                    (let ((_%e3652036589%_
                                           (gx#syntax-e _%tl3651936586%_)))
                                      (let ((_%tl3652236596%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3652036589%_)))
                                            (_%hd3652136593%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3652036589%_))))
                                        (if (gx#stx-null? _%tl3652236596%_)
                                            (_%__kont3941839419%_
                                             _%hd3652136593%_
                                             _%hd3649836673%_
                                             _%hd3639137074%_
                                             _%hd3638837064%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3638236528%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3638236528%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3638236528%_)))
                            (let () (declare (not safe)) (_%g3638236528%_)))))
                    (let () (declare (not safe)) (_%g3638236528%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3638236528%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3638236528%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3638236528%_)))))))
                      (if (gx#stx-null? _%tl3639237077%_)
                          (_%__kont3941239413%_
                           _%hd3639137074%_
                           _%hd3638837064%_)
                          (let () (declare (not safe)) (_%g3638236528%_)))))
              (if (gx#stx-pair? _%tl3639237077%_)
                  (let ((_%e3645836838%_ (gx#syntax-e _%tl3639237077%_)))
                    (let ((_%tl3646036845%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3645836838%_)))
                          (_%hd3645936842%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3645836838%_))))
                      (if (gx#stx-null? _%tl3646036845%_)
                          (_%__kont3941039411%_
                           _%hd3645936842%_
                           _%hd3639137074%_)
                          (if (gx#identifier? _%hd3645936842%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39772_|
                                   _%hd3645936842%_)
                                  (if (gx#stx-pair? _%tl3646036845%_)
                                      (let ((_%e3648136738%_
                                             (gx#syntax-e _%tl3646036845%_)))
                                        (let ((_%tl3648336745%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3648136738%_)))
                                              (_%hd3648236742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3648136738%_))))
                                          (if (gx#stx-null? _%tl3648336745%_)
                                              (_%__kont3941439415%_
                                               _%hd3648236742%_
                                               _%hd3639137074%_
                                               _%hd3638837064%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3638236528%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3638236528%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3638236528%_)))
                              (if (gx#stx-datum? _%hd3645936842%_)
                                  (let ((_%e3649636665%_
                                         (gx#stx-e _%hd3645936842%_)))
                                    (if (equal? _%e3649636665%_ '::)
                                        (if (gx#stx-pair? _%tl3646036845%_)
                                            (let ((_%e3649736669%_
                                                   (gx#syntax-e
                                                    _%tl3646036845%_)))
                                              (let ((_%tl3649936676%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3649736669%_)))
                                                    (_%hd3649836673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3649736669%_))))
                                                (if (gx#stx-null?
                                                     _%tl3649936676%_)
                                                    (_%__kont3941639417%_
                                                     _%hd3649836673%_
                                                     _%hd3639137074%_
                                                     _%hd3638837064%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3649936676%_)
                                                        (let ((_%e3651736579%_
                                                               (gx#syntax-e
                                                                _%tl3649936676%_)))
                                                          (let ((_%tl3651936586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3651736579%_)))
                        (_%hd3651836583%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3651736579%_))))
                    (if (gx#identifier? _%hd3651836583%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39773_|
                             _%hd3651836583%_)
                            (if (gx#stx-pair? _%tl3651936586%_)
                                (let ((_%e3652036589%_
                                       (gx#syntax-e _%tl3651936586%_)))
                                  (let ((_%tl3652236596%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3652036589%_)))
                                        (_%hd3652136593%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3652036589%_))))
                                    (if (gx#stx-null? _%tl3652236596%_)
                                        (_%__kont3941839419%_
                                         _%hd3652136593%_
                                         _%hd3649836673%_
                                         _%hd3639137074%_
                                         _%hd3638837064%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3638236528%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3638236528%_)))
                            (let () (declare (not safe)) (_%g3638236528%_)))
                        (let () (declare (not safe)) (_%g3638236528%_)))))
                (let () (declare (not safe)) (_%g3638236528%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3638236528%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3638236528%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3638236528%_)))))))
                  (if (gx#stx-null? _%tl3639237077%_)
                      (_%__kont3941239413%_ _%hd3639137074%_ _%hd3638837064%_)
                      (let () (declare (not safe)) (_%g3638236528%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3639237077%_)
                                              (let ((_%e3645836838%_
                                                     (gx#syntax-e
                                                      _%tl3639237077%_)))
                                                (let ((_%tl3646036845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3645836838%_)))
                                                      (_%hd3645936842%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3645836838%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3646036845%_)
                                                      (_%__kont3941039411%_
                                                       _%hd3645936842%_
                                                       _%hd3639137074%_)
                                                      (if (gx#identifier?
                                                           _%hd3645936842%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g39772_|
                                                               _%hd3645936842%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3646036845%_)
                          (let ((_%e3648136738%_
                                 (gx#syntax-e _%tl3646036845%_)))
                            (let ((_%tl3648336745%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3648136738%_)))
                                  (_%hd3648236742%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3648136738%_))))
                              (if (gx#stx-null? _%tl3648336745%_)
                                  (_%__kont3941439415%_
                                   _%hd3648236742%_
                                   _%hd3639137074%_
                                   _%hd3638837064%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3638236528%_)))))
                          (let () (declare (not safe)) (_%g3638236528%_)))
                      (let () (declare (not safe)) (_%g3638236528%_)))
                  (if (gx#stx-datum? _%hd3645936842%_)
                      (let ((_%e3649636665%_ (gx#stx-e _%hd3645936842%_)))
                        (if (equal? _%e3649636665%_ '::)
                            (if (gx#stx-pair? _%tl3646036845%_)
                                (let ((_%e3649736669%_
                                       (gx#syntax-e _%tl3646036845%_)))
                                  (let ((_%tl3649936676%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3649736669%_)))
                                        (_%hd3649836673%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3649736669%_))))
                                    (if (gx#stx-null? _%tl3649936676%_)
                                        (_%__kont3941639417%_
                                         _%hd3649836673%_
                                         _%hd3639137074%_
                                         _%hd3638837064%_)
                                        (if (gx#stx-pair? _%tl3649936676%_)
                                            (let ((_%e3651736579%_
                                                   (gx#syntax-e
                                                    _%tl3649936676%_)))
                                              (let ((_%tl3651936586%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3651736579%_)))
                                                    (_%hd3651836583%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3651736579%_))))
                                                (if (gx#identifier?
                                                     _%hd3651836583%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g39773_|
                                                         _%hd3651836583%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3651936586%_)
                                                            (let ((_%e3652036589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3651936586%_)))
                      (let ((_%tl3652236596%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3652036589%_)))
                            (_%hd3652136593%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3652036589%_))))
                        (if (gx#stx-null? _%tl3652236596%_)
                            (_%__kont3941839419%_
                             _%hd3652136593%_
                             _%hd3649836673%_
                             _%hd3639137074%_
                             _%hd3638837064%_)
                            (let () (declare (not safe)) (_%g3638236528%_)))))
                    (let () (declare (not safe)) (_%g3638236528%_)))
                (let () (declare (not safe)) (_%g3638236528%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3638236528%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3638236528%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3638236528%_)))
                            (let () (declare (not safe)) (_%g3638236528%_))))
                      (let () (declare (not safe)) (_%g3638236528%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3639237077%_)
                                                  (_%__kont3941239413%_
                                                   _%hd3639137074%_
                                                   _%hd3638837064%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3638236528%_)))))))
                                  (if (gx#stx-pair? _%tl3639237077%_)
                                      (let ((_%e3645836838%_
                                             (gx#syntax-e _%tl3639237077%_)))
                                        (let ((_%tl3646036845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3645836838%_)))
                                              (_%hd3645936842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3645836838%_))))
                                          (if (gx#stx-null? _%tl3646036845%_)
                                              (_%__kont3941039411%_
                                               _%hd3645936842%_
                                               _%hd3639137074%_)
                                              (if (gx#identifier?
                                                   _%hd3645936842%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39772_|
                                                       _%hd3645936842%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3646036845%_)
                                                          (let ((_%e3648136738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3646036845%_)))
                    (let ((_%tl3648336745%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3648136738%_)))
                          (_%hd3648236742%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3648136738%_))))
                      (if (gx#stx-null? _%tl3648336745%_)
                          (_%__kont3941439415%_
                           _%hd3648236742%_
                           _%hd3639137074%_
                           _%hd3638837064%_)
                          (let () (declare (not safe)) (_%g3638236528%_)))))
                  (let () (declare (not safe)) (_%g3638236528%_)))
              (let () (declare (not safe)) (_%g3638236528%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3645936842%_)
                                                      (let ((_%e3649636665%_
                                                             (gx#stx-e
                                                              _%hd3645936842%_)))
                                                        (if (equal? _%e3649636665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3646036845%_)
                        (let ((_%e3649736669%_ (gx#syntax-e _%tl3646036845%_)))
                          (let ((_%tl3649936676%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3649736669%_)))
                                (_%hd3649836673%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3649736669%_))))
                            (if (gx#stx-null? _%tl3649936676%_)
                                (_%__kont3941639417%_
                                 _%hd3649836673%_
                                 _%hd3639137074%_
                                 _%hd3638837064%_)
                                (if (gx#stx-pair? _%tl3649936676%_)
                                    (let ((_%e3651736579%_
                                           (gx#syntax-e _%tl3649936676%_)))
                                      (let ((_%tl3651936586%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3651736579%_)))
                                            (_%hd3651836583%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3651736579%_))))
                                        (if (gx#identifier? _%hd3651836583%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39773_|
                                                 _%hd3651836583%_)
                                                (if (gx#stx-pair?
                                                     _%tl3651936586%_)
                                                    (let ((_%e3652036589%_
                                                           (gx#syntax-e
                                                            _%tl3651936586%_)))
                                                      (let ((_%tl3652236596%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3652036589%_)))
                    (_%hd3652136593%_
                     (let () (declare (not safe)) (##car _%e3652036589%_))))
                (if (gx#stx-null? _%tl3652236596%_)
                    (_%__kont3941839419%_
                     _%hd3652136593%_
                     _%hd3649836673%_
                     _%hd3639137074%_
                     _%hd3638837064%_)
                    (let () (declare (not safe)) (_%g3638236528%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3638236528%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3638236528%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3638236528%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3638236528%_))))))
                        (let () (declare (not safe)) (_%g3638236528%_)))
                    (let () (declare (not safe)) (_%g3638236528%_))))
              (let () (declare (not safe)) (_%g3638236528%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3639237077%_)
                                          (_%__kont3941239413%_
                                           _%hd3639137074%_
                                           _%hd3638837064%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3638236528%_)))))))
                          (let () (declare (not safe)) (_%g3638236528%_)))))
                  (let () (declare (not safe)) (_%g3638236528%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37167%_)
        (let* ((_%__stx3966539666%_ _%$stx37167%_)
               (_%g3717237206%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3966539666%_))))
          (let ((_%__kont3966839669%_
                 (lambda (_%g3717437310%_ _%g3717537312%_ _%g3717637313%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%g3717637313%_
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
                                       (cons _%g3717537312%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%g3717437310%_ '()))
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
                (_%__kont3967039671%_
                 (lambda (_%g3718937243%_ _%g3719037245%_ _%g3719137246%_)
                   (cons _%g3719137246%_
                         (cons _%g3719037245%_
                               (cons _%g3718937243%_
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
            (let ((_%__match3969839699%_
                   (lambda (_%e3717737270%_
                            _%hd3717837274%_
                            _%tl3717937277%_
                            _%e3718037280%_
                            _%hd3718137284%_
                            _%tl3718237287%_
                            _%e3718337290%_
                            _%hd3718437294%_
                            _%tl3718537297%_
                            _%e3718637300%_
                            _%hd3718737304%_
                            _%tl3718837307%_)
                     (let ((_%g3717437310%_ _%hd3718737304%_)
                           (_%g3717537312%_ _%hd3718437294%_)
                           (_%g3717637313%_ _%hd3718137284%_))
                       (if (gx#identifier? _%g3717637313%_)
                           (_%__kont3966839669%_
                            _%g3717437310%_
                            _%g3717537312%_
                            _%g3717637313%_)
                           (let () (declare (not safe)) (_%g3717237206%_)))))))
              (if (gx#stx-pair? _%__stx3966539666%_)
                  (let ((_%e3717737270%_ (gx#syntax-e _%__stx3966539666%_)))
                    (let ((_%tl3717937277%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3717737270%_)))
                          (_%hd3717837274%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3717737270%_))))
                      (if (gx#stx-pair? _%tl3717937277%_)
                          (let ((_%e3718037280%_
                                 (gx#syntax-e _%tl3717937277%_)))
                            (let ((_%tl3718237287%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3718037280%_)))
                                  (_%hd3718137284%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3718037280%_))))
                              (if (gx#stx-pair? _%tl3718237287%_)
                                  (let ((_%e3718337290%_
                                         (gx#syntax-e _%tl3718237287%_)))
                                    (let ((_%tl3718537297%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3718337290%_)))
                                          (_%hd3718437294%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3718337290%_))))
                                      (if (gx#stx-pair? _%tl3718537297%_)
                                          (let ((_%e3718637300%_
                                                 (gx#syntax-e
                                                  _%tl3718537297%_)))
                                            (let ((_%tl3718837307%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3718637300%_)))
                                                  (_%hd3718737304%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3718637300%_))))
                                              (if (gx#stx-null?
                                                   _%tl3718837307%_)
                                                  (_%__match3969839699%_
                                                   _%e3717737270%_
                                                   _%hd3717837274%_
                                                   _%tl3717937277%_
                                                   _%e3718037280%_
                                                   _%hd3718137284%_
                                                   _%tl3718237287%_
                                                   _%e3718337290%_
                                                   _%hd3718437294%_
                                                   _%tl3718537297%_
                                                   _%e3718637300%_
                                                   _%hd3718737304%_
                                                   _%tl3718837307%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3717237206%_)))))
                                          (if (gx#stx-null? _%tl3718537297%_)
                                              (_%__kont3967039671%_
                                               _%hd3718437294%_
                                               _%hd3718137284%_
                                               _%hd3717837274%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3717237206%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3717237206%_)))))
                          (let () (declare (not safe)) (_%g3717237206%_)))))
                  (let () (declare (not safe)) (_%g3717237206%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx37335%_)
        (let* ((_%g3733937354%_
                (lambda (_%g3734037350%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3734037350%_)))
               (_%g3733837397%_
                (lambda (_%g3734037358%_)
                  (if (gx#stx-pair? _%g3734037358%_)
                      (let ((_%e3734337361%_ (gx#syntax-e _%g3734037358%_)))
                        (let ((_%hd3734437365%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3734337361%_)))
                              (_%tl3734537368%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3734337361%_))))
                          (if (gx#stx-pair? _%tl3734537368%_)
                              (let ((_%e3734637371%_
                                     (gx#syntax-e _%tl3734537368%_)))
                                (let ((_%hd3734737375%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3734637371%_)))
                                      (_%tl3734837378%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3734637371%_))))
                                  ((lambda (_%g3734137381%_ _%g3734237383%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%g3734237383%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%g3734137381%_)
                                                       '()))))
                                   _%tl3734837378%_
                                   _%hd3734737375%_)))
                              (_%g3733937354%_ _%g3734037358%_))))
                      (_%g3733937354%_ _%g3734037358%_)))))
          (_%g3733837397%_ _%$stx37335%_))))))
