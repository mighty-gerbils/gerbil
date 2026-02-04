(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g39948_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39949_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39950_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39951_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39952_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39953_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39954_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39955_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39956_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39957_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39958_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39959_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39960_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39961_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39962_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39975_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39983_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39984_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39985_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39990_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39991_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39992_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39993_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39994_|
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
      (lambda _%$args35269%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35269%_)))
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
      (lambda (_%stx35266%_)
        (if (gx#identifier? _%stx35266%_)
            (let ((__tmp39947 (gx#syntax-local-value _%stx35266%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp39947))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx33568%_ _%match-stx33570%_)
        (letrec ((_%parse133572%_
                  (lambda (_%hd33931%_)
                    (let* ((_%__stx3773537736%_ _%hd33931%_)
                           (_%g3395734099%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3773537736%_))))
                      (let ((_%__kont3773837739%_
                             (lambda (_%g3395935029%_ _%g3396035031%_)
                               (let* ((_%__stx3765537656%_ _%g3395935029%_)
                                      (_%g3504835081%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3765537656%_))))
                                 (let ((_%__kont3765837659%_
                                        (lambda ()
                                          (cons '?:
                                                (cons _%g3396035031%_ '()))))
                                       (_%__kont3766037661%_
                                        (lambda (_%g3505035222%_)
                                          (cons '?:
                                                (cons _%g3396035031%_
                                                      (cons (_%parse133572%_
                                                             _%g3505035222%_)
                                                            '())))))
                                       (_%__kont3766237663%_
                                        (lambda (_%g3505435192%_)
                                          (cons '?:
                                                (cons _%g3396035031%_
                                                      (cons '=>:
                                                            (cons (_%parse133572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g3505435192%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3766437665%_
                                        (lambda (_%g3506135143%_
                                                 _%g3506235145%_)
                                          (cons '?:
                                                (cons _%g3396035031%_
                                                      (cons '::
                                                            (cons _%g3506235145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse133572%_ _%g3506135143%_)
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3766637667%_
                                        (lambda ()
                                          (_%parse-error33579%_ _%hd33931%_))))
                                   (let ((_%g3504435233%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3765537656%_)
                                                (let ((_%e3505135212%_
                                                       (gx#syntax-e
                                                        _%__stx3765537656%_)))
                                                  (let ((_%tl3505335219%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3505135212%_)))
                                                        (_%hd3505235216%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3505135212%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3505335219%_)
                                                        (_%__kont3766037661%_
                                                         _%hd3505235216%_)
                                                        (if (gx#identifier?
                                                             _%hd3505235216%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39948_|
                         _%hd3505235216%_)
                        (if (gx#stx-pair? _%tl3505335219%_)
                            (let ((_%e3505835182%_
                                   (gx#syntax-e _%tl3505335219%_)))
                              (let ((_%tl3506035189%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3505835182%_)))
                                    (_%hd3505935186%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3505835182%_))))
                                (if (gx#stx-null? _%tl3506035189%_)
                                    (_%__kont3766237663%_ _%hd3505935186%_)
                                    (_%__kont3766637667%_))))
                            (_%__kont3766637667%_))
                        (_%__kont3766637667%_))
                    (if (gx#stx-datum? _%hd3505235216%_)
                        (let ((_%e3506635109%_ (gx#stx-e _%hd3505235216%_)))
                          (if (equal? _%e3506635109%_ '::)
                              (if (gx#stx-pair? _%tl3505335219%_)
                                  (let ((_%e3506735113%_
                                         (gx#syntax-e _%tl3505335219%_)))
                                    (let ((_%tl3506935120%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3506735113%_)))
                                          (_%hd3506835117%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3506735113%_))))
                                      (if (gx#stx-pair? _%tl3506935120%_)
                                          (let ((_%e3507035123%_
                                                 (gx#syntax-e
                                                  _%tl3506935120%_)))
                                            (let ((_%tl3507235130%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3507035123%_)))
                                                  (_%hd3507135127%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3507035123%_))))
                                              (if (gx#identifier?
                                                   _%hd3507135127%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39949_|
                                                       _%hd3507135127%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3507235130%_)
                                                          (let ((_%e3507335133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3507235130%_)))
                    (let ((_%tl3507535140%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3507335133%_)))
                          (_%hd3507435137%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3507335133%_))))
                      (if (gx#stx-null? _%tl3507535140%_)
                          (_%__kont3766437665%_
                           _%hd3507435137%_
                           _%hd3506835117%_)
                          (_%__kont3766637667%_))))
                  (_%__kont3766637667%_))
              (_%__kont3766637667%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3766637667%_))))
                                          (_%__kont3766637667%_))))
                                  (_%__kont3766637667%_))
                              (_%__kont3766637667%_)))
                        (_%__kont3766637667%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3766637667%_)))))
                                     (if (gx#stx-null? _%__stx3765537656%_)
                                         (_%__kont3765837659%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3504435233%_))))))))
                            (_%__kont3774037741%_
                             (lambda (_%g3396734934%_)
                               (let* ((_%__stx3763737638%_ _%g3396734934%_)
                                      (_%g3494634957%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3763737638%_))))
                                 (let ((_%__kont3764037641%_
                                        (lambda (_%g3494834985%_)
                                          (_%parse133572%_ _%g3494834985%_)))
                                       (_%__kont3764237643%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse133572%_
                                                 _%g3396734934%_)))))
                                   (if (gx#stx-pair? _%__stx3763737638%_)
                                       (let ((_%e3494934975%_
                                              (gx#syntax-e
                                               _%__stx3763737638%_)))
                                         (let ((_%tl3495134982%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3494934975%_)))
                                               (_%hd3495034979%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3494934975%_))))
                                           (if (gx#stx-null? _%tl3495134982%_)
                                               (_%__kont3764037641%_
                                                _%hd3495034979%_)
                                               (_%__kont3764237643%_))))
                                       (_%__kont3764237643%_))))))
                            (_%__kont3774237743%_
                             (lambda (_%g3397134849%_)
                               (let* ((_%__stx3761937620%_ _%g3397134849%_)
                                      (_%g3486134872%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3761937620%_))))
                                 (let ((_%__kont3762237623%_
                                        (lambda (_%g3486334900%_)
                                          (_%parse133572%_ _%g3486334900%_)))
                                       (_%__kont3762437625%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse133572%_
                                                 _%g3397134849%_)))))
                                   (if (gx#stx-pair? _%__stx3761937620%_)
                                       (let ((_%e3486434890%_
                                              (gx#syntax-e
                                               _%__stx3761937620%_)))
                                         (let ((_%tl3486634897%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3486434890%_)))
                                               (_%hd3486534894%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3486434890%_))))
                                           (if (gx#stx-null? _%tl3486634897%_)
                                               (_%__kont3762237623%_
                                                _%hd3486534894%_)
                                               (_%__kont3762437625%_))))
                                       (_%__kont3762437625%_))))))
                            (_%__kont3774437745%_
                             (lambda (_%g3397534819%_)
                               (cons 'not:
                                     (cons (_%parse133572%_ _%g3397534819%_)
                                           '()))))
                            (_%__kont3774637747%_
                             (lambda (_%g3398234775%_ _%g3398334777%_)
                               (cons 'cons:
                                     (cons (_%parse133572%_ _%g3398334777%_)
                                           (cons (_%parse133572%_
                                                  _%g3398234775%_)
                                                 '())))))
                            (_%__kont3774837749%_
                             (lambda (_%g3399334719%_
                                      _%g3399434721%_
                                      _%g3399534722%_)
                               (if (gx#stx-null? _%g3399334719%_)
                                   (cons 'cons:
                                         (cons (_%parse133572%_
                                                _%g3399534722%_)
                                               (cons (_%parse133572%_
                                                      _%g3399434721%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse133572%_
                                                _%g3399534722%_)
                                               (cons (_%parse133572%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%g3399434721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g3399334719%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3775037751%_
                             (lambda (_%g3400534671%_)
                               (_%parse-list33574%_ _%g3400534671%_)))
                            (_%__kont3775237753%_
                             (lambda (_%g3400934641%_)
                               (cons 'box:
                                     (cons (_%parse133572%_ _%g3400934641%_)
                                           '()))))
                            (_%__kont3775437755%_
                             (lambda (_%g3401634604%_)
                               (cons 'box:
                                     (cons (_%parse133572%_ _%g3401634604%_)
                                           '()))))
                            (_%__kont3775637757%_
                             (lambda (_%g3401834580%_)
                               (_%parse133572%_ _%g3401834580%_)))
                            (_%__kont3775837759%_
                             (lambda (_%g3402534542%_)
                               (cons 'values:
                                     (cons (_%parse-vector33575%_
                                            _%g3402534542%_)
                                           '()))))
                            (_%__kont3776037761%_
                             (lambda (_%g3402934514%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33575%_
                                            _%g3402934514%_)
                                           '()))))
                            (_%__kont3776237763%_
                             (lambda (_%g3403334475%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33575%_
                                            (foldr (lambda (_%g3448834491%_
                                                            _%g3448934494%_)
                                                     (cons _%g3448834491%_
                                                           _%g3448934494%_))
                                                   '()
                                                   _%g3403334475%_))
                                           '()))))
                            (_%__kont3776637767%_
                             (lambda (_%g3404434423%_ _%g3404534425%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value
                                            _%g3404534425%_)
                                           (cons (_%parse-vector33575%_
                                                  _%g3404434423%_)
                                                 '())))))
                            (_%__kont3776837769%_
                             (lambda (_%g3404934393%_ _%g3405034395%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value
                                            _%g3405034395%_)
                                           (cons (_%parse-class-body33577%_
                                                  _%g3404934393%_)
                                                 '())))))
                            (_%__kont3777037771%_
                             (lambda (_%g3405434353%_ _%g3405534355%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%g3405534355%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%g3405434353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3777237773%_
                             (lambda (_%g3406234313%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g3406234313%_) '()))))
                            (_%__kont3777437775%_
                             (lambda (_%g3406934273%_)
                               (_%parse-qq33578%_ _%g3406934273%_)))
                            (_%__kont3777637777%_
                             (lambda (_%g3407634229%_ _%g3407734231%_)
                               (cons 'apply:
                                     (cons _%g3407734231%_
                                           (cons (_%parse133572%_
                                                  _%g3407634229%_)
                                                 '())))))
                            (_%__kont3777837779%_
                             (lambda (_%g3408734177%_)
                               (_%parse133572%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%g3408734177%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd33931%_)
                                  (let ((_%$e34188%_
                                         (gx#stx-source _%hd33931%_)))
                                    (if _%$e34188%_
                                        _%$e34188%_
                                        (gx#stx-source _%stx33568%_))))))))
                            (_%__kont3778037781%_
                             (lambda (_%g3409134151%_) (cons 'any: '())))
                            (_%__kont3778237783%_
                             (lambda (_%g3409234135%_)
                               (cons 'var: (cons _%g3409234135%_ '()))))
                            (_%__kont3778437785%_
                             (lambda (_%g3409334117%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g3409334117%_) '()))))
                            (_%__kont3778637787%_
                             (lambda () (_%parse-error33579%_ _%hd33931%_))))
                        (let* ((_%g3395534128%_
                                (lambda ()
                                  (let ((_%g3409334117%_ _%__stx3773537736%_))
                                    (if (gx#stx-datum? _%g3409334117%_)
                                        (_%__kont3778437785%_ _%g3409334117%_)
                                        (_%__kont3778637787%_)))))
                               (_%g3395434144%_
                                (lambda ()
                                  (let ((_%g3409234135%_ _%__stx3773537736%_))
                                    (if (and (gx#identifier? _%g3409234135%_)
                                             (not (gx#ellipsis?
                                                   _%g3409234135%_)))
                                        (_%__kont3778237783%_ _%g3409234135%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3395534128%_))))))
                               (_%g3395334160%_
                                (lambda ()
                                  (let ((_%g3409134151%_ _%__stx3773537736%_))
                                    (if (gx#underscore? _%g3409134151%_)
                                        (_%__kont3778037781%_ _%g3409134151%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3395434144%_))))))
                               (_%__match3806238063%_
                                (lambda (_%e3408834167%_
                                         _%hd3408934171%_
                                         _%tl3409034174%_)
                                  (let ((_%g3408734177%_ _%hd3408934171%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%g3408734177%_)
                                        (_%__kont3777837779%_ _%g3408734177%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3395334160%_))))))
                               (_%__match3799637997%_
                                (lambda (_%e3405634333%_
                                         _%hd3405734337%_
                                         _%tl3405834340%_
                                         _%e3405934343%_
                                         _%hd3406034347%_
                                         _%tl3406134350%_)
                                  (let ((_%g3405434353%_ _%hd3406034347%_)
                                        (_%g3405534355%_ _%hd3405734337%_))
                                    (if (and (gx#identifier? _%g3405534355%_)
                                             (or (gx#free-identifier=?
                                                  _%g3405534355%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%g3405534355%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%g3405534355%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3777037771%_
                                         _%g3405434353%_
                                         _%g3405534355%_)
                                        (if (gx#identifier? _%hd3405734337%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39950_|
                                                 _%hd3405734337%_)
                                                (_%__kont3777237773%_
                                                 _%hd3406034347%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g39951_|
                                                     _%hd3405734337%_)
                                                    (_%__kont3777437775%_
                                                     _%hd3406034347%_)
                                                    (_%__match3806238063%_
                                                     _%e3405634333%_
                                                     _%hd3405734337%_
                                                     _%tl3405834340%_)))
                                            (_%__match3806238063%_
                                             _%e3405634333%_
                                             _%hd3405734337%_
                                             _%tl3405834340%_))))))
                               (_%__match3798237983%_
                                (lambda (_%e3405134383%_
                                         _%hd3405234387%_
                                         _%tl3405334390%_)
                                  (let ((_%g3404934393%_ _%tl3405334390%_)
                                        (_%g3405034395%_ _%hd3405234387%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%g3405034395%_))
                                        (_%__kont3776837769%_
                                         _%g3404934393%_
                                         _%g3405034395%_)
                                        (if (gx#stx-pair? _%tl3405334390%_)
                                            (let ((_%e3405934343%_
                                                   (gx#syntax-e
                                                    _%tl3405334390%_)))
                                              (let ((_%tl3406134350%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3405934343%_)))
                                                    (_%hd3406034347%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3405934343%_))))
                                                (if (gx#stx-null?
                                                     _%tl3406134350%_)
                                                    (_%__match3799637997%_
                                                     _%e3405134383%_
                                                     _%hd3405234387%_
                                                     _%tl3405334390%_
                                                     _%e3405934343%_
                                                     _%hd3406034347%_
                                                     _%tl3406134350%_)
                                                    (if (gx#identifier?
                                                         _%hd3405234387%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g39950_|
                                                             _%hd3405234387%_)
                                                            (_%__match3806238063%_
                                                             _%e3405134383%_
                                                             _%hd3405234387%_
                                                             _%tl3405334390%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39951_|
                         _%hd3405234387%_)
                        (_%__match3806238063%_
                         _%e3405134383%_
                         _%hd3405234387%_
                         _%tl3405334390%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39952_|
                             _%hd3405234387%_)
                            (if (gx#stx-pair? _%tl3406134350%_)
                                (let ((_%e3408434219%_
                                       (gx#syntax-e _%tl3406134350%_)))
                                  (let ((_%tl3408634226%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3408434219%_)))
                                        (_%hd3408534223%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3408434219%_))))
                                    (if (gx#stx-null? _%tl3408634226%_)
                                        (_%__kont3777637777%_
                                         _%hd3408534223%_
                                         _%hd3406034347%_)
                                        (_%__match3806238063%_
                                         _%e3405134383%_
                                         _%hd3405234387%_
                                         _%tl3405334390%_))))
                                (_%__match3806238063%_
                                 _%e3405134383%_
                                 _%hd3405234387%_
                                 _%tl3405334390%_))
                            (_%__match3806238063%_
                             _%e3405134383%_
                             _%hd3405234387%_
                             _%tl3405334390%_))))
                (_%__match3806238063%_
                 _%e3405134383%_
                 _%hd3405234387%_
                 _%tl3405334390%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3806238063%_
                                             _%e3405134383%_
                                             _%hd3405234387%_
                                             _%tl3405334390%_))))))
                               (_%__match3797637977%_
                                (lambda (_%e3404634413%_
                                         _%hd3404734417%_
                                         _%tl3404834420%_)
                                  (let ((_%g3404434423%_ _%tl3404834420%_)
                                        (_%g3404534425%_ _%hd3404734417%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%g3404534425%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3776637767%_
                                         _%g3404434423%_
                                         _%g3404534425%_)
                                        (_%__match3798237983%_
                                         _%e3404634413%_
                                         _%hd3404734417%_
                                         _%tl3404834420%_)))))
                               (_%__match3797037971%_
                                (lambda (_%e3403434443%_
                                         _%__splice3776437765%_
                                         _%target3403534447%_
                                         _%tl3403734450%_)
                                  (letrec ((_%loop3403834453%_
                                            (lambda (_%hd3403634457%_
                                                     _%body3404234460%_)
                                              (if (gx#stx-pair?
                                                   _%hd3403634457%_)
                                                  (let ((_%e3403934462%_
                                                         (gx#syntax-e
                                                          _%hd3403634457%_)))
                                                    (let ((_%lp-tl3404134469%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3403934462%_)))
                                                          (_%lp-hd3404034466%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3403934462%_))))
                                                      (_%loop3403834453%_
                                                       _%lp-tl3404134469%_
                                                       (cons _%lp-hd3404034466%_
                                                             _%body3404234460%_))))
                                                  (let ((_%body3404334472%_
                                                         (reverse _%body3404234460%_)))
                                                    (_%__kont3776237763%_
                                                     _%body3404334472%_))))))
                                    (_%loop3403834453%_
                                     _%target3403534447%_
                                     '()))))
                               (_%g3394534497%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3773537736%_)
                                      (let ((_%e3403434443%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3773537736%_))))
                                        (if (gx#stx-pair/null? _%e3403434443%_)
                                            (let ((_%__splice3776437765%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e3403434443%_
                                                    '0)))
                                              (let ((_%tl3403734450%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3776437765%_
                                                        '1)))
                                                    (_%target3403534447%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3776437765%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3403734450%_)
                                                    (_%__match3797037971%_
                                                     _%e3403434443%_
                                                     _%__splice3776437765%_
                                                     _%target3403534447%_
                                                     _%tl3403734450%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3395334160%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3395334160%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3395334160%_)))))
                               (_%g3394134614%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3773537736%_)
                                      (let ((_%e3401734600%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3773537736%_))))
                                        (_%__kont3775437755%_ _%e3401734600%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3394534497%_)))))
                               (_%__match3782437825%_
                                (lambda (_%e3397234839%_
                                         _%hd3397334843%_
                                         _%tl3397434846%_)
                                  (let ((_%g3397134849%_ _%tl3397434846%_))
                                    (if (gx#stx-list? _%g3397134849%_)
                                        (_%__kont3774237743%_ _%g3397134849%_)
                                        (_%__match3797637977%_
                                         _%e3397234839%_
                                         _%hd3397334843%_
                                         _%tl3397434846%_)))))
                               (_%__match3781437815%_
                                (lambda (_%e3396834924%_
                                         _%hd3396934928%_
                                         _%tl3397034931%_)
                                  (let ((_%g3396734934%_ _%tl3397034931%_))
                                    (if (gx#stx-list? _%g3396734934%_)
                                        (_%__kont3774037741%_ _%g3396734934%_)
                                        (_%__match3797637977%_
                                         _%e3396834924%_
                                         _%hd3396934928%_
                                         _%tl3397034931%_))))))
                          (if (gx#stx-pair? _%__stx3773537736%_)
                              (let ((_%e3396135009%_
                                     (gx#syntax-e _%__stx3773537736%_)))
                                (let ((_%tl3396335016%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3396135009%_)))
                                      (_%hd3396235013%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3396135009%_))))
                                  (if (gx#identifier? _%hd3396235013%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39953_|
                                           _%hd3396235013%_)
                                          (if (gx#stx-pair? _%tl3396335016%_)
                                              (let ((_%e3396435019%_
                                                     (gx#syntax-e
                                                      _%tl3396335016%_)))
                                                (let ((_%tl3396635026%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3396435019%_)))
                                                      (_%hd3396535023%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3396435019%_))))
                                                  (_%__kont3773837739%_
                                                   _%tl3396635026%_
                                                   _%hd3396535023%_)))
                                              (_%__match3797637977%_
                                               _%e3396135009%_
                                               _%hd3396235013%_
                                               _%tl3396335016%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39954_|
                                               _%hd3396235013%_)
                                              (_%__match3781437815%_
                                               _%e3396135009%_
                                               _%hd3396235013%_
                                               _%tl3396335016%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39955_|
                                                   _%hd3396235013%_)
                                                  (_%__match3782437825%_
                                                   _%e3396135009%_
                                                   _%hd3396235013%_
                                                   _%tl3396335016%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39956_|
                                                       _%hd3396235013%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3396335016%_)
                                                          (let ((_%e3397934809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3396335016%_)))
                    (let ((_%tl3398134816%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3397934809%_)))
                          (_%hd3398034813%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3397934809%_))))
                      (if (gx#stx-null? _%tl3398134816%_)
                          (_%__kont3774437745%_ _%hd3398034813%_)
                          (_%__match3797637977%_
                           _%e3396135009%_
                           _%hd3396235013%_
                           _%tl3396335016%_))))
                  (_%__match3797637977%_
                   _%e3396135009%_
                   _%hd3396235013%_
                   _%tl3396335016%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g39957_|
                   _%hd3396235013%_)
                  (if (gx#stx-pair? _%tl3396335016%_)
                      (let ((_%e3398734755%_ (gx#syntax-e _%tl3396335016%_)))
                        (let ((_%tl3398934762%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3398734755%_)))
                              (_%hd3398834759%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3398734755%_))))
                          (if (gx#stx-pair? _%tl3398934762%_)
                              (let ((_%e3399034765%_
                                     (gx#syntax-e _%tl3398934762%_)))
                                (let ((_%tl3399234772%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3399034765%_)))
                                      (_%hd3399134769%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3399034765%_))))
                                  (if (gx#stx-null? _%tl3399234772%_)
                                      (_%__kont3774637747%_
                                       _%hd3399134769%_
                                       _%hd3398834759%_)
                                      (_%__match3797637977%_
                                       _%e3396135009%_
                                       _%hd3396235013%_
                                       _%tl3396335016%_))))
                              (_%__match3797637977%_
                               _%e3396135009%_
                               _%hd3396235013%_
                               _%tl3396335016%_))))
                      (_%__match3797637977%_
                       _%e3396135009%_
                       _%hd3396235013%_
                       _%tl3396335016%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g39958_|
                       _%hd3396235013%_)
                      (if (gx#stx-pair? _%tl3396335016%_)
                          (let ((_%e3399934699%_
                                 (gx#syntax-e _%tl3396335016%_)))
                            (let ((_%tl3400134706%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3399934699%_)))
                                  (_%hd3400034703%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3399934699%_))))
                              (if (gx#stx-pair? _%tl3400134706%_)
                                  (let ((_%e3400234709%_
                                         (gx#syntax-e _%tl3400134706%_)))
                                    (let ((_%tl3400434716%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3400234709%_)))
                                          (_%hd3400334713%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3400234709%_))))
                                      (_%__kont3774837749%_
                                       _%tl3400434716%_
                                       _%hd3400334713%_
                                       _%hd3400034703%_)))
                                  (_%__match3797637977%_
                                   _%e3396135009%_
                                   _%hd3396235013%_
                                   _%tl3396335016%_))))
                          (_%__match3797637977%_
                           _%e3396135009%_
                           _%hd3396235013%_
                           _%tl3396335016%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g39959_|
                           _%hd3396235013%_)
                          (_%__kont3775037751%_ _%tl3396335016%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39960_|
                               _%hd3396235013%_)
                              (if (gx#stx-pair? _%tl3396335016%_)
                                  (let ((_%e3401334631%_
                                         (gx#syntax-e _%tl3396335016%_)))
                                    (let ((_%tl3401534638%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3401334631%_)))
                                          (_%hd3401434635%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3401334631%_))))
                                      (if (gx#stx-null? _%tl3401534638%_)
                                          (_%__kont3775237753%_
                                           _%hd3401434635%_)
                                          (_%__match3797637977%_
                                           _%e3396135009%_
                                           _%hd3396235013%_
                                           _%tl3396335016%_))))
                                  (_%__match3797637977%_
                                   _%e3396135009%_
                                   _%hd3396235013%_
                                   _%tl3396335016%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39961_|
                                   _%hd3396235013%_)
                                  (if (gx#stx-pair? _%tl3396335016%_)
                                      (let ((_%e3402234570%_
                                             (gx#syntax-e _%tl3396335016%_)))
                                        (let ((_%tl3402434577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3402234570%_)))
                                              (_%hd3402334574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3402234570%_))))
                                          (if (gx#stx-null? _%tl3402434577%_)
                                              (_%__kont3775637757%_
                                               _%hd3402334574%_)
                                              (_%__kont3775837759%_
                                               _%tl3396335016%_))))
                                      (_%__kont3775837759%_ _%tl3396335016%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39962_|
                                       _%hd3396235013%_)
                                      (_%__kont3776037761%_ _%tl3396335016%_)
                                      (_%__match3797637977%_
                                       _%e3396135009%_
                                       _%hd3396235013%_
                                       _%tl3396335016%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3797637977%_
                                       _%e3396135009%_
                                       _%hd3396235013%_
                                       _%tl3396335016%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3394134614%_))))))))
                 (_%parse-list33574%_
                  (lambda (_%body33754%_)
                    (let* ((_%__stx3806538066%_ _%body33754%_)
                           (_%g3376033789%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3806538066%_))))
                      (let ((_%__kont3806838069%_
                             (lambda (_%g3376233913%_)
                               (_%parse133572%_ _%g3376233913%_)))
                            (_%__kont3807038071%_
                             (lambda (_%g3377033865%_
                                      _%g3377133867%_
                                      _%g3377233868%_)
                               (cons 'splice:
                                     (cons (_%parse133572%_ _%g3377233868%_)
                                           (cons (_%parse-list33574%_
                                                  _%g3377033865%_)
                                                 '())))))
                            (_%__kont3807238073%_
                             (lambda (_%g3377933823%_ _%g3378033825%_)
                               (cons 'cons:
                                     (cons (_%parse133572%_ _%g3378033825%_)
                                           (cons (_%parse-list33574%_
                                                  _%g3377933823%_)
                                                 '())))))
                            (_%__kont3807438075%_
                             (lambda ()
                               (if (gx#stx-null? _%body33754%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body33754%_)
                                       (_%parse-error33579%_ _%body33754%_)
                                       (_%parse133572%_ _%body33754%_))))))
                        (let* ((_%__match3811438115%_
                                (lambda (_%e3378133813%_
                                         _%hd3378233817%_
                                         _%tl3378333820%_)
                                  (let ((_%g3377933823%_ _%tl3378333820%_)
                                        (_%g3378033825%_ _%hd3378233817%_))
                                    (if (gx#ellipsis? _%g3378033825%_)
                                        (_%__kont3807438075%_)
                                        (_%__kont3807238073%_
                                         _%g3377933823%_
                                         _%g3378033825%_)))))
                               (_%__match3810838109%_
                                (lambda (_%e3377333845%_
                                         _%hd3377433849%_
                                         _%tl3377533852%_
                                         _%e3377633855%_
                                         _%hd3377733859%_
                                         _%tl3377833862%_)
                                  (let ((_%g3377033865%_ _%tl3377833862%_)
                                        (_%g3377133867%_ _%hd3377733859%_)
                                        (_%g3377233868%_ _%hd3377433849%_))
                                    (if (gx#ellipsis? _%g3377133867%_)
                                        (_%__kont3807038071%_
                                         _%g3377033865%_
                                         _%g3377133867%_
                                         _%g3377233868%_)
                                        (_%__match3811438115%_
                                         _%e3377333845%_
                                         _%hd3377433849%_
                                         _%tl3377533852%_))))))
                          (if (gx#stx-pair? _%__stx3806538066%_)
                              (let ((_%e3376333889%_
                                     (gx#syntax-e _%__stx3806538066%_)))
                                (let ((_%tl3376533896%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3376333889%_)))
                                      (_%hd3376433893%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3376333889%_))))
                                  (if (gx#stx-datum? _%hd3376433893%_)
                                      (let ((_%e3376633899%_
                                             (gx#stx-e _%hd3376433893%_)))
                                        (if (equal? _%e3376633899%_ '::)
                                            (if (gx#stx-pair? _%tl3376533896%_)
                                                (let ((_%e3376733903%_
                                                       (gx#syntax-e
                                                        _%tl3376533896%_)))
                                                  (let ((_%tl3376933910%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3376733903%_)))
                                                        (_%hd3376833907%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3376733903%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3376933910%_)
                                                        (_%__kont3806838069%_
                                                         _%hd3376833907%_)
                                                        (_%__match3810838109%_
                                                         _%e3376333889%_
                                                         _%hd3376433893%_
                                                         _%tl3376533896%_
                                                         _%e3376733903%_
                                                         _%hd3376833907%_
                                                         _%tl3376933910%_))))
                                                (_%__match3811438115%_
                                                 _%e3376333889%_
                                                 _%hd3376433893%_
                                                 _%tl3376533896%_))
                                            (if (gx#stx-pair? _%tl3376533896%_)
                                                (let ((_%e3377633855%_
                                                       (gx#syntax-e
                                                        _%tl3376533896%_)))
                                                  (let ((_%tl3377833862%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3377633855%_)))
                                                        (_%hd3377733859%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3377633855%_))))
                                                    (_%__match3810838109%_
                                                     _%e3376333889%_
                                                     _%hd3376433893%_
                                                     _%tl3376533896%_
                                                     _%e3377633855%_
                                                     _%hd3377733859%_
                                                     _%tl3377833862%_)))
                                                (_%__match3811438115%_
                                                 _%e3376333889%_
                                                 _%hd3376433893%_
                                                 _%tl3376533896%_))))
                                      (if (gx#stx-pair? _%tl3376533896%_)
                                          (let ((_%e3377633855%_
                                                 (gx#syntax-e
                                                  _%tl3376533896%_)))
                                            (let ((_%tl3377833862%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3377633855%_)))
                                                  (_%hd3377733859%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3377633855%_))))
                                              (_%__match3810838109%_
                                               _%e3376333889%_
                                               _%hd3376433893%_
                                               _%tl3376533896%_
                                               _%e3377633855%_
                                               _%hd3377733859%_
                                               _%tl3377833862%_)))
                                          (_%__match3811438115%_
                                           _%e3376333889%_
                                           _%hd3376433893%_
                                           _%tl3376533896%_)))))
                              (_%__kont3807438075%_)))))))
                 (_%parse-vector33575%_
                  (lambda (_%body33751%_)
                    (if (_%simple-vector?33576%_ _%body33751%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse133572%_ _%body33751%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list33574%_ _%body33751%_)
                                    '())))))
                 (_%simple-vector?33576%_
                  (lambda (_%body33688%_)
                    (let* ((_%__stx3811738118%_ _%body33688%_)
                           (_%g3369233704%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3811738118%_))))
                      (let ((_%__kont3812038121%_
                             (lambda (_%g3369433732%_ _%g3369533734%_)
                               (if (gx#ellipsis? _%g3369533734%_)
                                   '#f
                                   (_%simple-vector?33576%_ _%g3369433732%_))))
                            (_%__kont3812238123%_
                             (lambda () (gx#stx-null? _%body33688%_))))
                        (if (gx#stx-pair? _%__stx3811738118%_)
                            (let ((_%e3369633722%_
                                   (gx#syntax-e _%__stx3811738118%_)))
                              (let ((_%tl3369833729%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3369633722%_)))
                                    (_%hd3369733726%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3369633722%_))))
                                (_%__kont3812038121%_
                                 _%tl3369833729%_
                                 _%hd3369733726%_)))
                            (_%__kont3812238123%_))))))
                 (_%parse-class-body33577%_
                  (lambda (_%body33597%_)
                    (let _%recur33600%_ ((_%rest33603%_ _%body33597%_))
                      (let* ((_%__stx3813338134%_ _%rest33603%_)
                             (_%g3360733623%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3813338134%_))))
                        (let ((_%__kont3813638137%_
                               (lambda (_%g3360933661%_
                                        _%g3361033663%_
                                        _%g3361133664%_)
                                 (cons _%g3361133664%_
                                       (cons (_%parse133572%_ _%g3361033663%_)
                                             (_%recur33600%_
                                              _%g3360933661%_)))))
                              (_%__kont3813838139%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest33603%_)
                                     '()
                                     (_%parse-error33579%_ _%rest33603%_)))))
                          (let ((_%__match3815238153%_
                                 (lambda (_%e3361233641%_
                                          _%hd3361333645%_
                                          _%tl3361433648%_
                                          _%e3361533651%_
                                          _%hd3361633655%_
                                          _%tl3361733658%_)
                                   (let ((_%g3360933661%_ _%tl3361733658%_)
                                         (_%g3361033663%_ _%hd3361633655%_)
                                         (_%g3361133664%_ _%hd3361333645%_))
                                     (if (gx#stx-keyword? _%g3361133664%_)
                                         (_%__kont3813638137%_
                                          _%g3360933661%_
                                          _%g3361033663%_
                                          _%g3361133664%_)
                                         (_%__kont3813838139%_))))))
                            (if (gx#stx-pair? _%__stx3813338134%_)
                                (let ((_%e3361233641%_
                                       (gx#syntax-e _%__stx3813338134%_)))
                                  (let ((_%tl3361433648%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3361233641%_)))
                                        (_%hd3361333645%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3361233641%_))))
                                    (if (gx#stx-pair? _%tl3361433648%_)
                                        (let ((_%e3361533651%_
                                               (gx#syntax-e _%tl3361433648%_)))
                                          (let ((_%tl3361733658%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3361533651%_)))
                                                (_%hd3361633655%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3361533651%_))))
                                            (_%__match3815238153%_
                                             _%e3361233641%_
                                             _%hd3361333645%_
                                             _%tl3361433648%_
                                             _%e3361533651%_
                                             _%hd3361633655%_
                                             _%tl3361733658%_)))
                                        (_%__kont3813838139%_))))
                                (_%__kont3813838139%_))))))))
                 (_%parse-qq33578%_
                  (lambda (_%hd33584%_)
                    (let ((_%g3358633593%_
                           (lambda (_%g3358733589%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3358733589%_))))
                      (_%g3358633593%_ _%hd33584%_))))
                 (_%parse-error33579%_
                  (lambda (_%hd33581%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx33570%_
                               (cons _%match-stx33570%_
                                     (cons _%stx33568%_
                                           (cons _%hd33581%_ '())))
                               (cons _%stx33568%_ (cons _%hd33581%_ '())))))))
          (_%parse133572%_ _%stx33568%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35256%_)
        (let ((_%match-stx35259%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35256%_
           _%match-stx35259%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g39963_
        (let ((_g39964_ (let () (declare (not safe)) (##length _g39963_))))
          (cond ((let () (declare (not safe)) (##fx= _g39964_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g39963_))
                ((let () (declare (not safe)) (##fx= _g39964_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g39963_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g39963_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx33553%_)
        (let ((__tmp39965
               (lambda (_%E33556%_)
                 (with-exception-handler
                  (let ((_%E!33559%_ (current-exception-handler)))
                    (lambda (_%e33562%_)
                      (if (syntax-error? _%e33562%_)
                          (_%E33556%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!33559%_ _%e33562%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx33553%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp39965))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32288%_)
        (letrec ((_%loop32291%_
                  (lambda (_%ptree32578%_ _%vars32580%_ _%K32581%_)
                    (let* ((_%__stx3825138252%_ _%ptree32578%_)
                           (_%g3259432704%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3825138252%_))))
                      (let ((_%__kont3825438255%_
                             (lambda (_%g3259633334%_)
                               (let* ((_%__stx3817138172%_ _%g3259633334%_)
                                      (_%g3335133385%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3817138172%_))))
                                 (let ((_%__kont3817438175%_
                                        (lambda (_%g3335333534%_)
                                          (_%loop32291%_
                                           _%g3335333534%_
                                           _%vars32580%_
                                           _%K32581%_)))
                                       (_%__kont3817638177%_
                                        (lambda (_%g3335733503%_)
                                          (_%loop32291%_
                                           _%g3335733503%_
                                           _%vars32580%_
                                           _%K32581%_)))
                                       (_%__kont3817838179%_
                                        (lambda (_%g3336533451%_)
                                          (_%loop32291%_
                                           _%g3336533451%_
                                           _%vars32580%_
                                           _%K32581%_)))
                                       (_%__kont3818038181%_
                                        (lambda ()
                                          (_%K32581%_ _%vars32580%_))))
                                   (if (gx#stx-pair? _%__stx3817138172%_)
                                       (let ((_%e3335433524%_
                                              (gx#syntax-e
                                               _%__stx3817138172%_)))
                                         (let ((_%tl3335633531%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3335433524%_)))
                                               (_%hd3335533528%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3335433524%_))))
                                           (if (gx#stx-null? _%tl3335633531%_)
                                               (_%__kont3817438175%_
                                                _%hd3335533528%_)
                                               (if (gx#stx-datum?
                                                    _%hd3335533528%_)
                                                   (let ((_%e3336133489%_
                                                          (gx#stx-e
                                                           _%hd3335533528%_)))
                                                     (if (equal? _%e3336133489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3335633531%_)
                     (let ((_%e3336233493%_ (gx#syntax-e _%tl3335633531%_)))
                       (let ((_%tl3336433500%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3336233493%_)))
                             (_%hd3336333497%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3336233493%_))))
                         (if (gx#stx-null? _%tl3336433500%_)
                             (_%__kont3817638177%_ _%hd3336333497%_)
                             (_%__kont3818038181%_))))
                     (_%__kont3818038181%_))
                 (if (equal? _%e3336133489%_ '::)
                     (if (gx#stx-pair? _%tl3335633531%_)
                         (let ((_%e3337033417%_
                                (gx#syntax-e _%tl3335633531%_)))
                           (let ((_%tl3337233424%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3337033417%_)))
                                 (_%hd3337133421%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3337033417%_))))
                             (if (gx#stx-pair? _%tl3337233424%_)
                                 (let ((_%e3337333427%_
                                        (gx#syntax-e _%tl3337233424%_)))
                                   (let ((_%tl3337533434%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3337333427%_)))
                                         (_%hd3337433431%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3337333427%_))))
                                     (if (gx#stx-datum? _%hd3337433431%_)
                                         (let ((_%e3337633437%_
                                                (gx#stx-e _%hd3337433431%_)))
                                           (if (equal? _%e3337633437%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3337533434%_)
                                                   (let ((_%e3337733441%_
                                                          (gx#syntax-e
                                                           _%tl3337533434%_)))
                                                     (let ((_%tl3337933448%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3337733441%_)))
                                                           (_%hd3337833445%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3337733441%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3337933448%_)
                                                           (_%__kont3817838179%_
                                                            _%hd3337833445%_)
                                                           (_%__kont3818038181%_))))
                                                   (_%__kont3818038181%_))
                                               (_%__kont3818038181%_)))
                                         (_%__kont3818038181%_))))
                                 (_%__kont3818038181%_))))
                         (_%__kont3818038181%_))
                     (_%__kont3818038181%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3818038181%_)))))
                                       (_%__kont3818038181%_))))))
                            (_%__kont3825638257%_
                             (lambda (_%g3260433221%_ _%g3260533223%_)
                               (let* ((_%__stx3815538156%_ _%g3260433221%_)
                                      (_%g3323933251%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3815538156%_))))
                                 (let ((_%__kont3815838159%_
                                        (lambda (_%g3324133279%_
                                                 _%g3324233281%_)
                                          (_%loop32291%_
                                           _%g3324233281%_
                                           _%vars32580%_
                                           (lambda (_%g3329333295%_)
                                             (_%loop32291%_
                                              (cons _%g3260533223%_
                                                    _%g3324133279%_)
                                              _%g3329333295%_
                                              _%K32581%_)))))
                                       (_%__kont3816038161%_
                                        (lambda ()
                                          (_%K32581%_ _%vars32580%_))))
                                   (if (gx#stx-pair? _%__stx3815538156%_)
                                       (let ((_%e3324333269%_
                                              (gx#syntax-e
                                               _%__stx3815538156%_)))
                                         (let ((_%tl3324533276%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3324333269%_)))
                                               (_%hd3324433273%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3324333269%_))))
                                           (_%__kont3815838159%_
                                            _%tl3324533276%_
                                            _%hd3324433273%_)))
                                       (_%__kont3816038161%_))))))
                            (_%__kont3825838259%_
                             (lambda (_%g3260933190%_)
                               (_%loop32291%_
                                _%g3260933190%_
                                _%vars32580%_
                                _%K32581%_)))
                            (_%__kont3826038261%_
                             (lambda (_%g3261733136%_ _%g3261833138%_)
                               (_%loop32291%_
                                _%g3261833138%_
                                _%vars32580%_
                                (lambda (_%g3315333155%_)
                                  (_%loop32291%_
                                   _%g3261733136%_
                                   _%g3315333155%_
                                   _%K32581%_)))))
                            (_%__kont3826238263%_
                             (lambda (_%g3262933072%_ _%g3263033074%_)
                               (_%loop32291%_
                                _%g3263033074%_
                                _%vars32580%_
                                (lambda (_%g3308933091%_)
                                  (_%loop32291%_
                                   _%g3262933072%_
                                   _%g3308933091%_
                                   _%K32581%_)))))
                            (_%__kont3826438265%_
                             (lambda (_%g3264133017%_)
                               (_%loop32291%_
                                _%g3264133017%_
                                _%vars32580%_
                                _%K32581%_)))
                            (_%__kont3826638267%_
                             (lambda (_%g3264932967%_ _%g3265032969%_)
                               (_%loop-vector32293%_
                                _%g3264932967%_
                                _%vars32580%_
                                _%K32581%_)))
                            (_%__kont3826838269%_
                             (lambda (_%g3265732924%_)
                               (_%loop-vector32293%_
                                _%g3265732924%_
                                _%vars32580%_
                                _%K32581%_)))
                            (_%__kont3827038271%_
                             (lambda (_%g3266832867%_)
                               (_%loop-class-list32295%_
                                _%g3266832867%_
                                _%vars32580%_
                                _%K32581%_)))
                            (_%__kont3827238273%_
                             (lambda (_%g3267932808%_ _%g3268032810%_)
                               (_%loop32291%_
                                _%g3267932808%_
                                _%vars32580%_
                                _%K32581%_)))
                            (_%__kont3827438275%_
                             (lambda (_%g3269132746%_)
                               (if (find (lambda (_%g3276132763%_)
                                           (gx#bound-identifier=?
                                            _%g3276132763%_
                                            _%g3269132746%_))
                                         _%vars32580%_)
                                   (_%K32581%_ _%vars32580%_)
                                   (_%K32581%_
                                    (cons _%g3269132746%_ _%vars32580%_)))))
                            (_%__kont3827638277%_
                             (lambda () (_%K32581%_ _%vars32580%_))))
                        (let* ((_%__match3840838409%_
                                (lambda (_%e3265132947%_
                                         _%hd3265232951%_
                                         _%tl3265332954%_
                                         _%e3265432957%_
                                         _%hd3265532961%_
                                         _%tl3265632964%_)
                                  (let ((_%g3264932967%_ _%hd3265532961%_)
                                        (_%g3265032969%_ _%hd3265232951%_))
                                    (if (or (gx#stx-eq?
                                             'values:
                                             _%g3265032969%_)
                                            (gx#stx-eq?
                                             'vector:
                                             _%g3265032969%_))
                                        (_%__kont3826638267%_
                                         _%g3264932967%_
                                         _%g3265032969%_)
                                        (if (gx#stx-datum? _%hd3265232951%_)
                                            (let ((_%e3266132900%_
                                                   (gx#stx-e
                                                    _%hd3265232951%_)))
                                              (if (equal? _%e3266132900%_
                                                          'struct:)
                                                  (_%__kont3827638277%_)
                                                  (if (equal? _%e3266132900%_
                                                              'class:)
                                                      (_%__kont3827638277%_)
                                                      (if (equal? _%e3266132900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3827638277%_)
                  (if (equal? _%e3266132900%_ 'var:)
                      (_%__kont3827438275%_ _%hd3265532961%_)
                      (_%__kont3827638277%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3827638277%_))))))
                               (_%__match3830238303%_
                                (lambda (_%e3260633211%_
                                         _%hd3260733215%_
                                         _%tl3260833218%_)
                                  (let ((_%g3260433221%_ _%tl3260833218%_)
                                        (_%g3260533223%_ _%hd3260733215%_))
                                    (if (or (gx#stx-eq? 'and: _%g3260533223%_)
                                            (gx#stx-eq? 'or: _%g3260533223%_))
                                        (_%__kont3825638257%_
                                         _%g3260433221%_
                                         _%g3260533223%_)
                                        (if (gx#stx-datum? _%hd3260733215%_)
                                            (let ((_%e3261333176%_
                                                   (gx#stx-e
                                                    _%hd3260733215%_)))
                                              (if (equal? _%e3261333176%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3260833218%_)
                                                      (let ((_%e3261433180%_
                                                             (gx#syntax-e
                                                              _%tl3260833218%_)))
                                                        (let ((_%tl3261633187%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3261433180%_)))
                      (_%hd3261533184%_
                       (let () (declare (not safe)) (##car _%e3261433180%_))))
                  (if (gx#stx-null? _%tl3261633187%_)
                      (_%__kont3825838259%_ _%hd3261533184%_)
                      (_%__kont3827638277%_))))
              (_%__kont3827638277%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3261333176%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3260833218%_)
                                                          (let ((_%e3262333116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3260833218%_)))
                    (let ((_%tl3262533123%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3262333116%_)))
                          (_%hd3262433120%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3262333116%_))))
                      (if (gx#stx-pair? _%tl3262533123%_)
                          (let ((_%e3262633126%_
                                 (gx#syntax-e _%tl3262533123%_)))
                            (let ((_%tl3262833133%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3262633126%_)))
                                  (_%hd3262733130%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3262633126%_))))
                              (if (gx#stx-null? _%tl3262833133%_)
                                  (_%__kont3826038261%_
                                   _%hd3262733130%_
                                   _%hd3262433120%_)
                                  (_%__kont3827638277%_))))
                          (if (gx#stx-null? _%tl3262533123%_)
                              (_%__match3840838409%_
                               _%e3260633211%_
                               _%hd3260733215%_
                               _%tl3260833218%_
                               _%e3262333116%_
                               _%hd3262433120%_
                               _%tl3262533123%_)
                              (_%__kont3827638277%_)))))
                  (_%__kont3827638277%_))
              (if (equal? _%e3261333176%_ 'splice:)
                  (if (gx#stx-pair? _%tl3260833218%_)
                      (let ((_%e3263533052%_ (gx#syntax-e _%tl3260833218%_)))
                        (let ((_%tl3263733059%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3263533052%_)))
                              (_%hd3263633056%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3263533052%_))))
                          (if (gx#stx-pair? _%tl3263733059%_)
                              (let ((_%e3263833062%_
                                     (gx#syntax-e _%tl3263733059%_)))
                                (let ((_%tl3264033069%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3263833062%_)))
                                      (_%hd3263933066%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3263833062%_))))
                                  (if (gx#stx-null? _%tl3264033069%_)
                                      (_%__kont3826238263%_
                                       _%hd3263933066%_
                                       _%hd3263633056%_)
                                      (_%__kont3827638277%_))))
                              (if (gx#stx-null? _%tl3263733059%_)
                                  (_%__match3840838409%_
                                   _%e3260633211%_
                                   _%hd3260733215%_
                                   _%tl3260833218%_
                                   _%e3263533052%_
                                   _%hd3263633056%_
                                   _%tl3263733059%_)
                                  (_%__kont3827638277%_)))))
                      (_%__kont3827638277%_))
                  (if (equal? _%e3261333176%_ 'box:)
                      (if (gx#stx-pair? _%tl3260833218%_)
                          (let ((_%e3264633007%_
                                 (gx#syntax-e _%tl3260833218%_)))
                            (let ((_%tl3264833014%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3264633007%_)))
                                  (_%hd3264733011%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3264633007%_))))
                              (if (gx#stx-null? _%tl3264833014%_)
                                  (_%__kont3826438265%_ _%hd3264733011%_)
                                  (_%__kont3827638277%_))))
                          (_%__kont3827638277%_))
                      (if (gx#stx-pair? _%tl3260833218%_)
                          (let ((_%e3265432957%_
                                 (gx#syntax-e _%tl3260833218%_)))
                            (let ((_%tl3265632964%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3265432957%_)))
                                  (_%hd3265532961%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3265432957%_))))
                              (if (gx#stx-null? _%tl3265632964%_)
                                  (_%__match3840838409%_
                                   _%e3260633211%_
                                   _%hd3260733215%_
                                   _%tl3260833218%_
                                   _%e3265432957%_
                                   _%hd3265532961%_
                                   _%tl3265632964%_)
                                  (if (equal? _%e3261333176%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3265632964%_)
                                          (let ((_%e3266532914%_
                                                 (gx#syntax-e
                                                  _%tl3265632964%_)))
                                            (let ((_%tl3266732921%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3266532914%_)))
                                                  (_%hd3266632918%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3266532914%_))))
                                              (if (gx#stx-null?
                                                   _%tl3266732921%_)
                                                  (_%__kont3826838269%_
                                                   _%hd3266632918%_)
                                                  (_%__kont3827638277%_))))
                                          (_%__kont3827638277%_))
                                      (if (equal? _%e3261333176%_ 'class:)
                                          (if (gx#stx-pair? _%tl3265632964%_)
                                              (let ((_%e3267632857%_
                                                     (gx#syntax-e
                                                      _%tl3265632964%_)))
                                                (let ((_%tl3267832864%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3267632857%_)))
                                                      (_%hd3267732861%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3267632857%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3267832864%_)
                                                      (_%__kont3827038271%_
                                                       _%hd3267732861%_)
                                                      (_%__kont3827638277%_))))
                                              (_%__kont3827638277%_))
                                          (if (equal? _%e3261333176%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3265632964%_)
                                                  (let ((_%e3268832798%_
                                                         (gx#syntax-e
                                                          _%tl3265632964%_)))
                                                    (let ((_%tl3269032805%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3268832798%_)))
                                                          (_%hd3268932802%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3268832798%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3269032805%_)
                                                          (_%__kont3827238273%_
                                                           _%hd3268932802%_
                                                           _%hd3265532961%_)
                                                          (_%__kont3827638277%_))))
                                                  (_%__kont3827638277%_))
                                              (_%__kont3827638277%_)))))))
                          (_%__kont3827638277%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3260833218%_)
                                                (let ((_%e3265432957%_
                                                       (gx#syntax-e
                                                        _%tl3260833218%_)))
                                                  (let ((_%tl3265632964%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3265432957%_)))
                                                        (_%hd3265532961%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3265432957%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3265632964%_)
                                                        (_%__match3840838409%_
                                                         _%e3260633211%_
                                                         _%hd3260733215%_
                                                         _%tl3260833218%_
                                                         _%e3265432957%_
                                                         _%hd3265532961%_
                                                         _%tl3265632964%_)
                                                        (_%__kont3827638277%_))))
                                                (_%__kont3827638277%_))))))))
                          (if (gx#stx-pair? _%__stx3825138252%_)
                              (let ((_%e3259733310%_
                                     (gx#syntax-e _%__stx3825138252%_)))
                                (let ((_%tl3259933317%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3259733310%_)))
                                      (_%hd3259833314%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3259733310%_))))
                                  (if (gx#stx-datum? _%hd3259833314%_)
                                      (let ((_%e3260033320%_
                                             (gx#stx-e _%hd3259833314%_)))
                                        (if (equal? _%e3260033320%_ '?:)
                                            (if (gx#stx-pair? _%tl3259933317%_)
                                                (let ((_%e3260133324%_
                                                       (gx#syntax-e
                                                        _%tl3259933317%_)))
                                                  (let ((_%tl3260333331%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3260133324%_)))
                                                        (_%hd3260233328%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3260133324%_))))
                                                    (_%__kont3825438255%_
                                                     _%tl3260333331%_)))
                                                (_%__match3830238303%_
                                                 _%e3259733310%_
                                                 _%hd3259833314%_
                                                 _%tl3259933317%_))
                                            (_%__match3830238303%_
                                             _%e3259733310%_
                                             _%hd3259833314%_
                                             _%tl3259933317%_)))
                                      (_%__match3830238303%_
                                       _%e3259733310%_
                                       _%hd3259833314%_
                                       _%tl3259933317%_))))
                              (_%__kont3827638277%_)))))))
                 (_%loop-vector32293%_
                  (lambda (_%body32454%_ _%vars32456%_ _%K32457%_)
                    (let* ((_%__stx3850938510%_ _%body32454%_)
                           (_%g3246032483%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3850938510%_))))
                      (let ((_%__kont3851238513%_
                             (lambda (_%g3246232560%_)
                               (_%loop-list32294%_
                                _%g3246232560%_
                                _%vars32456%_
                                _%K32457%_)))
                            (_%__kont3851438515%_
                             (lambda (_%g3247032514%_)
                               (_%loop32291%_
                                _%g3247032514%_
                                _%vars32456%_
                                _%K32457%_))))
                        (if (gx#stx-pair? _%__stx3850938510%_)
                            (let ((_%e3246332536%_
                                   (gx#syntax-e _%__stx3850938510%_)))
                              (let ((_%tl3246532543%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3246332536%_)))
                                    (_%hd3246432540%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3246332536%_))))
                                (if (gx#stx-datum? _%hd3246432540%_)
                                    (let ((_%e3246632546%_
                                           (gx#stx-e _%hd3246432540%_)))
                                      (if (equal? _%e3246632546%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3246532543%_)
                                              (let ((_%e3246732550%_
                                                     (gx#syntax-e
                                                      _%tl3246532543%_)))
                                                (let ((_%tl3246932557%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3246732550%_)))
                                                      (_%hd3246832554%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3246732550%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3246932557%_)
                                                      (_%__kont3851238513%_
                                                       _%hd3246832554%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3246032483%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3246032483%_)))
                                          (if (equal? _%e3246632546%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3246532543%_)
                                                  (let ((_%e3247532504%_
                                                         (gx#syntax-e
                                                          _%tl3246532543%_)))
                                                    (let ((_%tl3247732511%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3247532504%_)))
                                                          (_%hd3247632508%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3247532504%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3247732511%_)
                                                          (_%__kont3851438515%_
                                                           _%hd3247632508%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3246032483%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3246032483%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3246032483%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3246032483%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3246032483%_)))))))
                 (_%loop-list32294%_
                  (lambda (_%rest32384%_ _%vars32386%_ _%K32387%_)
                    (let* ((_%__stx3855938560%_ _%rest32384%_)
                           (_%g3239032402%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3855938560%_))))
                      (let ((_%__kont3856238563%_
                             (lambda (_%g3239232430%_ _%g3239332432%_)
                               (_%loop32291%_
                                _%g3239332432%_
                                _%vars32386%_
                                (lambda (_%g3244432446%_)
                                  (_%loop-list32294%_
                                   _%g3239232430%_
                                   _%g3244432446%_
                                   _%K32387%_)))))
                            (_%__kont3856438565%_
                             (lambda () (_%K32387%_ _%vars32386%_))))
                        (if (gx#stx-pair? _%__stx3855938560%_)
                            (let ((_%e3239432420%_
                                   (gx#syntax-e _%__stx3855938560%_)))
                              (let ((_%tl3239632427%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3239432420%_)))
                                    (_%hd3239532424%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3239432420%_))))
                                (_%__kont3856238563%_
                                 _%tl3239632427%_
                                 _%hd3239532424%_)))
                            (_%__kont3856438565%_))))))
                 (_%loop-class-list32295%_
                  (lambda (_%rest32297%_ _%vars32299%_ _%K32300%_)
                    (let* ((_%__stx3857538576%_ _%rest32297%_)
                           (_%g3230332318%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3857538576%_))))
                      (let ((_%__kont3857838579%_
                             (lambda (_%g3230532356%_ _%g3230632358%_)
                               (_%loop32291%_
                                _%g3230632358%_
                                _%vars32299%_
                                (lambda (_%g3237432376%_)
                                  (_%loop-class-list32295%_
                                   _%g3230532356%_
                                   _%g3237432376%_
                                   _%K32300%_)))))
                            (_%__kont3858038581%_
                             (lambda () (_%K32300%_ _%vars32299%_))))
                        (if (gx#stx-pair? _%__stx3857538576%_)
                            (let ((_%e3230732336%_
                                   (gx#syntax-e _%__stx3857538576%_)))
                              (let ((_%tl3230932343%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3230732336%_)))
                                    (_%hd3230832340%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3230732336%_))))
                                (if (gx#stx-pair? _%tl3230932343%_)
                                    (let ((_%e3231032346%_
                                           (gx#syntax-e _%tl3230932343%_)))
                                      (let ((_%tl3231232353%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3231032346%_)))
                                            (_%hd3231132350%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3231032346%_))))
                                        (_%__kont3857838579%_
                                         _%tl3231232353%_
                                         _%hd3231132350%_)))
                                    (_%__kont3858038581%_))))
                            (_%__kont3858038581%_)))))))
          (_%loop32291%_ _%ptree32288%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29220%_ _%tgt29222%_ _%ptree29223%_ _%K29224%_ _%E29225%_)
        (letrec ((_%generate129227%_
                  (lambda (_%tgt30487%_ _%ptree30489%_ _%K30490%_ _%E30491%_)
                    (let* ((_%g3049330501%_
                            (lambda (_%g3049430497%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3049430497%_)))
                           (_%g3049232284%_
                            (lambda (_%g3049430505%_)
                              ((lambda (_%g3049530508%_)
                                 (let* ((_%__stx3881138812%_ _%ptree30489%_)
                                        (_%g3053530677%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3881138812%_))))
                                   (let ((_%__kont3881438815%_
                                          (lambda (_%g3053731999%_
                                                   _%g3053832001%_)
                                            (let* ((_%__stx3872938730%_
                                                    _%g3053731999%_)
                                                   (_%g3201832053%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3872938730%_))))
                                              (let ((_%__kont3873238733%_
                                                     (lambda ()
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%g3053832001%_
                                       (cons _%g3049530508%_ '())))
                           (cons _%K30490%_ (cons _%E30491%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3873438735%_
                                                     (lambda (_%g3202032254%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%g3053832001%_
                                       (cons _%g3049530508%_ '())))
                           (cons (_%generate129227%_
                                  _%tgt30487%_
                                  _%g3202032254%_
                                  _%K30490%_
                                  _%E30491%_)
                                 (cons _%E30491%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3873638737%_
                                                     (lambda (_%g3202432192%_)
                                                       (let* ((_%g3220632214%_
                                                               (lambda (_%g3220732210%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3220732210%_)))
                      (_%g3220532233%_
                       (lambda (_%g3220732218%_)
                         ((lambda (_%g3220832221%_)
                            (cons 'let
                                  (cons (cons (cons _%g3220832221%_
                                                    (cons (cons _%g3053832001%_
                                                                (cons _%g3049530508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons 'if
                                                    (cons _%g3220832221%_
                                                          (cons (_%generate129227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3220832221%_
                         _%g3202432192%_
                         _%K30490%_
                         _%E30491%_)
                        (cons _%E30491%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _%g3220732218%_))))
                 (_%g3220532233%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3873838739%_
                                                     (lambda (_%g3203232108%_
                                                              _%g3203332110%_)
                                                       (let* ((_%g3213032138%_
                                                               (lambda (_%g3213132134%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3213132134%_)))
                      (_%g3212932157%_
                       (lambda (_%g3213132142%_)
                         ((lambda (_%g3213232145%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '?)
                                              (cons _%g3053832001%_
                                                    (cons _%g3049530508%_
                                                          '())))
                                        (cons (cons 'let
                                                    (cons (cons (cons _%g3213232145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons _%g3203332110%_
                                          (cons _%g3049530508%_ '()))
                                    '()))
                        '())
                  (cons (_%generate129227%_
                         _%g3213232145%_
                         _%g3203232108%_
                         _%K30490%_
                         _%E30491%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30491%_ '())))))
                          _%g3213132142%_))))
                 (_%g3212932157%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%g3201532265%_
                                                       (lambda ()
                                                         (if (gx#stx-pair?
                                                              _%__stx3872938730%_)
                                                             (let ((_%e3202132244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%__stx3872938730%_)))
                       (let ((_%tl3202332251%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3202132244%_)))
                             (_%hd3202232248%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3202132244%_))))
                         (if (gx#stx-null? _%tl3202332251%_)
                             (_%__kont3873438735%_ _%hd3202232248%_)
                             (if (gx#stx-datum? _%hd3202232248%_)
                                 (let ((_%e3202832178%_
                                        (gx#stx-e _%hd3202232248%_)))
                                   (if (equal? _%e3202832178%_ '=>:)
                                       (if (gx#stx-pair? _%tl3202332251%_)
                                           (let ((_%e3202932182%_
                                                  (gx#syntax-e
                                                   _%tl3202332251%_)))
                                             (let ((_%tl3203132189%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3202932182%_)))
                                                   (_%hd3203032186%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3202932182%_))))
                                               (if (gx#stx-null?
                                                    _%tl3203132189%_)
                                                   (_%__kont3873638737%_
                                                    _%hd3203032186%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3201832053%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3201832053%_)))
                                       (if (equal? _%e3202832178%_ '::)
                                           (if (gx#stx-pair? _%tl3202332251%_)
                                               (let ((_%e3203832074%_
                                                      (gx#syntax-e
                                                       _%tl3202332251%_)))
                                                 (let ((_%tl3204032081%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3203832074%_)))
                                                       (_%hd3203932078%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3203832074%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3204032081%_)
                                                       (let ((_%e3204132084%_
                                                              (gx#syntax-e
                                                               _%tl3204032081%_)))
                                                         (let ((_%tl3204332091%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3204132084%_)))
                       (_%hd3204232088%_
                        (let () (declare (not safe)) (##car _%e3204132084%_))))
                   (if (gx#stx-datum? _%hd3204232088%_)
                       (let ((_%e3204432094%_ (gx#stx-e _%hd3204232088%_)))
                         (if (equal? _%e3204432094%_ '=>:)
                             (if (gx#stx-pair? _%tl3204332091%_)
                                 (let ((_%e3204532098%_
                                        (gx#syntax-e _%tl3204332091%_)))
                                   (let ((_%tl3204732105%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3204532098%_)))
                                         (_%hd3204632102%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3204532098%_))))
                                     (if (gx#stx-null? _%tl3204732105%_)
                                         (_%__kont3873838739%_
                                          _%hd3204632102%_
                                          _%hd3203932078%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3201832053%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3201832053%_)))
                             (let () (declare (not safe)) (_%g3201832053%_))))
                       (let () (declare (not safe)) (_%g3201832053%_)))))
               (let () (declare (not safe)) (_%g3201832053%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3201832053%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3201832053%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3201832053%_))))))
                     (let () (declare (not safe)) (_%g3201832053%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%__stx3872938730%_)
                                                      (_%__kont3873238733%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3201532265%_))))))))
                                         (_%__kont3881638817%_
                                          (lambda (_%g3054631896%_)
                                            (let* ((_%__stx3871338714%_
                                                    _%g3054631896%_)
                                                   (_%g3190931921%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3871338714%_))))
                                              (let ((_%__kont3871638717%_
                                                     (lambda (_%g3191131949%_
                                                              _%g3191231951%_)
                                                       (_%generate129227%_
                                                        _%tgt30487%_
                                                        _%g3191231951%_
                                                        (_%generate129227%_
                                                         _%tgt30487%_
                                                         (cons 'and:
                                                               _%g3191131949%_)
                                                         _%K30490%_
                                                         _%E30491%_)
                                                        _%E30491%_)))
                                                    (_%__kont3871838719%_
                                                     (lambda () _%K30490%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3871338714%_)
                                                    (let ((_%e3191331939%_
                                                           (gx#syntax-e
                                                            _%__stx3871338714%_)))
                                                      (let ((_%tl3191531946%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3191331939%_)))
                    (_%hd3191431943%_
                     (let () (declare (not safe)) (##car _%e3191331939%_))))
                (_%__kont3871638717%_ _%tl3191531946%_ _%hd3191431943%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3871838719%_))))))
                                         (_%__kont3881838819%_
                                          (lambda (_%g3055131803%_)
                                            (let* ((_%__stx3869738698%_
                                                    _%g3055131803%_)
                                                   (_%g3181631828%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3869738698%_))))
                                              (let ((_%__kont3870038701%_
                                                     (lambda (_%g3181831856%_
                                                              _%g3181931858%_)
                                                       (_%generate129227%_
                                                        _%tgt30487%_
                                                        _%g3181931858%_
                                                        _%K30490%_
                                                        (_%generate129227%_
                                                         _%tgt30487%_
                                                         (cons 'or:
                                                               _%g3181831856%_)
                                                         _%K30490%_
                                                         _%E30491%_))))
                                                    (_%__kont3870238703%_
                                                     (lambda () _%E30491%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3869738698%_)
                                                    (let ((_%e3182031846%_
                                                           (gx#syntax-e
                                                            _%__stx3869738698%_)))
                                                      (let ((_%tl3182231853%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3182031846%_)))
                    (_%hd3182131850%_
                     (let () (declare (not safe)) (##car _%e3182031846%_))))
                (_%__kont3870038701%_ _%tl3182231853%_ _%hd3182131850%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3870238703%_))))))
                                         (_%__kont3882038821%_
                                          (lambda (_%g3055631768%_)
                                            (_%generate129227%_
                                             _%tgt30487%_
                                             _%g3055631768%_
                                             _%E30491%_
                                             _%K30490%_)))
                                         (_%__kont3882238823%_
                                          (lambda (_%g3056431642%_
                                                   _%g3056531644%_)
                                            (let* ((_%g3166131676%_
                                                    (lambda (_%g3166231672%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3166231672%_)))
                                                   (_%g3166031733%_
                                                    (lambda (_%g3166231680%_)
                                                      (if (gx#stx-pair?
                                                           _%g3166231680%_)
                                                          (let ((_%e3166531683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%g3166231680%_)))
                    (let ((_%hd3166631687%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3166531683%_)))
                          (_%tl3166731690%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3166531683%_))))
                      (if (gx#stx-pair? _%tl3166731690%_)
                          (let ((_%e3166831693%_
                                 (gx#syntax-e _%tl3166731690%_)))
                            (let ((_%hd3166931697%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3166831693%_)))
                                  (_%tl3167031700%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3166831693%_))))
                              (if (gx#stx-null? _%tl3167031700%_)
                                  ((lambda (_%g3166331703%_ _%g3166431705%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'pair?)
                                                       (cons _%g3049530508%_
                                                             '()))
                                                 (cons (let ((_%hd-pat31721%_
                                                              (gx#stx-e
                                                               _%g3056531644%_))
                                                             (_%tl-pat31723%_
                                                              (gx#stx-e
                                                               _%g3056431642%_)))
                                                         (if (and (equal? _%hd-pat31721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat31723%_ '(any:)))
                     _%K30490%_
                     (if (equal? _%tl-pat31723%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%g3166431705%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%g3049530508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate129227%_
                                            _%g3166431705%_
                                            _%g3056531644%_
                                            _%K30490%_
                                            _%E30491%_)
                                           '())))
                         (if (equal? _%hd-pat31721%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%g3166331703%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%g3049530508%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate129227%_
                                                _%g3166331703%_
                                                _%g3056431642%_
                                                _%K30490%_
                                                _%E30491%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%g3166431705%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%g3049530508%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%g3166331703%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%g3049530508%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate129227%_
                                                _%g3166431705%_
                                                _%g3056531644%_
                                                (_%generate129227%_
                                                 _%g3166331703%_
                                                 _%g3056431642%_
                                                 _%K30490%_
                                                 _%E30491%_)
                                                _%E30491%_)
                                               '())))))))
               (cons _%E30491%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd3166931697%_
                                   _%hd3166631687%_)
                                  (_%g3166131676%_ _%g3166231680%_))))
                          (_%g3166131676%_ _%g3166231680%_))))
                  (_%g3166131676%_ _%g3166231680%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3166031733%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl))))))
                                         (_%__kont3882438825%_
                                          (lambda ()
                                            (cons 'if
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'null?)
                                                              (cons _%g3049530508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%K30490%_ (cons _%E30491%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3882638827%_
                                          (lambda (_%g3058031558%_
                                                   _%g3058131560%_)
                                            (_%generate-splice29229%_
                                             _%tgt30487%_
                                             _%g3058131560%_
                                             _%g3058031558%_
                                             _%K30490%_
                                             _%E30491%_)))
                                         (_%__kont3882838829%_
                                          (lambda (_%g3059231472%_)
                                            (let* ((_%g3148631494%_
                                                    (lambda (_%g3148731490%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3148731490%_)))
                                                   (_%g3148531513%_
                                                    (lambda (_%g3148731498%_)
                                                      ((lambda (_%g3148831501%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'box?)
                                   (cons _%g3049530508%_ '()))
                             (cons (cons 'let
                                         (cons (cons (cons _%g3148831501%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##unbox)
                               (cons _%g3049530508%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (_%generate129227%_
                                                      _%g3148831501%_
                                                      _%g3059231472%_
                                                      _%K30490%_
                                                      _%E30491%_)
                                                     '())))
                                   (cons _%E30491%_ '())))))
               _%g3148731498%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3148531513%_
                                               (gx#genident 'e)))))
                                         (_%__kont3883038831%_
                                          (lambda (_%g3060031277%_)
                                            (let* ((_%__stx3864738648%_
                                                    _%g3060031277%_)
                                                   (_%g3129231315%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3864738648%_))))
                                              (let ((_%__kont3865038651%_
                                                     (lambda (_%g3129431392%_)
                                                       (let* ((_%g3140631414%_
                                                               (lambda (_%g3140731410%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3140731410%_)))
                      (_%g3140531433%_
                       (lambda (_%g3140731418%_)
                         ((lambda (_%g3140831421%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'values-count)
                                                          (cons _%g3049530508%_
                                                                '()))
                                                    (cons _%g3140831421%_
                                                          '())))
                                        (cons (_%generate-simple-vector29230%_
                                               _%tgt30487%_
                                               _%g3129431392%_
                                               '0
                                               '##values-ref
                                               _%K30490%_
                                               _%E30491%_)
                                              (cons _%E30491%_ '())))))
                          _%g3140731418%_))))
                 (_%g3140531433%_ (gx#stx-length _%g3129431392%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3865238653%_
                                                     (lambda (_%g3130231346%_)
                                                       (_%generate-list-vector29231%_
                                                        _%tgt30487%_
                                                        _%g3130231346%_
                                                        'values->list
                                                        _%K30490%_
                                                        _%E30491%_))))
                                                (if (gx#stx-pair?
                                                     _%__stx3864738648%_)
                                                    (let ((_%e3129531368%_
                                                           (gx#syntax-e
                                                            _%__stx3864738648%_)))
                                                      (let ((_%tl3129731375%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3129531368%_)))
                    (_%hd3129631372%_
                     (let () (declare (not safe)) (##car _%e3129531368%_))))
                (if (gx#stx-datum? _%hd3129631372%_)
                    (let ((_%e3129831378%_ (gx#stx-e _%hd3129631372%_)))
                      (if (equal? _%e3129831378%_ 'simple:)
                          (if (gx#stx-pair? _%tl3129731375%_)
                              (let ((_%e3129931382%_
                                     (gx#syntax-e _%tl3129731375%_)))
                                (let ((_%tl3130131389%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3129931382%_)))
                                      (_%hd3130031386%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3129931382%_))))
                                  (if (gx#stx-null? _%tl3130131389%_)
                                      (_%__kont3865038651%_ _%hd3130031386%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3129231315%_)))))
                              (let () (declare (not safe)) (_%g3129231315%_)))
                          (if (equal? _%e3129831378%_ 'list:)
                              (if (gx#stx-pair? _%tl3129731375%_)
                                  (let ((_%e3130731336%_
                                         (gx#syntax-e _%tl3129731375%_)))
                                    (let ((_%tl3130931343%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3130731336%_)))
                                          (_%hd3130831340%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3130731336%_))))
                                      (if (gx#stx-null? _%tl3130931343%_)
                                          (_%__kont3865238653%_
                                           _%hd3130831340%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3129231315%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3129231315%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3129231315%_)))))
                    (let () (declare (not safe)) (_%g3129231315%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3129231315%_)))))))
                                         (_%__kont3883238833%_
                                          (lambda (_%g3060831082%_)
                                            (let* ((_%__stx3859738598%_
                                                    _%g3060831082%_)
                                                   (_%g3109731120%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3859738598%_))))
                                              (let ((_%__kont3860038601%_
                                                     (lambda (_%g3109931197%_)
                                                       (let* ((_%g3121131219%_
                                                               (lambda (_%g3121231215%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3121231215%_)))
                      (_%g3121031238%_
                       (lambda (_%g3121231223%_)
                         ((lambda (_%g3121331226%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f 'vector?)
                                              (cons _%g3049530508%_ '()))
                                        (cons (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _%g3049530508%_ '()))
                              (cons _%g3121331226%_ '())))
                  (cons (_%generate-simple-vector29230%_
                         _%tgt30487%_
                         _%g3109931197%_
                         '0
                         '##vector-ref
                         _%K30490%_
                         _%E30491%_)
                        (cons _%E30491%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30491%_ '())))))
                          _%g3121231223%_))))
                 (_%g3121031238%_ (gx#stx-length _%g3109931197%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3860238603%_
                                                     (lambda (_%g3110731151%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'vector?)
                                 (cons _%g3049530508%_ '()))
                           (cons (_%generate-list-vector29231%_
                                  _%tgt30487%_
                                  _%g3110731151%_
                                  'vector->list
                                  _%K30490%_
                                  _%E30491%_)
                                 (cons _%E30491%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx3859738598%_)
                                                    (let ((_%e3110031173%_
                                                           (gx#syntax-e
                                                            _%__stx3859738598%_)))
                                                      (let ((_%tl3110231180%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3110031173%_)))
                    (_%hd3110131177%_
                     (let () (declare (not safe)) (##car _%e3110031173%_))))
                (if (gx#stx-datum? _%hd3110131177%_)
                    (let ((_%e3110331183%_ (gx#stx-e _%hd3110131177%_)))
                      (if (equal? _%e3110331183%_ 'simple:)
                          (if (gx#stx-pair? _%tl3110231180%_)
                              (let ((_%e3110431187%_
                                     (gx#syntax-e _%tl3110231180%_)))
                                (let ((_%tl3110631194%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3110431187%_)))
                                      (_%hd3110531191%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3110431187%_))))
                                  (if (gx#stx-null? _%tl3110631194%_)
                                      (_%__kont3860038601%_ _%hd3110531191%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3109731120%_)))))
                              (let () (declare (not safe)) (_%g3109731120%_)))
                          (if (equal? _%e3110331183%_ 'list:)
                              (if (gx#stx-pair? _%tl3110231180%_)
                                  (let ((_%e3111231141%_
                                         (gx#syntax-e _%tl3110231180%_)))
                                    (let ((_%tl3111431148%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3111231141%_)))
                                          (_%hd3111331145%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3111231141%_))))
                                      (if (gx#stx-null? _%tl3111431148%_)
                                          (_%__kont3860238603%_
                                           _%hd3111331145%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3109731120%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3109731120%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3109731120%_)))))
                    (let () (declare (not safe)) (_%g3109731120%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3109731120%_)))))))
                                         (_%__kont3883438835%_
                                          (lambda (_%g3061631033%_
                                                   _%g3061731035%_)
                                            (_%generate-struct29232%_
                                             (gx#stx-e _%g3061731035%_)
                                             _%tgt30487%_
                                             _%g3061631033%_
                                             _%K30490%_
                                             _%E30491%_)))
                                         (_%__kont3883638837%_
                                          (lambda (_%g3062830974%_
                                                   _%g3062930976%_)
                                            (_%generate-class29235%_
                                             (gx#stx-e _%g3062930976%_)
                                             _%tgt30487%_
                                             _%g3062830974%_
                                             _%K30490%_
                                             _%E30491%_)))
                                         (_%__kont3883838839%_
                                          (lambda (_%g3064030871%_)
                                            (let* ((_%g3088530893%_
                                                    (lambda (_%g3088630889%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3088630889%_)))
                                                   (_%g3088430912%_
                                                    (lambda (_%g3088630897%_)
                                                      ((lambda (_%g3088730900%_)
                                                         (cons 'if
                                                               (cons (cons _%g3088730900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%g3049530508%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g3064030871%_
                                                           '()))
                                               '())))
                             (cons _%K30490%_ (cons _%E30491%_ '())))))
               _%g3088630897%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3088430912%_
                                               (let ((_%e30916%_
                                                      (gx#stx-e
                                                       _%g3064030871%_)))
                                                 (if (or (symbol? _%e30916%_)
                                                         (keyword? _%e30916%_)
                                                         (immediate?
                                                          _%e30916%_))
                                                     '##eq?
                                                     (if (number? _%e30916%_)
                                                         'eqv?
                                                         'equal?)))))))
                                         (_%__kont3884038841%_
                                          (lambda (_%g3064830791%_
                                                   _%g3064930793%_)
                                            (let* ((_%g3080930817%_
                                                    (lambda (_%g3081030813%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3081030813%_)))
                                                   (_%g3080830836%_
                                                    (lambda (_%g3081030821%_)
                                                      ((lambda (_%g3081130824%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%g3081130824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%g3064930793%_
                                                     (cons _%g3049530508%_
                                                           '()))
                                               '()))
                                   '())
                             (cons (_%generate129227%_
                                    _%g3081130824%_
                                    _%g3064830791%_
                                    _%K30490%_
                                    _%E30491%_)
                                   '()))))
               _%g3081030821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3080830836%_
                                               (gx#genident 'e)))))
                                         (_%__kont3884238843%_
                                          (lambda (_%g3066030733%_)
                                            (cons 'let
                                                  (cons (cons (cons _%g3066030733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g3049530508%_ '()))
                      '())
                (cons _%K30490%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3884438845%_
                                          (lambda () _%K30490%_)))
                                     (if (gx#stx-pair? _%__stx3881138812%_)
                                         (let ((_%e3053931975%_
                                                (gx#syntax-e
                                                 _%__stx3881138812%_)))
                                           (let ((_%tl3054131982%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e3053931975%_)))
                                                 (_%hd3054031979%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e3053931975%_))))
                                             (if (gx#stx-datum?
                                                  _%hd3054031979%_)
                                                 (let ((_%e3054231985%_
                                                        (gx#stx-e
                                                         _%hd3054031979%_)))
                                                   (if (equal? _%e3054231985%_
                                                               '?:)
                                                       (if (gx#stx-pair?
                                                            _%tl3054131982%_)
                                                           (let ((_%e3054331989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3054131982%_)))
                     (let ((_%tl3054531996%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3054331989%_)))
                           (_%hd3054431993%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3054331989%_))))
                       (_%__kont3881438815%_
                        _%tl3054531996%_
                        _%hd3054431993%_)))
                   (let () (declare (not safe)) (_%g3053530677%_)))
               (if (equal? _%e3054231985%_ 'and:)
                   (_%__kont3881638817%_ _%tl3054131982%_)
                   (if (equal? _%e3054231985%_ 'or:)
                       (_%__kont3881838819%_ _%tl3054131982%_)
                       (if (equal? _%e3054231985%_ 'not:)
                           (if (gx#stx-pair? _%tl3054131982%_)
                               (let ((_%e3056131758%_
                                      (gx#syntax-e _%tl3054131982%_)))
                                 (let ((_%tl3056331765%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3056131758%_)))
                                       (_%hd3056231762%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3056131758%_))))
                                   (if (gx#stx-null? _%tl3056331765%_)
                                       (_%__kont3882038821%_ _%hd3056231762%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3053530677%_)))))
                               (let () (declare (not safe)) (_%g3053530677%_)))
                           (if (equal? _%e3054231985%_ 'cons:)
                               (if (gx#stx-pair? _%tl3054131982%_)
                                   (let ((_%e3057031622%_
                                          (gx#syntax-e _%tl3054131982%_)))
                                     (let ((_%tl3057231629%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3057031622%_)))
                                           (_%hd3057131626%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3057031622%_))))
                                       (if (gx#stx-pair? _%tl3057231629%_)
                                           (let ((_%e3057331632%_
                                                  (gx#syntax-e
                                                   _%tl3057231629%_)))
                                             (let ((_%tl3057531639%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3057331632%_)))
                                                   (_%hd3057431636%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3057331632%_))))
                                               (if (gx#stx-null?
                                                    _%tl3057531639%_)
                                                   (_%__kont3882238823%_
                                                    _%hd3057431636%_
                                                    _%hd3057131626%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3053530677%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3053530677%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3053530677%_)))
                               (if (equal? _%e3054231985%_ 'null:)
                                   (if (gx#stx-null? _%tl3054131982%_)
                                       (_%__kont3882438825%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3053530677%_)))
                                   (if (equal? _%e3054231985%_ 'splice:)
                                       (if (gx#stx-pair? _%tl3054131982%_)
                                           (let ((_%e3058631538%_
                                                  (gx#syntax-e
                                                   _%tl3054131982%_)))
                                             (let ((_%tl3058831545%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3058631538%_)))
                                                   (_%hd3058731542%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3058631538%_))))
                                               (if (gx#stx-pair?
                                                    _%tl3058831545%_)
                                                   (let ((_%e3058931548%_
                                                          (gx#syntax-e
                                                           _%tl3058831545%_)))
                                                     (let ((_%tl3059131555%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3058931548%_)))
                                                           (_%hd3059031552%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3058931548%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3059131555%_)
                                                           (_%__kont3882638827%_
                                                            _%hd3059031552%_
                                                            _%hd3058731542%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3053530677%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3053530677%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3053530677%_)))
                                       (if (equal? _%e3054231985%_ 'box:)
                                           (if (gx#stx-pair? _%tl3054131982%_)
                                               (let ((_%e3059731462%_
                                                      (gx#syntax-e
                                                       _%tl3054131982%_)))
                                                 (let ((_%tl3059931469%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3059731462%_)))
                                                       (_%hd3059831466%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3059731462%_))))
                                                   (if (gx#stx-null?
                                                        _%tl3059931469%_)
                                                       (_%__kont3882838829%_
                                                        _%hd3059831466%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g3053530677%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3053530677%_)))
                                           (if (equal? _%e3054231985%_
                                                       'values:)
                                               (if (gx#stx-pair?
                                                    _%tl3054131982%_)
                                                   (let ((_%e3060531267%_
                                                          (gx#syntax-e
                                                           _%tl3054131982%_)))
                                                     (let ((_%tl3060731274%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3060531267%_)))
                                                           (_%hd3060631271%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3060531267%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3060731274%_)
                                                           (_%__kont3883038831%_
                                                            _%hd3060631271%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3053530677%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3053530677%_)))
                                               (if (equal? _%e3054231985%_
                                                           'vector:)
                                                   (if (gx#stx-pair?
                                                        _%tl3054131982%_)
                                                       (let ((_%e3061331072%_
                                                              (gx#syntax-e
                                                               _%tl3054131982%_)))
                                                         (let ((_%tl3061531079%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3061331072%_)))
                       (_%hd3061431076%_
                        (let () (declare (not safe)) (##car _%e3061331072%_))))
                   (if (gx#stx-null? _%tl3061531079%_)
                       (_%__kont3883238833%_ _%hd3061431076%_)
                       (let () (declare (not safe)) (_%g3053530677%_)))))
               (let () (declare (not safe)) (_%g3053530677%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (equal? _%e3054231985%_
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _%tl3054131982%_)
                                                           (let ((_%e3062231013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3054131982%_)))
                     (let ((_%tl3062431020%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3062231013%_)))
                           (_%hd3062331017%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3062231013%_))))
                       (if (gx#stx-pair? _%tl3062431020%_)
                           (let ((_%e3062531023%_
                                  (gx#syntax-e _%tl3062431020%_)))
                             (let ((_%tl3062731030%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3062531023%_)))
                                   (_%hd3062631027%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3062531023%_))))
                               (if (gx#stx-null? _%tl3062731030%_)
                                   (_%__kont3883438835%_
                                    _%hd3062631027%_
                                    _%hd3062331017%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3053530677%_)))))
                           (let () (declare (not safe)) (_%g3053530677%_)))))
                   (let () (declare (not safe)) (_%g3053530677%_)))
               (if (equal? _%e3054231985%_ 'class:)
                   (if (gx#stx-pair? _%tl3054131982%_)
                       (let ((_%e3063430954%_ (gx#syntax-e _%tl3054131982%_)))
                         (let ((_%tl3063630961%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3063430954%_)))
                               (_%hd3063530958%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3063430954%_))))
                           (if (gx#stx-pair? _%tl3063630961%_)
                               (let ((_%e3063730964%_
                                      (gx#syntax-e _%tl3063630961%_)))
                                 (let ((_%tl3063930971%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3063730964%_)))
                                       (_%hd3063830968%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3063730964%_))))
                                   (if (gx#stx-null? _%tl3063930971%_)
                                       (_%__kont3883638837%_
                                        _%hd3063830968%_
                                        _%hd3063530958%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3053530677%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g3053530677%_)))))
                       (let () (declare (not safe)) (_%g3053530677%_)))
                   (if (equal? _%e3054231985%_ 'datum:)
                       (if (gx#stx-pair? _%tl3054131982%_)
                           (let ((_%e3064530861%_
                                  (gx#syntax-e _%tl3054131982%_)))
                             (let ((_%tl3064730868%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3064530861%_)))
                                   (_%hd3064630865%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3064530861%_))))
                               (if (gx#stx-null? _%tl3064730868%_)
                                   (_%__kont3883838839%_ _%hd3064630865%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3053530677%_)))))
                           (let () (declare (not safe)) (_%g3053530677%_)))
                       (if (equal? _%e3054231985%_ 'apply:)
                           (if (gx#stx-pair? _%tl3054131982%_)
                               (let ((_%e3065430771%_
                                      (gx#syntax-e _%tl3054131982%_)))
                                 (let ((_%tl3065630778%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3065430771%_)))
                                       (_%hd3065530775%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3065430771%_))))
                                   (if (gx#stx-pair? _%tl3065630778%_)
                                       (let ((_%e3065730781%_
                                              (gx#syntax-e _%tl3065630778%_)))
                                         (let ((_%tl3065930788%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3065730781%_)))
                                               (_%hd3065830785%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3065730781%_))))
                                           (if (gx#stx-null? _%tl3065930788%_)
                                               (_%__kont3884038841%_
                                                _%hd3065830785%_
                                                _%hd3065530775%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3053530677%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g3053530677%_)))))
                               (let () (declare (not safe)) (_%g3053530677%_)))
                           (if (equal? _%e3054231985%_ 'var:)
                               (if (gx#stx-pair? _%tl3054131982%_)
                                   (let ((_%e3066530723%_
                                          (gx#syntax-e _%tl3054131982%_)))
                                     (let ((_%tl3066730730%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3066530723%_)))
                                           (_%hd3066630727%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3066530723%_))))
                                       (if (gx#stx-null? _%tl3066730730%_)
                                           (_%__kont3884238843%_
                                            _%hd3066630727%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g3053530677%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3053530677%_)))
                               (if (equal? _%e3054231985%_ 'any:)
                                   (if (gx#stx-null? _%tl3054131982%_)
                                       (_%__kont3884438845%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3053530677%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3053530677%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3053530677%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3053530677%_))))))
                               _%g3049430505%_))))
                      (_%g3049232284%_ _%tgt30487%_))))
                 (_%generate-splice29229%_
                  (lambda (_%tgt29865%_
                           _%hd29867%_
                           _%rest29868%_
                           _%K29869%_
                           _%E29870%_)
                    (let* ((_%g2987229889%_
                            (lambda (_%g2987329885%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2987329885%_)))
                           (_%g2987130483%_
                            (lambda (_%g2987329893%_)
                              (if (gx#stx-pair/null? _%g2987329893%_)
                                  (let ((_g39966_
                                         (gx#syntax-split-splice
                                          _%g2987329893%_
                                          '0)))
                                    (begin
                                      (let ((_g39967_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g39966_)
                                                   (##values-length _g39966_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g39967_ 2)))
                                            (error "Context expects 2 values"
                                                   _g39967_)))
                                      (let ((_%target2987529896%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g39966_ 0)))
                                            (_%tl2987729899%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g39966_ 1))))
                                        (if (gx#stx-null? _%tl2987729899%_)
                                            (letrec ((_%loop2987829902%_
                                                      (lambda (_%hd2987629906%_
                                                               _%var2988229909%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2987629906%_)
                                                            (let ((_%e2987929911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2987629906%_)))
                      (let ((_%lp-hd2988029915%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2987929911%_)))
                            (_%lp-tl2988129918%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2987929911%_))))
                        (_%loop2987829902%_
                         _%lp-tl2988129918%_
                         (cons _%lp-hd2988029915%_ _%var2988229909%_))))
                    (let ((_%var2988329921%_ (reverse _%var2988229909%_)))
                      ((lambda (_%g2987429924%_)
                         (let* ((_%g2994029957%_
                                 (lambda (_%g2994129953%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2994129953%_)))
                                (_%g2993930471%_
                                 (lambda (_%g2994129961%_)
                                   (if (gx#stx-pair/null? _%g2994129961%_)
                                       (let ((_g39968_
                                              (gx#syntax-split-splice
                                               _%g2994129961%_
                                               '0)))
                                         (begin
                                           (let ((_g39969_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g39968_)
                                                        (##values-length
                                                         _g39968_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g39969_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g39969_)))
                                           (let ((_%target2994329964%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g39968_ 0)))
                                                 (_%tl2994529967%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g39968_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2994529967%_)
                                                 (letrec ((_%loop2994629970%_
                                                           (lambda (_%hd2994429974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%var-r2995029977%_)
                     (if (gx#stx-pair? _%hd2994429974%_)
                         (let ((_%e2994729979%_
                                (gx#syntax-e _%hd2994429974%_)))
                           (let ((_%lp-hd2994829983%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2994729979%_)))
                                 (_%lp-tl2994929986%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2994729979%_))))
                             (_%loop2994629970%_
                              _%lp-tl2994929986%_
                              (cons _%lp-hd2994829983%_ _%var-r2995029977%_))))
                         (let ((_%var-r2995129989%_
                                (reverse _%var-r2995029977%_)))
                           ((lambda (_%g2994229992%_)
                              (let* ((_%g3000930026%_
                                      (lambda (_%g3001030022%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g3001030022%_)))
                                     (_%g3000830459%_
                                      (lambda (_%g3001030030%_)
                                        (if (gx#stx-pair/null? _%g3001030030%_)
                                            (let ((_g39970_
                                                   (gx#syntax-split-splice
                                                    _%g3001030030%_
                                                    '0)))
                                              (begin
                                                (let ((_g39971_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g39970_)
                                                             (##values-length
                                                              _g39970_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g39971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g39971_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target3001230033%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g39970_
                                                          0)))
                                                      (_%tl3001430036%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g39970_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl3001430036%_)
                                                      (letrec ((_%loop3001530039%_
                                                                (lambda (_%hd3001330043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%init3001930046%_)
                          (if (gx#stx-pair? _%hd3001330043%_)
                              (let ((_%e3001630048%_
                                     (gx#syntax-e _%hd3001330043%_)))
                                (let ((_%lp-hd3001730052%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3001630048%_)))
                                      (_%lp-tl3001830055%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3001630048%_))))
                                  (_%loop3001530039%_
                                   _%lp-tl3001830055%_
                                   (cons _%lp-hd3001730052%_
                                         _%init3001930046%_))))
                              (let ((_%init3002030058%_
                                     (reverse _%init3001930046%_)))
                                ((lambda (_%g3001130061%_)
                                   (let* ((_%g3007830086%_
                                           (lambda (_%g3007930082%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g3007930082%_)))
                                          (_%g3007730455%_
                                           (lambda (_%g3007930090%_)
                                             ((lambda (_%g3008030093%_)
                                                (let* ((_%g3010630114%_
                                                        (lambda (_%g3010730110%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g3010730110%_)))
                                                       (_%g3010530451%_
                                                        (lambda (_%g3010730118%_)
                                                          ((lambda (_%g3010830121%_)
                                                             (let* ((_%g3013430142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g3013530138%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g3013530138%_)))
                            (_%g3013330447%_
                             (lambda (_%g3013530146%_)
                               ((lambda (_%g3013630149%_)
                                  (let* ((_%g3016230170%_
                                          (lambda (_%g3016330166%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3016330166%_)))
                                         (_%g3016130443%_
                                          (lambda (_%g3016330174%_)
                                            ((lambda (_%g3016430177%_)
                                               (let* ((_%g3019030198%_
                                                       (lambda (_%g3019130194%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g3019130194%_)))
                                                      (_%g3018930439%_
                                                       (lambda (_%g3019130202%_)
                                                         ((lambda (_%g3019230205%_)
                                                            (let* ((_%g3021830226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3021930222%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3021930222%_)))
                           (_%g3021730435%_
                            (lambda (_%g3021930230%_)
                              ((lambda (_%g3022030233%_)
                                 (let* ((_%g3024630254%_
                                         (lambda (_%g3024730250%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3024730250%_)))
                                        (_%g3024530431%_
                                         (lambda (_%g3024730258%_)
                                           ((lambda (_%g3024830261%_)
                                              (let* ((_%g3027430282%_
                                                      (lambda (_%g3027530278%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3027530278%_)))
                                                     (_%g3027330416%_
                                                      (lambda (_%g3027530286%_)
                                                        ((lambda (_%g3027630289%_)
                                                           (let* ((_%g3030230310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g3030330306%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3030330306%_)))
                          (_%g3030130404%_
                           (lambda (_%g3030330314%_)
                             ((lambda (_%g3030430317%_)
                                (let* ((_%g3033030338%_
                                        (lambda (_%g3033130334%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3033130334%_)))
                                       (_%g3032930400%_
                                        (lambda (_%g3033130342%_)
                                          ((lambda (_%g3033230345%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%g3010830121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%g3022030233%_
                                                     (foldr (lambda (_%g3035930370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g3036030373%_)
                      (cons _%g3035930370%_ _%g3036030373%_))
                    '()
                    _%g2987429924%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%g3024830261%_ '())))
                                   '()))
                       (cons (cons _%g3016430177%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%g3019230205%_
                                                           (cons _%g3022030233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3036130376%_ _%g3036230379%_)
                                  (cons _%g3036130376%_ _%g3036230379%_))
                                '()
                                _%g2994229992%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%g3033230345%_
                                                           '())))
                                         '()))
                             (cons (cons _%g3013630149%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%g3022030233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3036330382%_ _%g3036430385%_)
                                  (cons _%g3036330382%_ _%g3036430385%_))
                                '()
                                _%g2994229992%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%g3022030233%_ '()))
                                     (cons (cons _%g3016430177%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%g3022030233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%g3022030233%_
                     (foldr (lambda (_%g3036530388%_ _%g3036630391%_)
                              (cons _%g3036530388%_ _%g3036630391%_))
                            '()
                            _%g2994229992%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%g3030430317%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%g3013630149%_
                             (cons _%g3008030093%_
                                   (foldr (lambda (_%g3036730394%_
                                                   _%g3036830397%_)
                                            (cons _%g3036730394%_
                                                  _%g3036830397%_))
                                          '()
                                          _%g3001130061%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3033130342%_))))
                                  (_%g3032930400%_
                                   (_%generate129227%_
                                    _%g3019230205%_
                                    _%hd29867%_
                                    _%g3027630289%_
                                    _%g3030430317%_))))
                              _%g3030330314%_))))
                     (_%g3030130404%_
                      (cons _%g3010830121%_
                            (cons _%g3022030233%_
                                  (foldr (lambda (_%g3040730410%_
                                                  _%g3040830413%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%g3040730410%_
                                                             '()))
                                                 _%g3040830413%_))
                                         '()
                                         _%g2994229992%_))))))
                 _%g3027530286%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3027330416%_
                                                 (cons _%g3013630149%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%g3022030233%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets
                        _%g2994229992%_
                        _%g2987429924%_)
                       (foldr (lambda (_%g3041930423%_
                                       _%g3042030426%_
                                       _%g3042130428%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%g3042030426%_
                                                  (cons _%g3041930423%_ '())))
                                      _%g3042130428%_))
                              '()
                              _%g2994229992%_
                              _%g2987429924%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g3024730258%_))))
                                   (_%g3024530431%_
                                    (_%generate129227%_
                                     _%g3022030233%_
                                     _%rest29868%_
                                     _%K29869%_
                                     _%E29870%_))))
                               _%g3021930230%_))))
                      (_%g3021730435%_ (gx#genident 'rest))))
                  _%g3019130202%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3018930439%_
                                                  (gx#genident 'hd))))
                                             _%g3016330174%_))))
                                    (_%g3016130443%_
                                     (gx#genident 'splice-try))))
                                _%g3013530146%_))))
                       (_%g3013330447%_ (gx#genident 'splice-loop))))
                   _%g3010730118%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g3010530451%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%g3007930090%_))))
                                     (_%g3007730455%_ _%tgt29865%_)))
                                 _%init3002030058%_))))))
                (_%loop3001530039%_ _%target3001230033%_ '()))
              (_%g3000930026%_ _%g3001030030%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g3000930026%_
                                             _%g3001030030%_)))))
                                (_%g3000830459%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%g3046230465%_
                                                   _%g3046330468%_)
                                            (cons _%g3046230465%_
                                                  _%g3046330468%_))
                                          '()
                                          _%g2987429924%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%var-r2995129989%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2994629970%_
                                                    _%target2994329964%_
                                                    '()))
                                                 (_%g2994029957%_
                                                  _%g2994129961%_)))))
                                       (_%g2994029957%_ _%g2994129961%_)))))
                           (_%g2993930471%_
                            (gx#gentemps
                             (foldr (lambda (_%g3047430477%_ _%g3047530480%_)
                                      (cons _%g3047430477%_ _%g3047530480%_))
                                    '()
                                    _%g2987429924%_)))))
                       _%var2988329921%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2987829902%_
                                               _%target2987529896%_
                                               '()))
                                            (_%g2987229889%_
                                             _%g2987329893%_)))))
                                  (_%g2987229889%_ _%g2987329893%_)))))
                      (_%g2987130483%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd29867%_)))))
                 (_%generate-simple-vector29230%_
                  (lambda (_%tgt29688%_
                           _%body29690%_
                           _%start29691%_
                           _%ref29692%_
                           _%K29693%_
                           _%E29694%_)
                    (let _%recur29696%_ ((_%rest29699%_ _%body29690%_)
                                         (_%off29701%_ _%start29691%_))
                      (let* ((_%__stx3916939170%_ _%rest29699%_)
                             (_%g2970429716%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3916939170%_))))
                        (let ((_%__kont3917239173%_
                               (lambda (_%g2970629744%_ _%g2970729746%_)
                                 (let* ((_%g2976129784%_
                                         (lambda (_%g2976229780%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2976229780%_)))
                                        (_%g2976029857%_
                                         (lambda (_%g2976229788%_)
                                           (if (gx#stx-pair? _%g2976229788%_)
                                               (let ((_%e2976729791%_
                                                      (gx#syntax-e
                                                       _%g2976229788%_)))
                                                 (let ((_%hd2976829795%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2976729791%_)))
                                                       (_%tl2976929798%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2976729791%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2976929798%_)
                                                       (let ((_%e2977029801%_
                                                              (gx#syntax-e
                                                               _%tl2976929798%_)))
                                                         (let ((_%hd2977129805%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2977029801%_)))
                       (_%tl2977229808%_
                        (let () (declare (not safe)) (##cdr _%e2977029801%_))))
                   (if (gx#stx-pair? _%tl2977229808%_)
                       (let ((_%e2977329811%_ (gx#syntax-e _%tl2977229808%_)))
                         (let ((_%hd2977429815%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e2977329811%_)))
                               (_%tl2977529818%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e2977329811%_))))
                           (if (gx#stx-pair? _%tl2977529818%_)
                               (let ((_%e2977629821%_
                                      (gx#syntax-e _%tl2977529818%_)))
                                 (let ((_%hd2977729825%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2977629821%_)))
                                       (_%tl2977829828%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2977629821%_))))
                                   (if (gx#stx-null? _%tl2977829828%_)
                                       ((lambda (_%g2976329831%_
                                                 _%g2976429833%_
                                                 _%g2976529834%_
                                                 _%g2976629835%_)
                                          (cons 'let
                                                (cons (cons (cons _%g2976629835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _%g2976329831%_
                                      (cons _%g2976529834%_
                                            (cons _%g2976429833%_ '())))
                                '()))
                    '())
              (cons (_%generate129227%_
                     _%g2976629835%_
                     _%g2970729746%_
                     (_%recur29696%_ _%g2970629744%_ (fx1+ _%off29701%_))
                     _%E29694%_)
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%hd2977729825%_
                                        _%hd2977429815%_
                                        _%hd2977129805%_
                                        _%hd2976829795%_)
                                       (_%g2976129784%_ _%g2976229788%_))))
                               (_%g2976129784%_ _%g2976229788%_))))
                       (_%g2976129784%_ _%g2976229788%_))))
               (_%g2976129784%_ _%g2976229788%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2976129784%_
                                                _%g2976229788%_)))))
                                   (_%g2976029857%_
                                    (list (gx#genident 'e)
                                          _%tgt29688%_
                                          _%off29701%_
                                          _%ref29692%_)))))
                              (_%__kont3917439175%_ (lambda () _%K29693%_)))
                          (if (gx#stx-pair? _%__stx3916939170%_)
                              (let ((_%e2970829734%_
                                     (gx#syntax-e _%__stx3916939170%_)))
                                (let ((_%tl2971029741%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2970829734%_)))
                                      (_%hd2970929738%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2970829734%_))))
                                  (_%__kont3917239173%_
                                   _%tl2971029741%_
                                   _%hd2970929738%_)))
                              (_%__kont3917439175%_)))))))
                 (_%generate-list-vector29231%_
                  (lambda (_%tgt29580%_
                           _%body29582%_
                           _%->list29583%_
                           _%K29584%_
                           _%E29585%_)
                    (let* ((_%g2958729595%_
                            (lambda (_%g2958829591%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2958829591%_)))
                           (_%g2958629684%_
                            (lambda (_%g2958829599%_)
                              ((lambda (_%g2958929602%_)
                                 (let* ((_%g2961429622%_
                                         (lambda (_%g2961529618%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2961529618%_)))
                                        (_%g2961329680%_
                                         (lambda (_%g2961529626%_)
                                           ((lambda (_%g2961629629%_)
                                              (let* ((_%g2964229650%_
                                                      (lambda (_%g2964329646%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2964329646%_)))
                                                     (_%g2964129672%_
                                                      (lambda (_%g2964329654%_)
                                                        ((lambda (_%g2964429657%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%g2958929602%_
                                           (cons _%g2964429657%_ '()))
                                     '())
                               (cons (_%generate129227%_
                                      _%g2958929602%_
                                      _%body29582%_
                                      _%K29584%_
                                      _%E29585%_)
                                     '()))))
                 _%g2964329654%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2964129672%_
                                                 (let ((_%$e29676%_
                                                        _%->list29583%_))
                                                   (if (eq? 'values->list
                                                            _%$e29676%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%g2961629629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e29676%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%g2961629629%_ '()))
                   (if (eq? 'struct->list _%$e29676%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax '#f 'struct->list)
                                         (cons _%g2961629629%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx29220%_
                        _%->list29583%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2961529626%_))))
                                   (_%g2961329680%_ _%tgt29580%_)))
                               _%g2958829599%_))))
                      (_%g2958629684%_ (gx#genident 'e)))))
                 (_%generate-struct29232%_
                  (lambda (_%info29451%_
                           _%tgt29453%_
                           _%body29454%_
                           _%K29455%_
                           _%E29456%_)
                    (let* ((_%__stx3918539186%_ _%body29454%_)
                           (_%g2945929482%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3918539186%_))))
                      (let ((_%__kont3918839189%_
                             (lambda (_%g2946129559%_)
                               (let ((_%fields29573%_
                                      (_%struct-field-accessors29234%_
                                       _%info29451%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj39939
                                                          _%info29451%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj39939
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj39939
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj39939
                                                          'predicate)))
                                                   (cons _%tgt29453%_ '()))
                                             (cons (_%generate-simple-struct-body29233%_
                                                    _%info29451%_
                                                    _%tgt29453%_
                                                    _%g2946129559%_
                                                    _%K29455%_
                                                    _%E29456%_)
                                                   (cons _%E29456%_ '())))))))
                            (_%__kont3919039191%_
                             (lambda (_%g2946929513%_)
                               (cons 'if
                                     (cons (cons (let ((__obj39940
                                                        _%info29451%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj39940
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj39940
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj39940
                                                        'predicate)))
                                                 (cons _%tgt29453%_ '()))
                                           (cons (_%generate-list-vector29231%_
                                                  _%tgt29453%_
                                                  _%g2946929513%_
                                                  'struct->list
                                                  _%K29455%_
                                                  _%E29456%_)
                                                 (cons _%E29456%_ '())))))))
                        (if (gx#stx-pair? _%__stx3918539186%_)
                            (let ((_%e2946229535%_
                                   (gx#syntax-e _%__stx3918539186%_)))
                              (let ((_%tl2946429542%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2946229535%_)))
                                    (_%hd2946329539%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2946229535%_))))
                                (if (gx#stx-datum? _%hd2946329539%_)
                                    (let ((_%e2946529545%_
                                           (gx#stx-e _%hd2946329539%_)))
                                      (if (equal? _%e2946529545%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2946429542%_)
                                              (let ((_%e2946629549%_
                                                     (gx#syntax-e
                                                      _%tl2946429542%_)))
                                                (let ((_%tl2946829556%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2946629549%_)))
                                                      (_%hd2946729553%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2946629549%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2946829556%_)
                                                      (_%__kont3918839189%_
                                                       _%hd2946729553%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2945929482%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2945929482%_)))
                                          (if (equal? _%e2946529545%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2946429542%_)
                                                  (let ((_%e2947429503%_
                                                         (gx#syntax-e
                                                          _%tl2946429542%_)))
                                                    (let ((_%tl2947629510%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2947429503%_)))
                                                          (_%hd2947529507%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2947429503%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2947629510%_)
                                                          (_%__kont3919039191%_
                                                           _%hd2947529507%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2945929482%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2945929482%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2945929482%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2945929482%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2945929482%_)))))))
                 (_%generate-simple-struct-body29233%_
                  (lambda (_%info29371%_
                           _%tgt29373%_
                           _%body29374%_
                           _%K29375%_
                           _%E29376%_)
                    (let _%recur29378%_ ((_%rest29381%_ _%body29374%_)
                                         (_%fields29383%_
                                          (_%struct-field-accessors29234%_
                                           _%info29371%_)))
                      (let* ((_%__stx3923539236%_ _%rest29381%_)
                             (_%g2938629398%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3923539236%_))))
                        (let ((_%__kont3923839239%_
                               (lambda (_%g2938829426%_ _%g2938929428%_)
                                 (if (null? _%fields29383%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29220%_
                                      _%info29371%_
                                      (let ((__obj39941 _%info29371%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39941
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39941
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39941
                                             'name))))
                                     (let ((_%$tgt29443%_ (gx#genident 'e))
                                           (_%getf29445%_
                                            (car _%fields29383%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29443%_
                                                               (cons (cons _%getf29445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29373%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129227%_
                                                          _%$tgt29443%_
                                                          _%g2938929428%_
                                                          (_%recur29378%_
                                                           _%g2938829426%_
                                                           (cdr _%fields29383%_))
                                                          _%E29376%_)
                                                         '())))))))
                              (_%__kont3924039241%_ (lambda () _%K29375%_)))
                          (if (gx#stx-pair? _%__stx3923539236%_)
                              (let ((_%e2939029416%_
                                     (gx#syntax-e _%__stx3923539236%_)))
                                (let ((_%tl2939229423%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2939029416%_)))
                                      (_%hd2939129420%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2939029416%_))))
                                  (_%__kont3923839239%_
                                   _%tl2939229423%_
                                   _%hd2939129420%_)))
                              (_%__kont3924039241%_)))))))
                 (_%struct-field-accessors29234%_
                  (lambda (_%info29352%_)
                    (let _%recur29355%_ ((_%next29358%_
                                          (cons _%info29352%_ '())))
                      (if (null? _%next29358%_)
                          '()
                          (let ((_%ti29361%_ (car _%next29358%_)))
                            (let ((__tmp39973
                                   (_%recur29355%_
                                    (map gx#syntax-local-value
                                         (let ((__obj39942 _%ti29361%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj39942
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj39942
                                                  '4
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj39942
                                                'super))))))
                                  (__tmp39972
                                   (map (lambda (_%slot29364%_)
                                          (let ((_%$e29367%_
                                                 (agetq _%slot29364%_
                                                        (let ((__obj39943
                                                               _%ti29361%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj39943
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj39943 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj39943
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29367%_
                                                _%$e29367%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29220%_
                                                 _%info29352%_
                                                 _%slot29364%_))))
                                        (let ((__obj39944 _%ti29361%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj39944
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj39944
                                                 '5
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj39944
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp39973 __tmp39972)))))))
                 (_%generate-class29235%_
                  (lambda (_%info29345%_
                           _%tgt29347%_
                           _%body29348%_
                           _%K29349%_
                           _%E29350%_)
                    (cons 'if
                          (cons (cons (let ((__obj39945 _%info29345%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39945
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39945
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39945
                                             'predicate)))
                                      (cons _%tgt29347%_ '()))
                                (cons (_%generate-class-body29236%_
                                       _%info29345%_
                                       _%tgt29347%_
                                       _%body29348%_
                                       _%K29349%_
                                       _%E29350%_)
                                      (cons _%E29350%_ '()))))))
                 (_%generate-class-body29236%_
                  (lambda (_%info29238%_
                           _%tgt29240%_
                           _%body29241%_
                           _%K29242%_
                           _%E29243%_)
                    (let _%recur29245%_ ((_%rest29248%_ _%body29241%_))
                      (let* ((_%__stx3925139252%_ _%rest29248%_)
                             (_%g2925229268%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3925139252%_))))
                        (let ((_%__kont3925439255%_
                               (lambda (_%g2925429306%_
                                        _%g2925529308%_
                                        _%g2925629309%_)
                                 (let ((_%$e29329%_
                                        (agetq (let ((__tmp39974
                                                      (keyword->string
                                                       (gx#stx-e
                                                        _%g2925629309%_))))
                                                 (declare (not safe))
                                                 (##string->symbol __tmp39974))
                                               (let ((__obj39946
                                                      _%info29238%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj39946
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj39946
                                                        '17
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj39946
                                                      'unchecked-accessors))))))
                                   (if _%$e29329%_
                                       ((lambda (_%getf29333%_)
                                          (let ((_%$tgt29336%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt29336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf29333%_ (cons _%tgt29240%_ '()))
                                  '()))
                      '())
                (cons (_%generate129227%_
                       _%$tgt29336%_
                       _%g2925529308%_
                       (_%recur29245%_ _%g2925429306%_)
                       _%E29243%_)
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e29329%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx29220%_
                                        _%info29238%_
                                        _%g2925629309%_)))))
                              (_%__kont3925639257%_ (lambda () _%K29242%_)))
                          (if (gx#stx-pair? _%__stx3925139252%_)
                              (let ((_%e2925729286%_
                                     (gx#syntax-e _%__stx3925139252%_)))
                                (let ((_%tl2925929293%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2925729286%_)))
                                      (_%hd2925829290%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2925729286%_))))
                                  (if (gx#stx-pair? _%tl2925929293%_)
                                      (let ((_%e2926029296%_
                                             (gx#syntax-e _%tl2925929293%_)))
                                        (let ((_%tl2926229303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2926029296%_)))
                                              (_%hd2926129300%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2926029296%_))))
                                          (_%__kont3925439255%_
                                           _%tl2926229303%_
                                           _%hd2926129300%_
                                           _%hd2925829290%_)))
                                      (_%__kont3925639257%_))))
                              (_%__kont3925639257%_))))))))
          (_%generate129227%_
           _%tgt29222%_
           _%ptree29223%_
           _%K29224%_
           _%E29225%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx28039%_ _%tgt-lst28041%_ _%clauses28042%_)
        (letrec ((_%parse-body28044%_
                  (lambda (_%hd-len29042%_)
                    (let _%lp29045%_ ((_%rest29048%_ _%clauses28042%_)
                                      (_%r29050%_ '()))
                      (let* ((_%__stx3930139302%_ _%rest29048%_)
                             (_%g2905329065%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3930139302%_))))
                        (let ((_%__kont3930439305%_
                               (lambda (_%g2905529093%_ _%g2905629095%_)
                                 (let* ((_%__stx3927339274%_ _%g2905629095%_)
                                        (_%g2911229128%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3927339274%_))))
                                   (let ((_%__kont3927639277%_
                                          (lambda (_%g2911429197%_)
                                            (if (gx#stx-null? _%g2905529093%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%g2911429197%_)
                                 (let ((_%$e29208%_
                                        (gx#stx-source _%g2905629095%_)))
                                   (if _%$e29208%_
                                       _%$e29208%_
                                       (gx#stx-source _%stx28039%_))))
                                '())))
              _%r29050%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx28039%_
                                                 _%g2905629095%_))))
                                         (_%__kont3927839279%_
                                          (lambda (_%g2911829156%_
                                                   _%g2911929158%_)
                                            (_%lp29045%_
                                             _%g2905529093%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g2917029172%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g2917029172%_
                           _%stx28039%_))
                        _%g2911929158%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin)
                                    _%g2911829156%_)
                              (let ((_%$e29176%_
                                     (gx#stx-source _%g2905629095%_)))
                                (if _%$e29176%_
                                    _%$e29176%_
                                    (gx#stx-source _%stx28039%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r29050%_))))
                                         (_%__kont3928039281%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx28039%_
                                             _%g2905629095%_))))
                                     (let* ((_%__match3929839299%_
                                             (lambda (_%e2912029146%_
                                                      _%hd2912129150%_
                                                      _%tl2912229153%_)
                                               (let ((_%g2911829156%_
                                                      _%tl2912229153%_)
                                                     (_%g2911929158%_
                                                      _%hd2912129150%_))
                                                 (if (and (gx#stx-list?
                                                           _%g2911929158%_)
                                                          (fx= (gx#stx-length
                                                                _%g2911929158%_)
                                                               _%hd-len29042%_)
                                                          (gx#stx-list?
                                                           _%g2911829156%_)
                                                          (not (gx#stx-null?
                                                                _%g2911829156%_)))
                                                     (_%__kont3927839279%_
                                                      _%g2911829156%_
                                                      _%g2911929158%_)
                                                     (_%__kont3928039281%_)))))
                                            (_%__match3929239293%_
                                             (lambda (_%e2911529187%_
                                                      _%hd2911629191%_
                                                      _%tl2911729194%_)
                                               (let ((_%g2911429197%_
                                                      _%tl2911729194%_))
                                                 (if (and (gx#stx-list?
                                                           _%g2911429197%_)
                                                          (not (gx#stx-null?
                                                                _%g2911429197%_)))
                                                     (_%__kont3927639277%_
                                                      _%g2911429197%_)
                                                     (_%__match3929839299%_
                                                      _%e2911529187%_
                                                      _%hd2911629191%_
                                                      _%tl2911729194%_))))))
                                       (if (gx#stx-pair? _%__stx3927339274%_)
                                           (let ((_%e2911529187%_
                                                  (gx#syntax-e
                                                   _%__stx3927339274%_)))
                                             (let ((_%tl2911729194%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2911529187%_)))
                                                   (_%hd2911629191%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2911529187%_))))
                                               (if (gx#identifier?
                                                    _%hd2911629191%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g39975_|
                                                        _%hd2911629191%_)
                                                       (_%__match3929239293%_
                                                        _%e2911529187%_
                                                        _%hd2911629191%_
                                                        _%tl2911729194%_)
                                                       (_%__match3929839299%_
                                                        _%e2911529187%_
                                                        _%hd2911629191%_
                                                        _%tl2911729194%_))
                                                   (_%__match3929839299%_
                                                    _%e2911529187%_
                                                    _%hd2911629191%_
                                                    _%tl2911729194%_))))
                                           (_%__kont3928039281%_)))))))
                              (_%__kont3930639307%_ (lambda () _%r29050%_)))
                          (if (gx#stx-pair? _%__stx3930139302%_)
                              (let ((_%e2905729083%_
                                     (gx#syntax-e _%__stx3930139302%_)))
                                (let ((_%tl2905929090%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2905729083%_)))
                                      (_%hd2905829087%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2905729083%_))))
                                  (_%__kont3930439305%_
                                   _%tl2905929090%_
                                   _%hd2905829087%_)))
                              (_%__kont3930639307%_)))))))
                 (_%generate-body28046%_
                  (lambda (_%body28748%_)
                    (let* ((_%g2875128759%_
                            (lambda (_%g2875228755%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2875228755%_)))
                           (_%g2875029038%_
                            (lambda (_%g2875228763%_)
                              ((lambda (_%g2875328766%_)
                                 (let* ((_%g2877828795%_
                                         (lambda (_%g2877928791%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2877928791%_)))
                                        (_%g2877729034%_
                                         (lambda (_%g2877928799%_)
                                           (if (gx#stx-pair/null?
                                                _%g2877928799%_)
                                               (let ((_g39976_
                                                      (gx#syntax-split-splice
                                                       _%g2877928799%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39977_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39976_)
                        (##values-length _g39976_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39977_ 2)))
                 (error "Context expects 2 values" _g39977_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target2878128802%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39976_
                                                             0)))
                                                         (_%tl2878328805%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39976_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl2878328805%_)
                                                         (letrec ((_%loop2878428808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd2878228812%_ _%target2878828815%_)
                             (if (gx#stx-pair? _%hd2878228812%_)
                                 (let ((_%e2878528817%_
                                        (gx#syntax-e _%hd2878228812%_)))
                                   (let ((_%lp-hd2878628821%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2878528817%_)))
                                         (_%lp-tl2878728824%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2878528817%_))))
                                     (_%loop2878428808%_
                                      _%lp-tl2878728824%_
                                      (cons _%lp-hd2878628821%_
                                            _%target2878828815%_))))
                                 (let ((_%target2878928827%_
                                        (reverse _%target2878828815%_)))
                                   ((lambda (_%g2878028830%_)
                                      (let* ((_%g2884728864%_
                                              (lambda (_%g2884828860%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2884828860%_)))
                                             (_%g2884629030%_
                                              (lambda (_%g2884828868%_)
                                                (if (gx#stx-pair/null?
                                                     _%g2884828868%_)
                                                    (let ((_g39978_
                                                           (gx#syntax-split-splice
                                                            _%g2884828868%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g39979_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g39978_)
                             (##values-length _g39978_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g39979_ 2)))
                      (error "Context expects 2 values" _g39979_)))
                (let ((_%target2885028871%_
                       (let () (declare (not safe)) (##values-ref _g39978_ 0)))
                      (_%tl2885228874%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g39978_ 1))))
                  (if (gx#stx-null? _%tl2885228874%_)
                      (letrec ((_%loop2885328877%_
                                (lambda (_%hd2885128881%_
                                         _%fail-diagnostic2885728884%_)
                                  (if (gx#stx-pair? _%hd2885128881%_)
                                      (let ((_%e2885428886%_
                                             (gx#syntax-e _%hd2885128881%_)))
                                        (let ((_%lp-hd2885528890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2885428886%_)))
                                              (_%lp-tl2885628893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2885428886%_))))
                                          (_%loop2885328877%_
                                           _%lp-tl2885628893%_
                                           (cons _%lp-hd2885528890%_
                                                 _%fail-diagnostic2885728884%_))))
                                      (let ((_%fail-diagnostic2885828896%_
                                             (reverse _%fail-diagnostic2885728884%_)))
                                        ((lambda (_%g2884928899%_)
                                           (let* ((_%g2891628924%_
                                                   (lambda (_%g2891728920%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2891728920%_)))
                                                  (_%g2891529010%_
                                                   (lambda (_%g2891728928%_)
                                                     ((lambda (_%g2891828931%_)
                                                        (let* ((_%g2894428952%_
                                                                (lambda (_%g2894528948%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2894528948%_)))
                       (_%g2894329006%_
                        (lambda (_%g2894528956%_)
                          ((lambda (_%g2894628959%_)
                             (let* ((_%g2897228980%_
                                     (lambda (_%g2897328976%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2897328976%_)))
                                    (_%g2897129002%_
                                     (lambda (_%g2897328984%_)
                                       ((lambda (_%g2897428987%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%g2897428987%_
                                                            '()))))
                                        _%g2897328984%_))))
                               (_%g2897129002%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%g2875328766%_
                                                         (cons _%g2891828931%_
                                                               '()))
                                                   '())
                                             (cons _%g2894628959%_ '())))
                                 (gx#stx-source _%stx28039%_)))))
                           _%g2894528956%_))))
                  (_%g2894329006%_
                   (_%generate-clauses28047%_
                    _%body28748%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%g2875328766%_ '()) '())))))))
              _%g2891728928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2891529010%_
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
                                     (foldr (lambda (_%g2901329018%_
                                                     _%g2901429021%_)
                                              (cons _%g2901329018%_
                                                    _%g2901429021%_))
                                            (foldr (lambda (_%g2901529024%_
                                                            _%g2901629027%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g2901529024%_ '()))
                   _%g2901629027%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%g2884928899%_)
                                            _%g2878028830%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx28039%_)))))
                                         _%fail-diagnostic2885828896%_))))))
                        (_%loop2885328877%_ _%target2885028871%_ '()))
                      (_%g2884728864%_ _%g2884828868%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2884728864%_
                                                     _%g2884828868%_)))))
                                        (_%g2884629030%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses28042%_))))
                                    _%target2878928827%_))))))
                   (_%loop2878428808%_ _%target2878128802%_ '()))
                 (_%g2877828795%_ _%g2877928799%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2877828795%_
                                                _%g2877928799%_)))))
                                   (_%g2877729034%_ _%tgt-lst28041%_)))
                               _%g2875228763%_))))
                      (_%g2875029038%_ (gx#genident 'E)))))
                 (_%generate-clauses28047%_
                  (lambda (_%rest28400%_ _%E28402%_)
                    (let* ((_%__stx3931739318%_ _%rest28400%_)
                           (_%g2840628422%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3931739318%_))))
                      (let ((_%__kont3932039321%_
                             (lambda (_%g2840828656%_)
                               (let* ((_%g2866728685%_
                                       (lambda (_%g2866828681%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2866828681%_)))
                                      (_%g2866628740%_
                                       (lambda (_%g2866828689%_)
                                         (if (gx#stx-pair? _%g2866828689%_)
                                             (let ((_%e2867128692%_
                                                    (gx#syntax-e
                                                     _%g2866828689%_)))
                                               (let ((_%hd2867228696%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2867128692%_)))
                                                     (_%tl2867328699%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2867128692%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2867328699%_)
                                                     (let ((_%e2867428702%_
                                                            (gx#syntax-e
                                                             _%tl2867328699%_)))
                                                       (let ((_%hd2867528706%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2867428702%_)))
                     (_%tl2867628709%_
                      (let () (declare (not safe)) (##cdr _%e2867428702%_))))
                 (if (gx#stx-pair? _%tl2867628709%_)
                     (let ((_%e2867728712%_ (gx#syntax-e _%tl2867628709%_)))
                       (let ((_%hd2867828716%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2867728712%_)))
                             (_%tl2867928719%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2867728712%_))))
                         (if (gx#stx-null? _%tl2867928719%_)
                             ((lambda (_%g2866928722%_ _%g2867028724%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e
                                                       _%g2867028724%_)
                                                      (_%generate128048%_
                                                       _%g2867028724%_
                                                       _%g2866928722%_
                                                       _%E28402%_)
                                                      _%g2866928722%_)
                                                  '()))))
                              _%hd2867828716%_
                              _%hd2867528706%_)
                             (_%g2866728685%_ _%g2866828689%_))))
                     (_%g2866728685%_ _%g2866828689%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2866728685%_
                                                      _%g2866828689%_))))
                                             (_%g2866728685%_
                                              _%g2866828689%_)))))
                                 (_%g2866628740%_ _%g2840828656%_))))
                            (_%__kont3932239323%_
                             (lambda (_%g2841228450%_ _%g2841328452%_)
                               (let* ((_%g2846528484%_
                                       (lambda (_%g2846628480%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2846628480%_)))
                                      (_%g2846428635%_
                                       (lambda (_%g2846628488%_)
                                         (if (gx#stx-pair? _%g2846628488%_)
                                             (let ((_%e2847028491%_
                                                    (gx#syntax-e
                                                     _%g2846628488%_)))
                                               (let ((_%hd2847128495%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2847028491%_)))
                                                     (_%tl2847228498%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2847028491%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2847228498%_)
                                                     (let ((_%e2847328501%_
                                                            (gx#syntax-e
                                                             _%tl2847228498%_)))
                                                       (let ((_%hd2847428505%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2847328501%_)))
                     (_%tl2847528508%_
                      (let () (declare (not safe)) (##cdr _%e2847328501%_))))
                 (if (gx#stx-pair? _%tl2847528508%_)
                     (let ((_%e2847628511%_ (gx#syntax-e _%tl2847528508%_)))
                       (let ((_%hd2847728515%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2847628511%_)))
                             (_%tl2847828518%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2847628511%_))))
                         (if (gx#stx-null? _%tl2847828518%_)
                             ((lambda (_%g2846728521%_
                                       _%g2846828523%_
                                       _%g2846928524%_)
                                (if (gx#stx-e _%g2846828523%_)
                                    (let* ((_%g2854128556%_
                                            (lambda (_%g2854228552%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2854228552%_)))
                                           (_%g2854028601%_
                                            (lambda (_%g2854228560%_)
                                              (if (gx#stx-pair?
                                                   _%g2854228560%_)
                                                  (let ((_%e2854528563%_
                                                         (gx#syntax-e
                                                          _%g2854228560%_)))
                                                    (let ((_%hd2854628567%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2854528563%_)))
                                                          (_%tl2854728570%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2854528563%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl2854728570%_)
                                                          (let ((_%e2854828573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2854728570%_)))
                    (let ((_%hd2854928577%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2854828573%_)))
                          (_%tl2855028580%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2854828573%_))))
                      (if (gx#stx-null? _%tl2855028580%_)
                          ((lambda (_%g2854328583%_ _%g2854428585%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _%g2846928524%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%g2854428585%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%g2854328583%_ '()))))
                           _%hd2854928577%_
                           _%hd2854628567%_)
                          (_%g2854128556%_ _%g2854228560%_))))
                  (_%g2854128556%_ _%g2854228560%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2854128556%_
                                                   _%g2854228560%_)))))
                                      (_%g2854028601%_
                                       (list (_%generate128048%_
                                              _%g2846828523%_
                                              _%g2846728521%_
                                              _%E28402%_)
                                             (_%generate-clauses28047%_
                                              _%g2841228450%_
                                              (cons _%g2846928524%_ '())))))
                                    (let* ((_%g2860528613%_
                                            (lambda (_%g2860628609%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2860628609%_)))
                                           (_%g2860428631%_
                                            (lambda (_%g2860628617%_)
                                              ((lambda (_%g2860728620%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g2846928524%_
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
                             (cons _%g2846728521%_ '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons _%g2860728620%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2860628617%_))))
                                      (_%g2860428631%_
                                       (_%generate-clauses28047%_
                                        _%g2841228450%_
                                        (cons _%g2846928524%_ '()))))))
                              _%hd2847728515%_
                              _%hd2847428505%_
                              _%hd2847128495%_)
                             (_%g2846528484%_ _%g2846628488%_))))
                     (_%g2846528484%_ _%g2846628488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2846528484%_
                                                      _%g2846628488%_))))
                                             (_%g2846528484%_
                                              _%g2846628488%_)))))
                                 (_%g2846428635%_ _%g2841328452%_))))
                            (_%__kont3932439325%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28402%_ '()))))))
                        (if (gx#stx-pair? _%__stx3931739318%_)
                            (let ((_%e2840928646%_
                                   (gx#syntax-e _%__stx3931739318%_)))
                              (let ((_%tl2841128653%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2840928646%_)))
                                    (_%hd2841028650%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2840928646%_))))
                                (if (gx#stx-null? _%tl2841128653%_)
                                    (_%__kont3932039321%_ _%hd2841028650%_)
                                    (_%__kont3932239323%_
                                     _%tl2841128653%_
                                     _%hd2841028650%_))))
                            (_%__kont3932439325%_))))))
                 (_%generate128048%_
                  (lambda (_%clause28050%_ _%body28052%_ _%E28053%_)
                    (let* ((_%g2805528079%_
                            (lambda (_%g2805628075%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2805628075%_)))
                           (_%g2805428396%_
                            (lambda (_%g2805628083%_)
                              (if (gx#stx-pair? _%g2805628083%_)
                                  (let ((_%e2805928086%_
                                         (gx#syntax-e _%g2805628083%_)))
                                    (let ((_%hd2806028090%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2805928086%_)))
                                          (_%tl2806128093%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2805928086%_))))
                                      (if (gx#stx-pair? _%tl2806128093%_)
                                          (let ((_%e2806228096%_
                                                 (gx#syntax-e
                                                  _%tl2806128093%_)))
                                            (let ((_%hd2806328100%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2806228096%_)))
                                                  (_%tl2806428103%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2806228096%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2806328100%_)
                                                  (let ((_g39980_
                                                         (gx#syntax-split-splice
                                                          _%hd2806328100%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g39981_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g39980_)
                           (##values-length _g39980_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g39981_ 2)))
                    (error "Context expects 2 values" _g39981_)))
              (let ((_%target2806528106%_
                     (let () (declare (not safe)) (##values-ref _g39980_ 0)))
                    (_%tl2806728109%_
                     (let () (declare (not safe)) (##values-ref _g39980_ 1))))
                (if (gx#stx-null? _%tl2806728109%_)
                    (letrec ((_%loop2806828112%_
                              (lambda (_%hd2806628116%_ _%var2807228119%_)
                                (if (gx#stx-pair? _%hd2806628116%_)
                                    (let ((_%e2806928121%_
                                           (gx#syntax-e _%hd2806628116%_)))
                                      (let ((_%lp-hd2807028125%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2806928121%_)))
                                            (_%lp-tl2807128128%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2806928121%_))))
                                        (_%loop2806828112%_
                                         _%lp-tl2807128128%_
                                         (cons _%lp-hd2807028125%_
                                               _%var2807228119%_))))
                                    (let ((_%var2807328131%_
                                           (reverse _%var2807228119%_)))
                                      (if (gx#stx-null? _%tl2806428103%_)
                                          ((lambda (_%g2805728134%_
                                                    _%g2805828136%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g2815728160%_
                                                                _%g2815828163%_)
                                                         (cons _%g2815728160%_
                                                               _%g2815828163%_))
                                                       '()
                                                       _%g2805728134%_)
                                                _%stx28039%_)
                                               (let* ((_%g2816628174%_
                                                       (lambda (_%g2816728170%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2816728170%_)))
                                                      (_%g2816528268%_
                                                       (lambda (_%g2816728178%_)
                                                         ((lambda (_%g2816828181%_)
                                                            (let* ((_%g2819428202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2819528198%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2819528198%_)))
                           (_%g2819328264%_
                            (lambda (_%g2819528206%_)
                              ((lambda (_%g2819628209%_)
                                 (let* ((_%g2822228230%_
                                         (lambda (_%g2822328226%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2822328226%_)))
                                        (_%g2822128252%_
                                         (lambda (_%g2822328234%_)
                                           ((lambda (_%g2822428237%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%g2805828136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g2822428237%_ '()))
                   (cons _%g2816828181%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx28039%_)))
                                            _%g2822328234%_))))
                                   (_%g2822128252%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%g2825528258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2825628261%_)
                  (cons _%g2825528258%_ _%g2825628261%_))
                '()
                _%g2805728134%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g2819628209%_ '())))
                                     (gx#stx-source _%stx28039%_)))))
                               _%g2819528206%_))))
                      (_%g2819328264%_ _%body28052%_)))
                  _%g2816728178%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2816528268%_
                                                  (let _%recur28272%_ ((_%rest28275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%clause28050%_)
                               (_%rest-targets28277%_ _%tgt-lst28041%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%__stx3934339344%_
                                                            _%rest28275%_)
                                                           (_%g2828028292%_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx3934339344%_))))
                                                      (let ((_%__kont3934639347%_
                                                             (lambda (_%g2828228328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2828328330%_)
                       (let* ((_%g2834528357%_
                               (lambda (_%g2834628353%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2834628353%_)))
                              (_%g2834428388%_
                               (lambda (_%g2834628361%_)
                                 (if (gx#stx-pair? _%g2834628361%_)
                                     (let ((_%e2834928364%_
                                            (gx#syntax-e _%g2834628361%_)))
                                       (let ((_%hd2835028368%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2834928364%_)))
                                             (_%tl2835128371%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2834928364%_))))
                                         ((lambda (_%g2834728374%_
                                                   _%g2834828376%_)
                                            (|gerbil/core/match[1]#generate-match1|
                                             _%stx28039%_
                                             _%g2834828376%_
                                             _%g2828328330%_
                                             (_%recur28272%_
                                              _%g2828228328%_
                                              _%g2834728374%_)
                                             _%E28053%_))
                                          _%tl2835128371%_
                                          _%hd2835028368%_)))
                                     (_%g2834528357%_ _%g2834628361%_)))))
                         (_%g2834428388%_ _%rest-targets28277%_))))
                    (_%__kont3934839349%_
                     (lambda ()
                       (cons _%g2805828136%_
                             (foldr (lambda (_%g2830228305%_ _%g2830328308%_)
                                      (cons _%g2830228305%_ _%g2830328308%_))
                                    '()
                                    _%g2805728134%_)))))
                (if (gx#stx-pair? _%__stx3934339344%_)
                    (let ((_%e2828428318%_ (gx#syntax-e _%__stx3934339344%_)))
                      (let ((_%tl2828628325%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2828428318%_)))
                            (_%hd2828528322%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2828428318%_))))
                        (_%__kont3934639347%_
                         _%tl2828628325%_
                         _%hd2828528322%_)))
                    (_%__kont3934839349%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%var2807328131%_
                                           _%hd2806028090%_)
                                          (_%g2805528079%_
                                           _%g2805628083%_)))))))
                      (_%loop2806828112%_ _%target2806528106%_ '()))
                    (_%g2805528079%_ _%g2805628083%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2805528079%_
                                                   _%g2805628083%_))))
                                          (_%g2805528079%_ _%g2805628083%_))))
                                  (_%g2805528079%_ _%g2805628083%_)))))
                      (_%g2805428396%_
                       (list (gx#genident 'K)
                             (let ((__tmp39982
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause28050%_)))
                               (declare (not safe))
                               (##apply append __tmp39982))))))))
          (_%generate-body28046%_
           (_%parse-body28044%_ (gx#stx-length _%tgt-lst28041%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx27941%_ _%tgt27943%_ _%clauses27944%_)
        (letrec ((_%reclause27946%_
                  (lambda (_%clause27949%_)
                    (let* ((_%__stx3935939360%_ _%clause27949%_)
                           (_%g2795427969%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3935939360%_))))
                      (let ((_%__kont3936239363%_ (lambda () _%clause27949%_))
                            (_%__kont3936439365%_
                             (lambda (_%g2795927997%_ _%g2796027999%_)
                               (gx#stx-wrap-source
                                (cons (cons _%g2796027999%_ '())
                                      _%g2795927997%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3936639367%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx27941%_
                                _%clause27949%_))))
                        (if (gx#stx-pair? _%__stx3935939360%_)
                            (let ((_%e2795628021%_
                                   (gx#syntax-e _%__stx3935939360%_)))
                              (let ((_%tl2795828028%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2795628021%_)))
                                    (_%hd2795728025%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2795628021%_))))
                                (if (gx#identifier? _%hd2795728025%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39983_|
                                         _%hd2795728025%_)
                                        (_%__kont3936239363%_)
                                        (_%__kont3936439365%_
                                         _%tl2795828028%_
                                         _%hd2795728025%_))
                                    (_%__kont3936439365%_
                                     _%tl2795828028%_
                                     _%hd2795728025%_))))
                            (_%__kont3936639367%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx27941%_
           (cons _%tgt27943%_ '())
           (gx#stx-map _%reclause27946%_ _%clauses27944%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35282%_)
        (let* ((_%__stx3938739388%_ _%stx35282%_)
               (_%g3528735316%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3938739388%_))))
          (let ((_%__kont3939039391%_
                 (lambda (_%g3528935556%_)
                   (let* ((_%g3556935577%_
                           (lambda (_%g3557035573%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3557035573%_)))
                          (_%g3556835630%_
                           (lambda (_%g3557035581%_)
                             ((lambda (_%g3557135584%_)
                                (let* ((_%g3559635604%_
                                        (lambda (_%g3559735600%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3559735600%_)))
                                       (_%g3559535626%_
                                        (lambda (_%g3559735608%_)
                                          ((lambda (_%g3559835611%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%g3557135584%_
                                                               '())
                                                         (cons _%g3559835611%_
                                                               '()))))
                                           _%g3559735608%_))))
                                  (_%g3559535626%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%g3557135584%_
                                                _%g3528935556%_))
                                    (gx#stx-source _%stx35282%_)))))
                              _%g3557035581%_))))
                     (_%g3556835630%_ (gx#genident 'e)))))
                (_%__kont3939239393%_
                 (lambda (_%g3529635451%_)
                   (let* ((_%g3546435472%_
                           (lambda (_%g3546535468%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3546535468%_)))
                          (_%g3546335525%_
                           (lambda (_%g3546535476%_)
                             ((lambda (_%g3546635479%_)
                                (let* ((_%g3549135499%_
                                        (lambda (_%g3549235495%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3549235495%_)))
                                       (_%g3549035521%_
                                        (lambda (_%g3549235503%_)
                                          ((lambda (_%g3549335506%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%g3546635479%_
                                                         (cons _%g3549335506%_
                                                               '()))))
                                           _%g3549235503%_))))
                                  (_%g3549035521%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%g3546635479%_
                                                _%g3529635451%_))
                                    (gx#stx-source _%stx35282%_)))))
                              _%g3546535476%_))))
                     (_%g3546335525%_ (gx#genident 'args)))))
                (_%__kont3939439395%_
                 (lambda (_%g3530335343%_ _%g3530435345%_)
                   (let* ((_%g3535935367%_
                           (lambda (_%g3536035363%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3536035363%_)))
                          (_%g3535835420%_
                           (lambda (_%g3536035371%_)
                             ((lambda (_%g3536135374%_)
                                (let* ((_%g3538635394%_
                                        (lambda (_%g3538735390%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3538735390%_)))
                                       (_%g3538535416%_
                                        (lambda (_%g3538735398%_)
                                          ((lambda (_%g3538835401%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%g3536135374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%g3530435345%_ '()))
                       '())
                 (cons _%g3538835401%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3538735398%_))))
                                  (_%g3538535416%_
                                   (|gerbil/core/match[1]#generate-match|
                                    _%stx35282%_
                                    _%g3536135374%_
                                    _%g3530335343%_))))
                              _%g3536035371%_))))
                     (_%g3535835420%_ (gx#genident _%g3530435345%_))))))
            (let* ((_%__match3944039441%_
                    (lambda (_%e3530535323%_
                             _%hd3530635327%_
                             _%tl3530735330%_
                             _%e3530835333%_
                             _%hd3530935337%_
                             _%tl3531035340%_)
                      (let ((_%g3530335343%_ _%tl3531035340%_)
                            (_%g3530435345%_ _%hd3530935337%_))
                        (if (gx#stx-list? _%g3530335343%_)
                            (_%__kont3939439395%_
                             _%g3530335343%_
                             _%g3530435345%_)
                            (let () (declare (not safe)) (_%g3528735316%_))))))
                   (_%__match3942839429%_
                    (lambda (_%e3529735431%_
                             _%hd3529835435%_
                             _%tl3529935438%_
                             _%e3530035441%_
                             _%hd3530135445%_
                             _%tl3530235448%_)
                      (let ((_%g3529635451%_ _%tl3530235448%_))
                        (if (gx#stx-list? _%g3529635451%_)
                            (_%__kont3939239393%_ _%g3529635451%_)
                            (_%__match3944039441%_
                             _%e3529735431%_
                             _%hd3529835435%_
                             _%tl3529935438%_
                             _%e3530035441%_
                             _%hd3530135445%_
                             _%tl3530235448%_)))))
                   (_%__match3941239413%_
                    (lambda (_%e3529035536%_
                             _%hd3529135540%_
                             _%tl3529235543%_
                             _%e3529335546%_
                             _%hd3529435550%_
                             _%tl3529535553%_)
                      (let ((_%g3528935556%_ _%tl3529535553%_))
                        (if (gx#stx-list? _%g3528935556%_)
                            (_%__kont3939039391%_ _%g3528935556%_)
                            (_%__match3944039441%_
                             _%e3529035536%_
                             _%hd3529135540%_
                             _%tl3529235543%_
                             _%e3529335546%_
                             _%hd3529435550%_
                             _%tl3529535553%_))))))
              (if (gx#stx-pair? _%__stx3938739388%_)
                  (let ((_%e3529035536%_ (gx#syntax-e _%__stx3938739388%_)))
                    (let ((_%tl3529235543%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3529035536%_)))
                          (_%hd3529135540%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3529035536%_))))
                      (if (gx#stx-pair? _%tl3529235543%_)
                          (let ((_%e3529335546%_
                                 (gx#syntax-e _%tl3529235543%_)))
                            (let ((_%tl3529535553%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3529335546%_)))
                                  (_%hd3529435550%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3529335546%_))))
                              (if (gx#identifier? _%hd3529435550%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39984_|
                                       _%hd3529435550%_)
                                      (_%__match3941239413%_
                                       _%e3529035536%_
                                       _%hd3529135540%_
                                       _%tl3529235543%_
                                       _%e3529335546%_
                                       _%hd3529435550%_
                                       _%tl3529535553%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39985_|
                                           _%hd3529435550%_)
                                          (_%__match3942839429%_
                                           _%e3529035536%_
                                           _%hd3529135540%_
                                           _%tl3529235543%_
                                           _%e3529335546%_
                                           _%hd3529435550%_
                                           _%tl3529535553%_)
                                          (_%__match3944039441%_
                                           _%e3529035536%_
                                           _%hd3529135540%_
                                           _%tl3529235543%_
                                           _%e3529335546%_
                                           _%hd3529435550%_
                                           _%tl3529535553%_)))
                                  (_%__match3944039441%_
                                   _%e3529035536%_
                                   _%hd3529135540%_
                                   _%tl3529235543%_
                                   _%e3529335546%_
                                   _%hd3529435550%_
                                   _%tl3529535553%_))))
                          (let () (declare (not safe)) (_%g3528735316%_)))))
                  (let () (declare (not safe)) (_%g3528735316%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx35638%_)
        (let* ((_%g3564135665%_
                (lambda (_%g3564235661%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3564235661%_)))
               (_%g3564035873%_
                (lambda (_%g3564235669%_)
                  (if (gx#stx-pair? _%g3564235669%_)
                      (let ((_%e3564535672%_ (gx#syntax-e _%g3564235669%_)))
                        (let ((_%hd3564635676%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3564535672%_)))
                              (_%tl3564735679%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3564535672%_))))
                          (if (gx#stx-pair? _%tl3564735679%_)
                              (let ((_%e3564835682%_
                                     (gx#syntax-e _%tl3564735679%_)))
                                (let ((_%hd3564935686%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3564835682%_)))
                                      (_%tl3565035689%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3564835682%_))))
                                  (if (gx#stx-pair/null? _%hd3564935686%_)
                                      (let ((_g39986_
                                             (gx#syntax-split-splice
                                              _%hd3564935686%_
                                              '0)))
                                        (begin
                                          (let ((_g39987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39986_)
                                                       (##values-length
                                                        _g39986_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39987_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39987_)))
                                          (let ((_%target3565135692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39986_ 0)))
                                                (_%tl3565335695%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39986_ 1))))
                                            (if (gx#stx-null? _%tl3565335695%_)
                                                (letrec ((_%loop3565435698%_
                                                          (lambda (_%hd3565235702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3565835705%_)
                    (if (gx#stx-pair? _%hd3565235702%_)
                        (let ((_%e3565535707%_ (gx#syntax-e _%hd3565235702%_)))
                          (let ((_%lp-hd3565635711%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3565535707%_)))
                                (_%lp-tl3565735714%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3565535707%_))))
                            (_%loop3565435698%_
                             _%lp-tl3565735714%_
                             (cons _%lp-hd3565635711%_ _%e3565835705%_))))
                        (let ((_%e3565935717%_ (reverse _%e3565835705%_)))
                          ((lambda (_%g3564335720%_ _%g3564435722%_)
                             (if (gx#stx-list? _%g3564335720%_)
                                 (let* ((_%g3574035757%_
                                         (lambda (_%g3574135753%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3574135753%_)))
                                        (_%g3573935861%_
                                         (lambda (_%g3574135761%_)
                                           (if (gx#stx-pair/null?
                                                _%g3574135761%_)
                                               (let ((_g39988_
                                                      (gx#syntax-split-splice
                                                       _%g3574135761%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39989_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39988_)
                        (##values-length _g39988_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39989_ 2)))
                 (error "Context expects 2 values" _g39989_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3574335764%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39988_
                                                             0)))
                                                         (_%tl3574535767%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39988_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3574535767%_)
                                                         (letrec ((_%loop3574635770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3574435774%_ _%$e3575035777%_)
                             (if (gx#stx-pair? _%hd3574435774%_)
                                 (let ((_%e3574735779%_
                                        (gx#syntax-e _%hd3574435774%_)))
                                   (let ((_%lp-hd3574835783%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3574735779%_)))
                                         (_%lp-tl3574935786%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3574735779%_))))
                                     (_%loop3574635770%_
                                      _%lp-tl3574935786%_
                                      (cons _%lp-hd3574835783%_
                                            _%$e3575035777%_))))
                                 (let ((_%$e3575135789%_
                                        (reverse _%$e3575035777%_)))
                                   ((lambda (_%g3574235792%_)
                                      (let* ((_%g3580835816%_
                                              (lambda (_%g3580935812%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g3580935812%_)))
                                             (_%g3580735849%_
                                              (lambda (_%g3580935820%_)
                                                ((lambda (_%g3581035823%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets
                          _%g3564435722%_
                          _%g3574235792%_)
                         (foldr (lambda (_%g3583735841%_
                                         _%g3583835844%_
                                         _%g3583935846%_)
                                  (cons (cons _%g3583835844%_
                                              (cons _%g3583735841%_ '()))
                                        _%g3583935846%_))
                                '()
                                _%g3564435722%_
                                _%g3574235792%_))
                       (cons _%g3581035823%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g3580935820%_))))
                                        (_%g3580735849%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx35638%_
                                          (foldr (lambda (_%g3585235855%_
                                                          _%g3585335858%_)
                                                   (cons _%g3585235855%_
                                                         _%g3585335858%_))
                                                 '()
                                                 _%g3574235792%_)
                                          _%g3564335720%_))))
                                    _%$e3575135789%_))))))
                   (_%loop3574635770%_ _%target3574335764%_ '()))
                 (_%g3574035757%_ _%g3574135761%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3574035757%_
                                                _%g3574135761%_)))))
                                   (_%g3573935861%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g3586435867%_
                                                     _%g3586535870%_)
                                              (cons _%g3586435867%_
                                                    _%g3586535870%_))
                                            '()
                                            _%g3564435722%_))))
                                 (_%g3564135665%_ _%g3564235669%_)))
                           _%tl3565035689%_
                           _%e3565935717%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3565435698%_
                                                   _%target3565135692%_
                                                   '()))
                                                (_%g3564135665%_
                                                 _%g3564235669%_)))))
                                      (_%g3564135665%_ _%g3564235669%_))))
                              (_%g3564135665%_ _%g3564235669%_))))
                      (_%g3564135665%_ _%g3564235669%_)))))
          (_%g3564035873%_ _%stx35638%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx35879%_)
        (let* ((_%__stx3944339444%_ _%$stx35879%_)
               (_%g3588535968%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3944339444%_))))
          (let ((_%__kont3944639447%_
                 (lambda (_%g3588736288%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3630436307%_ _%g3630536310%_)
                                        (cons _%g3630436307%_ _%g3630536310%_))
                                      '()
                                      _%g3588736288%_)))))
                (_%__kont3945039451%_
                 (lambda (_%g3590336198%_
                          _%g3590436200%_
                          _%g3590536201%_
                          _%g3590636202%_)
                   (cons _%g3590636202%_
                         (cons (cons (cons _%g3590536201%_
                                           (cons _%g3590436200%_ '()))
                                     '())
                               (foldr (lambda (_%g3622436227%_ _%g3622536230%_)
                                        (cons _%g3622436227%_ _%g3622536230%_))
                                      '()
                                      _%g3590336198%_)))))
                (_%__kont3945439455%_
                 (lambda (_%g3592836073%_ _%g3592936075%_ _%g3593036076%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3609836105%_ _%g3609936108%_)
                                        (cons _%g3609836105%_ _%g3609936108%_))
                                      '()
                                      _%g3592936075%_)
                               (cons (cons (foldr (lambda (_%g3610036111%_
                                                           _%g3610136114%_)
                                                    (cons _%g3610036111%_
                                                          _%g3610136114%_))
                                                  '()
                                                  _%g3593036076%_)
                                           (foldr (lambda (_%g3610236117%_
                                                           _%g3610336120%_)
                                                    (cons _%g3610236117%_
                                                          _%g3610336120%_))
                                                  '()
                                                  _%g3592836073%_))
                                     '()))))))
            (let* ((_%__match3953639537%_
                    (lambda (_%e3593135975%_
                             _%hd3593235979%_
                             _%tl3593335982%_
                             _%e3593435985%_
                             _%hd3593535989%_
                             _%tl3593635992%_
                             _%__splice3945639457%_
                             _%target3593735995%_
                             _%tl3593935998%_)
                      (letrec ((_%loop3594036001%_
                                (lambda (_%hd3593836005%_
                                         _%expr3594436008%_
                                         _%hd3594536009%_)
                                  (if (gx#stx-pair? _%hd3593836005%_)
                                      (let ((_%e3594136011%_
                                             (gx#syntax-e _%hd3593836005%_)))
                                        (let ((_%lp-tl3594336018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3594136011%_)))
                                              (_%lp-hd3594236015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3594136011%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3594236015%_)
                                              (let ((_%e3594836021%_
                                                     (gx#syntax-e
                                                      _%lp-hd3594236015%_)))
                                                (let ((_%tl3595036028%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3594836021%_)))
                                                      (_%hd3594936025%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3594836021%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3595036028%_)
                                                      (let ((_%e3595136031%_
                                                             (gx#syntax-e
                                                              _%tl3595036028%_)))
                                                        (let ((_%tl3595336038%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3595136031%_)))
                      (_%hd3595236035%_
                       (let () (declare (not safe)) (##car _%e3595136031%_))))
                  (if (gx#stx-null? _%tl3595336038%_)
                      (_%loop3594036001%_
                       _%lp-tl3594336018%_
                       (cons _%hd3595236035%_ _%expr3594436008%_)
                       (cons _%hd3594936025%_ _%hd3594536009%_))
                      (let () (declare (not safe)) (_%g3588535968%_)))))
              (let () (declare (not safe)) (_%g3588535968%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3588535968%_)))))
                                      (let ((_%hd3594736043%_
                                             (reverse _%hd3594536009%_))
                                            (_%expr3594636041%_
                                             (reverse _%expr3594436008%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3593635992%_)
                                            (let ((_%__splice3945839459%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl3593635992%_
                                                    '0)))
                                              (let ((_%tl3595636048%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3945839459%_
                                                        '1)))
                                                    (_%target3595436045%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3945839459%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3595636048%_)
                                                    (letrec ((_%loop3595736051%_
                                                              (lambda (_%hd3595536055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3596136058%_)
                        (if (gx#stx-pair? _%hd3595536055%_)
                            (let ((_%e3595836060%_
                                   (gx#syntax-e _%hd3595536055%_)))
                              (let ((_%lp-tl3596036067%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3595836060%_)))
                                    (_%lp-hd3595936064%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3595836060%_))))
                                (_%loop3595736051%_
                                 _%lp-tl3596036067%_
                                 (cons _%lp-hd3595936064%_
                                       _%body3596136058%_))))
                            (let ((_%body3596236070%_
                                   (reverse _%body3596136058%_)))
                              (_%__kont3945439455%_
                               _%body3596236070%_
                               _%expr3594636041%_
                               _%hd3594736043%_))))))
              (_%loop3595736051%_ _%target3595436045%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3588535968%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3588535968%_))))))))
                        (_%loop3594036001%_ _%target3593735995%_ '() '()))))
                   (_%__match3952839529%_
                    (lambda (_%e3593135975%_
                             _%hd3593235979%_
                             _%tl3593335982%_
                             _%e3593435985%_
                             _%hd3593535989%_
                             _%tl3593635992%_)
                      (if (gx#stx-pair/null? _%hd3593535989%_)
                          (let ((_%__splice3945639457%_
                                 (gx#syntax-split-splice->vector
                                  _%hd3593535989%_
                                  '0)))
                            (let ((_%tl3593935998%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3945639457%_ '1)))
                                  (_%target3593735995%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3945639457%_
                                      '0))))
                              (if (gx#stx-null? _%tl3593935998%_)
                                  (_%__match3953639537%_
                                   _%e3593135975%_
                                   _%hd3593235979%_
                                   _%tl3593335982%_
                                   _%e3593435985%_
                                   _%hd3593535989%_
                                   _%tl3593635992%_
                                   _%__splice3945639457%_
                                   _%target3593735995%_
                                   _%tl3593935998%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3588535968%_)))))
                          (let () (declare (not safe)) (_%g3588535968%_)))))
                   (_%__match3951639517%_
                    (lambda (_%e3590736130%_
                             _%hd3590836134%_
                             _%tl3590936137%_
                             _%e3591036140%_
                             _%hd3591136144%_
                             _%tl3591236147%_
                             _%e3591336150%_
                             _%hd3591436154%_
                             _%tl3591536157%_
                             _%e3591636160%_
                             _%hd3591736164%_
                             _%tl3591836167%_
                             _%__splice3945239453%_
                             _%target3591936170%_
                             _%tl3592136173%_)
                      (letrec ((_%loop3592236176%_
                                (lambda (_%hd3592036180%_ _%body3592636183%_)
                                  (if (gx#stx-pair? _%hd3592036180%_)
                                      (let ((_%e3592336185%_
                                             (gx#syntax-e _%hd3592036180%_)))
                                        (let ((_%lp-tl3592536192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3592336185%_)))
                                              (_%lp-hd3592436189%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3592336185%_))))
                                          (_%loop3592236176%_
                                           _%lp-tl3592536192%_
                                           (cons _%lp-hd3592436189%_
                                                 _%body3592636183%_))))
                                      (let ((_%body3592736195%_
                                             (reverse _%body3592636183%_)))
                                        (let ((_%g3590336198%_
                                               _%body3592736195%_)
                                              (_%g3590436200%_
                                               _%hd3591736164%_)
                                              (_%g3590536201%_
                                               _%hd3591436154%_)
                                              (_%g3590636202%_
                                               _%hd3590836134%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%g3590536201%_)
                                              (_%__kont3945039451%_
                                               _%g3590336198%_
                                               _%g3590436200%_
                                               _%g3590536201%_
                                               _%g3590636202%_)
                                              (_%__match3952839529%_
                                               _%e3590736130%_
                                               _%hd3590836134%_
                                               _%tl3590936137%_
                                               _%e3591036140%_
                                               _%hd3591136144%_
                                               _%tl3591236147%_))))))))
                        (_%loop3592236176%_ _%target3591936170%_ '()))))
                   (_%__match3948239483%_
                    (lambda (_%e3588836240%_
                             _%hd3588936244%_
                             _%tl3589036247%_
                             _%e3589136250%_
                             _%hd3589236254%_
                             _%tl3589336257%_
                             _%__splice3944839449%_
                             _%target3589436260%_
                             _%tl3589636263%_)
                      (letrec ((_%loop3589736266%_
                                (lambda (_%hd3589536270%_ _%body3590136273%_)
                                  (if (gx#stx-pair? _%hd3589536270%_)
                                      (let ((_%e3589836275%_
                                             (gx#syntax-e _%hd3589536270%_)))
                                        (let ((_%lp-tl3590036282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3589836275%_)))
                                              (_%lp-hd3589936279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3589836275%_))))
                                          (_%loop3589736266%_
                                           _%lp-tl3590036282%_
                                           (cons _%lp-hd3589936279%_
                                                 _%body3590136273%_))))
                                      (let ((_%body3590236285%_
                                             (reverse _%body3590136273%_)))
                                        (_%__kont3944639447%_
                                         _%body3590236285%_))))))
                        (_%loop3589736266%_ _%target3589436260%_ '())))))
              (if (gx#stx-pair? _%__stx3944339444%_)
                  (let ((_%e3588836240%_ (gx#syntax-e _%__stx3944339444%_)))
                    (let ((_%tl3589036247%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3588836240%_)))
                          (_%hd3588936244%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3588836240%_))))
                      (if (gx#stx-pair? _%tl3589036247%_)
                          (let ((_%e3589136250%_
                                 (gx#syntax-e _%tl3589036247%_)))
                            (let ((_%tl3589336257%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3589136250%_)))
                                  (_%hd3589236254%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3589136250%_))))
                              (if (gx#stx-null? _%hd3589236254%_)
                                  (if (gx#stx-pair/null? _%tl3589336257%_)
                                      (let ((_%__splice3944839449%_
                                             (gx#syntax-split-splice->vector
                                              _%tl3589336257%_
                                              '0)))
                                        (let ((_%tl3589636263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3944839449%_
                                                  '1)))
                                              (_%target3589436260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3944839449%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3589636263%_)
                                              (_%__match3948239483%_
                                               _%e3588836240%_
                                               _%hd3588936244%_
                                               _%tl3589036247%_
                                               _%e3589136250%_
                                               _%hd3589236254%_
                                               _%tl3589336257%_
                                               _%__splice3944839449%_
                                               _%target3589436260%_
                                               _%tl3589636263%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3589236254%_)
                                                  (let ((_%__splice3945639457%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3589236254%_
                                                          '0)))
                                                    (let ((_%tl3593935998%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3945639457%_
                                                              '1)))
                                                          (_%target3593735995%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3945639457%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3593935998%_)
                                                          (_%__match3953639537%_
                                                           _%e3588836240%_
                                                           _%hd3588936244%_
                                                           _%tl3589036247%_
                                                           _%e3589136250%_
                                                           _%hd3589236254%_
                                                           _%tl3589336257%_
                                                           _%__splice3945639457%_
                                                           _%target3593735995%_
                                                           _%tl3593935998%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3588535968%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3588535968%_))))))
                                      (if (gx#stx-pair/null? _%hd3589236254%_)
                                          (let ((_%__splice3945639457%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3589236254%_
                                                  '0)))
                                            (let ((_%tl3593935998%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3945639457%_
                                                      '1)))
                                                  (_%target3593735995%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3945639457%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3593935998%_)
                                                  (_%__match3953639537%_
                                                   _%e3588836240%_
                                                   _%hd3588936244%_
                                                   _%tl3589036247%_
                                                   _%e3589136250%_
                                                   _%hd3589236254%_
                                                   _%tl3589336257%_
                                                   _%__splice3945639457%_
                                                   _%target3593735995%_
                                                   _%tl3593935998%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3588535968%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3588535968%_))))
                                  (if (gx#stx-pair? _%hd3589236254%_)
                                      (let ((_%e3591336150%_
                                             (gx#syntax-e _%hd3589236254%_)))
                                        (let ((_%tl3591536157%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3591336150%_)))
                                              (_%hd3591436154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3591336150%_))))
                                          (if (gx#stx-pair? _%tl3591536157%_)
                                              (let ((_%e3591636160%_
                                                     (gx#syntax-e
                                                      _%tl3591536157%_)))
                                                (let ((_%tl3591836167%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3591636160%_)))
                                                      (_%hd3591736164%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3591636160%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3591836167%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3589336257%_)
                                                          (let ((_%__splice3945239453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl3589336257%_ '0)))
                    (let ((_%tl3592136173%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3945239453%_ '1)))
                          (_%target3591936170%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3945239453%_ '0))))
                      (if (gx#stx-null? _%tl3592136173%_)
                          (_%__match3951639517%_
                           _%e3588836240%_
                           _%hd3588936244%_
                           _%tl3589036247%_
                           _%e3589136250%_
                           _%hd3589236254%_
                           _%tl3589336257%_
                           _%e3591336150%_
                           _%hd3591436154%_
                           _%tl3591536157%_
                           _%e3591636160%_
                           _%hd3591736164%_
                           _%tl3591836167%_
                           _%__splice3945239453%_
                           _%target3591936170%_
                           _%tl3592136173%_)
                          (if (gx#stx-pair/null? _%hd3589236254%_)
                              (let ((_%__splice3945639457%_
                                     (gx#syntax-split-splice->vector
                                      _%hd3589236254%_
                                      '0)))
                                (let ((_%tl3593935998%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3945639457%_
                                          '1)))
                                      (_%target3593735995%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3945639457%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3593935998%_)
                                      (_%__match3953639537%_
                                       _%e3588836240%_
                                       _%hd3588936244%_
                                       _%tl3589036247%_
                                       _%e3589136250%_
                                       _%hd3589236254%_
                                       _%tl3589336257%_
                                       _%__splice3945639457%_
                                       _%target3593735995%_
                                       _%tl3593935998%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3588535968%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3588535968%_))))))
                  (if (gx#stx-pair/null? _%hd3589236254%_)
                      (let ((_%__splice3945639457%_
                             (gx#syntax-split-splice->vector
                              _%hd3589236254%_
                              '0)))
                        (let ((_%tl3593935998%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3945639457%_ '1)))
                              (_%target3593735995%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3945639457%_ '0))))
                          (if (gx#stx-null? _%tl3593935998%_)
                              (_%__match3953639537%_
                               _%e3588836240%_
                               _%hd3588936244%_
                               _%tl3589036247%_
                               _%e3589136250%_
                               _%hd3589236254%_
                               _%tl3589336257%_
                               _%__splice3945639457%_
                               _%target3593735995%_
                               _%tl3593935998%_)
                              (let ()
                                (declare (not safe))
                                (_%g3588535968%_)))))
                      (let () (declare (not safe)) (_%g3588535968%_))))
              (if (gx#stx-pair/null? _%hd3589236254%_)
                  (let ((_%__splice3945639457%_
                         (gx#syntax-split-splice->vector _%hd3589236254%_ '0)))
                    (let ((_%tl3593935998%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3945639457%_ '1)))
                          (_%target3593735995%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3945639457%_ '0))))
                      (if (gx#stx-null? _%tl3593935998%_)
                          (_%__match3953639537%_
                           _%e3588836240%_
                           _%hd3588936244%_
                           _%tl3589036247%_
                           _%e3589136250%_
                           _%hd3589236254%_
                           _%tl3589336257%_
                           _%__splice3945639457%_
                           _%target3593735995%_
                           _%tl3593935998%_)
                          (let () (declare (not safe)) (_%g3588535968%_)))))
                  (let () (declare (not safe)) (_%g3588535968%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3589236254%_)
                                                  (let ((_%__splice3945639457%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3589236254%_
                                                          '0)))
                                                    (let ((_%tl3593935998%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3945639457%_
                                                              '1)))
                                                          (_%target3593735995%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3945639457%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3593935998%_)
                                                          (_%__match3953639537%_
                                                           _%e3588836240%_
                                                           _%hd3588936244%_
                                                           _%tl3589036247%_
                                                           _%e3589136250%_
                                                           _%hd3589236254%_
                                                           _%tl3589336257%_
                                                           _%__splice3945639457%_
                                                           _%target3593735995%_
                                                           _%tl3593935998%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3588535968%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3588535968%_))))))
                                      (if (gx#stx-pair/null? _%hd3589236254%_)
                                          (let ((_%__splice3945639457%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3589236254%_
                                                  '0)))
                                            (let ((_%tl3593935998%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3945639457%_
                                                      '1)))
                                                  (_%target3593735995%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3945639457%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3593935998%_)
                                                  (_%__match3953639537%_
                                                   _%e3588836240%_
                                                   _%hd3588936244%_
                                                   _%tl3589036247%_
                                                   _%e3589136250%_
                                                   _%hd3589236254%_
                                                   _%tl3589336257%_
                                                   _%__splice3945639457%_
                                                   _%target3593735995%_
                                                   _%tl3593935998%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3588535968%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3588535968%_)))))))
                          (let () (declare (not safe)) (_%g3588535968%_)))))
                  (let () (declare (not safe)) (_%g3588535968%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36321%_)
        (let* ((_%__stx3953939540%_ _%$stx36321%_)
               (_%g3632636378%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3953939540%_))))
          (let ((_%__kont3954239543%_
                 (lambda (_%g3632836544%_
                          _%g3632936546%_
                          _%g3633036547%_
                          _%g3633136548%_
                          _%g3633236549%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%g3633136548%_
                                           (cons _%g3633036547%_ '()))
                                     '())
                               (cons (cons _%g3633236549%_
                                           (cons _%g3632936546%_
                                                 (foldr (lambda (_%g3657436577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3657536580%_)
                  (cons _%g3657436577%_ _%g3657536580%_))
                '()
                _%g3632836544%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3954639547%_
                 (lambda (_%g3635736433%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3645036453%_ _%g3645136456%_)
                                        (cons _%g3645036453%_ _%g3645136456%_))
                                      '()
                                      _%g3635736433%_))))))
            (let* ((_%__match3961239613%_
                    (lambda (_%e3635836385%_
                             _%hd3635936389%_
                             _%tl3636036392%_
                             _%e3636136395%_
                             _%hd3636236399%_
                             _%tl3636336402%_
                             _%__splice3954839549%_
                             _%target3636436405%_
                             _%tl3636636408%_)
                      (letrec ((_%loop3636736411%_
                                (lambda (_%hd3636536415%_ _%body3637136418%_)
                                  (if (gx#stx-pair? _%hd3636536415%_)
                                      (let ((_%e3636836420%_
                                             (gx#syntax-e _%hd3636536415%_)))
                                        (let ((_%lp-tl3637036427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3636836420%_)))
                                              (_%lp-hd3636936424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3636836420%_))))
                                          (_%loop3636736411%_
                                           _%lp-tl3637036427%_
                                           (cons _%lp-hd3636936424%_
                                                 _%body3637136418%_))))
                                      (let ((_%body3637236430%_
                                             (reverse _%body3637136418%_)))
                                        (_%__kont3954639547%_
                                         _%body3637236430%_))))))
                        (_%loop3636736411%_ _%target3636436405%_ '()))))
                   (_%__match3959039591%_
                    (lambda (_%e3633336466%_
                             _%hd3633436470%_
                             _%tl3633536473%_
                             _%e3633636476%_
                             _%hd3633736480%_
                             _%tl3633836483%_
                             _%e3633936486%_
                             _%hd3634036490%_
                             _%tl3634136493%_
                             _%e3634236496%_
                             _%hd3634336500%_
                             _%tl3634436503%_
                             _%e3634536506%_
                             _%hd3634636510%_
                             _%tl3634736513%_
                             _%__splice3954439545%_
                             _%target3634836516%_
                             _%tl3635036519%_)
                      (letrec ((_%loop3635136522%_
                                (lambda (_%hd3634936526%_ _%body3635536529%_)
                                  (if (gx#stx-pair? _%hd3634936526%_)
                                      (let ((_%e3635236531%_
                                             (gx#syntax-e _%hd3634936526%_)))
                                        (let ((_%lp-tl3635436538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3635236531%_)))
                                              (_%lp-hd3635336535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3635236531%_))))
                                          (_%loop3635136522%_
                                           _%lp-tl3635436538%_
                                           (cons _%lp-hd3635336535%_
                                                 _%body3635536529%_))))
                                      (let ((_%body3635636541%_
                                             (reverse _%body3635536529%_)))
                                        (_%__kont3954239543%_
                                         _%body3635636541%_
                                         _%tl3634136493%_
                                         _%hd3634636510%_
                                         _%hd3634336500%_
                                         _%hd3633436470%_))))))
                        (_%loop3635136522%_ _%target3634836516%_ '())))))
              (if (gx#stx-pair? _%__stx3953939540%_)
                  (let ((_%e3633336466%_ (gx#syntax-e _%__stx3953939540%_)))
                    (let ((_%tl3633536473%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3633336466%_)))
                          (_%hd3633436470%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3633336466%_))))
                      (if (gx#stx-pair? _%tl3633536473%_)
                          (let ((_%e3633636476%_
                                 (gx#syntax-e _%tl3633536473%_)))
                            (let ((_%tl3633836483%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3633636476%_)))
                                  (_%hd3633736480%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3633636476%_))))
                              (if (gx#stx-pair? _%hd3633736480%_)
                                  (let ((_%e3633936486%_
                                         (gx#syntax-e _%hd3633736480%_)))
                                    (let ((_%tl3634136493%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3633936486%_)))
                                          (_%hd3634036490%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3633936486%_))))
                                      (if (gx#stx-pair? _%hd3634036490%_)
                                          (let ((_%e3634236496%_
                                                 (gx#syntax-e
                                                  _%hd3634036490%_)))
                                            (let ((_%tl3634436503%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3634236496%_)))
                                                  (_%hd3634336500%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3634236496%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3634436503%_)
                                                  (let ((_%e3634536506%_
                                                         (gx#syntax-e
                                                          _%tl3634436503%_)))
                                                    (let ((_%tl3634736513%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3634536506%_)))
                                                          (_%hd3634636510%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3634536506%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3634736513%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3633836483%_)
                                                              (let ((_%__splice3954439545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl3633836483%_
                              '0)))
                        (let ((_%tl3635036519%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3954439545%_ '1)))
                              (_%target3634836516%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3954439545%_ '0))))
                          (if (gx#stx-null? _%tl3635036519%_)
                              (_%__match3959039591%_
                               _%e3633336466%_
                               _%hd3633436470%_
                               _%tl3633536473%_
                               _%e3633636476%_
                               _%hd3633736480%_
                               _%tl3633836483%_
                               _%e3633936486%_
                               _%hd3634036490%_
                               _%tl3634136493%_
                               _%e3634236496%_
                               _%hd3634336500%_
                               _%tl3634436503%_
                               _%e3634536506%_
                               _%hd3634636510%_
                               _%tl3634736513%_
                               _%__splice3954439545%_
                               _%target3634836516%_
                               _%tl3635036519%_)
                              (let ()
                                (declare (not safe))
                                (_%g3632636378%_)))))
                      (let () (declare (not safe)) (_%g3632636378%_)))
                  (let () (declare (not safe)) (_%g3632636378%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3632636378%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3632636378%_)))))
                                  (if (gx#stx-null? _%hd3633736480%_)
                                      (if (gx#stx-pair/null? _%tl3633836483%_)
                                          (let ((_%__splice3954839549%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl3633836483%_
                                                  '0)))
                                            (let ((_%tl3636636408%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3954839549%_
                                                      '1)))
                                                  (_%target3636436405%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3954839549%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3636636408%_)
                                                  (_%__match3961239613%_
                                                   _%e3633336466%_
                                                   _%hd3633436470%_
                                                   _%tl3633536473%_
                                                   _%e3633636476%_
                                                   _%hd3633736480%_
                                                   _%tl3633836483%_
                                                   _%__splice3954839549%_
                                                   _%target3636436405%_
                                                   _%tl3636636408%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3632636378%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3632636378%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3632636378%_))))))
                          (let () (declare (not safe)) (_%g3632636378%_)))))
                  (let () (declare (not safe)) (_%g3632636378%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx36589%_)
        (let* ((_%__stx3961539616%_ _%$stx36589%_)
               (_%g3660036746%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3961539616%_))))
          (let ((_%__kont3961839619%_
                 (lambda (_%g3660237346%_ _%g3660337348%_ _%g3660437349%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3737037373%_ _%g3737137376%_)
                                  (cons (cons _%g3660437349%_
                                              (cons _%g3737037373%_
                                                    (cons _%g3660237346%_
                                                          '())))
                                        _%g3737137376%_))
                                '()
                                _%g3660337348%_))))
                (_%__kont3962239623%_
                 (lambda (_%g3662637238%_ _%g3662737240%_ _%g3662837241%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3726237265%_ _%g3726337268%_)
                                  (cons (cons _%g3662837241%_
                                              (cons _%g3726237265%_
                                                    (cons _%g3662637238%_
                                                          '())))
                                        _%g3726337268%_))
                                '()
                                _%g3662737240%_))))
                (_%__kont3962639627%_
                 (lambda (_%g3665037140%_ _%g3665137142%_ _%g3665237143%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%g3665237143%_
                                     (cons _%g3665137142%_
                                           (cons _%g3665037140%_ '())))
                               '()))))
                (_%__kont3962839629%_
                 (lambda (_%g3666837066%_ _%g3666937068%_)
                   (cons _%g3666937068%_ (cons _%g3666837066%_ '()))))
                (_%__kont3963039631%_
                 (lambda (_%g3667937014%_ _%g3668037016%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%g3668037016%_
                                           (cons _%g3667937014%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont3963239633%_
                 (lambda (_%g3668736966%_ _%g3668836968%_ _%g3668936969%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%g3668936969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g3668836968%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3668736966%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3963439635%_
                 (lambda (_%g3670236897%_ _%g3670336899%_ _%g3670436900%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g3670436900%_
                                                       (cons _%g3670336899%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3670236897%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3963639637%_
                 (lambda (_%g3671836817%_
                          _%g3671936819%_
                          _%g3672036820%_
                          _%g3672136821%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g3672136821%_
                                                       (cons _%g3672036820%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3671836817%_
                                                             (cons (cons _%g3671936819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match3978839789%_
                    (lambda (_%e3669036926%_
                             _%hd3669136930%_
                             _%tl3669236933%_
                             _%e3669336936%_
                             _%hd3669436940%_
                             _%tl3669536943%_
                             _%e3669636946%_
                             _%hd3669736950%_
                             _%tl3669836953%_)
                      (if (gx#identifier? _%hd3669736950%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39990_|
                               _%hd3669736950%_)
                              (if (gx#stx-pair? _%tl3669836953%_)
                                  (let ((_%e3669936956%_
                                         (gx#syntax-e _%tl3669836953%_)))
                                    (let ((_%tl3670136963%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3669936956%_)))
                                          (_%hd3670036960%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3669936956%_))))
                                      (if (gx#stx-null? _%tl3670136963%_)
                                          (_%__kont3963239633%_
                                           _%hd3670036960%_
                                           _%hd3669436940%_
                                           _%hd3669136930%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3660036746%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3660036746%_)))
                              (let () (declare (not safe)) (_%g3660036746%_)))
                          (if (gx#stx-datum? _%hd3669736950%_)
                              (let ((_%e3671436883%_
                                     (gx#stx-e _%hd3669736950%_)))
                                (if (equal? _%e3671436883%_ '::)
                                    (if (gx#stx-pair? _%tl3669836953%_)
                                        (let ((_%e3671536887%_
                                               (gx#syntax-e _%tl3669836953%_)))
                                          (let ((_%tl3671736894%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3671536887%_)))
                                                (_%hd3671636891%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3671536887%_))))
                                            (if (gx#stx-null? _%tl3671736894%_)
                                                (_%__kont3963439635%_
                                                 _%hd3671636891%_
                                                 _%hd3669436940%_
                                                 _%hd3669136930%_)
                                                (if (gx#stx-pair?
                                                     _%tl3671736894%_)
                                                    (let ((_%e3673536797%_
                                                           (gx#syntax-e
                                                            _%tl3671736894%_)))
                                                      (let ((_%tl3673736804%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3673536797%_)))
                    (_%hd3673636801%_
                     (let () (declare (not safe)) (##car _%e3673536797%_))))
                (if (gx#identifier? _%hd3673636801%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39991_|
                         _%hd3673636801%_)
                        (if (gx#stx-pair? _%tl3673736804%_)
                            (let ((_%e3673836807%_
                                   (gx#syntax-e _%tl3673736804%_)))
                              (let ((_%tl3674036814%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3673836807%_)))
                                    (_%hd3673936811%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3673836807%_))))
                                (if (gx#stx-null? _%tl3674036814%_)
                                    (_%__kont3963639637%_
                                     _%hd3673936811%_
                                     _%hd3671636891%_
                                     _%hd3669436940%_
                                     _%hd3669136930%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3660036746%_)))))
                            (let () (declare (not safe)) (_%g3660036746%_)))
                        (let () (declare (not safe)) (_%g3660036746%_)))
                    (let () (declare (not safe)) (_%g3660036746%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3660036746%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3660036746%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3660036746%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3660036746%_))))))
                   (_%__match3976839769%_
                    (lambda (_%e3668136994%_
                             _%hd3668236998%_
                             _%tl3668337001%_
                             _%e3668437004%_
                             _%hd3668537008%_
                             _%tl3668637011%_)
                      (if (gx#stx-null? _%tl3668637011%_)
                          (_%__kont3963039631%_
                           _%hd3668537008%_
                           _%hd3668236998%_)
                          (if (gx#stx-pair? _%tl3668637011%_)
                              (let ((_%e3669636946%_
                                     (gx#syntax-e _%tl3668637011%_)))
                                (let ((_%tl3669836953%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3669636946%_)))
                                      (_%hd3669736950%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3669636946%_))))
                                  (if (gx#identifier? _%hd3669736950%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39990_|
                                           _%hd3669736950%_)
                                          (if (gx#stx-pair? _%tl3669836953%_)
                                              (let ((_%e3669936956%_
                                                     (gx#syntax-e
                                                      _%tl3669836953%_)))
                                                (let ((_%tl3670136963%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3669936956%_)))
                                                      (_%hd3670036960%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3669936956%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3670136963%_)
                                                      (_%__kont3963239633%_
                                                       _%hd3670036960%_
                                                       _%hd3668537008%_
                                                       _%hd3668236998%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3660036746%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3660036746%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3660036746%_)))
                                      (if (gx#stx-datum? _%hd3669736950%_)
                                          (let ((_%e3671436883%_
                                                 (gx#stx-e _%hd3669736950%_)))
                                            (if (equal? _%e3671436883%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3669836953%_)
                                                    (let ((_%e3671536887%_
                                                           (gx#syntax-e
                                                            _%tl3669836953%_)))
                                                      (let ((_%tl3671736894%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3671536887%_)))
                    (_%hd3671636891%_
                     (let () (declare (not safe)) (##car _%e3671536887%_))))
                (if (gx#stx-null? _%tl3671736894%_)
                    (_%__kont3963439635%_
                     _%hd3671636891%_
                     _%hd3668537008%_
                     _%hd3668236998%_)
                    (if (gx#stx-pair? _%tl3671736894%_)
                        (let ((_%e3673536797%_ (gx#syntax-e _%tl3671736894%_)))
                          (let ((_%tl3673736804%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3673536797%_)))
                                (_%hd3673636801%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3673536797%_))))
                            (if (gx#identifier? _%hd3673636801%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39991_|
                                     _%hd3673636801%_)
                                    (if (gx#stx-pair? _%tl3673736804%_)
                                        (let ((_%e3673836807%_
                                               (gx#syntax-e _%tl3673736804%_)))
                                          (let ((_%tl3674036814%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3673836807%_)))
                                                (_%hd3673936811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3673836807%_))))
                                            (if (gx#stx-null? _%tl3674036814%_)
                                                (_%__kont3963639637%_
                                                 _%hd3673936811%_
                                                 _%hd3671636891%_
                                                 _%hd3668537008%_
                                                 _%hd3668236998%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3660036746%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3660036746%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3660036746%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3660036746%_)))))
                        (let () (declare (not safe)) (_%g3660036746%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3660036746%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3660036746%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3660036746%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3660036746%_))))))
                   (_%__match3969839699%_
                    (lambda (_%e3662937170%_
                             _%hd3663037174%_
                             _%tl3663137177%_
                             _%e3663237180%_
                             _%hd3663337184%_
                             _%tl3663437187%_
                             _%e3663537190%_
                             _%hd3663637194%_
                             _%tl3663737197%_
                             _%__splice3962439625%_
                             _%target3663837200%_
                             _%tl3664037203%_)
                      (letrec ((_%loop3664137206%_
                                (lambda (_%hd3663937210%_ _%pred3664537213%_)
                                  (if (gx#stx-pair? _%hd3663937210%_)
                                      (let ((_%e3664237215%_
                                             (gx#syntax-e _%hd3663937210%_)))
                                        (let ((_%lp-tl3664437222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3664237215%_)))
                                              (_%lp-hd3664337219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3664237215%_))))
                                          (_%loop3664137206%_
                                           _%lp-tl3664437222%_
                                           (cons _%lp-hd3664337219%_
                                                 _%pred3664537213%_))))
                                      (let ((_%pred3664637225%_
                                             (reverse _%pred3664537213%_)))
                                        (if (gx#stx-pair? _%tl3663437187%_)
                                            (let ((_%e3664737228%_
                                                   (gx#syntax-e
                                                    _%tl3663437187%_)))
                                              (let ((_%tl3664937235%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3664737228%_)))
                                                    (_%hd3664837232%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3664737228%_))))
                                                (if (gx#stx-null?
                                                     _%tl3664937235%_)
                                                    (_%__kont3962239623%_
                                                     _%hd3664837232%_
                                                     _%pred3664637225%_
                                                     _%hd3663037174%_)
                                                    (_%__match3978839789%_
                                                     _%e3662937170%_
                                                     _%hd3663037174%_
                                                     _%tl3663137177%_
                                                     _%e3663237180%_
                                                     _%hd3663337184%_
                                                     _%tl3663437187%_
                                                     _%e3664737228%_
                                                     _%hd3664837232%_
                                                     _%tl3664937235%_))))
                                            (_%__match3976839769%_
                                             _%e3662937170%_
                                             _%hd3663037174%_
                                             _%tl3663137177%_
                                             _%e3663237180%_
                                             _%hd3663337184%_
                                             _%tl3663437187%_)))))))
                        (_%loop3664137206%_ _%target3663837200%_ '()))))
                   (_%__match3966839669%_
                    (lambda (_%e3660537278%_
                             _%hd3660637282%_
                             _%tl3660737285%_
                             _%e3660837288%_
                             _%hd3660937292%_
                             _%tl3661037295%_
                             _%e3661137298%_
                             _%hd3661237302%_
                             _%tl3661337305%_
                             _%__splice3962039621%_
                             _%target3661437308%_
                             _%tl3661637311%_)
                      (letrec ((_%loop3661737314%_
                                (lambda (_%hd3661537318%_ _%pred3662137321%_)
                                  (if (gx#stx-pair? _%hd3661537318%_)
                                      (let ((_%e3661837323%_
                                             (gx#syntax-e _%hd3661537318%_)))
                                        (let ((_%lp-tl3662037330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3661837323%_)))
                                              (_%lp-hd3661937327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3661837323%_))))
                                          (_%loop3661737314%_
                                           _%lp-tl3662037330%_
                                           (cons _%lp-hd3661937327%_
                                                 _%pred3662137321%_))))
                                      (let ((_%pred3662237333%_
                                             (reverse _%pred3662137321%_)))
                                        (if (gx#stx-pair? _%tl3661037295%_)
                                            (let ((_%e3662337336%_
                                                   (gx#syntax-e
                                                    _%tl3661037295%_)))
                                              (let ((_%tl3662537343%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3662337336%_)))
                                                    (_%hd3662437340%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3662337336%_))))
                                                (if (gx#stx-null?
                                                     _%tl3662537343%_)
                                                    (_%__kont3961839619%_
                                                     _%hd3662437340%_
                                                     _%pred3662237333%_
                                                     _%hd3660637282%_)
                                                    (_%__match3978839789%_
                                                     _%e3660537278%_
                                                     _%hd3660637282%_
                                                     _%tl3660737285%_
                                                     _%e3660837288%_
                                                     _%hd3660937292%_
                                                     _%tl3661037295%_
                                                     _%e3662337336%_
                                                     _%hd3662437340%_
                                                     _%tl3662537343%_))))
                                            (_%__match3976839769%_
                                             _%e3660537278%_
                                             _%hd3660637282%_
                                             _%tl3660737285%_
                                             _%e3660837288%_
                                             _%hd3660937292%_
                                             _%tl3661037295%_)))))))
                        (_%loop3661737314%_ _%target3661437308%_ '())))))
              (if (gx#stx-pair? _%__stx3961539616%_)
                  (let ((_%e3660537278%_ (gx#syntax-e _%__stx3961539616%_)))
                    (let ((_%tl3660737285%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3660537278%_)))
                          (_%hd3660637282%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3660537278%_))))
                      (if (gx#stx-pair? _%tl3660737285%_)
                          (let ((_%e3660837288%_
                                 (gx#syntax-e _%tl3660737285%_)))
                            (let ((_%tl3661037295%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3660837288%_)))
                                  (_%hd3660937292%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3660837288%_))))
                              (if (gx#stx-pair? _%hd3660937292%_)
                                  (let ((_%e3661137298%_
                                         (gx#syntax-e _%hd3660937292%_)))
                                    (let ((_%tl3661337305%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3661137298%_)))
                                          (_%hd3661237302%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3661137298%_))))
                                      (if (gx#identifier? _%hd3661237302%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39992_|
                                               _%hd3661237302%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3661337305%_)
                                                  (let ((_%__splice3962039621%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl3661337305%_
                                                          '0)))
                                                    (let ((_%tl3661637311%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3962039621%_
                                                              '1)))
                                                          (_%target3661437308%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3962039621%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3661637311%_)
                                                          (_%__match3966839669%_
                                                           _%e3660537278%_
                                                           _%hd3660637282%_
                                                           _%tl3660737285%_
                                                           _%e3660837288%_
                                                           _%hd3660937292%_
                                                           _%tl3661037295%_
                                                           _%e3661137298%_
                                                           _%hd3661237302%_
                                                           _%tl3661337305%_
                                                           _%__splice3962039621%_
                                                           _%target3661437308%_
                                                           _%tl3661637311%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3661037295%_)
                                                              (let ((_%e3667637056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3661037295%_)))
                        (let ((_%tl3667837063%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3667637056%_)))
                              (_%hd3667737060%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3667637056%_))))
                          (if (gx#stx-null? _%tl3667837063%_)
                              (_%__kont3962839629%_
                               _%hd3667737060%_
                               _%hd3660937292%_)
                              (if (gx#identifier? _%hd3667737060%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39990_|
                                       _%hd3667737060%_)
                                      (if (gx#stx-pair? _%tl3667837063%_)
                                          (let ((_%e3669936956%_
                                                 (gx#syntax-e
                                                  _%tl3667837063%_)))
                                            (let ((_%tl3670136963%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3669936956%_)))
                                                  (_%hd3670036960%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3669936956%_))))
                                              (if (gx#stx-null?
                                                   _%tl3670136963%_)
                                                  (_%__kont3963239633%_
                                                   _%hd3670036960%_
                                                   _%hd3660937292%_
                                                   _%hd3660637282%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3660036746%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3660036746%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3660036746%_)))
                                  (if (gx#stx-datum? _%hd3667737060%_)
                                      (let ((_%e3671436883%_
                                             (gx#stx-e _%hd3667737060%_)))
                                        (if (equal? _%e3671436883%_ '::)
                                            (if (gx#stx-pair? _%tl3667837063%_)
                                                (let ((_%e3671536887%_
                                                       (gx#syntax-e
                                                        _%tl3667837063%_)))
                                                  (let ((_%tl3671736894%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3671536887%_)))
                                                        (_%hd3671636891%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3671536887%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3671736894%_)
                                                        (_%__kont3963439635%_
                                                         _%hd3671636891%_
                                                         _%hd3660937292%_
                                                         _%hd3660637282%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3671736894%_)
                                                            (let ((_%e3673536797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3671736894%_)))
                      (let ((_%tl3673736804%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3673536797%_)))
                            (_%hd3673636801%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3673536797%_))))
                        (if (gx#identifier? _%hd3673636801%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39991_|
                                 _%hd3673636801%_)
                                (if (gx#stx-pair? _%tl3673736804%_)
                                    (let ((_%e3673836807%_
                                           (gx#syntax-e _%tl3673736804%_)))
                                      (let ((_%tl3674036814%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3673836807%_)))
                                            (_%hd3673936811%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3673836807%_))))
                                        (if (gx#stx-null? _%tl3674036814%_)
                                            (_%__kont3963639637%_
                                             _%hd3673936811%_
                                             _%hd3671636891%_
                                             _%hd3660937292%_
                                             _%hd3660637282%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3660036746%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3660036746%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3660036746%_)))
                            (let () (declare (not safe)) (_%g3660036746%_)))))
                    (let () (declare (not safe)) (_%g3660036746%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3660036746%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3660036746%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3660036746%_)))))))
                      (if (gx#stx-null? _%tl3661037295%_)
                          (_%__kont3963039631%_
                           _%hd3660937292%_
                           _%hd3660637282%_)
                          (let () (declare (not safe)) (_%g3660036746%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3661037295%_)
                                                      (let ((_%e3667637056%_
                                                             (gx#syntax-e
                                                              _%tl3661037295%_)))
                                                        (let ((_%tl3667837063%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3667637056%_)))
                      (_%hd3667737060%_
                       (let () (declare (not safe)) (##car _%e3667637056%_))))
                  (if (gx#stx-null? _%tl3667837063%_)
                      (_%__kont3962839629%_ _%hd3667737060%_ _%hd3660937292%_)
                      (if (gx#identifier? _%hd3667737060%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39990_|
                               _%hd3667737060%_)
                              (if (gx#stx-pair? _%tl3667837063%_)
                                  (let ((_%e3669936956%_
                                         (gx#syntax-e _%tl3667837063%_)))
                                    (let ((_%tl3670136963%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3669936956%_)))
                                          (_%hd3670036960%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3669936956%_))))
                                      (if (gx#stx-null? _%tl3670136963%_)
                                          (_%__kont3963239633%_
                                           _%hd3670036960%_
                                           _%hd3660937292%_
                                           _%hd3660637282%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3660036746%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3660036746%_)))
                              (let () (declare (not safe)) (_%g3660036746%_)))
                          (if (gx#stx-datum? _%hd3667737060%_)
                              (let ((_%e3671436883%_
                                     (gx#stx-e _%hd3667737060%_)))
                                (if (equal? _%e3671436883%_ '::)
                                    (if (gx#stx-pair? _%tl3667837063%_)
                                        (let ((_%e3671536887%_
                                               (gx#syntax-e _%tl3667837063%_)))
                                          (let ((_%tl3671736894%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3671536887%_)))
                                                (_%hd3671636891%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3671536887%_))))
                                            (if (gx#stx-null? _%tl3671736894%_)
                                                (_%__kont3963439635%_
                                                 _%hd3671636891%_
                                                 _%hd3660937292%_
                                                 _%hd3660637282%_)
                                                (if (gx#stx-pair?
                                                     _%tl3671736894%_)
                                                    (let ((_%e3673536797%_
                                                           (gx#syntax-e
                                                            _%tl3671736894%_)))
                                                      (let ((_%tl3673736804%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3673536797%_)))
                    (_%hd3673636801%_
                     (let () (declare (not safe)) (##car _%e3673536797%_))))
                (if (gx#identifier? _%hd3673636801%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39991_|
                         _%hd3673636801%_)
                        (if (gx#stx-pair? _%tl3673736804%_)
                            (let ((_%e3673836807%_
                                   (gx#syntax-e _%tl3673736804%_)))
                              (let ((_%tl3674036814%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3673836807%_)))
                                    (_%hd3673936811%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3673836807%_))))
                                (if (gx#stx-null? _%tl3674036814%_)
                                    (_%__kont3963639637%_
                                     _%hd3673936811%_
                                     _%hd3671636891%_
                                     _%hd3660937292%_
                                     _%hd3660637282%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3660036746%_)))))
                            (let () (declare (not safe)) (_%g3660036746%_)))
                        (let () (declare (not safe)) (_%g3660036746%_)))
                    (let () (declare (not safe)) (_%g3660036746%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3660036746%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3660036746%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3660036746%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3660036746%_)))))))
              (if (gx#stx-null? _%tl3661037295%_)
                  (_%__kont3963039631%_ _%hd3660937292%_ _%hd3660637282%_)
                  (let () (declare (not safe)) (_%g3660036746%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39993_|
                                                   _%hd3661237302%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3661337305%_)
                                                      (let ((_%__splice3962439625%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl3661337305%_
                                                              '0)))
                                                        (let ((_%tl3664037203%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice3962439625%_ '1)))
                      (_%target3663837200%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice3962439625%_ '0))))
                  (if (gx#stx-null? _%tl3664037203%_)
                      (_%__match3969839699%_
                       _%e3660537278%_
                       _%hd3660637282%_
                       _%tl3660737285%_
                       _%e3660837288%_
                       _%hd3660937292%_
                       _%tl3661037295%_
                       _%e3661137298%_
                       _%hd3661237302%_
                       _%tl3661337305%_
                       _%__splice3962439625%_
                       _%target3663837200%_
                       _%tl3664037203%_)
                      (if (gx#stx-pair? _%tl3661037295%_)
                          (let ((_%e3667637056%_
                                 (gx#syntax-e _%tl3661037295%_)))
                            (let ((_%tl3667837063%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3667637056%_)))
                                  (_%hd3667737060%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3667637056%_))))
                              (if (gx#stx-null? _%tl3667837063%_)
                                  (_%__kont3962839629%_
                                   _%hd3667737060%_
                                   _%hd3660937292%_)
                                  (if (gx#identifier? _%hd3667737060%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39990_|
                                           _%hd3667737060%_)
                                          (if (gx#stx-pair? _%tl3667837063%_)
                                              (let ((_%e3669936956%_
                                                     (gx#syntax-e
                                                      _%tl3667837063%_)))
                                                (let ((_%tl3670136963%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3669936956%_)))
                                                      (_%hd3670036960%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3669936956%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3670136963%_)
                                                      (_%__kont3963239633%_
                                                       _%hd3670036960%_
                                                       _%hd3660937292%_
                                                       _%hd3660637282%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3660036746%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3660036746%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3660036746%_)))
                                      (if (gx#stx-datum? _%hd3667737060%_)
                                          (let ((_%e3671436883%_
                                                 (gx#stx-e _%hd3667737060%_)))
                                            (if (equal? _%e3671436883%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3667837063%_)
                                                    (let ((_%e3671536887%_
                                                           (gx#syntax-e
                                                            _%tl3667837063%_)))
                                                      (let ((_%tl3671736894%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3671536887%_)))
                    (_%hd3671636891%_
                     (let () (declare (not safe)) (##car _%e3671536887%_))))
                (if (gx#stx-null? _%tl3671736894%_)
                    (_%__kont3963439635%_
                     _%hd3671636891%_
                     _%hd3660937292%_
                     _%hd3660637282%_)
                    (if (gx#stx-pair? _%tl3671736894%_)
                        (let ((_%e3673536797%_ (gx#syntax-e _%tl3671736894%_)))
                          (let ((_%tl3673736804%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3673536797%_)))
                                (_%hd3673636801%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3673536797%_))))
                            (if (gx#identifier? _%hd3673636801%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39991_|
                                     _%hd3673636801%_)
                                    (if (gx#stx-pair? _%tl3673736804%_)
                                        (let ((_%e3673836807%_
                                               (gx#syntax-e _%tl3673736804%_)))
                                          (let ((_%tl3674036814%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3673836807%_)))
                                                (_%hd3673936811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3673836807%_))))
                                            (if (gx#stx-null? _%tl3674036814%_)
                                                (_%__kont3963639637%_
                                                 _%hd3673936811%_
                                                 _%hd3671636891%_
                                                 _%hd3660937292%_
                                                 _%hd3660637282%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3660036746%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3660036746%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3660036746%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3660036746%_)))))
                        (let () (declare (not safe)) (_%g3660036746%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3660036746%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3660036746%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3660036746%_)))))))
                          (if (gx#stx-null? _%tl3661037295%_)
                              (_%__kont3963039631%_
                               _%hd3660937292%_
                               _%hd3660637282%_)
                              (let ()
                                (declare (not safe))
                                (_%g3660036746%_)))))))
              (if (gx#stx-pair? _%tl3661037295%_)
                  (let ((_%e3667637056%_ (gx#syntax-e _%tl3661037295%_)))
                    (let ((_%tl3667837063%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3667637056%_)))
                          (_%hd3667737060%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3667637056%_))))
                      (if (gx#stx-null? _%tl3667837063%_)
                          (_%__kont3962839629%_
                           _%hd3667737060%_
                           _%hd3660937292%_)
                          (if (gx#identifier? _%hd3667737060%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39990_|
                                   _%hd3667737060%_)
                                  (if (gx#stx-pair? _%tl3667837063%_)
                                      (let ((_%e3669936956%_
                                             (gx#syntax-e _%tl3667837063%_)))
                                        (let ((_%tl3670136963%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3669936956%_)))
                                              (_%hd3670036960%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3669936956%_))))
                                          (if (gx#stx-null? _%tl3670136963%_)
                                              (_%__kont3963239633%_
                                               _%hd3670036960%_
                                               _%hd3660937292%_
                                               _%hd3660637282%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3660036746%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3660036746%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3660036746%_)))
                              (if (gx#stx-datum? _%hd3667737060%_)
                                  (let ((_%e3671436883%_
                                         (gx#stx-e _%hd3667737060%_)))
                                    (if (equal? _%e3671436883%_ '::)
                                        (if (gx#stx-pair? _%tl3667837063%_)
                                            (let ((_%e3671536887%_
                                                   (gx#syntax-e
                                                    _%tl3667837063%_)))
                                              (let ((_%tl3671736894%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3671536887%_)))
                                                    (_%hd3671636891%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3671536887%_))))
                                                (if (gx#stx-null?
                                                     _%tl3671736894%_)
                                                    (_%__kont3963439635%_
                                                     _%hd3671636891%_
                                                     _%hd3660937292%_
                                                     _%hd3660637282%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3671736894%_)
                                                        (let ((_%e3673536797%_
                                                               (gx#syntax-e
                                                                _%tl3671736894%_)))
                                                          (let ((_%tl3673736804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3673536797%_)))
                        (_%hd3673636801%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3673536797%_))))
                    (if (gx#identifier? _%hd3673636801%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39991_|
                             _%hd3673636801%_)
                            (if (gx#stx-pair? _%tl3673736804%_)
                                (let ((_%e3673836807%_
                                       (gx#syntax-e _%tl3673736804%_)))
                                  (let ((_%tl3674036814%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3673836807%_)))
                                        (_%hd3673936811%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3673836807%_))))
                                    (if (gx#stx-null? _%tl3674036814%_)
                                        (_%__kont3963639637%_
                                         _%hd3673936811%_
                                         _%hd3671636891%_
                                         _%hd3660937292%_
                                         _%hd3660637282%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3660036746%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3660036746%_)))
                            (let () (declare (not safe)) (_%g3660036746%_)))
                        (let () (declare (not safe)) (_%g3660036746%_)))))
                (let () (declare (not safe)) (_%g3660036746%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3660036746%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3660036746%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3660036746%_)))))))
                  (if (gx#stx-null? _%tl3661037295%_)
                      (_%__kont3963039631%_ _%hd3660937292%_ _%hd3660637282%_)
                      (let () (declare (not safe)) (_%g3660036746%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39994_|
                                                       _%hd3661237302%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3661337305%_)
                                                          (let ((_%e3666237120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3661337305%_)))
                    (let ((_%tl3666437127%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3666237120%_)))
                          (_%hd3666337124%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3666237120%_))))
                      (if (gx#stx-null? _%tl3666437127%_)
                          (if (gx#stx-pair? _%tl3661037295%_)
                              (let ((_%e3666537130%_
                                     (gx#syntax-e _%tl3661037295%_)))
                                (let ((_%tl3666737137%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3666537130%_)))
                                      (_%hd3666637134%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3666537130%_))))
                                  (if (gx#stx-null? _%tl3666737137%_)
                                      (_%__kont3962639627%_
                                       _%hd3666637134%_
                                       _%hd3666337124%_
                                       _%hd3660637282%_)
                                      (if (gx#identifier? _%hd3666637134%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39990_|
                                               _%hd3666637134%_)
                                              (if (gx#stx-pair?
                                                   _%tl3666737137%_)
                                                  (let ((_%e3669936956%_
                                                         (gx#syntax-e
                                                          _%tl3666737137%_)))
                                                    (let ((_%tl3670136963%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3669936956%_)))
                                                          (_%hd3670036960%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3669936956%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3670136963%_)
                                                          (_%__kont3963239633%_
                                                           _%hd3670036960%_
                                                           _%hd3660937292%_
                                                           _%hd3660637282%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3660036746%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3660036746%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3660036746%_)))
                                          (if (gx#stx-datum? _%hd3666637134%_)
                                              (let ((_%e3671436883%_
                                                     (gx#stx-e
                                                      _%hd3666637134%_)))
                                                (if (equal? _%e3671436883%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3666737137%_)
                                                        (let ((_%e3671536887%_
                                                               (gx#syntax-e
                                                                _%tl3666737137%_)))
                                                          (let ((_%tl3671736894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3671536887%_)))
                        (_%hd3671636891%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3671536887%_))))
                    (if (gx#stx-null? _%tl3671736894%_)
                        (_%__kont3963439635%_
                         _%hd3671636891%_
                         _%hd3660937292%_
                         _%hd3660637282%_)
                        (if (gx#stx-pair? _%tl3671736894%_)
                            (let ((_%e3673536797%_
                                   (gx#syntax-e _%tl3671736894%_)))
                              (let ((_%tl3673736804%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3673536797%_)))
                                    (_%hd3673636801%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3673536797%_))))
                                (if (gx#identifier? _%hd3673636801%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39991_|
                                         _%hd3673636801%_)
                                        (if (gx#stx-pair? _%tl3673736804%_)
                                            (let ((_%e3673836807%_
                                                   (gx#syntax-e
                                                    _%tl3673736804%_)))
                                              (let ((_%tl3674036814%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3673836807%_)))
                                                    (_%hd3673936811%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3673836807%_))))
                                                (if (gx#stx-null?
                                                     _%tl3674036814%_)
                                                    (_%__kont3963639637%_
                                                     _%hd3673936811%_
                                                     _%hd3671636891%_
                                                     _%hd3660937292%_
                                                     _%hd3660637282%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3660036746%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3660036746%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3660036746%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3660036746%_)))))
                            (let () (declare (not safe)) (_%g3660036746%_))))))
                (let () (declare (not safe)) (_%g3660036746%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3660036746%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3660036746%_)))))))
                              (if (gx#stx-null? _%tl3661037295%_)
                                  (_%__kont3963039631%_
                                   _%hd3660937292%_
                                   _%hd3660637282%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3660036746%_))))
                          (if (gx#stx-pair? _%tl3661037295%_)
                              (let ((_%e3667637056%_
                                     (gx#syntax-e _%tl3661037295%_)))
                                (let ((_%tl3667837063%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3667637056%_)))
                                      (_%hd3667737060%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3667637056%_))))
                                  (if (gx#stx-null? _%tl3667837063%_)
                                      (_%__kont3962839629%_
                                       _%hd3667737060%_
                                       _%hd3660937292%_)
                                      (if (gx#identifier? _%hd3667737060%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39990_|
                                               _%hd3667737060%_)
                                              (if (gx#stx-pair?
                                                   _%tl3667837063%_)
                                                  (let ((_%e3669936956%_
                                                         (gx#syntax-e
                                                          _%tl3667837063%_)))
                                                    (let ((_%tl3670136963%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3669936956%_)))
                                                          (_%hd3670036960%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3669936956%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3670136963%_)
                                                          (_%__kont3963239633%_
                                                           _%hd3670036960%_
                                                           _%hd3660937292%_
                                                           _%hd3660637282%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3660036746%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3660036746%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3660036746%_)))
                                          (if (gx#stx-datum? _%hd3667737060%_)
                                              (let ((_%e3671436883%_
                                                     (gx#stx-e
                                                      _%hd3667737060%_)))
                                                (if (equal? _%e3671436883%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3667837063%_)
                                                        (let ((_%e3671536887%_
                                                               (gx#syntax-e
                                                                _%tl3667837063%_)))
                                                          (let ((_%tl3671736894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3671536887%_)))
                        (_%hd3671636891%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3671536887%_))))
                    (if (gx#stx-null? _%tl3671736894%_)
                        (_%__kont3963439635%_
                         _%hd3671636891%_
                         _%hd3660937292%_
                         _%hd3660637282%_)
                        (if (gx#stx-pair? _%tl3671736894%_)
                            (let ((_%e3673536797%_
                                   (gx#syntax-e _%tl3671736894%_)))
                              (let ((_%tl3673736804%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3673536797%_)))
                                    (_%hd3673636801%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3673536797%_))))
                                (if (gx#identifier? _%hd3673636801%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39991_|
                                         _%hd3673636801%_)
                                        (if (gx#stx-pair? _%tl3673736804%_)
                                            (let ((_%e3673836807%_
                                                   (gx#syntax-e
                                                    _%tl3673736804%_)))
                                              (let ((_%tl3674036814%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3673836807%_)))
                                                    (_%hd3673936811%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3673836807%_))))
                                                (if (gx#stx-null?
                                                     _%tl3674036814%_)
                                                    (_%__kont3963639637%_
                                                     _%hd3673936811%_
                                                     _%hd3671636891%_
                                                     _%hd3660937292%_
                                                     _%hd3660637282%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3660036746%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3660036746%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3660036746%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3660036746%_)))))
                            (let () (declare (not safe)) (_%g3660036746%_))))))
                (let () (declare (not safe)) (_%g3660036746%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3660036746%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3660036746%_)))))))
                              (if (gx#stx-null? _%tl3661037295%_)
                                  (_%__kont3963039631%_
                                   _%hd3660937292%_
                                   _%hd3660637282%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3660036746%_)))))))
                  (if (gx#stx-pair? _%tl3661037295%_)
                      (let ((_%e3667637056%_ (gx#syntax-e _%tl3661037295%_)))
                        (let ((_%tl3667837063%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3667637056%_)))
                              (_%hd3667737060%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3667637056%_))))
                          (if (gx#stx-null? _%tl3667837063%_)
                              (_%__kont3962839629%_
                               _%hd3667737060%_
                               _%hd3660937292%_)
                              (if (gx#identifier? _%hd3667737060%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39990_|
                                       _%hd3667737060%_)
                                      (if (gx#stx-pair? _%tl3667837063%_)
                                          (let ((_%e3669936956%_
                                                 (gx#syntax-e
                                                  _%tl3667837063%_)))
                                            (let ((_%tl3670136963%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3669936956%_)))
                                                  (_%hd3670036960%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3669936956%_))))
                                              (if (gx#stx-null?
                                                   _%tl3670136963%_)
                                                  (_%__kont3963239633%_
                                                   _%hd3670036960%_
                                                   _%hd3660937292%_
                                                   _%hd3660637282%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3660036746%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3660036746%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3660036746%_)))
                                  (if (gx#stx-datum? _%hd3667737060%_)
                                      (let ((_%e3671436883%_
                                             (gx#stx-e _%hd3667737060%_)))
                                        (if (equal? _%e3671436883%_ '::)
                                            (if (gx#stx-pair? _%tl3667837063%_)
                                                (let ((_%e3671536887%_
                                                       (gx#syntax-e
                                                        _%tl3667837063%_)))
                                                  (let ((_%tl3671736894%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3671536887%_)))
                                                        (_%hd3671636891%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3671536887%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3671736894%_)
                                                        (_%__kont3963439635%_
                                                         _%hd3671636891%_
                                                         _%hd3660937292%_
                                                         _%hd3660637282%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3671736894%_)
                                                            (let ((_%e3673536797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3671736894%_)))
                      (let ((_%tl3673736804%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3673536797%_)))
                            (_%hd3673636801%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3673536797%_))))
                        (if (gx#identifier? _%hd3673636801%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39991_|
                                 _%hd3673636801%_)
                                (if (gx#stx-pair? _%tl3673736804%_)
                                    (let ((_%e3673836807%_
                                           (gx#syntax-e _%tl3673736804%_)))
                                      (let ((_%tl3674036814%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3673836807%_)))
                                            (_%hd3673936811%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3673836807%_))))
                                        (if (gx#stx-null? _%tl3674036814%_)
                                            (_%__kont3963639637%_
                                             _%hd3673936811%_
                                             _%hd3671636891%_
                                             _%hd3660937292%_
                                             _%hd3660637282%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3660036746%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3660036746%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3660036746%_)))
                            (let () (declare (not safe)) (_%g3660036746%_)))))
                    (let () (declare (not safe)) (_%g3660036746%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3660036746%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3660036746%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3660036746%_)))))))
                      (if (gx#stx-null? _%tl3661037295%_)
                          (_%__kont3963039631%_
                           _%hd3660937292%_
                           _%hd3660637282%_)
                          (let () (declare (not safe)) (_%g3660036746%_)))))
              (if (gx#stx-pair? _%tl3661037295%_)
                  (let ((_%e3667637056%_ (gx#syntax-e _%tl3661037295%_)))
                    (let ((_%tl3667837063%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3667637056%_)))
                          (_%hd3667737060%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3667637056%_))))
                      (if (gx#stx-null? _%tl3667837063%_)
                          (_%__kont3962839629%_
                           _%hd3667737060%_
                           _%hd3660937292%_)
                          (if (gx#identifier? _%hd3667737060%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39990_|
                                   _%hd3667737060%_)
                                  (if (gx#stx-pair? _%tl3667837063%_)
                                      (let ((_%e3669936956%_
                                             (gx#syntax-e _%tl3667837063%_)))
                                        (let ((_%tl3670136963%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3669936956%_)))
                                              (_%hd3670036960%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3669936956%_))))
                                          (if (gx#stx-null? _%tl3670136963%_)
                                              (_%__kont3963239633%_
                                               _%hd3670036960%_
                                               _%hd3660937292%_
                                               _%hd3660637282%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3660036746%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3660036746%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3660036746%_)))
                              (if (gx#stx-datum? _%hd3667737060%_)
                                  (let ((_%e3671436883%_
                                         (gx#stx-e _%hd3667737060%_)))
                                    (if (equal? _%e3671436883%_ '::)
                                        (if (gx#stx-pair? _%tl3667837063%_)
                                            (let ((_%e3671536887%_
                                                   (gx#syntax-e
                                                    _%tl3667837063%_)))
                                              (let ((_%tl3671736894%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3671536887%_)))
                                                    (_%hd3671636891%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3671536887%_))))
                                                (if (gx#stx-null?
                                                     _%tl3671736894%_)
                                                    (_%__kont3963439635%_
                                                     _%hd3671636891%_
                                                     _%hd3660937292%_
                                                     _%hd3660637282%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3671736894%_)
                                                        (let ((_%e3673536797%_
                                                               (gx#syntax-e
                                                                _%tl3671736894%_)))
                                                          (let ((_%tl3673736804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3673536797%_)))
                        (_%hd3673636801%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3673536797%_))))
                    (if (gx#identifier? _%hd3673636801%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39991_|
                             _%hd3673636801%_)
                            (if (gx#stx-pair? _%tl3673736804%_)
                                (let ((_%e3673836807%_
                                       (gx#syntax-e _%tl3673736804%_)))
                                  (let ((_%tl3674036814%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3673836807%_)))
                                        (_%hd3673936811%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3673836807%_))))
                                    (if (gx#stx-null? _%tl3674036814%_)
                                        (_%__kont3963639637%_
                                         _%hd3673936811%_
                                         _%hd3671636891%_
                                         _%hd3660937292%_
                                         _%hd3660637282%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3660036746%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3660036746%_)))
                            (let () (declare (not safe)) (_%g3660036746%_)))
                        (let () (declare (not safe)) (_%g3660036746%_)))))
                (let () (declare (not safe)) (_%g3660036746%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3660036746%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3660036746%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3660036746%_)))))))
                  (if (gx#stx-null? _%tl3661037295%_)
                      (_%__kont3963039631%_ _%hd3660937292%_ _%hd3660637282%_)
                      (let () (declare (not safe)) (_%g3660036746%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3661037295%_)
                                              (let ((_%e3667637056%_
                                                     (gx#syntax-e
                                                      _%tl3661037295%_)))
                                                (let ((_%tl3667837063%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3667637056%_)))
                                                      (_%hd3667737060%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3667637056%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3667837063%_)
                                                      (_%__kont3962839629%_
                                                       _%hd3667737060%_
                                                       _%hd3660937292%_)
                                                      (if (gx#identifier?
                                                           _%hd3667737060%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g39990_|
                                                               _%hd3667737060%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3667837063%_)
                          (let ((_%e3669936956%_
                                 (gx#syntax-e _%tl3667837063%_)))
                            (let ((_%tl3670136963%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3669936956%_)))
                                  (_%hd3670036960%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3669936956%_))))
                              (if (gx#stx-null? _%tl3670136963%_)
                                  (_%__kont3963239633%_
                                   _%hd3670036960%_
                                   _%hd3660937292%_
                                   _%hd3660637282%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3660036746%_)))))
                          (let () (declare (not safe)) (_%g3660036746%_)))
                      (let () (declare (not safe)) (_%g3660036746%_)))
                  (if (gx#stx-datum? _%hd3667737060%_)
                      (let ((_%e3671436883%_ (gx#stx-e _%hd3667737060%_)))
                        (if (equal? _%e3671436883%_ '::)
                            (if (gx#stx-pair? _%tl3667837063%_)
                                (let ((_%e3671536887%_
                                       (gx#syntax-e _%tl3667837063%_)))
                                  (let ((_%tl3671736894%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3671536887%_)))
                                        (_%hd3671636891%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3671536887%_))))
                                    (if (gx#stx-null? _%tl3671736894%_)
                                        (_%__kont3963439635%_
                                         _%hd3671636891%_
                                         _%hd3660937292%_
                                         _%hd3660637282%_)
                                        (if (gx#stx-pair? _%tl3671736894%_)
                                            (let ((_%e3673536797%_
                                                   (gx#syntax-e
                                                    _%tl3671736894%_)))
                                              (let ((_%tl3673736804%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3673536797%_)))
                                                    (_%hd3673636801%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3673536797%_))))
                                                (if (gx#identifier?
                                                     _%hd3673636801%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g39991_|
                                                         _%hd3673636801%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3673736804%_)
                                                            (let ((_%e3673836807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3673736804%_)))
                      (let ((_%tl3674036814%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3673836807%_)))
                            (_%hd3673936811%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3673836807%_))))
                        (if (gx#stx-null? _%tl3674036814%_)
                            (_%__kont3963639637%_
                             _%hd3673936811%_
                             _%hd3671636891%_
                             _%hd3660937292%_
                             _%hd3660637282%_)
                            (let () (declare (not safe)) (_%g3660036746%_)))))
                    (let () (declare (not safe)) (_%g3660036746%_)))
                (let () (declare (not safe)) (_%g3660036746%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3660036746%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3660036746%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3660036746%_)))
                            (let () (declare (not safe)) (_%g3660036746%_))))
                      (let () (declare (not safe)) (_%g3660036746%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3661037295%_)
                                                  (_%__kont3963039631%_
                                                   _%hd3660937292%_
                                                   _%hd3660637282%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3660036746%_)))))))
                                  (if (gx#stx-pair? _%tl3661037295%_)
                                      (let ((_%e3667637056%_
                                             (gx#syntax-e _%tl3661037295%_)))
                                        (let ((_%tl3667837063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3667637056%_)))
                                              (_%hd3667737060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3667637056%_))))
                                          (if (gx#stx-null? _%tl3667837063%_)
                                              (_%__kont3962839629%_
                                               _%hd3667737060%_
                                               _%hd3660937292%_)
                                              (if (gx#identifier?
                                                   _%hd3667737060%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39990_|
                                                       _%hd3667737060%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3667837063%_)
                                                          (let ((_%e3669936956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3667837063%_)))
                    (let ((_%tl3670136963%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3669936956%_)))
                          (_%hd3670036960%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3669936956%_))))
                      (if (gx#stx-null? _%tl3670136963%_)
                          (_%__kont3963239633%_
                           _%hd3670036960%_
                           _%hd3660937292%_
                           _%hd3660637282%_)
                          (let () (declare (not safe)) (_%g3660036746%_)))))
                  (let () (declare (not safe)) (_%g3660036746%_)))
              (let () (declare (not safe)) (_%g3660036746%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3667737060%_)
                                                      (let ((_%e3671436883%_
                                                             (gx#stx-e
                                                              _%hd3667737060%_)))
                                                        (if (equal? _%e3671436883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3667837063%_)
                        (let ((_%e3671536887%_ (gx#syntax-e _%tl3667837063%_)))
                          (let ((_%tl3671736894%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3671536887%_)))
                                (_%hd3671636891%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3671536887%_))))
                            (if (gx#stx-null? _%tl3671736894%_)
                                (_%__kont3963439635%_
                                 _%hd3671636891%_
                                 _%hd3660937292%_
                                 _%hd3660637282%_)
                                (if (gx#stx-pair? _%tl3671736894%_)
                                    (let ((_%e3673536797%_
                                           (gx#syntax-e _%tl3671736894%_)))
                                      (let ((_%tl3673736804%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3673536797%_)))
                                            (_%hd3673636801%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3673536797%_))))
                                        (if (gx#identifier? _%hd3673636801%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39991_|
                                                 _%hd3673636801%_)
                                                (if (gx#stx-pair?
                                                     _%tl3673736804%_)
                                                    (let ((_%e3673836807%_
                                                           (gx#syntax-e
                                                            _%tl3673736804%_)))
                                                      (let ((_%tl3674036814%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3673836807%_)))
                    (_%hd3673936811%_
                     (let () (declare (not safe)) (##car _%e3673836807%_))))
                (if (gx#stx-null? _%tl3674036814%_)
                    (_%__kont3963639637%_
                     _%hd3673936811%_
                     _%hd3671636891%_
                     _%hd3660937292%_
                     _%hd3660637282%_)
                    (let () (declare (not safe)) (_%g3660036746%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3660036746%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3660036746%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3660036746%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3660036746%_))))))
                        (let () (declare (not safe)) (_%g3660036746%_)))
                    (let () (declare (not safe)) (_%g3660036746%_))))
              (let () (declare (not safe)) (_%g3660036746%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3661037295%_)
                                          (_%__kont3963039631%_
                                           _%hd3660937292%_
                                           _%hd3660637282%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3660036746%_)))))))
                          (let () (declare (not safe)) (_%g3660036746%_)))))
                  (let () (declare (not safe)) (_%g3660036746%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37385%_)
        (let* ((_%__stx3988339884%_ _%$stx37385%_)
               (_%g3739037424%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3988339884%_))))
          (let ((_%__kont3988639887%_
                 (lambda (_%g3739237528%_ _%g3739337530%_ _%g3739437531%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%g3739437531%_
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
                                       (cons _%g3739337530%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%g3739237528%_ '()))
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
                (_%__kont3988839889%_
                 (lambda (_%g3740737461%_ _%g3740837463%_ _%g3740937464%_)
                   (cons _%g3740937464%_
                         (cons _%g3740837463%_
                               (cons _%g3740737461%_
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
            (let ((_%__match3991639917%_
                   (lambda (_%e3739537488%_
                            _%hd3739637492%_
                            _%tl3739737495%_
                            _%e3739837498%_
                            _%hd3739937502%_
                            _%tl3740037505%_
                            _%e3740137508%_
                            _%hd3740237512%_
                            _%tl3740337515%_
                            _%e3740437518%_
                            _%hd3740537522%_
                            _%tl3740637525%_)
                     (let ((_%g3739237528%_ _%hd3740537522%_)
                           (_%g3739337530%_ _%hd3740237512%_)
                           (_%g3739437531%_ _%hd3739937502%_))
                       (if (gx#identifier? _%g3739437531%_)
                           (_%__kont3988639887%_
                            _%g3739237528%_
                            _%g3739337530%_
                            _%g3739437531%_)
                           (let () (declare (not safe)) (_%g3739037424%_)))))))
              (if (gx#stx-pair? _%__stx3988339884%_)
                  (let ((_%e3739537488%_ (gx#syntax-e _%__stx3988339884%_)))
                    (let ((_%tl3739737495%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3739537488%_)))
                          (_%hd3739637492%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3739537488%_))))
                      (if (gx#stx-pair? _%tl3739737495%_)
                          (let ((_%e3739837498%_
                                 (gx#syntax-e _%tl3739737495%_)))
                            (let ((_%tl3740037505%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3739837498%_)))
                                  (_%hd3739937502%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3739837498%_))))
                              (if (gx#stx-pair? _%tl3740037505%_)
                                  (let ((_%e3740137508%_
                                         (gx#syntax-e _%tl3740037505%_)))
                                    (let ((_%tl3740337515%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3740137508%_)))
                                          (_%hd3740237512%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3740137508%_))))
                                      (if (gx#stx-pair? _%tl3740337515%_)
                                          (let ((_%e3740437518%_
                                                 (gx#syntax-e
                                                  _%tl3740337515%_)))
                                            (let ((_%tl3740637525%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3740437518%_)))
                                                  (_%hd3740537522%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3740437518%_))))
                                              (if (gx#stx-null?
                                                   _%tl3740637525%_)
                                                  (_%__match3991639917%_
                                                   _%e3739537488%_
                                                   _%hd3739637492%_
                                                   _%tl3739737495%_
                                                   _%e3739837498%_
                                                   _%hd3739937502%_
                                                   _%tl3740037505%_
                                                   _%e3740137508%_
                                                   _%hd3740237512%_
                                                   _%tl3740337515%_
                                                   _%e3740437518%_
                                                   _%hd3740537522%_
                                                   _%tl3740637525%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3739037424%_)))))
                                          (if (gx#stx-null? _%tl3740337515%_)
                                              (_%__kont3988839889%_
                                               _%hd3740237512%_
                                               _%hd3739937502%_
                                               _%hd3739637492%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3739037424%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3739037424%_)))))
                          (let () (declare (not safe)) (_%g3739037424%_)))))
                  (let () (declare (not safe)) (_%g3739037424%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx37553%_)
        (let* ((_%g3755737572%_
                (lambda (_%g3755837568%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3755837568%_)))
               (_%g3755637615%_
                (lambda (_%g3755837576%_)
                  (if (gx#stx-pair? _%g3755837576%_)
                      (let ((_%e3756137579%_ (gx#syntax-e _%g3755837576%_)))
                        (let ((_%hd3756237583%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3756137579%_)))
                              (_%tl3756337586%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3756137579%_))))
                          (if (gx#stx-pair? _%tl3756337586%_)
                              (let ((_%e3756437589%_
                                     (gx#syntax-e _%tl3756337586%_)))
                                (let ((_%hd3756537593%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3756437589%_)))
                                      (_%tl3756637596%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3756437589%_))))
                                  ((lambda (_%g3755937599%_ _%g3756037601%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%g3756037601%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%g3755937599%_)
                                                       '()))))
                                   _%tl3756637596%_
                                   _%hd3756537593%_)))
                              (_%g3755737572%_ _%g3755837576%_))))
                      (_%g3755737572%_ _%g3755837576%_)))))
          (_%g3755637615%_ _%$stx37553%_))))))
