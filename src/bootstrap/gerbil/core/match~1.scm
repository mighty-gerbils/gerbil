(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g40021_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40022_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40023_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40024_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40025_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40026_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40027_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40028_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40029_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40030_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40031_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40032_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40033_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40034_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40035_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40048_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40056_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40057_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40058_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40063_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40064_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40065_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40066_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40067_|
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
      (lambda _%$args35342%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35342%_)))
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
      (lambda (_%stx35339%_)
        (if (gx#identifier? _%stx35339%_)
            (let ((__tmp40020 (gx#syntax-local-value _%stx35339%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp40020))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx33641%_ _%match-stx33643%_)
        (letrec ((_%parse133645%_
                  (lambda (_%hd34004%_)
                    (let* ((_%__stx3780837809%_ _%hd34004%_)
                           (_%g3403034172%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3780837809%_))))
                      (let ((_%__kont3781137812%_
                             (lambda (_%g3403235102%_ _%g3403335104%_)
                               (let* ((_%__stx3772837729%_ _%g3403235102%_)
                                      (_%g3512135154%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3772837729%_))))
                                 (let ((_%__kont3773137732%_
                                        (lambda ()
                                          (cons '?:
                                                (cons _%g3403335104%_ '()))))
                                       (_%__kont3773337734%_
                                        (lambda (_%g3512335295%_)
                                          (cons '?:
                                                (cons _%g3403335104%_
                                                      (cons (_%parse133645%_
                                                             _%g3512335295%_)
                                                            '())))))
                                       (_%__kont3773537736%_
                                        (lambda (_%g3512735265%_)
                                          (cons '?:
                                                (cons _%g3403335104%_
                                                      (cons '=>:
                                                            (cons (_%parse133645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g3512735265%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3773737738%_
                                        (lambda (_%g3513435216%_
                                                 _%g3513535218%_)
                                          (cons '?:
                                                (cons _%g3403335104%_
                                                      (cons '::
                                                            (cons _%g3513535218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse133645%_ _%g3513435216%_)
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3773937740%_
                                        (lambda ()
                                          (_%parse-error33652%_ _%hd34004%_))))
                                   (let ((_%g3511735306%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3772837729%_)
                                                (let ((_%e3512435285%_
                                                       (gx#syntax-e
                                                        _%__stx3772837729%_)))
                                                  (let ((_%tl3512635292%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3512435285%_)))
                                                        (_%hd3512535289%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3512435285%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3512635292%_)
                                                        (_%__kont3773337734%_
                                                         _%hd3512535289%_)
                                                        (if (gx#identifier?
                                                             _%hd3512535289%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g40021_|
                         _%hd3512535289%_)
                        (if (gx#stx-pair? _%tl3512635292%_)
                            (let ((_%e3513135255%_
                                   (gx#syntax-e _%tl3512635292%_)))
                              (let ((_%tl3513335262%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3513135255%_)))
                                    (_%hd3513235259%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3513135255%_))))
                                (if (gx#stx-null? _%tl3513335262%_)
                                    (_%__kont3773537736%_ _%hd3513235259%_)
                                    (_%__kont3773937740%_))))
                            (_%__kont3773937740%_))
                        (_%__kont3773937740%_))
                    (if (gx#stx-datum? _%hd3512535289%_)
                        (let ((_%e3513935182%_ (gx#stx-e _%hd3512535289%_)))
                          (if (equal? _%e3513935182%_ '::)
                              (if (gx#stx-pair? _%tl3512635292%_)
                                  (let ((_%e3514035186%_
                                         (gx#syntax-e _%tl3512635292%_)))
                                    (let ((_%tl3514235193%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3514035186%_)))
                                          (_%hd3514135190%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3514035186%_))))
                                      (if (gx#stx-pair? _%tl3514235193%_)
                                          (let ((_%e3514335196%_
                                                 (gx#syntax-e
                                                  _%tl3514235193%_)))
                                            (let ((_%tl3514535203%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3514335196%_)))
                                                  (_%hd3514435200%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3514335196%_))))
                                              (if (gx#identifier?
                                                   _%hd3514435200%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40022_|
                                                       _%hd3514435200%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3514535203%_)
                                                          (let ((_%e3514635206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3514535203%_)))
                    (let ((_%tl3514835213%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3514635206%_)))
                          (_%hd3514735210%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3514635206%_))))
                      (if (gx#stx-null? _%tl3514835213%_)
                          (_%__kont3773737738%_
                           _%hd3514735210%_
                           _%hd3514135190%_)
                          (_%__kont3773937740%_))))
                  (_%__kont3773937740%_))
              (_%__kont3773937740%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3773937740%_))))
                                          (_%__kont3773937740%_))))
                                  (_%__kont3773937740%_))
                              (_%__kont3773937740%_)))
                        (_%__kont3773937740%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3773937740%_)))))
                                     (if (gx#stx-null? _%__stx3772837729%_)
                                         (_%__kont3773137732%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3511735306%_))))))))
                            (_%__kont3781337814%_
                             (lambda (_%g3404035007%_)
                               (let* ((_%__stx3771037711%_ _%g3404035007%_)
                                      (_%g3501935030%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3771037711%_))))
                                 (let ((_%__kont3771337714%_
                                        (lambda (_%g3502135058%_)
                                          (_%parse133645%_ _%g3502135058%_)))
                                       (_%__kont3771537716%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse133645%_
                                                 _%g3404035007%_)))))
                                   (if (gx#stx-pair? _%__stx3771037711%_)
                                       (let ((_%e3502235048%_
                                              (gx#syntax-e
                                               _%__stx3771037711%_)))
                                         (let ((_%tl3502435055%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3502235048%_)))
                                               (_%hd3502335052%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3502235048%_))))
                                           (if (gx#stx-null? _%tl3502435055%_)
                                               (_%__kont3771337714%_
                                                _%hd3502335052%_)
                                               (_%__kont3771537716%_))))
                                       (_%__kont3771537716%_))))))
                            (_%__kont3781537816%_
                             (lambda (_%g3404434922%_)
                               (let* ((_%__stx3769237693%_ _%g3404434922%_)
                                      (_%g3493434945%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3769237693%_))))
                                 (let ((_%__kont3769537696%_
                                        (lambda (_%g3493634973%_)
                                          (_%parse133645%_ _%g3493634973%_)))
                                       (_%__kont3769737698%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse133645%_
                                                 _%g3404434922%_)))))
                                   (if (gx#stx-pair? _%__stx3769237693%_)
                                       (let ((_%e3493734963%_
                                              (gx#syntax-e
                                               _%__stx3769237693%_)))
                                         (let ((_%tl3493934970%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3493734963%_)))
                                               (_%hd3493834967%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3493734963%_))))
                                           (if (gx#stx-null? _%tl3493934970%_)
                                               (_%__kont3769537696%_
                                                _%hd3493834967%_)
                                               (_%__kont3769737698%_))))
                                       (_%__kont3769737698%_))))))
                            (_%__kont3781737818%_
                             (lambda (_%g3404834892%_)
                               (cons 'not:
                                     (cons (_%parse133645%_ _%g3404834892%_)
                                           '()))))
                            (_%__kont3781937820%_
                             (lambda (_%g3405534848%_ _%g3405634850%_)
                               (cons 'cons:
                                     (cons (_%parse133645%_ _%g3405634850%_)
                                           (cons (_%parse133645%_
                                                  _%g3405534848%_)
                                                 '())))))
                            (_%__kont3782137822%_
                             (lambda (_%g3406634792%_
                                      _%g3406734794%_
                                      _%g3406834795%_)
                               (if (gx#stx-null? _%g3406634792%_)
                                   (cons 'cons:
                                         (cons (_%parse133645%_
                                                _%g3406834795%_)
                                               (cons (_%parse133645%_
                                                      _%g3406734794%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse133645%_
                                                _%g3406834795%_)
                                               (cons (_%parse133645%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%g3406734794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g3406634792%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3782337824%_
                             (lambda (_%g3407834744%_)
                               (_%parse-list33647%_ _%g3407834744%_)))
                            (_%__kont3782537826%_
                             (lambda (_%g3408234714%_)
                               (cons 'box:
                                     (cons (_%parse133645%_ _%g3408234714%_)
                                           '()))))
                            (_%__kont3782737828%_
                             (lambda (_%g3408934677%_)
                               (cons 'box:
                                     (cons (_%parse133645%_ _%g3408934677%_)
                                           '()))))
                            (_%__kont3782937830%_
                             (lambda (_%g3409134653%_)
                               (_%parse133645%_ _%g3409134653%_)))
                            (_%__kont3783137832%_
                             (lambda (_%g3409834615%_)
                               (cons 'values:
                                     (cons (_%parse-vector33648%_
                                            _%g3409834615%_)
                                           '()))))
                            (_%__kont3783337834%_
                             (lambda (_%g3410234587%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33648%_
                                            _%g3410234587%_)
                                           '()))))
                            (_%__kont3783537836%_
                             (lambda (_%g3410634548%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33648%_
                                            (foldr (lambda (_%g3456134564%_
                                                            _%g3456234567%_)
                                                     (cons _%g3456134564%_
                                                           _%g3456234567%_))
                                                   '()
                                                   _%g3410634548%_))
                                           '()))))
                            (_%__kont3783937840%_
                             (lambda (_%g3411734496%_ _%g3411834498%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value
                                            _%g3411834498%_)
                                           (cons (_%parse-vector33648%_
                                                  _%g3411734496%_)
                                                 '())))))
                            (_%__kont3784137842%_
                             (lambda (_%g3412234466%_ _%g3412334468%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value
                                            _%g3412334468%_)
                                           (cons (_%parse-class-body33650%_
                                                  _%g3412234466%_)
                                                 '())))))
                            (_%__kont3784337844%_
                             (lambda (_%g3412734426%_ _%g3412834428%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%g3412834428%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%g3412734426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3784537846%_
                             (lambda (_%g3413534386%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g3413534386%_) '()))))
                            (_%__kont3784737848%_
                             (lambda (_%g3414234346%_)
                               (_%parse-qq33651%_ _%g3414234346%_)))
                            (_%__kont3784937850%_
                             (lambda (_%g3414934302%_ _%g3415034304%_)
                               (cons 'apply:
                                     (cons _%g3415034304%_
                                           (cons (_%parse133645%_
                                                  _%g3414934302%_)
                                                 '())))))
                            (_%__kont3785137852%_
                             (lambda (_%g3416034250%_)
                               (_%parse133645%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%g3416034250%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd34004%_)
                                  (let ((_%$e34261%_
                                         (gx#stx-source _%hd34004%_)))
                                    (if _%$e34261%_
                                        _%$e34261%_
                                        (gx#stx-source _%stx33641%_))))))))
                            (_%__kont3785337854%_
                             (lambda (_%g3416434224%_) (cons 'any: '())))
                            (_%__kont3785537856%_
                             (lambda (_%g3416534208%_)
                               (cons 'var: (cons _%g3416534208%_ '()))))
                            (_%__kont3785737858%_
                             (lambda (_%g3416634190%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g3416634190%_) '()))))
                            (_%__kont3785937860%_
                             (lambda () (_%parse-error33652%_ _%hd34004%_))))
                        (let* ((_%g3402834201%_
                                (lambda ()
                                  (let ((_%g3416634190%_ _%__stx3780837809%_))
                                    (if (gx#stx-datum? _%g3416634190%_)
                                        (_%__kont3785737858%_ _%g3416634190%_)
                                        (_%__kont3785937860%_)))))
                               (_%g3402734217%_
                                (lambda ()
                                  (let ((_%g3416534208%_ _%__stx3780837809%_))
                                    (if (and (gx#identifier? _%g3416534208%_)
                                             (not (gx#ellipsis?
                                                   _%g3416534208%_)))
                                        (_%__kont3785537856%_ _%g3416534208%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3402834201%_))))))
                               (_%g3402634233%_
                                (lambda ()
                                  (let ((_%g3416434224%_ _%__stx3780837809%_))
                                    (if (gx#underscore? _%g3416434224%_)
                                        (_%__kont3785337854%_ _%g3416434224%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3402734217%_))))))
                               (_%__match3813538136%_
                                (lambda (_%e3416134240%_
                                         _%hd3416234244%_
                                         _%tl3416334247%_)
                                  (let ((_%g3416034250%_ _%hd3416234244%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%g3416034250%_)
                                        (_%__kont3785137852%_ _%g3416034250%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3402634233%_))))))
                               (_%__match3806938070%_
                                (lambda (_%e3412934406%_
                                         _%hd3413034410%_
                                         _%tl3413134413%_
                                         _%e3413234416%_
                                         _%hd3413334420%_
                                         _%tl3413434423%_)
                                  (let ((_%g3412734426%_ _%hd3413334420%_)
                                        (_%g3412834428%_ _%hd3413034410%_))
                                    (if (and (gx#identifier? _%g3412834428%_)
                                             (or (gx#free-identifier=?
                                                  _%g3412834428%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%g3412834428%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%g3412834428%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3784337844%_
                                         _%g3412734426%_
                                         _%g3412834428%_)
                                        (if (gx#identifier? _%hd3413034410%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g40023_|
                                                 _%hd3413034410%_)
                                                (_%__kont3784537846%_
                                                 _%hd3413334420%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g40024_|
                                                     _%hd3413034410%_)
                                                    (_%__kont3784737848%_
                                                     _%hd3413334420%_)
                                                    (_%__match3813538136%_
                                                     _%e3412934406%_
                                                     _%hd3413034410%_
                                                     _%tl3413134413%_)))
                                            (_%__match3813538136%_
                                             _%e3412934406%_
                                             _%hd3413034410%_
                                             _%tl3413134413%_))))))
                               (_%__match3805538056%_
                                (lambda (_%e3412434456%_
                                         _%hd3412534460%_
                                         _%tl3412634463%_)
                                  (let ((_%g3412234466%_ _%tl3412634463%_)
                                        (_%g3412334468%_ _%hd3412534460%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%g3412334468%_))
                                        (_%__kont3784137842%_
                                         _%g3412234466%_
                                         _%g3412334468%_)
                                        (if (gx#stx-pair? _%tl3412634463%_)
                                            (let ((_%e3413234416%_
                                                   (gx#syntax-e
                                                    _%tl3412634463%_)))
                                              (let ((_%tl3413434423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3413234416%_)))
                                                    (_%hd3413334420%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3413234416%_))))
                                                (if (gx#stx-null?
                                                     _%tl3413434423%_)
                                                    (_%__match3806938070%_
                                                     _%e3412434456%_
                                                     _%hd3412534460%_
                                                     _%tl3412634463%_
                                                     _%e3413234416%_
                                                     _%hd3413334420%_
                                                     _%tl3413434423%_)
                                                    (if (gx#identifier?
                                                         _%hd3412534460%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g40023_|
                                                             _%hd3412534460%_)
                                                            (_%__match3813538136%_
                                                             _%e3412434456%_
                                                             _%hd3412534460%_
                                                             _%tl3412634463%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g40024_|
                         _%hd3412534460%_)
                        (_%__match3813538136%_
                         _%e3412434456%_
                         _%hd3412534460%_
                         _%tl3412634463%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40025_|
                             _%hd3412534460%_)
                            (if (gx#stx-pair? _%tl3413434423%_)
                                (let ((_%e3415734292%_
                                       (gx#syntax-e _%tl3413434423%_)))
                                  (let ((_%tl3415934299%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3415734292%_)))
                                        (_%hd3415834296%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3415734292%_))))
                                    (if (gx#stx-null? _%tl3415934299%_)
                                        (_%__kont3784937850%_
                                         _%hd3415834296%_
                                         _%hd3413334420%_)
                                        (_%__match3813538136%_
                                         _%e3412434456%_
                                         _%hd3412534460%_
                                         _%tl3412634463%_))))
                                (_%__match3813538136%_
                                 _%e3412434456%_
                                 _%hd3412534460%_
                                 _%tl3412634463%_))
                            (_%__match3813538136%_
                             _%e3412434456%_
                             _%hd3412534460%_
                             _%tl3412634463%_))))
                (_%__match3813538136%_
                 _%e3412434456%_
                 _%hd3412534460%_
                 _%tl3412634463%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3813538136%_
                                             _%e3412434456%_
                                             _%hd3412534460%_
                                             _%tl3412634463%_))))))
                               (_%__match3804938050%_
                                (lambda (_%e3411934486%_
                                         _%hd3412034490%_
                                         _%tl3412134493%_)
                                  (let ((_%g3411734496%_ _%tl3412134493%_)
                                        (_%g3411834498%_ _%hd3412034490%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%g3411834498%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3783937840%_
                                         _%g3411734496%_
                                         _%g3411834498%_)
                                        (_%__match3805538056%_
                                         _%e3411934486%_
                                         _%hd3412034490%_
                                         _%tl3412134493%_)))))
                               (_%__match3804338044%_
                                (lambda (_%e3410734516%_
                                         _%__splice3783737838%_
                                         _%target3410834520%_
                                         _%tl3411034523%_)
                                  (letrec ((_%loop3411134526%_
                                            (lambda (_%hd3410934530%_
                                                     _%body3411534533%_)
                                              (if (gx#stx-pair?
                                                   _%hd3410934530%_)
                                                  (let ((_%e3411234535%_
                                                         (gx#syntax-e
                                                          _%hd3410934530%_)))
                                                    (let ((_%lp-tl3411434542%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3411234535%_)))
                                                          (_%lp-hd3411334539%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3411234535%_))))
                                                      (_%loop3411134526%_
                                                       _%lp-tl3411434542%_
                                                       (cons _%lp-hd3411334539%_
                                                             _%body3411534533%_))))
                                                  (let ((_%body3411634545%_
                                                         (reverse _%body3411534533%_)))
                                                    (_%__kont3783537836%_
                                                     _%body3411634545%_))))))
                                    (_%loop3411134526%_
                                     _%target3410834520%_
                                     '()))))
                               (_%g3401834570%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3780837809%_)
                                      (let ((_%e3410734516%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3780837809%_))))
                                        (if (gx#stx-pair/null? _%e3410734516%_)
                                            (let ((_%__splice3783737838%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e3410734516%_
                                                    '0)))
                                              (let ((_%tl3411034523%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3783737838%_
                                                        '1)))
                                                    (_%target3410834520%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3783737838%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3411034523%_)
                                                    (_%__match3804338044%_
                                                     _%e3410734516%_
                                                     _%__splice3783737838%_
                                                     _%target3410834520%_
                                                     _%tl3411034523%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3402634233%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3402634233%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3402634233%_)))))
                               (_%g3401434687%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3780837809%_)
                                      (let ((_%e3409034673%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3780837809%_))))
                                        (_%__kont3782737828%_ _%e3409034673%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3401834570%_)))))
                               (_%__match3789737898%_
                                (lambda (_%e3404534912%_
                                         _%hd3404634916%_
                                         _%tl3404734919%_)
                                  (let ((_%g3404434922%_ _%tl3404734919%_))
                                    (if (gx#stx-list? _%g3404434922%_)
                                        (_%__kont3781537816%_ _%g3404434922%_)
                                        (_%__match3804938050%_
                                         _%e3404534912%_
                                         _%hd3404634916%_
                                         _%tl3404734919%_)))))
                               (_%__match3788737888%_
                                (lambda (_%e3404134997%_
                                         _%hd3404235001%_
                                         _%tl3404335004%_)
                                  (let ((_%g3404035007%_ _%tl3404335004%_))
                                    (if (gx#stx-list? _%g3404035007%_)
                                        (_%__kont3781337814%_ _%g3404035007%_)
                                        (_%__match3804938050%_
                                         _%e3404134997%_
                                         _%hd3404235001%_
                                         _%tl3404335004%_))))))
                          (if (gx#stx-pair? _%__stx3780837809%_)
                              (let ((_%e3403435082%_
                                     (gx#syntax-e _%__stx3780837809%_)))
                                (let ((_%tl3403635089%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3403435082%_)))
                                      (_%hd3403535086%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3403435082%_))))
                                  (if (gx#identifier? _%hd3403535086%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40026_|
                                           _%hd3403535086%_)
                                          (if (gx#stx-pair? _%tl3403635089%_)
                                              (let ((_%e3403735092%_
                                                     (gx#syntax-e
                                                      _%tl3403635089%_)))
                                                (let ((_%tl3403935099%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3403735092%_)))
                                                      (_%hd3403835096%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3403735092%_))))
                                                  (_%__kont3781137812%_
                                                   _%tl3403935099%_
                                                   _%hd3403835096%_)))
                                              (_%__match3804938050%_
                                               _%e3403435082%_
                                               _%hd3403535086%_
                                               _%tl3403635089%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40027_|
                                               _%hd3403535086%_)
                                              (_%__match3788737888%_
                                               _%e3403435082%_
                                               _%hd3403535086%_
                                               _%tl3403635089%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g40028_|
                                                   _%hd3403535086%_)
                                                  (_%__match3789737898%_
                                                   _%e3403435082%_
                                                   _%hd3403535086%_
                                                   _%tl3403635089%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40029_|
                                                       _%hd3403535086%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3403635089%_)
                                                          (let ((_%e3405234882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3403635089%_)))
                    (let ((_%tl3405434889%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3405234882%_)))
                          (_%hd3405334886%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3405234882%_))))
                      (if (gx#stx-null? _%tl3405434889%_)
                          (_%__kont3781737818%_ _%hd3405334886%_)
                          (_%__match3804938050%_
                           _%e3403435082%_
                           _%hd3403535086%_
                           _%tl3403635089%_))))
                  (_%__match3804938050%_
                   _%e3403435082%_
                   _%hd3403535086%_
                   _%tl3403635089%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g40030_|
                   _%hd3403535086%_)
                  (if (gx#stx-pair? _%tl3403635089%_)
                      (let ((_%e3406034828%_ (gx#syntax-e _%tl3403635089%_)))
                        (let ((_%tl3406234835%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3406034828%_)))
                              (_%hd3406134832%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3406034828%_))))
                          (if (gx#stx-pair? _%tl3406234835%_)
                              (let ((_%e3406334838%_
                                     (gx#syntax-e _%tl3406234835%_)))
                                (let ((_%tl3406534845%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3406334838%_)))
                                      (_%hd3406434842%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3406334838%_))))
                                  (if (gx#stx-null? _%tl3406534845%_)
                                      (_%__kont3781937820%_
                                       _%hd3406434842%_
                                       _%hd3406134832%_)
                                      (_%__match3804938050%_
                                       _%e3403435082%_
                                       _%hd3403535086%_
                                       _%tl3403635089%_))))
                              (_%__match3804938050%_
                               _%e3403435082%_
                               _%hd3403535086%_
                               _%tl3403635089%_))))
                      (_%__match3804938050%_
                       _%e3403435082%_
                       _%hd3403535086%_
                       _%tl3403635089%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g40031_|
                       _%hd3403535086%_)
                      (if (gx#stx-pair? _%tl3403635089%_)
                          (let ((_%e3407234772%_
                                 (gx#syntax-e _%tl3403635089%_)))
                            (let ((_%tl3407434779%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3407234772%_)))
                                  (_%hd3407334776%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3407234772%_))))
                              (if (gx#stx-pair? _%tl3407434779%_)
                                  (let ((_%e3407534782%_
                                         (gx#syntax-e _%tl3407434779%_)))
                                    (let ((_%tl3407734789%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3407534782%_)))
                                          (_%hd3407634786%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3407534782%_))))
                                      (_%__kont3782137822%_
                                       _%tl3407734789%_
                                       _%hd3407634786%_
                                       _%hd3407334776%_)))
                                  (_%__match3804938050%_
                                   _%e3403435082%_
                                   _%hd3403535086%_
                                   _%tl3403635089%_))))
                          (_%__match3804938050%_
                           _%e3403435082%_
                           _%hd3403535086%_
                           _%tl3403635089%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g40032_|
                           _%hd3403535086%_)
                          (_%__kont3782337824%_ _%tl3403635089%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40033_|
                               _%hd3403535086%_)
                              (if (gx#stx-pair? _%tl3403635089%_)
                                  (let ((_%e3408634704%_
                                         (gx#syntax-e _%tl3403635089%_)))
                                    (let ((_%tl3408834711%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3408634704%_)))
                                          (_%hd3408734708%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3408634704%_))))
                                      (if (gx#stx-null? _%tl3408834711%_)
                                          (_%__kont3782537826%_
                                           _%hd3408734708%_)
                                          (_%__match3804938050%_
                                           _%e3403435082%_
                                           _%hd3403535086%_
                                           _%tl3403635089%_))))
                                  (_%__match3804938050%_
                                   _%e3403435082%_
                                   _%hd3403535086%_
                                   _%tl3403635089%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40034_|
                                   _%hd3403535086%_)
                                  (if (gx#stx-pair? _%tl3403635089%_)
                                      (let ((_%e3409534643%_
                                             (gx#syntax-e _%tl3403635089%_)))
                                        (let ((_%tl3409734650%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3409534643%_)))
                                              (_%hd3409634647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3409534643%_))))
                                          (if (gx#stx-null? _%tl3409734650%_)
                                              (_%__kont3782937830%_
                                               _%hd3409634647%_)
                                              (_%__kont3783137832%_
                                               _%tl3403635089%_))))
                                      (_%__kont3783137832%_ _%tl3403635089%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40035_|
                                       _%hd3403535086%_)
                                      (_%__kont3783337834%_ _%tl3403635089%_)
                                      (_%__match3804938050%_
                                       _%e3403435082%_
                                       _%hd3403535086%_
                                       _%tl3403635089%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3804938050%_
                                       _%e3403435082%_
                                       _%hd3403535086%_
                                       _%tl3403635089%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3401434687%_))))))))
                 (_%parse-list33647%_
                  (lambda (_%body33827%_)
                    (let* ((_%__stx3813838139%_ _%body33827%_)
                           (_%g3383333862%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3813838139%_))))
                      (let ((_%__kont3814138142%_
                             (lambda (_%g3383533986%_)
                               (_%parse133645%_ _%g3383533986%_)))
                            (_%__kont3814338144%_
                             (lambda (_%g3384333938%_
                                      _%g3384433940%_
                                      _%g3384533941%_)
                               (cons 'splice:
                                     (cons (_%parse133645%_ _%g3384533941%_)
                                           (cons (_%parse-list33647%_
                                                  _%g3384333938%_)
                                                 '())))))
                            (_%__kont3814538146%_
                             (lambda (_%g3385233896%_ _%g3385333898%_)
                               (cons 'cons:
                                     (cons (_%parse133645%_ _%g3385333898%_)
                                           (cons (_%parse-list33647%_
                                                  _%g3385233896%_)
                                                 '())))))
                            (_%__kont3814738148%_
                             (lambda ()
                               (if (gx#stx-null? _%body33827%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body33827%_)
                                       (_%parse-error33652%_ _%body33827%_)
                                       (_%parse133645%_ _%body33827%_))))))
                        (let* ((_%__match3818738188%_
                                (lambda (_%e3385433886%_
                                         _%hd3385533890%_
                                         _%tl3385633893%_)
                                  (let ((_%g3385233896%_ _%tl3385633893%_)
                                        (_%g3385333898%_ _%hd3385533890%_))
                                    (if (gx#ellipsis? _%g3385333898%_)
                                        (_%__kont3814738148%_)
                                        (_%__kont3814538146%_
                                         _%g3385233896%_
                                         _%g3385333898%_)))))
                               (_%__match3818138182%_
                                (lambda (_%e3384633918%_
                                         _%hd3384733922%_
                                         _%tl3384833925%_
                                         _%e3384933928%_
                                         _%hd3385033932%_
                                         _%tl3385133935%_)
                                  (let ((_%g3384333938%_ _%tl3385133935%_)
                                        (_%g3384433940%_ _%hd3385033932%_)
                                        (_%g3384533941%_ _%hd3384733922%_))
                                    (if (gx#ellipsis? _%g3384433940%_)
                                        (_%__kont3814338144%_
                                         _%g3384333938%_
                                         _%g3384433940%_
                                         _%g3384533941%_)
                                        (_%__match3818738188%_
                                         _%e3384633918%_
                                         _%hd3384733922%_
                                         _%tl3384833925%_))))))
                          (if (gx#stx-pair? _%__stx3813838139%_)
                              (let ((_%e3383633962%_
                                     (gx#syntax-e _%__stx3813838139%_)))
                                (let ((_%tl3383833969%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3383633962%_)))
                                      (_%hd3383733966%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3383633962%_))))
                                  (if (gx#stx-datum? _%hd3383733966%_)
                                      (let ((_%e3383933972%_
                                             (gx#stx-e _%hd3383733966%_)))
                                        (if (equal? _%e3383933972%_ '::)
                                            (if (gx#stx-pair? _%tl3383833969%_)
                                                (let ((_%e3384033976%_
                                                       (gx#syntax-e
                                                        _%tl3383833969%_)))
                                                  (let ((_%tl3384233983%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3384033976%_)))
                                                        (_%hd3384133980%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3384033976%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3384233983%_)
                                                        (_%__kont3814138142%_
                                                         _%hd3384133980%_)
                                                        (_%__match3818138182%_
                                                         _%e3383633962%_
                                                         _%hd3383733966%_
                                                         _%tl3383833969%_
                                                         _%e3384033976%_
                                                         _%hd3384133980%_
                                                         _%tl3384233983%_))))
                                                (_%__match3818738188%_
                                                 _%e3383633962%_
                                                 _%hd3383733966%_
                                                 _%tl3383833969%_))
                                            (if (gx#stx-pair? _%tl3383833969%_)
                                                (let ((_%e3384933928%_
                                                       (gx#syntax-e
                                                        _%tl3383833969%_)))
                                                  (let ((_%tl3385133935%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3384933928%_)))
                                                        (_%hd3385033932%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3384933928%_))))
                                                    (_%__match3818138182%_
                                                     _%e3383633962%_
                                                     _%hd3383733966%_
                                                     _%tl3383833969%_
                                                     _%e3384933928%_
                                                     _%hd3385033932%_
                                                     _%tl3385133935%_)))
                                                (_%__match3818738188%_
                                                 _%e3383633962%_
                                                 _%hd3383733966%_
                                                 _%tl3383833969%_))))
                                      (if (gx#stx-pair? _%tl3383833969%_)
                                          (let ((_%e3384933928%_
                                                 (gx#syntax-e
                                                  _%tl3383833969%_)))
                                            (let ((_%tl3385133935%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3384933928%_)))
                                                  (_%hd3385033932%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3384933928%_))))
                                              (_%__match3818138182%_
                                               _%e3383633962%_
                                               _%hd3383733966%_
                                               _%tl3383833969%_
                                               _%e3384933928%_
                                               _%hd3385033932%_
                                               _%tl3385133935%_)))
                                          (_%__match3818738188%_
                                           _%e3383633962%_
                                           _%hd3383733966%_
                                           _%tl3383833969%_)))))
                              (_%__kont3814738148%_)))))))
                 (_%parse-vector33648%_
                  (lambda (_%body33824%_)
                    (if (_%simple-vector?33649%_ _%body33824%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse133645%_ _%body33824%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list33647%_ _%body33824%_)
                                    '())))))
                 (_%simple-vector?33649%_
                  (lambda (_%body33761%_)
                    (let* ((_%__stx3819038191%_ _%body33761%_)
                           (_%g3376533777%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3819038191%_))))
                      (let ((_%__kont3819338194%_
                             (lambda (_%g3376733805%_ _%g3376833807%_)
                               (if (gx#ellipsis? _%g3376833807%_)
                                   '#f
                                   (_%simple-vector?33649%_ _%g3376733805%_))))
                            (_%__kont3819538196%_
                             (lambda () (gx#stx-null? _%body33761%_))))
                        (if (gx#stx-pair? _%__stx3819038191%_)
                            (let ((_%e3376933795%_
                                   (gx#syntax-e _%__stx3819038191%_)))
                              (let ((_%tl3377133802%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3376933795%_)))
                                    (_%hd3377033799%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3376933795%_))))
                                (_%__kont3819338194%_
                                 _%tl3377133802%_
                                 _%hd3377033799%_)))
                            (_%__kont3819538196%_))))))
                 (_%parse-class-body33650%_
                  (lambda (_%body33670%_)
                    (let _%recur33673%_ ((_%rest33676%_ _%body33670%_))
                      (let* ((_%__stx3820638207%_ _%rest33676%_)
                             (_%g3368033696%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3820638207%_))))
                        (let ((_%__kont3820938210%_
                               (lambda (_%g3368233734%_
                                        _%g3368333736%_
                                        _%g3368433737%_)
                                 (cons _%g3368433737%_
                                       (cons (_%parse133645%_ _%g3368333736%_)
                                             (_%recur33673%_
                                              _%g3368233734%_)))))
                              (_%__kont3821138212%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest33676%_)
                                     '()
                                     (_%parse-error33652%_ _%rest33676%_)))))
                          (let ((_%__match3822538226%_
                                 (lambda (_%e3368533714%_
                                          _%hd3368633718%_
                                          _%tl3368733721%_
                                          _%e3368833724%_
                                          _%hd3368933728%_
                                          _%tl3369033731%_)
                                   (let ((_%g3368233734%_ _%tl3369033731%_)
                                         (_%g3368333736%_ _%hd3368933728%_)
                                         (_%g3368433737%_ _%hd3368633718%_))
                                     (if (gx#stx-keyword? _%g3368433737%_)
                                         (_%__kont3820938210%_
                                          _%g3368233734%_
                                          _%g3368333736%_
                                          _%g3368433737%_)
                                         (_%__kont3821138212%_))))))
                            (if (gx#stx-pair? _%__stx3820638207%_)
                                (let ((_%e3368533714%_
                                       (gx#syntax-e _%__stx3820638207%_)))
                                  (let ((_%tl3368733721%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3368533714%_)))
                                        (_%hd3368633718%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3368533714%_))))
                                    (if (gx#stx-pair? _%tl3368733721%_)
                                        (let ((_%e3368833724%_
                                               (gx#syntax-e _%tl3368733721%_)))
                                          (let ((_%tl3369033731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3368833724%_)))
                                                (_%hd3368933728%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3368833724%_))))
                                            (_%__match3822538226%_
                                             _%e3368533714%_
                                             _%hd3368633718%_
                                             _%tl3368733721%_
                                             _%e3368833724%_
                                             _%hd3368933728%_
                                             _%tl3369033731%_)))
                                        (_%__kont3821138212%_))))
                                (_%__kont3821138212%_))))))))
                 (_%parse-qq33651%_
                  (lambda (_%hd33657%_)
                    (let ((_%g3365933666%_
                           (lambda (_%g3366033662%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3366033662%_))))
                      (_%g3365933666%_ _%hd33657%_))))
                 (_%parse-error33652%_
                  (lambda (_%hd33654%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx33643%_
                               (cons _%match-stx33643%_
                                     (cons _%stx33641%_
                                           (cons _%hd33654%_ '())))
                               (cons _%stx33641%_ (cons _%hd33654%_ '())))))))
          (_%parse133645%_ _%stx33641%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35329%_)
        (let ((_%match-stx35332%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35329%_
           _%match-stx35332%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g40036_
        (let ((_g40037_ (let () (declare (not safe)) (##length _g40036_))))
          (cond ((let () (declare (not safe)) (##fx= _g40037_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g40036_))
                ((let () (declare (not safe)) (##fx= _g40037_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g40036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g40036_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx33626%_)
        (let ((__tmp40038
               (lambda (_%E33629%_)
                 (with-exception-handler
                  (let ((_%E!33632%_ (current-exception-handler)))
                    (lambda (_%e33635%_)
                      (if (syntax-error? _%e33635%_)
                          (_%E33629%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!33632%_ _%e33635%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx33626%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp40038))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32361%_)
        (letrec ((_%loop32364%_
                  (lambda (_%ptree32651%_ _%vars32653%_ _%K32654%_)
                    (let* ((_%__stx3832438325%_ _%ptree32651%_)
                           (_%g3266732777%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3832438325%_))))
                      (let ((_%__kont3832738328%_
                             (lambda (_%g3266933407%_)
                               (let* ((_%__stx3824438245%_ _%g3266933407%_)
                                      (_%g3342433458%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3824438245%_))))
                                 (let ((_%__kont3824738248%_
                                        (lambda (_%g3342633607%_)
                                          (_%loop32364%_
                                           _%g3342633607%_
                                           _%vars32653%_
                                           _%K32654%_)))
                                       (_%__kont3824938250%_
                                        (lambda (_%g3343033576%_)
                                          (_%loop32364%_
                                           _%g3343033576%_
                                           _%vars32653%_
                                           _%K32654%_)))
                                       (_%__kont3825138252%_
                                        (lambda (_%g3343833524%_)
                                          (_%loop32364%_
                                           _%g3343833524%_
                                           _%vars32653%_
                                           _%K32654%_)))
                                       (_%__kont3825338254%_
                                        (lambda ()
                                          (_%K32654%_ _%vars32653%_))))
                                   (if (gx#stx-pair? _%__stx3824438245%_)
                                       (let ((_%e3342733597%_
                                              (gx#syntax-e
                                               _%__stx3824438245%_)))
                                         (let ((_%tl3342933604%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3342733597%_)))
                                               (_%hd3342833601%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3342733597%_))))
                                           (if (gx#stx-null? _%tl3342933604%_)
                                               (_%__kont3824738248%_
                                                _%hd3342833601%_)
                                               (if (gx#stx-datum?
                                                    _%hd3342833601%_)
                                                   (let ((_%e3343433562%_
                                                          (gx#stx-e
                                                           _%hd3342833601%_)))
                                                     (if (equal? _%e3343433562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3342933604%_)
                     (let ((_%e3343533566%_ (gx#syntax-e _%tl3342933604%_)))
                       (let ((_%tl3343733573%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3343533566%_)))
                             (_%hd3343633570%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3343533566%_))))
                         (if (gx#stx-null? _%tl3343733573%_)
                             (_%__kont3824938250%_ _%hd3343633570%_)
                             (_%__kont3825338254%_))))
                     (_%__kont3825338254%_))
                 (if (equal? _%e3343433562%_ '::)
                     (if (gx#stx-pair? _%tl3342933604%_)
                         (let ((_%e3344333490%_
                                (gx#syntax-e _%tl3342933604%_)))
                           (let ((_%tl3344533497%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3344333490%_)))
                                 (_%hd3344433494%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3344333490%_))))
                             (if (gx#stx-pair? _%tl3344533497%_)
                                 (let ((_%e3344633500%_
                                        (gx#syntax-e _%tl3344533497%_)))
                                   (let ((_%tl3344833507%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3344633500%_)))
                                         (_%hd3344733504%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3344633500%_))))
                                     (if (gx#stx-datum? _%hd3344733504%_)
                                         (let ((_%e3344933510%_
                                                (gx#stx-e _%hd3344733504%_)))
                                           (if (equal? _%e3344933510%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3344833507%_)
                                                   (let ((_%e3345033514%_
                                                          (gx#syntax-e
                                                           _%tl3344833507%_)))
                                                     (let ((_%tl3345233521%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3345033514%_)))
                                                           (_%hd3345133518%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3345033514%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3345233521%_)
                                                           (_%__kont3825138252%_
                                                            _%hd3345133518%_)
                                                           (_%__kont3825338254%_))))
                                                   (_%__kont3825338254%_))
                                               (_%__kont3825338254%_)))
                                         (_%__kont3825338254%_))))
                                 (_%__kont3825338254%_))))
                         (_%__kont3825338254%_))
                     (_%__kont3825338254%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3825338254%_)))))
                                       (_%__kont3825338254%_))))))
                            (_%__kont3832938330%_
                             (lambda (_%g3267733294%_ _%g3267833296%_)
                               (let* ((_%__stx3822838229%_ _%g3267733294%_)
                                      (_%g3331233324%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3822838229%_))))
                                 (let ((_%__kont3823138232%_
                                        (lambda (_%g3331433352%_
                                                 _%g3331533354%_)
                                          (_%loop32364%_
                                           _%g3331533354%_
                                           _%vars32653%_
                                           (lambda (_%g3336633368%_)
                                             (_%loop32364%_
                                              (cons _%g3267833296%_
                                                    _%g3331433352%_)
                                              _%g3336633368%_
                                              _%K32654%_)))))
                                       (_%__kont3823338234%_
                                        (lambda ()
                                          (_%K32654%_ _%vars32653%_))))
                                   (if (gx#stx-pair? _%__stx3822838229%_)
                                       (let ((_%e3331633342%_
                                              (gx#syntax-e
                                               _%__stx3822838229%_)))
                                         (let ((_%tl3331833349%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3331633342%_)))
                                               (_%hd3331733346%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3331633342%_))))
                                           (_%__kont3823138232%_
                                            _%tl3331833349%_
                                            _%hd3331733346%_)))
                                       (_%__kont3823338234%_))))))
                            (_%__kont3833138332%_
                             (lambda (_%g3268233263%_)
                               (_%loop32364%_
                                _%g3268233263%_
                                _%vars32653%_
                                _%K32654%_)))
                            (_%__kont3833338334%_
                             (lambda (_%g3269033209%_ _%g3269133211%_)
                               (_%loop32364%_
                                _%g3269133211%_
                                _%vars32653%_
                                (lambda (_%g3322633228%_)
                                  (_%loop32364%_
                                   _%g3269033209%_
                                   _%g3322633228%_
                                   _%K32654%_)))))
                            (_%__kont3833538336%_
                             (lambda (_%g3270233145%_ _%g3270333147%_)
                               (_%loop32364%_
                                _%g3270333147%_
                                _%vars32653%_
                                (lambda (_%g3316233164%_)
                                  (_%loop32364%_
                                   _%g3270233145%_
                                   _%g3316233164%_
                                   _%K32654%_)))))
                            (_%__kont3833738338%_
                             (lambda (_%g3271433090%_)
                               (_%loop32364%_
                                _%g3271433090%_
                                _%vars32653%_
                                _%K32654%_)))
                            (_%__kont3833938340%_
                             (lambda (_%g3272233040%_ _%g3272333042%_)
                               (_%loop-vector32366%_
                                _%g3272233040%_
                                _%vars32653%_
                                _%K32654%_)))
                            (_%__kont3834138342%_
                             (lambda (_%g3273032997%_)
                               (_%loop-vector32366%_
                                _%g3273032997%_
                                _%vars32653%_
                                _%K32654%_)))
                            (_%__kont3834338344%_
                             (lambda (_%g3274132940%_)
                               (_%loop-class-list32368%_
                                _%g3274132940%_
                                _%vars32653%_
                                _%K32654%_)))
                            (_%__kont3834538346%_
                             (lambda (_%g3275232881%_ _%g3275332883%_)
                               (_%loop32364%_
                                _%g3275232881%_
                                _%vars32653%_
                                _%K32654%_)))
                            (_%__kont3834738348%_
                             (lambda (_%g3276432819%_)
                               (if (find (lambda (_%g3283432836%_)
                                           (gx#bound-identifier=?
                                            _%g3283432836%_
                                            _%g3276432819%_))
                                         _%vars32653%_)
                                   (_%K32654%_ _%vars32653%_)
                                   (_%K32654%_
                                    (cons _%g3276432819%_ _%vars32653%_)))))
                            (_%__kont3834938350%_
                             (lambda () (_%K32654%_ _%vars32653%_))))
                        (let* ((_%__match3848138482%_
                                (lambda (_%e3272433020%_
                                         _%hd3272533024%_
                                         _%tl3272633027%_
                                         _%e3272733030%_
                                         _%hd3272833034%_
                                         _%tl3272933037%_)
                                  (let ((_%g3272233040%_ _%hd3272833034%_)
                                        (_%g3272333042%_ _%hd3272533024%_))
                                    (if (or (gx#stx-eq?
                                             'values:
                                             _%g3272333042%_)
                                            (gx#stx-eq?
                                             'vector:
                                             _%g3272333042%_))
                                        (_%__kont3833938340%_
                                         _%g3272233040%_
                                         _%g3272333042%_)
                                        (if (gx#stx-datum? _%hd3272533024%_)
                                            (let ((_%e3273432973%_
                                                   (gx#stx-e
                                                    _%hd3272533024%_)))
                                              (if (equal? _%e3273432973%_
                                                          'struct:)
                                                  (_%__kont3834938350%_)
                                                  (if (equal? _%e3273432973%_
                                                              'class:)
                                                      (_%__kont3834938350%_)
                                                      (if (equal? _%e3273432973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3834938350%_)
                  (if (equal? _%e3273432973%_ 'var:)
                      (_%__kont3834738348%_ _%hd3272833034%_)
                      (_%__kont3834938350%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3834938350%_))))))
                               (_%__match3837538376%_
                                (lambda (_%e3267933284%_
                                         _%hd3268033288%_
                                         _%tl3268133291%_)
                                  (let ((_%g3267733294%_ _%tl3268133291%_)
                                        (_%g3267833296%_ _%hd3268033288%_))
                                    (if (or (gx#stx-eq? 'and: _%g3267833296%_)
                                            (gx#stx-eq? 'or: _%g3267833296%_))
                                        (_%__kont3832938330%_
                                         _%g3267733294%_
                                         _%g3267833296%_)
                                        (if (gx#stx-datum? _%hd3268033288%_)
                                            (let ((_%e3268633249%_
                                                   (gx#stx-e
                                                    _%hd3268033288%_)))
                                              (if (equal? _%e3268633249%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3268133291%_)
                                                      (let ((_%e3268733253%_
                                                             (gx#syntax-e
                                                              _%tl3268133291%_)))
                                                        (let ((_%tl3268933260%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3268733253%_)))
                      (_%hd3268833257%_
                       (let () (declare (not safe)) (##car _%e3268733253%_))))
                  (if (gx#stx-null? _%tl3268933260%_)
                      (_%__kont3833138332%_ _%hd3268833257%_)
                      (_%__kont3834938350%_))))
              (_%__kont3834938350%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3268633249%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3268133291%_)
                                                          (let ((_%e3269633189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3268133291%_)))
                    (let ((_%tl3269833196%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3269633189%_)))
                          (_%hd3269733193%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3269633189%_))))
                      (if (gx#stx-pair? _%tl3269833196%_)
                          (let ((_%e3269933199%_
                                 (gx#syntax-e _%tl3269833196%_)))
                            (let ((_%tl3270133206%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3269933199%_)))
                                  (_%hd3270033203%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3269933199%_))))
                              (if (gx#stx-null? _%tl3270133206%_)
                                  (_%__kont3833338334%_
                                   _%hd3270033203%_
                                   _%hd3269733193%_)
                                  (_%__kont3834938350%_))))
                          (if (gx#stx-null? _%tl3269833196%_)
                              (_%__match3848138482%_
                               _%e3267933284%_
                               _%hd3268033288%_
                               _%tl3268133291%_
                               _%e3269633189%_
                               _%hd3269733193%_
                               _%tl3269833196%_)
                              (_%__kont3834938350%_)))))
                  (_%__kont3834938350%_))
              (if (equal? _%e3268633249%_ 'splice:)
                  (if (gx#stx-pair? _%tl3268133291%_)
                      (let ((_%e3270833125%_ (gx#syntax-e _%tl3268133291%_)))
                        (let ((_%tl3271033132%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3270833125%_)))
                              (_%hd3270933129%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3270833125%_))))
                          (if (gx#stx-pair? _%tl3271033132%_)
                              (let ((_%e3271133135%_
                                     (gx#syntax-e _%tl3271033132%_)))
                                (let ((_%tl3271333142%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3271133135%_)))
                                      (_%hd3271233139%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3271133135%_))))
                                  (if (gx#stx-null? _%tl3271333142%_)
                                      (_%__kont3833538336%_
                                       _%hd3271233139%_
                                       _%hd3270933129%_)
                                      (_%__kont3834938350%_))))
                              (if (gx#stx-null? _%tl3271033132%_)
                                  (_%__match3848138482%_
                                   _%e3267933284%_
                                   _%hd3268033288%_
                                   _%tl3268133291%_
                                   _%e3270833125%_
                                   _%hd3270933129%_
                                   _%tl3271033132%_)
                                  (_%__kont3834938350%_)))))
                      (_%__kont3834938350%_))
                  (if (equal? _%e3268633249%_ 'box:)
                      (if (gx#stx-pair? _%tl3268133291%_)
                          (let ((_%e3271933080%_
                                 (gx#syntax-e _%tl3268133291%_)))
                            (let ((_%tl3272133087%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3271933080%_)))
                                  (_%hd3272033084%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3271933080%_))))
                              (if (gx#stx-null? _%tl3272133087%_)
                                  (_%__kont3833738338%_ _%hd3272033084%_)
                                  (_%__kont3834938350%_))))
                          (_%__kont3834938350%_))
                      (if (gx#stx-pair? _%tl3268133291%_)
                          (let ((_%e3272733030%_
                                 (gx#syntax-e _%tl3268133291%_)))
                            (let ((_%tl3272933037%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3272733030%_)))
                                  (_%hd3272833034%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3272733030%_))))
                              (if (gx#stx-null? _%tl3272933037%_)
                                  (_%__match3848138482%_
                                   _%e3267933284%_
                                   _%hd3268033288%_
                                   _%tl3268133291%_
                                   _%e3272733030%_
                                   _%hd3272833034%_
                                   _%tl3272933037%_)
                                  (if (equal? _%e3268633249%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3272933037%_)
                                          (let ((_%e3273832987%_
                                                 (gx#syntax-e
                                                  _%tl3272933037%_)))
                                            (let ((_%tl3274032994%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3273832987%_)))
                                                  (_%hd3273932991%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3273832987%_))))
                                              (if (gx#stx-null?
                                                   _%tl3274032994%_)
                                                  (_%__kont3834138342%_
                                                   _%hd3273932991%_)
                                                  (_%__kont3834938350%_))))
                                          (_%__kont3834938350%_))
                                      (if (equal? _%e3268633249%_ 'class:)
                                          (if (gx#stx-pair? _%tl3272933037%_)
                                              (let ((_%e3274932930%_
                                                     (gx#syntax-e
                                                      _%tl3272933037%_)))
                                                (let ((_%tl3275132937%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3274932930%_)))
                                                      (_%hd3275032934%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3274932930%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3275132937%_)
                                                      (_%__kont3834338344%_
                                                       _%hd3275032934%_)
                                                      (_%__kont3834938350%_))))
                                              (_%__kont3834938350%_))
                                          (if (equal? _%e3268633249%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3272933037%_)
                                                  (let ((_%e3276132871%_
                                                         (gx#syntax-e
                                                          _%tl3272933037%_)))
                                                    (let ((_%tl3276332878%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3276132871%_)))
                                                          (_%hd3276232875%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3276132871%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3276332878%_)
                                                          (_%__kont3834538346%_
                                                           _%hd3276232875%_
                                                           _%hd3272833034%_)
                                                          (_%__kont3834938350%_))))
                                                  (_%__kont3834938350%_))
                                              (_%__kont3834938350%_)))))))
                          (_%__kont3834938350%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3268133291%_)
                                                (let ((_%e3272733030%_
                                                       (gx#syntax-e
                                                        _%tl3268133291%_)))
                                                  (let ((_%tl3272933037%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3272733030%_)))
                                                        (_%hd3272833034%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3272733030%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3272933037%_)
                                                        (_%__match3848138482%_
                                                         _%e3267933284%_
                                                         _%hd3268033288%_
                                                         _%tl3268133291%_
                                                         _%e3272733030%_
                                                         _%hd3272833034%_
                                                         _%tl3272933037%_)
                                                        (_%__kont3834938350%_))))
                                                (_%__kont3834938350%_))))))))
                          (if (gx#stx-pair? _%__stx3832438325%_)
                              (let ((_%e3267033383%_
                                     (gx#syntax-e _%__stx3832438325%_)))
                                (let ((_%tl3267233390%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3267033383%_)))
                                      (_%hd3267133387%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3267033383%_))))
                                  (if (gx#stx-datum? _%hd3267133387%_)
                                      (let ((_%e3267333393%_
                                             (gx#stx-e _%hd3267133387%_)))
                                        (if (equal? _%e3267333393%_ '?:)
                                            (if (gx#stx-pair? _%tl3267233390%_)
                                                (let ((_%e3267433397%_
                                                       (gx#syntax-e
                                                        _%tl3267233390%_)))
                                                  (let ((_%tl3267633404%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3267433397%_)))
                                                        (_%hd3267533401%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3267433397%_))))
                                                    (_%__kont3832738328%_
                                                     _%tl3267633404%_)))
                                                (_%__match3837538376%_
                                                 _%e3267033383%_
                                                 _%hd3267133387%_
                                                 _%tl3267233390%_))
                                            (_%__match3837538376%_
                                             _%e3267033383%_
                                             _%hd3267133387%_
                                             _%tl3267233390%_)))
                                      (_%__match3837538376%_
                                       _%e3267033383%_
                                       _%hd3267133387%_
                                       _%tl3267233390%_))))
                              (_%__kont3834938350%_)))))))
                 (_%loop-vector32366%_
                  (lambda (_%body32527%_ _%vars32529%_ _%K32530%_)
                    (let* ((_%__stx3858238583%_ _%body32527%_)
                           (_%g3253332556%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3858238583%_))))
                      (let ((_%__kont3858538586%_
                             (lambda (_%g3253532633%_)
                               (_%loop-list32367%_
                                _%g3253532633%_
                                _%vars32529%_
                                _%K32530%_)))
                            (_%__kont3858738588%_
                             (lambda (_%g3254332587%_)
                               (_%loop32364%_
                                _%g3254332587%_
                                _%vars32529%_
                                _%K32530%_))))
                        (if (gx#stx-pair? _%__stx3858238583%_)
                            (let ((_%e3253632609%_
                                   (gx#syntax-e _%__stx3858238583%_)))
                              (let ((_%tl3253832616%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3253632609%_)))
                                    (_%hd3253732613%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3253632609%_))))
                                (if (gx#stx-datum? _%hd3253732613%_)
                                    (let ((_%e3253932619%_
                                           (gx#stx-e _%hd3253732613%_)))
                                      (if (equal? _%e3253932619%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3253832616%_)
                                              (let ((_%e3254032623%_
                                                     (gx#syntax-e
                                                      _%tl3253832616%_)))
                                                (let ((_%tl3254232630%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3254032623%_)))
                                                      (_%hd3254132627%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3254032623%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3254232630%_)
                                                      (_%__kont3858538586%_
                                                       _%hd3254132627%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3253332556%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3253332556%_)))
                                          (if (equal? _%e3253932619%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3253832616%_)
                                                  (let ((_%e3254832577%_
                                                         (gx#syntax-e
                                                          _%tl3253832616%_)))
                                                    (let ((_%tl3255032584%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3254832577%_)))
                                                          (_%hd3254932581%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3254832577%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3255032584%_)
                                                          (_%__kont3858738588%_
                                                           _%hd3254932581%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3253332556%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3253332556%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3253332556%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3253332556%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3253332556%_)))))))
                 (_%loop-list32367%_
                  (lambda (_%rest32457%_ _%vars32459%_ _%K32460%_)
                    (let* ((_%__stx3863238633%_ _%rest32457%_)
                           (_%g3246332475%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3863238633%_))))
                      (let ((_%__kont3863538636%_
                             (lambda (_%g3246532503%_ _%g3246632505%_)
                               (_%loop32364%_
                                _%g3246632505%_
                                _%vars32459%_
                                (lambda (_%g3251732519%_)
                                  (_%loop-list32367%_
                                   _%g3246532503%_
                                   _%g3251732519%_
                                   _%K32460%_)))))
                            (_%__kont3863738638%_
                             (lambda () (_%K32460%_ _%vars32459%_))))
                        (if (gx#stx-pair? _%__stx3863238633%_)
                            (let ((_%e3246732493%_
                                   (gx#syntax-e _%__stx3863238633%_)))
                              (let ((_%tl3246932500%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3246732493%_)))
                                    (_%hd3246832497%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3246732493%_))))
                                (_%__kont3863538636%_
                                 _%tl3246932500%_
                                 _%hd3246832497%_)))
                            (_%__kont3863738638%_))))))
                 (_%loop-class-list32368%_
                  (lambda (_%rest32370%_ _%vars32372%_ _%K32373%_)
                    (let* ((_%__stx3864838649%_ _%rest32370%_)
                           (_%g3237632391%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3864838649%_))))
                      (let ((_%__kont3865138652%_
                             (lambda (_%g3237832429%_ _%g3237932431%_)
                               (_%loop32364%_
                                _%g3237932431%_
                                _%vars32372%_
                                (lambda (_%g3244732449%_)
                                  (_%loop-class-list32368%_
                                   _%g3237832429%_
                                   _%g3244732449%_
                                   _%K32373%_)))))
                            (_%__kont3865338654%_
                             (lambda () (_%K32373%_ _%vars32372%_))))
                        (if (gx#stx-pair? _%__stx3864838649%_)
                            (let ((_%e3238032409%_
                                   (gx#syntax-e _%__stx3864838649%_)))
                              (let ((_%tl3238232416%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3238032409%_)))
                                    (_%hd3238132413%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3238032409%_))))
                                (if (gx#stx-pair? _%tl3238232416%_)
                                    (let ((_%e3238332419%_
                                           (gx#syntax-e _%tl3238232416%_)))
                                      (let ((_%tl3238532426%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3238332419%_)))
                                            (_%hd3238432423%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3238332419%_))))
                                        (_%__kont3865138652%_
                                         _%tl3238532426%_
                                         _%hd3238432423%_)))
                                    (_%__kont3865338654%_))))
                            (_%__kont3865338654%_)))))))
          (_%loop32364%_ _%ptree32361%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29293%_ _%tgt29295%_ _%ptree29296%_ _%K29297%_ _%E29298%_)
        (letrec ((_%generate129300%_
                  (lambda (_%tgt30560%_ _%ptree30562%_ _%K30563%_ _%E30564%_)
                    (let* ((_%g3056630574%_
                            (lambda (_%g3056730570%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3056730570%_)))
                           (_%g3056532357%_
                            (lambda (_%g3056730578%_)
                              ((lambda (_%g3056830581%_)
                                 (let* ((_%__stx3888438885%_ _%ptree30562%_)
                                        (_%g3060830750%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3888438885%_))))
                                   (let ((_%__kont3888738888%_
                                          (lambda (_%g3061032072%_
                                                   _%g3061132074%_)
                                            (let* ((_%__stx3880238803%_
                                                    _%g3061032072%_)
                                                   (_%g3209132126%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3880238803%_))))
                                              (let ((_%__kont3880538806%_
                                                     (lambda ()
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%g3061132074%_
                                       (cons _%g3056830581%_ '())))
                           (cons _%K30563%_ (cons _%E30564%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3880738808%_
                                                     (lambda (_%g3209332327%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%g3061132074%_
                                       (cons _%g3056830581%_ '())))
                           (cons (_%generate129300%_
                                  _%tgt30560%_
                                  _%g3209332327%_
                                  _%K30563%_
                                  _%E30564%_)
                                 (cons _%E30564%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3880938810%_
                                                     (lambda (_%g3209732265%_)
                                                       (let* ((_%g3227932287%_
                                                               (lambda (_%g3228032283%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3228032283%_)))
                      (_%g3227832306%_
                       (lambda (_%g3228032291%_)
                         ((lambda (_%g3228132294%_)
                            (cons 'let
                                  (cons (cons (cons _%g3228132294%_
                                                    (cons (cons _%g3061132074%_
                                                                (cons _%g3056830581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons 'if
                                                    (cons _%g3228132294%_
                                                          (cons (_%generate129300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3228132294%_
                         _%g3209732265%_
                         _%K30563%_
                         _%E30564%_)
                        (cons _%E30564%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _%g3228032291%_))))
                 (_%g3227832306%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3881138812%_
                                                     (lambda (_%g3210532181%_
                                                              _%g3210632183%_)
                                                       (let* ((_%g3220332211%_
                                                               (lambda (_%g3220432207%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3220432207%_)))
                      (_%g3220232230%_
                       (lambda (_%g3220432215%_)
                         ((lambda (_%g3220532218%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '?)
                                              (cons _%g3061132074%_
                                                    (cons _%g3056830581%_
                                                          '())))
                                        (cons (cons 'let
                                                    (cons (cons (cons _%g3220532218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons _%g3210632183%_
                                          (cons _%g3056830581%_ '()))
                                    '()))
                        '())
                  (cons (_%generate129300%_
                         _%g3220532218%_
                         _%g3210532181%_
                         _%K30563%_
                         _%E30564%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30564%_ '())))))
                          _%g3220432215%_))))
                 (_%g3220232230%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%g3208832338%_
                                                       (lambda ()
                                                         (if (gx#stx-pair?
                                                              _%__stx3880238803%_)
                                                             (let ((_%e3209432317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%__stx3880238803%_)))
                       (let ((_%tl3209632324%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3209432317%_)))
                             (_%hd3209532321%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3209432317%_))))
                         (if (gx#stx-null? _%tl3209632324%_)
                             (_%__kont3880738808%_ _%hd3209532321%_)
                             (if (gx#stx-datum? _%hd3209532321%_)
                                 (let ((_%e3210132251%_
                                        (gx#stx-e _%hd3209532321%_)))
                                   (if (equal? _%e3210132251%_ '=>:)
                                       (if (gx#stx-pair? _%tl3209632324%_)
                                           (let ((_%e3210232255%_
                                                  (gx#syntax-e
                                                   _%tl3209632324%_)))
                                             (let ((_%tl3210432262%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3210232255%_)))
                                                   (_%hd3210332259%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3210232255%_))))
                                               (if (gx#stx-null?
                                                    _%tl3210432262%_)
                                                   (_%__kont3880938810%_
                                                    _%hd3210332259%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3209132126%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3209132126%_)))
                                       (if (equal? _%e3210132251%_ '::)
                                           (if (gx#stx-pair? _%tl3209632324%_)
                                               (let ((_%e3211132147%_
                                                      (gx#syntax-e
                                                       _%tl3209632324%_)))
                                                 (let ((_%tl3211332154%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3211132147%_)))
                                                       (_%hd3211232151%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3211132147%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3211332154%_)
                                                       (let ((_%e3211432157%_
                                                              (gx#syntax-e
                                                               _%tl3211332154%_)))
                                                         (let ((_%tl3211632164%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3211432157%_)))
                       (_%hd3211532161%_
                        (let () (declare (not safe)) (##car _%e3211432157%_))))
                   (if (gx#stx-datum? _%hd3211532161%_)
                       (let ((_%e3211732167%_ (gx#stx-e _%hd3211532161%_)))
                         (if (equal? _%e3211732167%_ '=>:)
                             (if (gx#stx-pair? _%tl3211632164%_)
                                 (let ((_%e3211832171%_
                                        (gx#syntax-e _%tl3211632164%_)))
                                   (let ((_%tl3212032178%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3211832171%_)))
                                         (_%hd3211932175%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3211832171%_))))
                                     (if (gx#stx-null? _%tl3212032178%_)
                                         (_%__kont3881138812%_
                                          _%hd3211932175%_
                                          _%hd3211232151%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3209132126%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3209132126%_)))
                             (let () (declare (not safe)) (_%g3209132126%_))))
                       (let () (declare (not safe)) (_%g3209132126%_)))))
               (let () (declare (not safe)) (_%g3209132126%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3209132126%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3209132126%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3209132126%_))))))
                     (let () (declare (not safe)) (_%g3209132126%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%__stx3880238803%_)
                                                      (_%__kont3880538806%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3208832338%_))))))))
                                         (_%__kont3888938890%_
                                          (lambda (_%g3061931969%_)
                                            (let* ((_%__stx3878638787%_
                                                    _%g3061931969%_)
                                                   (_%g3198231994%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3878638787%_))))
                                              (let ((_%__kont3878938790%_
                                                     (lambda (_%g3198432022%_
                                                              _%g3198532024%_)
                                                       (_%generate129300%_
                                                        _%tgt30560%_
                                                        _%g3198532024%_
                                                        (_%generate129300%_
                                                         _%tgt30560%_
                                                         (cons 'and:
                                                               _%g3198432022%_)
                                                         _%K30563%_
                                                         _%E30564%_)
                                                        _%E30564%_)))
                                                    (_%__kont3879138792%_
                                                     (lambda () _%K30563%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3878638787%_)
                                                    (let ((_%e3198632012%_
                                                           (gx#syntax-e
                                                            _%__stx3878638787%_)))
                                                      (let ((_%tl3198832019%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3198632012%_)))
                    (_%hd3198732016%_
                     (let () (declare (not safe)) (##car _%e3198632012%_))))
                (_%__kont3878938790%_ _%tl3198832019%_ _%hd3198732016%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3879138792%_))))))
                                         (_%__kont3889138892%_
                                          (lambda (_%g3062431876%_)
                                            (let* ((_%__stx3877038771%_
                                                    _%g3062431876%_)
                                                   (_%g3188931901%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3877038771%_))))
                                              (let ((_%__kont3877338774%_
                                                     (lambda (_%g3189131929%_
                                                              _%g3189231931%_)
                                                       (_%generate129300%_
                                                        _%tgt30560%_
                                                        _%g3189231931%_
                                                        _%K30563%_
                                                        (_%generate129300%_
                                                         _%tgt30560%_
                                                         (cons 'or:
                                                               _%g3189131929%_)
                                                         _%K30563%_
                                                         _%E30564%_))))
                                                    (_%__kont3877538776%_
                                                     (lambda () _%E30564%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3877038771%_)
                                                    (let ((_%e3189331919%_
                                                           (gx#syntax-e
                                                            _%__stx3877038771%_)))
                                                      (let ((_%tl3189531926%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3189331919%_)))
                    (_%hd3189431923%_
                     (let () (declare (not safe)) (##car _%e3189331919%_))))
                (_%__kont3877338774%_ _%tl3189531926%_ _%hd3189431923%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3877538776%_))))))
                                         (_%__kont3889338894%_
                                          (lambda (_%g3062931841%_)
                                            (_%generate129300%_
                                             _%tgt30560%_
                                             _%g3062931841%_
                                             _%E30564%_
                                             _%K30563%_)))
                                         (_%__kont3889538896%_
                                          (lambda (_%g3063731715%_
                                                   _%g3063831717%_)
                                            (let* ((_%g3173431749%_
                                                    (lambda (_%g3173531745%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3173531745%_)))
                                                   (_%g3173331806%_
                                                    (lambda (_%g3173531753%_)
                                                      (if (gx#stx-pair?
                                                           _%g3173531753%_)
                                                          (let ((_%e3173831756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%g3173531753%_)))
                    (let ((_%hd3173931760%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3173831756%_)))
                          (_%tl3174031763%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3173831756%_))))
                      (if (gx#stx-pair? _%tl3174031763%_)
                          (let ((_%e3174131766%_
                                 (gx#syntax-e _%tl3174031763%_)))
                            (let ((_%hd3174231770%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3174131766%_)))
                                  (_%tl3174331773%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3174131766%_))))
                              (if (gx#stx-null? _%tl3174331773%_)
                                  ((lambda (_%g3173631776%_ _%g3173731778%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'pair?)
                                                       (cons _%g3056830581%_
                                                             '()))
                                                 (cons (let ((_%hd-pat31794%_
                                                              (gx#stx-e
                                                               _%g3063831717%_))
                                                             (_%tl-pat31796%_
                                                              (gx#stx-e
                                                               _%g3063731715%_)))
                                                         (if (and (equal? _%hd-pat31794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat31796%_ '(any:)))
                     _%K30563%_
                     (if (equal? _%tl-pat31796%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%g3173731778%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%g3056830581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate129300%_
                                            _%g3173731778%_
                                            _%g3063831717%_
                                            _%K30563%_
                                            _%E30564%_)
                                           '())))
                         (if (equal? _%hd-pat31794%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%g3173631776%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%g3056830581%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate129300%_
                                                _%g3173631776%_
                                                _%g3063731715%_
                                                _%K30563%_
                                                _%E30564%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%g3173731778%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%g3056830581%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%g3173631776%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%g3056830581%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate129300%_
                                                _%g3173731778%_
                                                _%g3063831717%_
                                                (_%generate129300%_
                                                 _%g3173631776%_
                                                 _%g3063731715%_
                                                 _%K30563%_
                                                 _%E30564%_)
                                                _%E30564%_)
                                               '())))))))
               (cons _%E30564%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd3174231770%_
                                   _%hd3173931760%_)
                                  (_%g3173431749%_ _%g3173531753%_))))
                          (_%g3173431749%_ _%g3173531753%_))))
                  (_%g3173431749%_ _%g3173531753%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3173331806%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl))))))
                                         (_%__kont3889738898%_
                                          (lambda ()
                                            (cons 'if
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'null?)
                                                              (cons _%g3056830581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%K30563%_ (cons _%E30564%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3889938900%_
                                          (lambda (_%g3065331631%_
                                                   _%g3065431633%_)
                                            (_%generate-splice29302%_
                                             _%tgt30560%_
                                             _%g3065431633%_
                                             _%g3065331631%_
                                             _%K30563%_
                                             _%E30564%_)))
                                         (_%__kont3890138902%_
                                          (lambda (_%g3066531545%_)
                                            (let* ((_%g3155931567%_
                                                    (lambda (_%g3156031563%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3156031563%_)))
                                                   (_%g3155831586%_
                                                    (lambda (_%g3156031571%_)
                                                      ((lambda (_%g3156131574%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'box?)
                                   (cons _%g3056830581%_ '()))
                             (cons (cons 'let
                                         (cons (cons (cons _%g3156131574%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##unbox)
                               (cons _%g3056830581%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (_%generate129300%_
                                                      _%g3156131574%_
                                                      _%g3066531545%_
                                                      _%K30563%_
                                                      _%E30564%_)
                                                     '())))
                                   (cons _%E30564%_ '())))))
               _%g3156031571%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3155831586%_
                                               (gx#genident 'e)))))
                                         (_%__kont3890338904%_
                                          (lambda (_%g3067331350%_)
                                            (let* ((_%__stx3872038721%_
                                                    _%g3067331350%_)
                                                   (_%g3136531388%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3872038721%_))))
                                              (let ((_%__kont3872338724%_
                                                     (lambda (_%g3136731465%_)
                                                       (let* ((_%g3147931487%_
                                                               (lambda (_%g3148031483%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3148031483%_)))
                      (_%g3147831506%_
                       (lambda (_%g3148031491%_)
                         ((lambda (_%g3148131494%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'values-count)
                                                          (cons _%g3056830581%_
                                                                '()))
                                                    (cons _%g3148131494%_
                                                          '())))
                                        (cons (_%generate-simple-vector29303%_
                                               _%tgt30560%_
                                               _%g3136731465%_
                                               '0
                                               '##values-ref
                                               _%K30563%_
                                               _%E30564%_)
                                              (cons _%E30564%_ '())))))
                          _%g3148031491%_))))
                 (_%g3147831506%_ (gx#stx-length _%g3136731465%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3872538726%_
                                                     (lambda (_%g3137531419%_)
                                                       (_%generate-list-vector29304%_
                                                        _%tgt30560%_
                                                        _%g3137531419%_
                                                        'values->list
                                                        _%K30563%_
                                                        _%E30564%_))))
                                                (if (gx#stx-pair?
                                                     _%__stx3872038721%_)
                                                    (let ((_%e3136831441%_
                                                           (gx#syntax-e
                                                            _%__stx3872038721%_)))
                                                      (let ((_%tl3137031448%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3136831441%_)))
                    (_%hd3136931445%_
                     (let () (declare (not safe)) (##car _%e3136831441%_))))
                (if (gx#stx-datum? _%hd3136931445%_)
                    (let ((_%e3137131451%_ (gx#stx-e _%hd3136931445%_)))
                      (if (equal? _%e3137131451%_ 'simple:)
                          (if (gx#stx-pair? _%tl3137031448%_)
                              (let ((_%e3137231455%_
                                     (gx#syntax-e _%tl3137031448%_)))
                                (let ((_%tl3137431462%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3137231455%_)))
                                      (_%hd3137331459%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3137231455%_))))
                                  (if (gx#stx-null? _%tl3137431462%_)
                                      (_%__kont3872338724%_ _%hd3137331459%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3136531388%_)))))
                              (let () (declare (not safe)) (_%g3136531388%_)))
                          (if (equal? _%e3137131451%_ 'list:)
                              (if (gx#stx-pair? _%tl3137031448%_)
                                  (let ((_%e3138031409%_
                                         (gx#syntax-e _%tl3137031448%_)))
                                    (let ((_%tl3138231416%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3138031409%_)))
                                          (_%hd3138131413%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3138031409%_))))
                                      (if (gx#stx-null? _%tl3138231416%_)
                                          (_%__kont3872538726%_
                                           _%hd3138131413%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3136531388%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3136531388%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3136531388%_)))))
                    (let () (declare (not safe)) (_%g3136531388%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3136531388%_)))))))
                                         (_%__kont3890538906%_
                                          (lambda (_%g3068131155%_)
                                            (let* ((_%__stx3867038671%_
                                                    _%g3068131155%_)
                                                   (_%g3117031193%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3867038671%_))))
                                              (let ((_%__kont3867338674%_
                                                     (lambda (_%g3117231270%_)
                                                       (let* ((_%g3128431292%_
                                                               (lambda (_%g3128531288%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3128531288%_)))
                      (_%g3128331311%_
                       (lambda (_%g3128531296%_)
                         ((lambda (_%g3128631299%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f 'vector?)
                                              (cons _%g3056830581%_ '()))
                                        (cons (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _%g3056830581%_ '()))
                              (cons _%g3128631299%_ '())))
                  (cons (_%generate-simple-vector29303%_
                         _%tgt30560%_
                         _%g3117231270%_
                         '0
                         '##vector-ref
                         _%K30563%_
                         _%E30564%_)
                        (cons _%E30564%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30564%_ '())))))
                          _%g3128531296%_))))
                 (_%g3128331311%_ (gx#stx-length _%g3117231270%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3867538676%_
                                                     (lambda (_%g3118031224%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'vector?)
                                 (cons _%g3056830581%_ '()))
                           (cons (_%generate-list-vector29304%_
                                  _%tgt30560%_
                                  _%g3118031224%_
                                  'vector->list
                                  _%K30563%_
                                  _%E30564%_)
                                 (cons _%E30564%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx3867038671%_)
                                                    (let ((_%e3117331246%_
                                                           (gx#syntax-e
                                                            _%__stx3867038671%_)))
                                                      (let ((_%tl3117531253%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3117331246%_)))
                    (_%hd3117431250%_
                     (let () (declare (not safe)) (##car _%e3117331246%_))))
                (if (gx#stx-datum? _%hd3117431250%_)
                    (let ((_%e3117631256%_ (gx#stx-e _%hd3117431250%_)))
                      (if (equal? _%e3117631256%_ 'simple:)
                          (if (gx#stx-pair? _%tl3117531253%_)
                              (let ((_%e3117731260%_
                                     (gx#syntax-e _%tl3117531253%_)))
                                (let ((_%tl3117931267%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3117731260%_)))
                                      (_%hd3117831264%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3117731260%_))))
                                  (if (gx#stx-null? _%tl3117931267%_)
                                      (_%__kont3867338674%_ _%hd3117831264%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3117031193%_)))))
                              (let () (declare (not safe)) (_%g3117031193%_)))
                          (if (equal? _%e3117631256%_ 'list:)
                              (if (gx#stx-pair? _%tl3117531253%_)
                                  (let ((_%e3118531214%_
                                         (gx#syntax-e _%tl3117531253%_)))
                                    (let ((_%tl3118731221%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3118531214%_)))
                                          (_%hd3118631218%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3118531214%_))))
                                      (if (gx#stx-null? _%tl3118731221%_)
                                          (_%__kont3867538676%_
                                           _%hd3118631218%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3117031193%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3117031193%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3117031193%_)))))
                    (let () (declare (not safe)) (_%g3117031193%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3117031193%_)))))))
                                         (_%__kont3890738908%_
                                          (lambda (_%g3068931106%_
                                                   _%g3069031108%_)
                                            (_%generate-struct29305%_
                                             (gx#stx-e _%g3069031108%_)
                                             _%tgt30560%_
                                             _%g3068931106%_
                                             _%K30563%_
                                             _%E30564%_)))
                                         (_%__kont3890938910%_
                                          (lambda (_%g3070131047%_
                                                   _%g3070231049%_)
                                            (_%generate-class29308%_
                                             (gx#stx-e _%g3070231049%_)
                                             _%tgt30560%_
                                             _%g3070131047%_
                                             _%K30563%_
                                             _%E30564%_)))
                                         (_%__kont3891138912%_
                                          (lambda (_%g3071330944%_)
                                            (let* ((_%g3095830966%_
                                                    (lambda (_%g3095930962%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3095930962%_)))
                                                   (_%g3095730985%_
                                                    (lambda (_%g3095930970%_)
                                                      ((lambda (_%g3096030973%_)
                                                         (cons 'if
                                                               (cons (cons _%g3096030973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%g3056830581%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g3071330944%_
                                                           '()))
                                               '())))
                             (cons _%K30563%_ (cons _%E30564%_ '())))))
               _%g3095930970%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3095730985%_
                                               (let ((_%e30989%_
                                                      (gx#stx-e
                                                       _%g3071330944%_)))
                                                 (if (or (symbol? _%e30989%_)
                                                         (keyword? _%e30989%_)
                                                         (immediate?
                                                          _%e30989%_))
                                                     '##eq?
                                                     (if (number? _%e30989%_)
                                                         'eqv?
                                                         'equal?)))))))
                                         (_%__kont3891338914%_
                                          (lambda (_%g3072130864%_
                                                   _%g3072230866%_)
                                            (let* ((_%g3088230890%_
                                                    (lambda (_%g3088330886%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3088330886%_)))
                                                   (_%g3088130909%_
                                                    (lambda (_%g3088330894%_)
                                                      ((lambda (_%g3088430897%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%g3088430897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%g3072230866%_
                                                     (cons _%g3056830581%_
                                                           '()))
                                               '()))
                                   '())
                             (cons (_%generate129300%_
                                    _%g3088430897%_
                                    _%g3072130864%_
                                    _%K30563%_
                                    _%E30564%_)
                                   '()))))
               _%g3088330894%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3088130909%_
                                               (gx#genident 'e)))))
                                         (_%__kont3891538916%_
                                          (lambda (_%g3073330806%_)
                                            (cons 'let
                                                  (cons (cons (cons _%g3073330806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g3056830581%_ '()))
                      '())
                (cons _%K30563%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3891738918%_
                                          (lambda () _%K30563%_)))
                                     (if (gx#stx-pair? _%__stx3888438885%_)
                                         (let ((_%e3061232048%_
                                                (gx#syntax-e
                                                 _%__stx3888438885%_)))
                                           (let ((_%tl3061432055%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e3061232048%_)))
                                                 (_%hd3061332052%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e3061232048%_))))
                                             (if (gx#stx-datum?
                                                  _%hd3061332052%_)
                                                 (let ((_%e3061532058%_
                                                        (gx#stx-e
                                                         _%hd3061332052%_)))
                                                   (if (equal? _%e3061532058%_
                                                               '?:)
                                                       (if (gx#stx-pair?
                                                            _%tl3061432055%_)
                                                           (let ((_%e3061632062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3061432055%_)))
                     (let ((_%tl3061832069%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3061632062%_)))
                           (_%hd3061732066%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3061632062%_))))
                       (_%__kont3888738888%_
                        _%tl3061832069%_
                        _%hd3061732066%_)))
                   (let () (declare (not safe)) (_%g3060830750%_)))
               (if (equal? _%e3061532058%_ 'and:)
                   (_%__kont3888938890%_ _%tl3061432055%_)
                   (if (equal? _%e3061532058%_ 'or:)
                       (_%__kont3889138892%_ _%tl3061432055%_)
                       (if (equal? _%e3061532058%_ 'not:)
                           (if (gx#stx-pair? _%tl3061432055%_)
                               (let ((_%e3063431831%_
                                      (gx#syntax-e _%tl3061432055%_)))
                                 (let ((_%tl3063631838%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3063431831%_)))
                                       (_%hd3063531835%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3063431831%_))))
                                   (if (gx#stx-null? _%tl3063631838%_)
                                       (_%__kont3889338894%_ _%hd3063531835%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3060830750%_)))))
                               (let () (declare (not safe)) (_%g3060830750%_)))
                           (if (equal? _%e3061532058%_ 'cons:)
                               (if (gx#stx-pair? _%tl3061432055%_)
                                   (let ((_%e3064331695%_
                                          (gx#syntax-e _%tl3061432055%_)))
                                     (let ((_%tl3064531702%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3064331695%_)))
                                           (_%hd3064431699%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3064331695%_))))
                                       (if (gx#stx-pair? _%tl3064531702%_)
                                           (let ((_%e3064631705%_
                                                  (gx#syntax-e
                                                   _%tl3064531702%_)))
                                             (let ((_%tl3064831712%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3064631705%_)))
                                                   (_%hd3064731709%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3064631705%_))))
                                               (if (gx#stx-null?
                                                    _%tl3064831712%_)
                                                   (_%__kont3889538896%_
                                                    _%hd3064731709%_
                                                    _%hd3064431699%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3060830750%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3060830750%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3060830750%_)))
                               (if (equal? _%e3061532058%_ 'null:)
                                   (if (gx#stx-null? _%tl3061432055%_)
                                       (_%__kont3889738898%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3060830750%_)))
                                   (if (equal? _%e3061532058%_ 'splice:)
                                       (if (gx#stx-pair? _%tl3061432055%_)
                                           (let ((_%e3065931611%_
                                                  (gx#syntax-e
                                                   _%tl3061432055%_)))
                                             (let ((_%tl3066131618%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3065931611%_)))
                                                   (_%hd3066031615%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3065931611%_))))
                                               (if (gx#stx-pair?
                                                    _%tl3066131618%_)
                                                   (let ((_%e3066231621%_
                                                          (gx#syntax-e
                                                           _%tl3066131618%_)))
                                                     (let ((_%tl3066431628%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3066231621%_)))
                                                           (_%hd3066331625%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3066231621%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3066431628%_)
                                                           (_%__kont3889938900%_
                                                            _%hd3066331625%_
                                                            _%hd3066031615%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3060830750%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3060830750%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3060830750%_)))
                                       (if (equal? _%e3061532058%_ 'box:)
                                           (if (gx#stx-pair? _%tl3061432055%_)
                                               (let ((_%e3067031535%_
                                                      (gx#syntax-e
                                                       _%tl3061432055%_)))
                                                 (let ((_%tl3067231542%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3067031535%_)))
                                                       (_%hd3067131539%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3067031535%_))))
                                                   (if (gx#stx-null?
                                                        _%tl3067231542%_)
                                                       (_%__kont3890138902%_
                                                        _%hd3067131539%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g3060830750%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3060830750%_)))
                                           (if (equal? _%e3061532058%_
                                                       'values:)
                                               (if (gx#stx-pair?
                                                    _%tl3061432055%_)
                                                   (let ((_%e3067831340%_
                                                          (gx#syntax-e
                                                           _%tl3061432055%_)))
                                                     (let ((_%tl3068031347%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3067831340%_)))
                                                           (_%hd3067931344%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3067831340%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3068031347%_)
                                                           (_%__kont3890338904%_
                                                            _%hd3067931344%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3060830750%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3060830750%_)))
                                               (if (equal? _%e3061532058%_
                                                           'vector:)
                                                   (if (gx#stx-pair?
                                                        _%tl3061432055%_)
                                                       (let ((_%e3068631145%_
                                                              (gx#syntax-e
                                                               _%tl3061432055%_)))
                                                         (let ((_%tl3068831152%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3068631145%_)))
                       (_%hd3068731149%_
                        (let () (declare (not safe)) (##car _%e3068631145%_))))
                   (if (gx#stx-null? _%tl3068831152%_)
                       (_%__kont3890538906%_ _%hd3068731149%_)
                       (let () (declare (not safe)) (_%g3060830750%_)))))
               (let () (declare (not safe)) (_%g3060830750%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (equal? _%e3061532058%_
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _%tl3061432055%_)
                                                           (let ((_%e3069531086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3061432055%_)))
                     (let ((_%tl3069731093%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3069531086%_)))
                           (_%hd3069631090%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3069531086%_))))
                       (if (gx#stx-pair? _%tl3069731093%_)
                           (let ((_%e3069831096%_
                                  (gx#syntax-e _%tl3069731093%_)))
                             (let ((_%tl3070031103%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3069831096%_)))
                                   (_%hd3069931100%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3069831096%_))))
                               (if (gx#stx-null? _%tl3070031103%_)
                                   (_%__kont3890738908%_
                                    _%hd3069931100%_
                                    _%hd3069631090%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3060830750%_)))))
                           (let () (declare (not safe)) (_%g3060830750%_)))))
                   (let () (declare (not safe)) (_%g3060830750%_)))
               (if (equal? _%e3061532058%_ 'class:)
                   (if (gx#stx-pair? _%tl3061432055%_)
                       (let ((_%e3070731027%_ (gx#syntax-e _%tl3061432055%_)))
                         (let ((_%tl3070931034%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3070731027%_)))
                               (_%hd3070831031%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3070731027%_))))
                           (if (gx#stx-pair? _%tl3070931034%_)
                               (let ((_%e3071031037%_
                                      (gx#syntax-e _%tl3070931034%_)))
                                 (let ((_%tl3071231044%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3071031037%_)))
                                       (_%hd3071131041%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3071031037%_))))
                                   (if (gx#stx-null? _%tl3071231044%_)
                                       (_%__kont3890938910%_
                                        _%hd3071131041%_
                                        _%hd3070831031%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3060830750%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g3060830750%_)))))
                       (let () (declare (not safe)) (_%g3060830750%_)))
                   (if (equal? _%e3061532058%_ 'datum:)
                       (if (gx#stx-pair? _%tl3061432055%_)
                           (let ((_%e3071830934%_
                                  (gx#syntax-e _%tl3061432055%_)))
                             (let ((_%tl3072030941%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3071830934%_)))
                                   (_%hd3071930938%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3071830934%_))))
                               (if (gx#stx-null? _%tl3072030941%_)
                                   (_%__kont3891138912%_ _%hd3071930938%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3060830750%_)))))
                           (let () (declare (not safe)) (_%g3060830750%_)))
                       (if (equal? _%e3061532058%_ 'apply:)
                           (if (gx#stx-pair? _%tl3061432055%_)
                               (let ((_%e3072730844%_
                                      (gx#syntax-e _%tl3061432055%_)))
                                 (let ((_%tl3072930851%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3072730844%_)))
                                       (_%hd3072830848%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3072730844%_))))
                                   (if (gx#stx-pair? _%tl3072930851%_)
                                       (let ((_%e3073030854%_
                                              (gx#syntax-e _%tl3072930851%_)))
                                         (let ((_%tl3073230861%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3073030854%_)))
                                               (_%hd3073130858%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3073030854%_))))
                                           (if (gx#stx-null? _%tl3073230861%_)
                                               (_%__kont3891338914%_
                                                _%hd3073130858%_
                                                _%hd3072830848%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3060830750%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g3060830750%_)))))
                               (let () (declare (not safe)) (_%g3060830750%_)))
                           (if (equal? _%e3061532058%_ 'var:)
                               (if (gx#stx-pair? _%tl3061432055%_)
                                   (let ((_%e3073830796%_
                                          (gx#syntax-e _%tl3061432055%_)))
                                     (let ((_%tl3074030803%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3073830796%_)))
                                           (_%hd3073930800%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3073830796%_))))
                                       (if (gx#stx-null? _%tl3074030803%_)
                                           (_%__kont3891538916%_
                                            _%hd3073930800%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g3060830750%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3060830750%_)))
                               (if (equal? _%e3061532058%_ 'any:)
                                   (if (gx#stx-null? _%tl3061432055%_)
                                       (_%__kont3891738918%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3060830750%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3060830750%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3060830750%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3060830750%_))))))
                               _%g3056730578%_))))
                      (_%g3056532357%_ _%tgt30560%_))))
                 (_%generate-splice29302%_
                  (lambda (_%tgt29938%_
                           _%hd29940%_
                           _%rest29941%_
                           _%K29942%_
                           _%E29943%_)
                    (let* ((_%g2994529962%_
                            (lambda (_%g2994629958%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2994629958%_)))
                           (_%g2994430556%_
                            (lambda (_%g2994629966%_)
                              (if (gx#stx-pair/null? _%g2994629966%_)
                                  (let ((_g40039_
                                         (gx#syntax-split-splice
                                          _%g2994629966%_
                                          '0)))
                                    (begin
                                      (let ((_g40040_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g40039_)
                                                   (##values-length _g40039_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g40040_ 2)))
                                            (error "Context expects 2 values"
                                                   _g40040_)))
                                      (let ((_%target2994829969%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40039_ 0)))
                                            (_%tl2995029972%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40039_ 1))))
                                        (if (gx#stx-null? _%tl2995029972%_)
                                            (letrec ((_%loop2995129975%_
                                                      (lambda (_%hd2994929979%_
                                                               _%var2995529982%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2994929979%_)
                                                            (let ((_%e2995229984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2994929979%_)))
                      (let ((_%lp-hd2995329988%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2995229984%_)))
                            (_%lp-tl2995429991%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2995229984%_))))
                        (_%loop2995129975%_
                         _%lp-tl2995429991%_
                         (cons _%lp-hd2995329988%_ _%var2995529982%_))))
                    (let ((_%var2995629994%_ (reverse _%var2995529982%_)))
                      ((lambda (_%g2994729997%_)
                         (let* ((_%g3001330030%_
                                 (lambda (_%g3001430026%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g3001430026%_)))
                                (_%g3001230544%_
                                 (lambda (_%g3001430034%_)
                                   (if (gx#stx-pair/null? _%g3001430034%_)
                                       (let ((_g40041_
                                              (gx#syntax-split-splice
                                               _%g3001430034%_
                                               '0)))
                                         (begin
                                           (let ((_g40042_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g40041_)
                                                        (##values-length
                                                         _g40041_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g40042_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g40042_)))
                                           (let ((_%target3001630037%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g40041_ 0)))
                                                 (_%tl3001830040%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g40041_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl3001830040%_)
                                                 (letrec ((_%loop3001930043%_
                                                           (lambda (_%hd3001730047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%var-r3002330050%_)
                     (if (gx#stx-pair? _%hd3001730047%_)
                         (let ((_%e3002030052%_
                                (gx#syntax-e _%hd3001730047%_)))
                           (let ((_%lp-hd3002130056%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3002030052%_)))
                                 (_%lp-tl3002230059%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3002030052%_))))
                             (_%loop3001930043%_
                              _%lp-tl3002230059%_
                              (cons _%lp-hd3002130056%_ _%var-r3002330050%_))))
                         (let ((_%var-r3002430062%_
                                (reverse _%var-r3002330050%_)))
                           ((lambda (_%g3001530065%_)
                              (let* ((_%g3008230099%_
                                      (lambda (_%g3008330095%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g3008330095%_)))
                                     (_%g3008130532%_
                                      (lambda (_%g3008330103%_)
                                        (if (gx#stx-pair/null? _%g3008330103%_)
                                            (let ((_g40043_
                                                   (gx#syntax-split-splice
                                                    _%g3008330103%_
                                                    '0)))
                                              (begin
                                                (let ((_g40044_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g40043_)
                                                             (##values-length
                                                              _g40043_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g40044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g40044_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target3008530106%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40043_
                                                          0)))
                                                      (_%tl3008730109%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40043_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl3008730109%_)
                                                      (letrec ((_%loop3008830112%_
                                                                (lambda (_%hd3008630116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%init3009230119%_)
                          (if (gx#stx-pair? _%hd3008630116%_)
                              (let ((_%e3008930121%_
                                     (gx#syntax-e _%hd3008630116%_)))
                                (let ((_%lp-hd3009030125%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3008930121%_)))
                                      (_%lp-tl3009130128%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3008930121%_))))
                                  (_%loop3008830112%_
                                   _%lp-tl3009130128%_
                                   (cons _%lp-hd3009030125%_
                                         _%init3009230119%_))))
                              (let ((_%init3009330131%_
                                     (reverse _%init3009230119%_)))
                                ((lambda (_%g3008430134%_)
                                   (let* ((_%g3015130159%_
                                           (lambda (_%g3015230155%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g3015230155%_)))
                                          (_%g3015030528%_
                                           (lambda (_%g3015230163%_)
                                             ((lambda (_%g3015330166%_)
                                                (let* ((_%g3017930187%_
                                                        (lambda (_%g3018030183%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g3018030183%_)))
                                                       (_%g3017830524%_
                                                        (lambda (_%g3018030191%_)
                                                          ((lambda (_%g3018130194%_)
                                                             (let* ((_%g3020730215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g3020830211%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g3020830211%_)))
                            (_%g3020630520%_
                             (lambda (_%g3020830219%_)
                               ((lambda (_%g3020930222%_)
                                  (let* ((_%g3023530243%_
                                          (lambda (_%g3023630239%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3023630239%_)))
                                         (_%g3023430516%_
                                          (lambda (_%g3023630247%_)
                                            ((lambda (_%g3023730250%_)
                                               (let* ((_%g3026330271%_
                                                       (lambda (_%g3026430267%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g3026430267%_)))
                                                      (_%g3026230512%_
                                                       (lambda (_%g3026430275%_)
                                                         ((lambda (_%g3026530278%_)
                                                            (let* ((_%g3029130299%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3029230295%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3029230295%_)))
                           (_%g3029030508%_
                            (lambda (_%g3029230303%_)
                              ((lambda (_%g3029330306%_)
                                 (let* ((_%g3031930327%_
                                         (lambda (_%g3032030323%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3032030323%_)))
                                        (_%g3031830504%_
                                         (lambda (_%g3032030331%_)
                                           ((lambda (_%g3032130334%_)
                                              (let* ((_%g3034730355%_
                                                      (lambda (_%g3034830351%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3034830351%_)))
                                                     (_%g3034630489%_
                                                      (lambda (_%g3034830359%_)
                                                        ((lambda (_%g3034930362%_)
                                                           (let* ((_%g3037530383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g3037630379%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3037630379%_)))
                          (_%g3037430477%_
                           (lambda (_%g3037630387%_)
                             ((lambda (_%g3037730390%_)
                                (let* ((_%g3040330411%_
                                        (lambda (_%g3040430407%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3040430407%_)))
                                       (_%g3040230473%_
                                        (lambda (_%g3040430415%_)
                                          ((lambda (_%g3040530418%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%g3018130194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%g3029330306%_
                                                     (foldr (lambda (_%g3043230443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g3043330446%_)
                      (cons _%g3043230443%_ _%g3043330446%_))
                    '()
                    _%g2994729997%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%g3032130334%_ '())))
                                   '()))
                       (cons (cons _%g3023730250%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%g3026530278%_
                                                           (cons _%g3029330306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3043430449%_ _%g3043530452%_)
                                  (cons _%g3043430449%_ _%g3043530452%_))
                                '()
                                _%g3001530065%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%g3040530418%_
                                                           '())))
                                         '()))
                             (cons (cons _%g3020930222%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%g3029330306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3043630455%_ _%g3043730458%_)
                                  (cons _%g3043630455%_ _%g3043730458%_))
                                '()
                                _%g3001530065%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%g3029330306%_ '()))
                                     (cons (cons _%g3023730250%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%g3029330306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%g3029330306%_
                     (foldr (lambda (_%g3043830461%_ _%g3043930464%_)
                              (cons _%g3043830461%_ _%g3043930464%_))
                            '()
                            _%g3001530065%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%g3037730390%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%g3020930222%_
                             (cons _%g3015330166%_
                                   (foldr (lambda (_%g3044030467%_
                                                   _%g3044130470%_)
                                            (cons _%g3044030467%_
                                                  _%g3044130470%_))
                                          '()
                                          _%g3008430134%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3040430415%_))))
                                  (_%g3040230473%_
                                   (_%generate129300%_
                                    _%g3026530278%_
                                    _%hd29940%_
                                    _%g3034930362%_
                                    _%g3037730390%_))))
                              _%g3037630387%_))))
                     (_%g3037430477%_
                      (cons _%g3018130194%_
                            (cons _%g3029330306%_
                                  (foldr (lambda (_%g3048030483%_
                                                  _%g3048130486%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%g3048030483%_
                                                             '()))
                                                 _%g3048130486%_))
                                         '()
                                         _%g3001530065%_))))))
                 _%g3034830359%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3034630489%_
                                                 (cons _%g3020930222%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%g3029330306%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets
                        _%g3001530065%_
                        _%g2994729997%_)
                       (foldr (lambda (_%g3049230496%_
                                       _%g3049330499%_
                                       _%g3049430501%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%g3049330499%_
                                                  (cons _%g3049230496%_ '())))
                                      _%g3049430501%_))
                              '()
                              _%g3001530065%_
                              _%g2994729997%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g3032030331%_))))
                                   (_%g3031830504%_
                                    (_%generate129300%_
                                     _%g3029330306%_
                                     _%rest29941%_
                                     _%K29942%_
                                     _%E29943%_))))
                               _%g3029230303%_))))
                      (_%g3029030508%_ (gx#genident 'rest))))
                  _%g3026430275%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3026230512%_
                                                  (gx#genident 'hd))))
                                             _%g3023630247%_))))
                                    (_%g3023430516%_
                                     (gx#genident 'splice-try))))
                                _%g3020830219%_))))
                       (_%g3020630520%_ (gx#genident 'splice-loop))))
                   _%g3018030191%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g3017830524%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%g3015230163%_))))
                                     (_%g3015030528%_ _%tgt29938%_)))
                                 _%init3009330131%_))))))
                (_%loop3008830112%_ _%target3008530106%_ '()))
              (_%g3008230099%_ _%g3008330103%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g3008230099%_
                                             _%g3008330103%_)))))
                                (_%g3008130532%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%g3053530538%_
                                                   _%g3053630541%_)
                                            (cons _%g3053530538%_
                                                  _%g3053630541%_))
                                          '()
                                          _%g2994729997%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%var-r3002430062%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop3001930043%_
                                                    _%target3001630037%_
                                                    '()))
                                                 (_%g3001330030%_
                                                  _%g3001430034%_)))))
                                       (_%g3001330030%_ _%g3001430034%_)))))
                           (_%g3001230544%_
                            (gx#gentemps
                             (foldr (lambda (_%g3054730550%_ _%g3054830553%_)
                                      (cons _%g3054730550%_ _%g3054830553%_))
                                    '()
                                    _%g2994729997%_)))))
                       _%var2995629994%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2995129975%_
                                               _%target2994829969%_
                                               '()))
                                            (_%g2994529962%_
                                             _%g2994629966%_)))))
                                  (_%g2994529962%_ _%g2994629966%_)))))
                      (_%g2994430556%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd29940%_)))))
                 (_%generate-simple-vector29303%_
                  (lambda (_%tgt29761%_
                           _%body29763%_
                           _%start29764%_
                           _%ref29765%_
                           _%K29766%_
                           _%E29767%_)
                    (let _%recur29769%_ ((_%rest29772%_ _%body29763%_)
                                         (_%off29774%_ _%start29764%_))
                      (let* ((_%__stx3924239243%_ _%rest29772%_)
                             (_%g2977729789%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3924239243%_))))
                        (let ((_%__kont3924539246%_
                               (lambda (_%g2977929817%_ _%g2978029819%_)
                                 (let* ((_%g2983429857%_
                                         (lambda (_%g2983529853%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2983529853%_)))
                                        (_%g2983329930%_
                                         (lambda (_%g2983529861%_)
                                           (if (gx#stx-pair? _%g2983529861%_)
                                               (let ((_%e2984029864%_
                                                      (gx#syntax-e
                                                       _%g2983529861%_)))
                                                 (let ((_%hd2984129868%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2984029864%_)))
                                                       (_%tl2984229871%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2984029864%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2984229871%_)
                                                       (let ((_%e2984329874%_
                                                              (gx#syntax-e
                                                               _%tl2984229871%_)))
                                                         (let ((_%hd2984429878%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2984329874%_)))
                       (_%tl2984529881%_
                        (let () (declare (not safe)) (##cdr _%e2984329874%_))))
                   (if (gx#stx-pair? _%tl2984529881%_)
                       (let ((_%e2984629884%_ (gx#syntax-e _%tl2984529881%_)))
                         (let ((_%hd2984729888%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e2984629884%_)))
                               (_%tl2984829891%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e2984629884%_))))
                           (if (gx#stx-pair? _%tl2984829891%_)
                               (let ((_%e2984929894%_
                                      (gx#syntax-e _%tl2984829891%_)))
                                 (let ((_%hd2985029898%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2984929894%_)))
                                       (_%tl2985129901%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2984929894%_))))
                                   (if (gx#stx-null? _%tl2985129901%_)
                                       ((lambda (_%g2983629904%_
                                                 _%g2983729906%_
                                                 _%g2983829907%_
                                                 _%g2983929908%_)
                                          (cons 'let
                                                (cons (cons (cons _%g2983929908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _%g2983629904%_
                                      (cons _%g2983829907%_
                                            (cons _%g2983729906%_ '())))
                                '()))
                    '())
              (cons (_%generate129300%_
                     _%g2983929908%_
                     _%g2978029819%_
                     (_%recur29769%_ _%g2977929817%_ (fx1+ _%off29774%_))
                     _%E29767%_)
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%hd2985029898%_
                                        _%hd2984729888%_
                                        _%hd2984429878%_
                                        _%hd2984129868%_)
                                       (_%g2983429857%_ _%g2983529861%_))))
                               (_%g2983429857%_ _%g2983529861%_))))
                       (_%g2983429857%_ _%g2983529861%_))))
               (_%g2983429857%_ _%g2983529861%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2983429857%_
                                                _%g2983529861%_)))))
                                   (_%g2983329930%_
                                    (list (gx#genident 'e)
                                          _%tgt29761%_
                                          _%off29774%_
                                          _%ref29765%_)))))
                              (_%__kont3924739248%_ (lambda () _%K29766%_)))
                          (if (gx#stx-pair? _%__stx3924239243%_)
                              (let ((_%e2978129807%_
                                     (gx#syntax-e _%__stx3924239243%_)))
                                (let ((_%tl2978329814%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2978129807%_)))
                                      (_%hd2978229811%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2978129807%_))))
                                  (_%__kont3924539246%_
                                   _%tl2978329814%_
                                   _%hd2978229811%_)))
                              (_%__kont3924739248%_)))))))
                 (_%generate-list-vector29304%_
                  (lambda (_%tgt29653%_
                           _%body29655%_
                           _%->list29656%_
                           _%K29657%_
                           _%E29658%_)
                    (let* ((_%g2966029668%_
                            (lambda (_%g2966129664%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2966129664%_)))
                           (_%g2965929757%_
                            (lambda (_%g2966129672%_)
                              ((lambda (_%g2966229675%_)
                                 (let* ((_%g2968729695%_
                                         (lambda (_%g2968829691%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2968829691%_)))
                                        (_%g2968629753%_
                                         (lambda (_%g2968829699%_)
                                           ((lambda (_%g2968929702%_)
                                              (let* ((_%g2971529723%_
                                                      (lambda (_%g2971629719%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2971629719%_)))
                                                     (_%g2971429745%_
                                                      (lambda (_%g2971629727%_)
                                                        ((lambda (_%g2971729730%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%g2966229675%_
                                           (cons _%g2971729730%_ '()))
                                     '())
                               (cons (_%generate129300%_
                                      _%g2966229675%_
                                      _%body29655%_
                                      _%K29657%_
                                      _%E29658%_)
                                     '()))))
                 _%g2971629727%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2971429745%_
                                                 (let ((_%$e29749%_
                                                        _%->list29656%_))
                                                   (if (eq? 'values->list
                                                            _%$e29749%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%g2968929702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e29749%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%g2968929702%_ '()))
                   (if (eq? 'struct->list _%$e29749%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax '#f 'struct->list)
                                         (cons _%g2968929702%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx29293%_
                        _%->list29656%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2968829699%_))))
                                   (_%g2968629753%_ _%tgt29653%_)))
                               _%g2966129672%_))))
                      (_%g2965929757%_ (gx#genident 'e)))))
                 (_%generate-struct29305%_
                  (lambda (_%info29524%_
                           _%tgt29526%_
                           _%body29527%_
                           _%K29528%_
                           _%E29529%_)
                    (let* ((_%__stx3925839259%_ _%body29527%_)
                           (_%g2953229555%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3925839259%_))))
                      (let ((_%__kont3926139262%_
                             (lambda (_%g2953429632%_)
                               (let ((_%fields29646%_
                                      (_%struct-field-accessors29307%_
                                       _%info29524%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj40012
                                                          _%info29524%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj40012
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj40012
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj40012
                                                          'predicate)))
                                                   (cons _%tgt29526%_ '()))
                                             (cons (_%generate-simple-struct-body29306%_
                                                    _%info29524%_
                                                    _%tgt29526%_
                                                    _%g2953429632%_
                                                    _%K29528%_
                                                    _%E29529%_)
                                                   (cons _%E29529%_ '())))))))
                            (_%__kont3926339264%_
                             (lambda (_%g2954229586%_)
                               (cons 'if
                                     (cons (cons (let ((__obj40013
                                                        _%info29524%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj40013
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj40013
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj40013
                                                        'predicate)))
                                                 (cons _%tgt29526%_ '()))
                                           (cons (_%generate-list-vector29304%_
                                                  _%tgt29526%_
                                                  _%g2954229586%_
                                                  'struct->list
                                                  _%K29528%_
                                                  _%E29529%_)
                                                 (cons _%E29529%_ '())))))))
                        (if (gx#stx-pair? _%__stx3925839259%_)
                            (let ((_%e2953529608%_
                                   (gx#syntax-e _%__stx3925839259%_)))
                              (let ((_%tl2953729615%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2953529608%_)))
                                    (_%hd2953629612%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2953529608%_))))
                                (if (gx#stx-datum? _%hd2953629612%_)
                                    (let ((_%e2953829618%_
                                           (gx#stx-e _%hd2953629612%_)))
                                      (if (equal? _%e2953829618%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2953729615%_)
                                              (let ((_%e2953929622%_
                                                     (gx#syntax-e
                                                      _%tl2953729615%_)))
                                                (let ((_%tl2954129629%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2953929622%_)))
                                                      (_%hd2954029626%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2953929622%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2954129629%_)
                                                      (_%__kont3926139262%_
                                                       _%hd2954029626%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2953229555%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2953229555%_)))
                                          (if (equal? _%e2953829618%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2953729615%_)
                                                  (let ((_%e2954729576%_
                                                         (gx#syntax-e
                                                          _%tl2953729615%_)))
                                                    (let ((_%tl2954929583%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2954729576%_)))
                                                          (_%hd2954829580%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2954729576%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2954929583%_)
                                                          (_%__kont3926339264%_
                                                           _%hd2954829580%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2953229555%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2953229555%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2953229555%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2953229555%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2953229555%_)))))))
                 (_%generate-simple-struct-body29306%_
                  (lambda (_%info29444%_
                           _%tgt29446%_
                           _%body29447%_
                           _%K29448%_
                           _%E29449%_)
                    (let _%recur29451%_ ((_%rest29454%_ _%body29447%_)
                                         (_%fields29456%_
                                          (_%struct-field-accessors29307%_
                                           _%info29444%_)))
                      (let* ((_%__stx3930839309%_ _%rest29454%_)
                             (_%g2945929471%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3930839309%_))))
                        (let ((_%__kont3931139312%_
                               (lambda (_%g2946129499%_ _%g2946229501%_)
                                 (if (null? _%fields29456%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29293%_
                                      _%info29444%_
                                      (let ((__obj40014 _%info29444%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj40014
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj40014
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj40014
                                             'name))))
                                     (let ((_%$tgt29516%_ (gx#genident 'e))
                                           (_%getf29518%_
                                            (car _%fields29456%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29516%_
                                                               (cons (cons _%getf29518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29446%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129300%_
                                                          _%$tgt29516%_
                                                          _%g2946229501%_
                                                          (_%recur29451%_
                                                           _%g2946129499%_
                                                           (cdr _%fields29456%_))
                                                          _%E29449%_)
                                                         '())))))))
                              (_%__kont3931339314%_ (lambda () _%K29448%_)))
                          (if (gx#stx-pair? _%__stx3930839309%_)
                              (let ((_%e2946329489%_
                                     (gx#syntax-e _%__stx3930839309%_)))
                                (let ((_%tl2946529496%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2946329489%_)))
                                      (_%hd2946429493%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2946329489%_))))
                                  (_%__kont3931139312%_
                                   _%tl2946529496%_
                                   _%hd2946429493%_)))
                              (_%__kont3931339314%_)))))))
                 (_%struct-field-accessors29307%_
                  (lambda (_%info29425%_)
                    (let _%recur29428%_ ((_%next29431%_
                                          (cons _%info29425%_ '())))
                      (if (null? _%next29431%_)
                          '()
                          (let ((_%ti29434%_ (car _%next29431%_)))
                            (let ((__tmp40046
                                   (_%recur29428%_
                                    (map gx#syntax-local-value
                                         (let ((__obj40015 _%ti29434%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj40015
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj40015
                                                  '4
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj40015
                                                'super))))))
                                  (__tmp40045
                                   (map (lambda (_%slot29437%_)
                                          (let ((_%$e29440%_
                                                 (agetq _%slot29437%_
                                                        (let ((__obj40016
                                                               _%ti29434%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj40016
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj40016 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj40016
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29440%_
                                                _%$e29440%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29293%_
                                                 _%info29425%_
                                                 _%slot29437%_))))
                                        (let ((__obj40017 _%ti29434%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj40017
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj40017
                                                 '5
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj40017
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp40046 __tmp40045)))))))
                 (_%generate-class29308%_
                  (lambda (_%info29418%_
                           _%tgt29420%_
                           _%body29421%_
                           _%K29422%_
                           _%E29423%_)
                    (cons 'if
                          (cons (cons (let ((__obj40018 _%info29418%_))
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
                                      (cons _%tgt29420%_ '()))
                                (cons (_%generate-class-body29309%_
                                       _%info29418%_
                                       _%tgt29420%_
                                       _%body29421%_
                                       _%K29422%_
                                       _%E29423%_)
                                      (cons _%E29423%_ '()))))))
                 (_%generate-class-body29309%_
                  (lambda (_%info29311%_
                           _%tgt29313%_
                           _%body29314%_
                           _%K29315%_
                           _%E29316%_)
                    (let _%recur29318%_ ((_%rest29321%_ _%body29314%_))
                      (let* ((_%__stx3932439325%_ _%rest29321%_)
                             (_%g2932529341%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3932439325%_))))
                        (let ((_%__kont3932739328%_
                               (lambda (_%g2932729379%_
                                        _%g2932829381%_
                                        _%g2932929382%_)
                                 (let ((_%$e29402%_
                                        (agetq (let ((__tmp40047
                                                      (keyword->string
                                                       (gx#stx-e
                                                        _%g2932929382%_))))
                                                 (declare (not safe))
                                                 (##string->symbol __tmp40047))
                                               (let ((__obj40019
                                                      _%info29311%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj40019
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj40019
                                                        '17
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj40019
                                                      'unchecked-accessors))))))
                                   (if _%$e29402%_
                                       ((lambda (_%getf29406%_)
                                          (let ((_%$tgt29409%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt29409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf29406%_ (cons _%tgt29313%_ '()))
                                  '()))
                      '())
                (cons (_%generate129300%_
                       _%$tgt29409%_
                       _%g2932829381%_
                       (_%recur29318%_ _%g2932729379%_)
                       _%E29316%_)
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e29402%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx29293%_
                                        _%info29311%_
                                        _%g2932929382%_)))))
                              (_%__kont3932939330%_ (lambda () _%K29315%_)))
                          (if (gx#stx-pair? _%__stx3932439325%_)
                              (let ((_%e2933029359%_
                                     (gx#syntax-e _%__stx3932439325%_)))
                                (let ((_%tl2933229366%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2933029359%_)))
                                      (_%hd2933129363%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2933029359%_))))
                                  (if (gx#stx-pair? _%tl2933229366%_)
                                      (let ((_%e2933329369%_
                                             (gx#syntax-e _%tl2933229366%_)))
                                        (let ((_%tl2933529376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2933329369%_)))
                                              (_%hd2933429373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2933329369%_))))
                                          (_%__kont3932739328%_
                                           _%tl2933529376%_
                                           _%hd2933429373%_
                                           _%hd2933129363%_)))
                                      (_%__kont3932939330%_))))
                              (_%__kont3932939330%_))))))))
          (_%generate129300%_
           _%tgt29295%_
           _%ptree29296%_
           _%K29297%_
           _%E29298%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx28112%_ _%tgt-lst28114%_ _%clauses28115%_)
        (letrec ((_%parse-body28117%_
                  (lambda (_%hd-len29115%_)
                    (let _%lp29118%_ ((_%rest29121%_ _%clauses28115%_)
                                      (_%r29123%_ '()))
                      (let* ((_%__stx3937439375%_ _%rest29121%_)
                             (_%g2912629138%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3937439375%_))))
                        (let ((_%__kont3937739378%_
                               (lambda (_%g2912829166%_ _%g2912929168%_)
                                 (let* ((_%__stx3934639347%_ _%g2912929168%_)
                                        (_%g2918529201%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3934639347%_))))
                                   (let ((_%__kont3934939350%_
                                          (lambda (_%g2918729270%_)
                                            (if (gx#stx-null? _%g2912829166%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%g2918729270%_)
                                 (let ((_%$e29281%_
                                        (gx#stx-source _%g2912929168%_)))
                                   (if _%$e29281%_
                                       _%$e29281%_
                                       (gx#stx-source _%stx28112%_))))
                                '())))
              _%r29123%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx28112%_
                                                 _%g2912929168%_))))
                                         (_%__kont3935139352%_
                                          (lambda (_%g2919129229%_
                                                   _%g2919229231%_)
                                            (_%lp29118%_
                                             _%g2912829166%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g2924329245%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g2924329245%_
                           _%stx28112%_))
                        _%g2919229231%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin)
                                    _%g2919129229%_)
                              (let ((_%$e29249%_
                                     (gx#stx-source _%g2912929168%_)))
                                (if _%$e29249%_
                                    _%$e29249%_
                                    (gx#stx-source _%stx28112%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r29123%_))))
                                         (_%__kont3935339354%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx28112%_
                                             _%g2912929168%_))))
                                     (let* ((_%__match3937139372%_
                                             (lambda (_%e2919329219%_
                                                      _%hd2919429223%_
                                                      _%tl2919529226%_)
                                               (let ((_%g2919129229%_
                                                      _%tl2919529226%_)
                                                     (_%g2919229231%_
                                                      _%hd2919429223%_))
                                                 (if (and (gx#stx-list?
                                                           _%g2919229231%_)
                                                          (fx= (gx#stx-length
                                                                _%g2919229231%_)
                                                               _%hd-len29115%_)
                                                          (gx#stx-list?
                                                           _%g2919129229%_)
                                                          (not (gx#stx-null?
                                                                _%g2919129229%_)))
                                                     (_%__kont3935139352%_
                                                      _%g2919129229%_
                                                      _%g2919229231%_)
                                                     (_%__kont3935339354%_)))))
                                            (_%__match3936539366%_
                                             (lambda (_%e2918829260%_
                                                      _%hd2918929264%_
                                                      _%tl2919029267%_)
                                               (let ((_%g2918729270%_
                                                      _%tl2919029267%_))
                                                 (if (and (gx#stx-list?
                                                           _%g2918729270%_)
                                                          (not (gx#stx-null?
                                                                _%g2918729270%_)))
                                                     (_%__kont3934939350%_
                                                      _%g2918729270%_)
                                                     (_%__match3937139372%_
                                                      _%e2918829260%_
                                                      _%hd2918929264%_
                                                      _%tl2919029267%_))))))
                                       (if (gx#stx-pair? _%__stx3934639347%_)
                                           (let ((_%e2918829260%_
                                                  (gx#syntax-e
                                                   _%__stx3934639347%_)))
                                             (let ((_%tl2919029267%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2918829260%_)))
                                                   (_%hd2918929264%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2918829260%_))))
                                               (if (gx#identifier?
                                                    _%hd2918929264%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g40048_|
                                                        _%hd2918929264%_)
                                                       (_%__match3936539366%_
                                                        _%e2918829260%_
                                                        _%hd2918929264%_
                                                        _%tl2919029267%_)
                                                       (_%__match3937139372%_
                                                        _%e2918829260%_
                                                        _%hd2918929264%_
                                                        _%tl2919029267%_))
                                                   (_%__match3937139372%_
                                                    _%e2918829260%_
                                                    _%hd2918929264%_
                                                    _%tl2919029267%_))))
                                           (_%__kont3935339354%_)))))))
                              (_%__kont3937939380%_ (lambda () _%r29123%_)))
                          (if (gx#stx-pair? _%__stx3937439375%_)
                              (let ((_%e2913029156%_
                                     (gx#syntax-e _%__stx3937439375%_)))
                                (let ((_%tl2913229163%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2913029156%_)))
                                      (_%hd2913129160%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2913029156%_))))
                                  (_%__kont3937739378%_
                                   _%tl2913229163%_
                                   _%hd2913129160%_)))
                              (_%__kont3937939380%_)))))))
                 (_%generate-body28119%_
                  (lambda (_%body28821%_)
                    (let* ((_%g2882428832%_
                            (lambda (_%g2882528828%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2882528828%_)))
                           (_%g2882329111%_
                            (lambda (_%g2882528836%_)
                              ((lambda (_%g2882628839%_)
                                 (let* ((_%g2885128868%_
                                         (lambda (_%g2885228864%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2885228864%_)))
                                        (_%g2885029107%_
                                         (lambda (_%g2885228872%_)
                                           (if (gx#stx-pair/null?
                                                _%g2885228872%_)
                                               (let ((_g40049_
                                                      (gx#syntax-split-splice
                                                       _%g2885228872%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g40050_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g40049_)
                        (##values-length _g40049_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g40050_ 2)))
                 (error "Context expects 2 values" _g40050_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target2885428875%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40049_
                                                             0)))
                                                         (_%tl2885628878%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40049_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl2885628878%_)
                                                         (letrec ((_%loop2885728881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd2885528885%_ _%target2886128888%_)
                             (if (gx#stx-pair? _%hd2885528885%_)
                                 (let ((_%e2885828890%_
                                        (gx#syntax-e _%hd2885528885%_)))
                                   (let ((_%lp-hd2885928894%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2885828890%_)))
                                         (_%lp-tl2886028897%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2885828890%_))))
                                     (_%loop2885728881%_
                                      _%lp-tl2886028897%_
                                      (cons _%lp-hd2885928894%_
                                            _%target2886128888%_))))
                                 (let ((_%target2886228900%_
                                        (reverse _%target2886128888%_)))
                                   ((lambda (_%g2885328903%_)
                                      (let* ((_%g2892028937%_
                                              (lambda (_%g2892128933%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2892128933%_)))
                                             (_%g2891929103%_
                                              (lambda (_%g2892128941%_)
                                                (if (gx#stx-pair/null?
                                                     _%g2892128941%_)
                                                    (let ((_g40051_
                                                           (gx#syntax-split-splice
                                                            _%g2892128941%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g40052_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g40051_)
                             (##values-length _g40051_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g40052_ 2)))
                      (error "Context expects 2 values" _g40052_)))
                (let ((_%target2892328944%_
                       (let () (declare (not safe)) (##values-ref _g40051_ 0)))
                      (_%tl2892528947%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g40051_ 1))))
                  (if (gx#stx-null? _%tl2892528947%_)
                      (letrec ((_%loop2892628950%_
                                (lambda (_%hd2892428954%_
                                         _%fail-diagnostic2893028957%_)
                                  (if (gx#stx-pair? _%hd2892428954%_)
                                      (let ((_%e2892728959%_
                                             (gx#syntax-e _%hd2892428954%_)))
                                        (let ((_%lp-hd2892828963%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2892728959%_)))
                                              (_%lp-tl2892928966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2892728959%_))))
                                          (_%loop2892628950%_
                                           _%lp-tl2892928966%_
                                           (cons _%lp-hd2892828963%_
                                                 _%fail-diagnostic2893028957%_))))
                                      (let ((_%fail-diagnostic2893128969%_
                                             (reverse _%fail-diagnostic2893028957%_)))
                                        ((lambda (_%g2892228972%_)
                                           (let* ((_%g2898928997%_
                                                   (lambda (_%g2899028993%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2899028993%_)))
                                                  (_%g2898829083%_
                                                   (lambda (_%g2899029001%_)
                                                     ((lambda (_%g2899129004%_)
                                                        (let* ((_%g2901729025%_
                                                                (lambda (_%g2901829021%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2901829021%_)))
                       (_%g2901629079%_
                        (lambda (_%g2901829029%_)
                          ((lambda (_%g2901929032%_)
                             (let* ((_%g2904529053%_
                                     (lambda (_%g2904629049%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2904629049%_)))
                                    (_%g2904429075%_
                                     (lambda (_%g2904629057%_)
                                       ((lambda (_%g2904729060%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%g2904729060%_
                                                            '()))))
                                        _%g2904629057%_))))
                               (_%g2904429075%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%g2882628839%_
                                                         (cons _%g2899129004%_
                                                               '()))
                                                   '())
                                             (cons _%g2901929032%_ '())))
                                 (gx#stx-source _%stx28112%_)))))
                           _%g2901829029%_))))
                  (_%g2901629079%_
                   (_%generate-clauses28120%_
                    _%body28821%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%g2882628839%_ '()) '())))))))
              _%g2899029001%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2898829083%_
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
                                     (foldr (lambda (_%g2908629091%_
                                                     _%g2908729094%_)
                                              (cons _%g2908629091%_
                                                    _%g2908729094%_))
                                            (foldr (lambda (_%g2908829097%_
                                                            _%g2908929100%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g2908829097%_ '()))
                   _%g2908929100%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%g2892228972%_)
                                            _%g2885328903%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx28112%_)))))
                                         _%fail-diagnostic2893128969%_))))))
                        (_%loop2892628950%_ _%target2892328944%_ '()))
                      (_%g2892028937%_ _%g2892128941%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2892028937%_
                                                     _%g2892128941%_)))))
                                        (_%g2891929103%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses28115%_))))
                                    _%target2886228900%_))))))
                   (_%loop2885728881%_ _%target2885428875%_ '()))
                 (_%g2885128868%_ _%g2885228872%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2885128868%_
                                                _%g2885228872%_)))))
                                   (_%g2885029107%_ _%tgt-lst28114%_)))
                               _%g2882528836%_))))
                      (_%g2882329111%_ (gx#genident 'E)))))
                 (_%generate-clauses28120%_
                  (lambda (_%rest28473%_ _%E28475%_)
                    (let* ((_%__stx3939039391%_ _%rest28473%_)
                           (_%g2847928495%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3939039391%_))))
                      (let ((_%__kont3939339394%_
                             (lambda (_%g2848128729%_)
                               (let* ((_%g2874028758%_
                                       (lambda (_%g2874128754%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2874128754%_)))
                                      (_%g2873928813%_
                                       (lambda (_%g2874128762%_)
                                         (if (gx#stx-pair? _%g2874128762%_)
                                             (let ((_%e2874428765%_
                                                    (gx#syntax-e
                                                     _%g2874128762%_)))
                                               (let ((_%hd2874528769%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2874428765%_)))
                                                     (_%tl2874628772%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2874428765%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2874628772%_)
                                                     (let ((_%e2874728775%_
                                                            (gx#syntax-e
                                                             _%tl2874628772%_)))
                                                       (let ((_%hd2874828779%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2874728775%_)))
                     (_%tl2874928782%_
                      (let () (declare (not safe)) (##cdr _%e2874728775%_))))
                 (if (gx#stx-pair? _%tl2874928782%_)
                     (let ((_%e2875028785%_ (gx#syntax-e _%tl2874928782%_)))
                       (let ((_%hd2875128789%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2875028785%_)))
                             (_%tl2875228792%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2875028785%_))))
                         (if (gx#stx-null? _%tl2875228792%_)
                             ((lambda (_%g2874228795%_ _%g2874328797%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e
                                                       _%g2874328797%_)
                                                      (_%generate128121%_
                                                       _%g2874328797%_
                                                       _%g2874228795%_
                                                       _%E28475%_)
                                                      _%g2874228795%_)
                                                  '()))))
                              _%hd2875128789%_
                              _%hd2874828779%_)
                             (_%g2874028758%_ _%g2874128762%_))))
                     (_%g2874028758%_ _%g2874128762%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2874028758%_
                                                      _%g2874128762%_))))
                                             (_%g2874028758%_
                                              _%g2874128762%_)))))
                                 (_%g2873928813%_ _%g2848128729%_))))
                            (_%__kont3939539396%_
                             (lambda (_%g2848528523%_ _%g2848628525%_)
                               (let* ((_%g2853828557%_
                                       (lambda (_%g2853928553%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2853928553%_)))
                                      (_%g2853728708%_
                                       (lambda (_%g2853928561%_)
                                         (if (gx#stx-pair? _%g2853928561%_)
                                             (let ((_%e2854328564%_
                                                    (gx#syntax-e
                                                     _%g2853928561%_)))
                                               (let ((_%hd2854428568%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2854328564%_)))
                                                     (_%tl2854528571%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2854328564%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2854528571%_)
                                                     (let ((_%e2854628574%_
                                                            (gx#syntax-e
                                                             _%tl2854528571%_)))
                                                       (let ((_%hd2854728578%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2854628574%_)))
                     (_%tl2854828581%_
                      (let () (declare (not safe)) (##cdr _%e2854628574%_))))
                 (if (gx#stx-pair? _%tl2854828581%_)
                     (let ((_%e2854928584%_ (gx#syntax-e _%tl2854828581%_)))
                       (let ((_%hd2855028588%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2854928584%_)))
                             (_%tl2855128591%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2854928584%_))))
                         (if (gx#stx-null? _%tl2855128591%_)
                             ((lambda (_%g2854028594%_
                                       _%g2854128596%_
                                       _%g2854228597%_)
                                (if (gx#stx-e _%g2854128596%_)
                                    (let* ((_%g2861428629%_
                                            (lambda (_%g2861528625%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2861528625%_)))
                                           (_%g2861328674%_
                                            (lambda (_%g2861528633%_)
                                              (if (gx#stx-pair?
                                                   _%g2861528633%_)
                                                  (let ((_%e2861828636%_
                                                         (gx#syntax-e
                                                          _%g2861528633%_)))
                                                    (let ((_%hd2861928640%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2861828636%_)))
                                                          (_%tl2862028643%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2861828636%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl2862028643%_)
                                                          (let ((_%e2862128646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2862028643%_)))
                    (let ((_%hd2862228650%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2862128646%_)))
                          (_%tl2862328653%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2862128646%_))))
                      (if (gx#stx-null? _%tl2862328653%_)
                          ((lambda (_%g2861628656%_ _%g2861728658%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _%g2854228597%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%g2861728658%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%g2861628656%_ '()))))
                           _%hd2862228650%_
                           _%hd2861928640%_)
                          (_%g2861428629%_ _%g2861528633%_))))
                  (_%g2861428629%_ _%g2861528633%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2861428629%_
                                                   _%g2861528633%_)))))
                                      (_%g2861328674%_
                                       (list (_%generate128121%_
                                              _%g2854128596%_
                                              _%g2854028594%_
                                              _%E28475%_)
                                             (_%generate-clauses28120%_
                                              _%g2848528523%_
                                              (cons _%g2854228597%_ '())))))
                                    (let* ((_%g2867828686%_
                                            (lambda (_%g2867928682%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2867928682%_)))
                                           (_%g2867728704%_
                                            (lambda (_%g2867928690%_)
                                              ((lambda (_%g2868028693%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g2854228597%_
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
                             (cons _%g2854028594%_ '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons _%g2868028693%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2867928690%_))))
                                      (_%g2867728704%_
                                       (_%generate-clauses28120%_
                                        _%g2848528523%_
                                        (cons _%g2854228597%_ '()))))))
                              _%hd2855028588%_
                              _%hd2854728578%_
                              _%hd2854428568%_)
                             (_%g2853828557%_ _%g2853928561%_))))
                     (_%g2853828557%_ _%g2853928561%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2853828557%_
                                                      _%g2853928561%_))))
                                             (_%g2853828557%_
                                              _%g2853928561%_)))))
                                 (_%g2853728708%_ _%g2848628525%_))))
                            (_%__kont3939739398%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28475%_ '()))))))
                        (if (gx#stx-pair? _%__stx3939039391%_)
                            (let ((_%e2848228719%_
                                   (gx#syntax-e _%__stx3939039391%_)))
                              (let ((_%tl2848428726%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2848228719%_)))
                                    (_%hd2848328723%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2848228719%_))))
                                (if (gx#stx-null? _%tl2848428726%_)
                                    (_%__kont3939339394%_ _%hd2848328723%_)
                                    (_%__kont3939539396%_
                                     _%tl2848428726%_
                                     _%hd2848328723%_))))
                            (_%__kont3939739398%_))))))
                 (_%generate128121%_
                  (lambda (_%clause28123%_ _%body28125%_ _%E28126%_)
                    (let* ((_%g2812828152%_
                            (lambda (_%g2812928148%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2812928148%_)))
                           (_%g2812728469%_
                            (lambda (_%g2812928156%_)
                              (if (gx#stx-pair? _%g2812928156%_)
                                  (let ((_%e2813228159%_
                                         (gx#syntax-e _%g2812928156%_)))
                                    (let ((_%hd2813328163%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2813228159%_)))
                                          (_%tl2813428166%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2813228159%_))))
                                      (if (gx#stx-pair? _%tl2813428166%_)
                                          (let ((_%e2813528169%_
                                                 (gx#syntax-e
                                                  _%tl2813428166%_)))
                                            (let ((_%hd2813628173%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2813528169%_)))
                                                  (_%tl2813728176%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2813528169%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2813628173%_)
                                                  (let ((_g40053_
                                                         (gx#syntax-split-splice
                                                          _%hd2813628173%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g40054_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g40053_)
                           (##values-length _g40053_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g40054_ 2)))
                    (error "Context expects 2 values" _g40054_)))
              (let ((_%target2813828179%_
                     (let () (declare (not safe)) (##values-ref _g40053_ 0)))
                    (_%tl2814028182%_
                     (let () (declare (not safe)) (##values-ref _g40053_ 1))))
                (if (gx#stx-null? _%tl2814028182%_)
                    (letrec ((_%loop2814128185%_
                              (lambda (_%hd2813928189%_ _%var2814528192%_)
                                (if (gx#stx-pair? _%hd2813928189%_)
                                    (let ((_%e2814228194%_
                                           (gx#syntax-e _%hd2813928189%_)))
                                      (let ((_%lp-hd2814328198%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2814228194%_)))
                                            (_%lp-tl2814428201%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2814228194%_))))
                                        (_%loop2814128185%_
                                         _%lp-tl2814428201%_
                                         (cons _%lp-hd2814328198%_
                                               _%var2814528192%_))))
                                    (let ((_%var2814628204%_
                                           (reverse _%var2814528192%_)))
                                      (if (gx#stx-null? _%tl2813728176%_)
                                          ((lambda (_%g2813028207%_
                                                    _%g2813128209%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g2823028233%_
                                                                _%g2823128236%_)
                                                         (cons _%g2823028233%_
                                                               _%g2823128236%_))
                                                       '()
                                                       _%g2813028207%_)
                                                _%stx28112%_)
                                               (let* ((_%g2823928247%_
                                                       (lambda (_%g2824028243%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2824028243%_)))
                                                      (_%g2823828341%_
                                                       (lambda (_%g2824028251%_)
                                                         ((lambda (_%g2824128254%_)
                                                            (let* ((_%g2826728275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2826828271%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2826828271%_)))
                           (_%g2826628337%_
                            (lambda (_%g2826828279%_)
                              ((lambda (_%g2826928282%_)
                                 (let* ((_%g2829528303%_
                                         (lambda (_%g2829628299%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2829628299%_)))
                                        (_%g2829428325%_
                                         (lambda (_%g2829628307%_)
                                           ((lambda (_%g2829728310%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%g2813128209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g2829728310%_ '()))
                   (cons _%g2824128254%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx28112%_)))
                                            _%g2829628307%_))))
                                   (_%g2829428325%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%g2832828331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2832928334%_)
                  (cons _%g2832828331%_ _%g2832928334%_))
                '()
                _%g2813028207%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g2826928282%_ '())))
                                     (gx#stx-source _%stx28112%_)))))
                               _%g2826828279%_))))
                      (_%g2826628337%_ _%body28125%_)))
                  _%g2824028251%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2823828341%_
                                                  (let _%recur28345%_ ((_%rest28348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%clause28123%_)
                               (_%rest-targets28350%_ _%tgt-lst28114%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%__stx3941639417%_
                                                            _%rest28348%_)
                                                           (_%g2835328365%_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx3941639417%_))))
                                                      (let ((_%__kont3941939420%_
                                                             (lambda (_%g2835528401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2835628403%_)
                       (let* ((_%g2841828430%_
                               (lambda (_%g2841928426%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2841928426%_)))
                              (_%g2841728461%_
                               (lambda (_%g2841928434%_)
                                 (if (gx#stx-pair? _%g2841928434%_)
                                     (let ((_%e2842228437%_
                                            (gx#syntax-e _%g2841928434%_)))
                                       (let ((_%hd2842328441%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2842228437%_)))
                                             (_%tl2842428444%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2842228437%_))))
                                         ((lambda (_%g2842028447%_
                                                   _%g2842128449%_)
                                            (|gerbil/core/match[1]#generate-match1|
                                             _%stx28112%_
                                             _%g2842128449%_
                                             _%g2835628403%_
                                             (_%recur28345%_
                                              _%g2835528401%_
                                              _%g2842028447%_)
                                             _%E28126%_))
                                          _%tl2842428444%_
                                          _%hd2842328441%_)))
                                     (_%g2841828430%_ _%g2841928434%_)))))
                         (_%g2841728461%_ _%rest-targets28350%_))))
                    (_%__kont3942139422%_
                     (lambda ()
                       (cons _%g2813128209%_
                             (foldr (lambda (_%g2837528378%_ _%g2837628381%_)
                                      (cons _%g2837528378%_ _%g2837628381%_))
                                    '()
                                    _%g2813028207%_)))))
                (if (gx#stx-pair? _%__stx3941639417%_)
                    (let ((_%e2835728391%_ (gx#syntax-e _%__stx3941639417%_)))
                      (let ((_%tl2835928398%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2835728391%_)))
                            (_%hd2835828395%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2835728391%_))))
                        (_%__kont3941939420%_
                         _%tl2835928398%_
                         _%hd2835828395%_)))
                    (_%__kont3942139422%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%var2814628204%_
                                           _%hd2813328163%_)
                                          (_%g2812828152%_
                                           _%g2812928156%_)))))))
                      (_%loop2814128185%_ _%target2813828179%_ '()))
                    (_%g2812828152%_ _%g2812928156%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2812828152%_
                                                   _%g2812928156%_))))
                                          (_%g2812828152%_ _%g2812928156%_))))
                                  (_%g2812828152%_ _%g2812928156%_)))))
                      (_%g2812728469%_
                       (list (gx#genident 'K)
                             (let ((__tmp40055
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause28123%_)))
                               (declare (not safe))
                               (##apply append __tmp40055))))))))
          (_%generate-body28119%_
           (_%parse-body28117%_ (gx#stx-length _%tgt-lst28114%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx28014%_ _%tgt28016%_ _%clauses28017%_)
        (letrec ((_%reclause28019%_
                  (lambda (_%clause28022%_)
                    (let* ((_%__stx3943239433%_ _%clause28022%_)
                           (_%g2802728042%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3943239433%_))))
                      (let ((_%__kont3943539436%_ (lambda () _%clause28022%_))
                            (_%__kont3943739438%_
                             (lambda (_%g2803228070%_ _%g2803328072%_)
                               (gx#stx-wrap-source
                                (cons (cons _%g2803328072%_ '())
                                      _%g2803228070%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3943939440%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx28014%_
                                _%clause28022%_))))
                        (if (gx#stx-pair? _%__stx3943239433%_)
                            (let ((_%e2802928094%_
                                   (gx#syntax-e _%__stx3943239433%_)))
                              (let ((_%tl2803128101%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2802928094%_)))
                                    (_%hd2803028098%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2802928094%_))))
                                (if (gx#identifier? _%hd2803028098%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40056_|
                                         _%hd2803028098%_)
                                        (_%__kont3943539436%_)
                                        (_%__kont3943739438%_
                                         _%tl2803128101%_
                                         _%hd2803028098%_))
                                    (_%__kont3943739438%_
                                     _%tl2803128101%_
                                     _%hd2803028098%_))))
                            (_%__kont3943939440%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx28014%_
           (cons _%tgt28016%_ '())
           (gx#stx-map _%reclause28019%_ _%clauses28017%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35355%_)
        (let* ((_%__stx3946039461%_ _%stx35355%_)
               (_%g3536035389%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3946039461%_))))
          (let ((_%__kont3946339464%_
                 (lambda (_%g3536235629%_)
                   (let* ((_%g3564235650%_
                           (lambda (_%g3564335646%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3564335646%_)))
                          (_%g3564135703%_
                           (lambda (_%g3564335654%_)
                             ((lambda (_%g3564435657%_)
                                (let* ((_%g3566935677%_
                                        (lambda (_%g3567035673%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3567035673%_)))
                                       (_%g3566835699%_
                                        (lambda (_%g3567035681%_)
                                          ((lambda (_%g3567135684%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%g3564435657%_
                                                               '())
                                                         (cons _%g3567135684%_
                                                               '()))))
                                           _%g3567035681%_))))
                                  (_%g3566835699%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%g3564435657%_
                                                _%g3536235629%_))
                                    (gx#stx-source _%stx35355%_)))))
                              _%g3564335654%_))))
                     (_%g3564135703%_ (gx#genident 'e)))))
                (_%__kont3946539466%_
                 (lambda (_%g3536935524%_)
                   (let* ((_%g3553735545%_
                           (lambda (_%g3553835541%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3553835541%_)))
                          (_%g3553635598%_
                           (lambda (_%g3553835549%_)
                             ((lambda (_%g3553935552%_)
                                (let* ((_%g3556435572%_
                                        (lambda (_%g3556535568%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3556535568%_)))
                                       (_%g3556335594%_
                                        (lambda (_%g3556535576%_)
                                          ((lambda (_%g3556635579%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%g3553935552%_
                                                         (cons _%g3556635579%_
                                                               '()))))
                                           _%g3556535576%_))))
                                  (_%g3556335594%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%g3553935552%_
                                                _%g3536935524%_))
                                    (gx#stx-source _%stx35355%_)))))
                              _%g3553835549%_))))
                     (_%g3553635598%_ (gx#genident 'args)))))
                (_%__kont3946739468%_
                 (lambda (_%g3537635416%_ _%g3537735418%_)
                   (let* ((_%g3543235440%_
                           (lambda (_%g3543335436%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3543335436%_)))
                          (_%g3543135493%_
                           (lambda (_%g3543335444%_)
                             ((lambda (_%g3543435447%_)
                                (let* ((_%g3545935467%_
                                        (lambda (_%g3546035463%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3546035463%_)))
                                       (_%g3545835489%_
                                        (lambda (_%g3546035471%_)
                                          ((lambda (_%g3546135474%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%g3543435447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%g3537735418%_ '()))
                       '())
                 (cons _%g3546135474%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3546035471%_))))
                                  (_%g3545835489%_
                                   (|gerbil/core/match[1]#generate-match|
                                    _%stx35355%_
                                    _%g3543435447%_
                                    _%g3537635416%_))))
                              _%g3543335444%_))))
                     (_%g3543135493%_ (gx#genident _%g3537735418%_))))))
            (let* ((_%__match3951339514%_
                    (lambda (_%e3537835396%_
                             _%hd3537935400%_
                             _%tl3538035403%_
                             _%e3538135406%_
                             _%hd3538235410%_
                             _%tl3538335413%_)
                      (let ((_%g3537635416%_ _%tl3538335413%_)
                            (_%g3537735418%_ _%hd3538235410%_))
                        (if (gx#stx-list? _%g3537635416%_)
                            (_%__kont3946739468%_
                             _%g3537635416%_
                             _%g3537735418%_)
                            (let () (declare (not safe)) (_%g3536035389%_))))))
                   (_%__match3950139502%_
                    (lambda (_%e3537035504%_
                             _%hd3537135508%_
                             _%tl3537235511%_
                             _%e3537335514%_
                             _%hd3537435518%_
                             _%tl3537535521%_)
                      (let ((_%g3536935524%_ _%tl3537535521%_))
                        (if (gx#stx-list? _%g3536935524%_)
                            (_%__kont3946539466%_ _%g3536935524%_)
                            (_%__match3951339514%_
                             _%e3537035504%_
                             _%hd3537135508%_
                             _%tl3537235511%_
                             _%e3537335514%_
                             _%hd3537435518%_
                             _%tl3537535521%_)))))
                   (_%__match3948539486%_
                    (lambda (_%e3536335609%_
                             _%hd3536435613%_
                             _%tl3536535616%_
                             _%e3536635619%_
                             _%hd3536735623%_
                             _%tl3536835626%_)
                      (let ((_%g3536235629%_ _%tl3536835626%_))
                        (if (gx#stx-list? _%g3536235629%_)
                            (_%__kont3946339464%_ _%g3536235629%_)
                            (_%__match3951339514%_
                             _%e3536335609%_
                             _%hd3536435613%_
                             _%tl3536535616%_
                             _%e3536635619%_
                             _%hd3536735623%_
                             _%tl3536835626%_))))))
              (if (gx#stx-pair? _%__stx3946039461%_)
                  (let ((_%e3536335609%_ (gx#syntax-e _%__stx3946039461%_)))
                    (let ((_%tl3536535616%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3536335609%_)))
                          (_%hd3536435613%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3536335609%_))))
                      (if (gx#stx-pair? _%tl3536535616%_)
                          (let ((_%e3536635619%_
                                 (gx#syntax-e _%tl3536535616%_)))
                            (let ((_%tl3536835626%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3536635619%_)))
                                  (_%hd3536735623%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3536635619%_))))
                              (if (gx#identifier? _%hd3536735623%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40057_|
                                       _%hd3536735623%_)
                                      (_%__match3948539486%_
                                       _%e3536335609%_
                                       _%hd3536435613%_
                                       _%tl3536535616%_
                                       _%e3536635619%_
                                       _%hd3536735623%_
                                       _%tl3536835626%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40058_|
                                           _%hd3536735623%_)
                                          (_%__match3950139502%_
                                           _%e3536335609%_
                                           _%hd3536435613%_
                                           _%tl3536535616%_
                                           _%e3536635619%_
                                           _%hd3536735623%_
                                           _%tl3536835626%_)
                                          (_%__match3951339514%_
                                           _%e3536335609%_
                                           _%hd3536435613%_
                                           _%tl3536535616%_
                                           _%e3536635619%_
                                           _%hd3536735623%_
                                           _%tl3536835626%_)))
                                  (_%__match3951339514%_
                                   _%e3536335609%_
                                   _%hd3536435613%_
                                   _%tl3536535616%_
                                   _%e3536635619%_
                                   _%hd3536735623%_
                                   _%tl3536835626%_))))
                          (let () (declare (not safe)) (_%g3536035389%_)))))
                  (let () (declare (not safe)) (_%g3536035389%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx35711%_)
        (let* ((_%g3571435738%_
                (lambda (_%g3571535734%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3571535734%_)))
               (_%g3571335946%_
                (lambda (_%g3571535742%_)
                  (if (gx#stx-pair? _%g3571535742%_)
                      (let ((_%e3571835745%_ (gx#syntax-e _%g3571535742%_)))
                        (let ((_%hd3571935749%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3571835745%_)))
                              (_%tl3572035752%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3571835745%_))))
                          (if (gx#stx-pair? _%tl3572035752%_)
                              (let ((_%e3572135755%_
                                     (gx#syntax-e _%tl3572035752%_)))
                                (let ((_%hd3572235759%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3572135755%_)))
                                      (_%tl3572335762%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3572135755%_))))
                                  (if (gx#stx-pair/null? _%hd3572235759%_)
                                      (let ((_g40059_
                                             (gx#syntax-split-splice
                                              _%hd3572235759%_
                                              '0)))
                                        (begin
                                          (let ((_g40060_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g40059_)
                                                       (##values-length
                                                        _g40059_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g40060_ 2)))
                                                (error "Context expects 2 values"
                                                       _g40060_)))
                                          (let ((_%target3572435765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g40059_ 0)))
                                                (_%tl3572635768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g40059_ 1))))
                                            (if (gx#stx-null? _%tl3572635768%_)
                                                (letrec ((_%loop3572735771%_
                                                          (lambda (_%hd3572535775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3573135778%_)
                    (if (gx#stx-pair? _%hd3572535775%_)
                        (let ((_%e3572835780%_ (gx#syntax-e _%hd3572535775%_)))
                          (let ((_%lp-hd3572935784%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3572835780%_)))
                                (_%lp-tl3573035787%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3572835780%_))))
                            (_%loop3572735771%_
                             _%lp-tl3573035787%_
                             (cons _%lp-hd3572935784%_ _%e3573135778%_))))
                        (let ((_%e3573235790%_ (reverse _%e3573135778%_)))
                          ((lambda (_%g3571635793%_ _%g3571735795%_)
                             (if (gx#stx-list? _%g3571635793%_)
                                 (let* ((_%g3581335830%_
                                         (lambda (_%g3581435826%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3581435826%_)))
                                        (_%g3581235934%_
                                         (lambda (_%g3581435834%_)
                                           (if (gx#stx-pair/null?
                                                _%g3581435834%_)
                                               (let ((_g40061_
                                                      (gx#syntax-split-splice
                                                       _%g3581435834%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g40062_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g40061_)
                        (##values-length _g40061_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g40062_ 2)))
                 (error "Context expects 2 values" _g40062_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3581635837%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40061_
                                                             0)))
                                                         (_%tl3581835840%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40061_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3581835840%_)
                                                         (letrec ((_%loop3581935843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3581735847%_ _%$e3582335850%_)
                             (if (gx#stx-pair? _%hd3581735847%_)
                                 (let ((_%e3582035852%_
                                        (gx#syntax-e _%hd3581735847%_)))
                                   (let ((_%lp-hd3582135856%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3582035852%_)))
                                         (_%lp-tl3582235859%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3582035852%_))))
                                     (_%loop3581935843%_
                                      _%lp-tl3582235859%_
                                      (cons _%lp-hd3582135856%_
                                            _%$e3582335850%_))))
                                 (let ((_%$e3582435862%_
                                        (reverse _%$e3582335850%_)))
                                   ((lambda (_%g3581535865%_)
                                      (let* ((_%g3588135889%_
                                              (lambda (_%g3588235885%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g3588235885%_)))
                                             (_%g3588035922%_
                                              (lambda (_%g3588235893%_)
                                                ((lambda (_%g3588335896%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets
                          _%g3571735795%_
                          _%g3581535865%_)
                         (foldr (lambda (_%g3591035914%_
                                         _%g3591135917%_
                                         _%g3591235919%_)
                                  (cons (cons _%g3591135917%_
                                              (cons _%g3591035914%_ '()))
                                        _%g3591235919%_))
                                '()
                                _%g3571735795%_
                                _%g3581535865%_))
                       (cons _%g3588335896%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g3588235893%_))))
                                        (_%g3588035922%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx35711%_
                                          (foldr (lambda (_%g3592535928%_
                                                          _%g3592635931%_)
                                                   (cons _%g3592535928%_
                                                         _%g3592635931%_))
                                                 '()
                                                 _%g3581535865%_)
                                          _%g3571635793%_))))
                                    _%$e3582435862%_))))))
                   (_%loop3581935843%_ _%target3581635837%_ '()))
                 (_%g3581335830%_ _%g3581435834%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3581335830%_
                                                _%g3581435834%_)))))
                                   (_%g3581235934%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g3593735940%_
                                                     _%g3593835943%_)
                                              (cons _%g3593735940%_
                                                    _%g3593835943%_))
                                            '()
                                            _%g3571735795%_))))
                                 (_%g3571435738%_ _%g3571535742%_)))
                           _%tl3572335762%_
                           _%e3573235790%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3572735771%_
                                                   _%target3572435765%_
                                                   '()))
                                                (_%g3571435738%_
                                                 _%g3571535742%_)))))
                                      (_%g3571435738%_ _%g3571535742%_))))
                              (_%g3571435738%_ _%g3571535742%_))))
                      (_%g3571435738%_ _%g3571535742%_)))))
          (_%g3571335946%_ _%stx35711%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx35952%_)
        (let* ((_%__stx3951639517%_ _%$stx35952%_)
               (_%g3595836041%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3951639517%_))))
          (let ((_%__kont3951939520%_
                 (lambda (_%g3596036361%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3637736380%_ _%g3637836383%_)
                                        (cons _%g3637736380%_ _%g3637836383%_))
                                      '()
                                      _%g3596036361%_)))))
                (_%__kont3952339524%_
                 (lambda (_%g3597636271%_
                          _%g3597736273%_
                          _%g3597836274%_
                          _%g3597936275%_)
                   (cons _%g3597936275%_
                         (cons (cons (cons _%g3597836274%_
                                           (cons _%g3597736273%_ '()))
                                     '())
                               (foldr (lambda (_%g3629736300%_ _%g3629836303%_)
                                        (cons _%g3629736300%_ _%g3629836303%_))
                                      '()
                                      _%g3597636271%_)))))
                (_%__kont3952739528%_
                 (lambda (_%g3600136146%_ _%g3600236148%_ _%g3600336149%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3617136178%_ _%g3617236181%_)
                                        (cons _%g3617136178%_ _%g3617236181%_))
                                      '()
                                      _%g3600236148%_)
                               (cons (cons (foldr (lambda (_%g3617336184%_
                                                           _%g3617436187%_)
                                                    (cons _%g3617336184%_
                                                          _%g3617436187%_))
                                                  '()
                                                  _%g3600336149%_)
                                           (foldr (lambda (_%g3617536190%_
                                                           _%g3617636193%_)
                                                    (cons _%g3617536190%_
                                                          _%g3617636193%_))
                                                  '()
                                                  _%g3600136146%_))
                                     '()))))))
            (let* ((_%__match3960939610%_
                    (lambda (_%e3600436048%_
                             _%hd3600536052%_
                             _%tl3600636055%_
                             _%e3600736058%_
                             _%hd3600836062%_
                             _%tl3600936065%_
                             _%__splice3952939530%_
                             _%target3601036068%_
                             _%tl3601236071%_)
                      (letrec ((_%loop3601336074%_
                                (lambda (_%hd3601136078%_
                                         _%expr3601736081%_
                                         _%hd3601836082%_)
                                  (if (gx#stx-pair? _%hd3601136078%_)
                                      (let ((_%e3601436084%_
                                             (gx#syntax-e _%hd3601136078%_)))
                                        (let ((_%lp-tl3601636091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3601436084%_)))
                                              (_%lp-hd3601536088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3601436084%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3601536088%_)
                                              (let ((_%e3602136094%_
                                                     (gx#syntax-e
                                                      _%lp-hd3601536088%_)))
                                                (let ((_%tl3602336101%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3602136094%_)))
                                                      (_%hd3602236098%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3602136094%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3602336101%_)
                                                      (let ((_%e3602436104%_
                                                             (gx#syntax-e
                                                              _%tl3602336101%_)))
                                                        (let ((_%tl3602636111%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3602436104%_)))
                      (_%hd3602536108%_
                       (let () (declare (not safe)) (##car _%e3602436104%_))))
                  (if (gx#stx-null? _%tl3602636111%_)
                      (_%loop3601336074%_
                       _%lp-tl3601636091%_
                       (cons _%hd3602536108%_ _%expr3601736081%_)
                       (cons _%hd3602236098%_ _%hd3601836082%_))
                      (let () (declare (not safe)) (_%g3595836041%_)))))
              (let () (declare (not safe)) (_%g3595836041%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3595836041%_)))))
                                      (let ((_%hd3602036116%_
                                             (reverse _%hd3601836082%_))
                                            (_%expr3601936114%_
                                             (reverse _%expr3601736081%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3600936065%_)
                                            (let ((_%__splice3953139532%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl3600936065%_
                                                    '0)))
                                              (let ((_%tl3602936121%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3953139532%_
                                                        '1)))
                                                    (_%target3602736118%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3953139532%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3602936121%_)
                                                    (letrec ((_%loop3603036124%_
                                                              (lambda (_%hd3602836128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3603436131%_)
                        (if (gx#stx-pair? _%hd3602836128%_)
                            (let ((_%e3603136133%_
                                   (gx#syntax-e _%hd3602836128%_)))
                              (let ((_%lp-tl3603336140%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3603136133%_)))
                                    (_%lp-hd3603236137%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3603136133%_))))
                                (_%loop3603036124%_
                                 _%lp-tl3603336140%_
                                 (cons _%lp-hd3603236137%_
                                       _%body3603436131%_))))
                            (let ((_%body3603536143%_
                                   (reverse _%body3603436131%_)))
                              (_%__kont3952739528%_
                               _%body3603536143%_
                               _%expr3601936114%_
                               _%hd3602036116%_))))))
              (_%loop3603036124%_ _%target3602736118%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3595836041%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3595836041%_))))))))
                        (_%loop3601336074%_ _%target3601036068%_ '() '()))))
                   (_%__match3960139602%_
                    (lambda (_%e3600436048%_
                             _%hd3600536052%_
                             _%tl3600636055%_
                             _%e3600736058%_
                             _%hd3600836062%_
                             _%tl3600936065%_)
                      (if (gx#stx-pair/null? _%hd3600836062%_)
                          (let ((_%__splice3952939530%_
                                 (gx#syntax-split-splice->vector
                                  _%hd3600836062%_
                                  '0)))
                            (let ((_%tl3601236071%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3952939530%_ '1)))
                                  (_%target3601036068%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3952939530%_
                                      '0))))
                              (if (gx#stx-null? _%tl3601236071%_)
                                  (_%__match3960939610%_
                                   _%e3600436048%_
                                   _%hd3600536052%_
                                   _%tl3600636055%_
                                   _%e3600736058%_
                                   _%hd3600836062%_
                                   _%tl3600936065%_
                                   _%__splice3952939530%_
                                   _%target3601036068%_
                                   _%tl3601236071%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3595836041%_)))))
                          (let () (declare (not safe)) (_%g3595836041%_)))))
                   (_%__match3958939590%_
                    (lambda (_%e3598036203%_
                             _%hd3598136207%_
                             _%tl3598236210%_
                             _%e3598336213%_
                             _%hd3598436217%_
                             _%tl3598536220%_
                             _%e3598636223%_
                             _%hd3598736227%_
                             _%tl3598836230%_
                             _%e3598936233%_
                             _%hd3599036237%_
                             _%tl3599136240%_
                             _%__splice3952539526%_
                             _%target3599236243%_
                             _%tl3599436246%_)
                      (letrec ((_%loop3599536249%_
                                (lambda (_%hd3599336253%_ _%body3599936256%_)
                                  (if (gx#stx-pair? _%hd3599336253%_)
                                      (let ((_%e3599636258%_
                                             (gx#syntax-e _%hd3599336253%_)))
                                        (let ((_%lp-tl3599836265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3599636258%_)))
                                              (_%lp-hd3599736262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3599636258%_))))
                                          (_%loop3599536249%_
                                           _%lp-tl3599836265%_
                                           (cons _%lp-hd3599736262%_
                                                 _%body3599936256%_))))
                                      (let ((_%body3600036268%_
                                             (reverse _%body3599936256%_)))
                                        (let ((_%g3597636271%_
                                               _%body3600036268%_)
                                              (_%g3597736273%_
                                               _%hd3599036237%_)
                                              (_%g3597836274%_
                                               _%hd3598736227%_)
                                              (_%g3597936275%_
                                               _%hd3598136207%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%g3597836274%_)
                                              (_%__kont3952339524%_
                                               _%g3597636271%_
                                               _%g3597736273%_
                                               _%g3597836274%_
                                               _%g3597936275%_)
                                              (_%__match3960139602%_
                                               _%e3598036203%_
                                               _%hd3598136207%_
                                               _%tl3598236210%_
                                               _%e3598336213%_
                                               _%hd3598436217%_
                                               _%tl3598536220%_))))))))
                        (_%loop3599536249%_ _%target3599236243%_ '()))))
                   (_%__match3955539556%_
                    (lambda (_%e3596136313%_
                             _%hd3596236317%_
                             _%tl3596336320%_
                             _%e3596436323%_
                             _%hd3596536327%_
                             _%tl3596636330%_
                             _%__splice3952139522%_
                             _%target3596736333%_
                             _%tl3596936336%_)
                      (letrec ((_%loop3597036339%_
                                (lambda (_%hd3596836343%_ _%body3597436346%_)
                                  (if (gx#stx-pair? _%hd3596836343%_)
                                      (let ((_%e3597136348%_
                                             (gx#syntax-e _%hd3596836343%_)))
                                        (let ((_%lp-tl3597336355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3597136348%_)))
                                              (_%lp-hd3597236352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3597136348%_))))
                                          (_%loop3597036339%_
                                           _%lp-tl3597336355%_
                                           (cons _%lp-hd3597236352%_
                                                 _%body3597436346%_))))
                                      (let ((_%body3597536358%_
                                             (reverse _%body3597436346%_)))
                                        (_%__kont3951939520%_
                                         _%body3597536358%_))))))
                        (_%loop3597036339%_ _%target3596736333%_ '())))))
              (if (gx#stx-pair? _%__stx3951639517%_)
                  (let ((_%e3596136313%_ (gx#syntax-e _%__stx3951639517%_)))
                    (let ((_%tl3596336320%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3596136313%_)))
                          (_%hd3596236317%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3596136313%_))))
                      (if (gx#stx-pair? _%tl3596336320%_)
                          (let ((_%e3596436323%_
                                 (gx#syntax-e _%tl3596336320%_)))
                            (let ((_%tl3596636330%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3596436323%_)))
                                  (_%hd3596536327%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3596436323%_))))
                              (if (gx#stx-null? _%hd3596536327%_)
                                  (if (gx#stx-pair/null? _%tl3596636330%_)
                                      (let ((_%__splice3952139522%_
                                             (gx#syntax-split-splice->vector
                                              _%tl3596636330%_
                                              '0)))
                                        (let ((_%tl3596936336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3952139522%_
                                                  '1)))
                                              (_%target3596736333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3952139522%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3596936336%_)
                                              (_%__match3955539556%_
                                               _%e3596136313%_
                                               _%hd3596236317%_
                                               _%tl3596336320%_
                                               _%e3596436323%_
                                               _%hd3596536327%_
                                               _%tl3596636330%_
                                               _%__splice3952139522%_
                                               _%target3596736333%_
                                               _%tl3596936336%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3596536327%_)
                                                  (let ((_%__splice3952939530%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3596536327%_
                                                          '0)))
                                                    (let ((_%tl3601236071%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3952939530%_
                                                              '1)))
                                                          (_%target3601036068%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3952939530%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3601236071%_)
                                                          (_%__match3960939610%_
                                                           _%e3596136313%_
                                                           _%hd3596236317%_
                                                           _%tl3596336320%_
                                                           _%e3596436323%_
                                                           _%hd3596536327%_
                                                           _%tl3596636330%_
                                                           _%__splice3952939530%_
                                                           _%target3601036068%_
                                                           _%tl3601236071%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3595836041%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3595836041%_))))))
                                      (if (gx#stx-pair/null? _%hd3596536327%_)
                                          (let ((_%__splice3952939530%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3596536327%_
                                                  '0)))
                                            (let ((_%tl3601236071%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3952939530%_
                                                      '1)))
                                                  (_%target3601036068%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3952939530%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3601236071%_)
                                                  (_%__match3960939610%_
                                                   _%e3596136313%_
                                                   _%hd3596236317%_
                                                   _%tl3596336320%_
                                                   _%e3596436323%_
                                                   _%hd3596536327%_
                                                   _%tl3596636330%_
                                                   _%__splice3952939530%_
                                                   _%target3601036068%_
                                                   _%tl3601236071%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3595836041%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3595836041%_))))
                                  (if (gx#stx-pair? _%hd3596536327%_)
                                      (let ((_%e3598636223%_
                                             (gx#syntax-e _%hd3596536327%_)))
                                        (let ((_%tl3598836230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3598636223%_)))
                                              (_%hd3598736227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3598636223%_))))
                                          (if (gx#stx-pair? _%tl3598836230%_)
                                              (let ((_%e3598936233%_
                                                     (gx#syntax-e
                                                      _%tl3598836230%_)))
                                                (let ((_%tl3599136240%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3598936233%_)))
                                                      (_%hd3599036237%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3598936233%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3599136240%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3596636330%_)
                                                          (let ((_%__splice3952539526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl3596636330%_ '0)))
                    (let ((_%tl3599436246%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3952539526%_ '1)))
                          (_%target3599236243%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3952539526%_ '0))))
                      (if (gx#stx-null? _%tl3599436246%_)
                          (_%__match3958939590%_
                           _%e3596136313%_
                           _%hd3596236317%_
                           _%tl3596336320%_
                           _%e3596436323%_
                           _%hd3596536327%_
                           _%tl3596636330%_
                           _%e3598636223%_
                           _%hd3598736227%_
                           _%tl3598836230%_
                           _%e3598936233%_
                           _%hd3599036237%_
                           _%tl3599136240%_
                           _%__splice3952539526%_
                           _%target3599236243%_
                           _%tl3599436246%_)
                          (if (gx#stx-pair/null? _%hd3596536327%_)
                              (let ((_%__splice3952939530%_
                                     (gx#syntax-split-splice->vector
                                      _%hd3596536327%_
                                      '0)))
                                (let ((_%tl3601236071%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3952939530%_
                                          '1)))
                                      (_%target3601036068%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3952939530%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3601236071%_)
                                      (_%__match3960939610%_
                                       _%e3596136313%_
                                       _%hd3596236317%_
                                       _%tl3596336320%_
                                       _%e3596436323%_
                                       _%hd3596536327%_
                                       _%tl3596636330%_
                                       _%__splice3952939530%_
                                       _%target3601036068%_
                                       _%tl3601236071%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3595836041%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3595836041%_))))))
                  (if (gx#stx-pair/null? _%hd3596536327%_)
                      (let ((_%__splice3952939530%_
                             (gx#syntax-split-splice->vector
                              _%hd3596536327%_
                              '0)))
                        (let ((_%tl3601236071%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3952939530%_ '1)))
                              (_%target3601036068%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3952939530%_ '0))))
                          (if (gx#stx-null? _%tl3601236071%_)
                              (_%__match3960939610%_
                               _%e3596136313%_
                               _%hd3596236317%_
                               _%tl3596336320%_
                               _%e3596436323%_
                               _%hd3596536327%_
                               _%tl3596636330%_
                               _%__splice3952939530%_
                               _%target3601036068%_
                               _%tl3601236071%_)
                              (let ()
                                (declare (not safe))
                                (_%g3595836041%_)))))
                      (let () (declare (not safe)) (_%g3595836041%_))))
              (if (gx#stx-pair/null? _%hd3596536327%_)
                  (let ((_%__splice3952939530%_
                         (gx#syntax-split-splice->vector _%hd3596536327%_ '0)))
                    (let ((_%tl3601236071%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3952939530%_ '1)))
                          (_%target3601036068%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3952939530%_ '0))))
                      (if (gx#stx-null? _%tl3601236071%_)
                          (_%__match3960939610%_
                           _%e3596136313%_
                           _%hd3596236317%_
                           _%tl3596336320%_
                           _%e3596436323%_
                           _%hd3596536327%_
                           _%tl3596636330%_
                           _%__splice3952939530%_
                           _%target3601036068%_
                           _%tl3601236071%_)
                          (let () (declare (not safe)) (_%g3595836041%_)))))
                  (let () (declare (not safe)) (_%g3595836041%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3596536327%_)
                                                  (let ((_%__splice3952939530%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3596536327%_
                                                          '0)))
                                                    (let ((_%tl3601236071%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3952939530%_
                                                              '1)))
                                                          (_%target3601036068%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3952939530%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3601236071%_)
                                                          (_%__match3960939610%_
                                                           _%e3596136313%_
                                                           _%hd3596236317%_
                                                           _%tl3596336320%_
                                                           _%e3596436323%_
                                                           _%hd3596536327%_
                                                           _%tl3596636330%_
                                                           _%__splice3952939530%_
                                                           _%target3601036068%_
                                                           _%tl3601236071%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3595836041%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3595836041%_))))))
                                      (if (gx#stx-pair/null? _%hd3596536327%_)
                                          (let ((_%__splice3952939530%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3596536327%_
                                                  '0)))
                                            (let ((_%tl3601236071%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3952939530%_
                                                      '1)))
                                                  (_%target3601036068%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3952939530%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3601236071%_)
                                                  (_%__match3960939610%_
                                                   _%e3596136313%_
                                                   _%hd3596236317%_
                                                   _%tl3596336320%_
                                                   _%e3596436323%_
                                                   _%hd3596536327%_
                                                   _%tl3596636330%_
                                                   _%__splice3952939530%_
                                                   _%target3601036068%_
                                                   _%tl3601236071%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3595836041%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3595836041%_)))))))
                          (let () (declare (not safe)) (_%g3595836041%_)))))
                  (let () (declare (not safe)) (_%g3595836041%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36394%_)
        (let* ((_%__stx3961239613%_ _%$stx36394%_)
               (_%g3639936451%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3961239613%_))))
          (let ((_%__kont3961539616%_
                 (lambda (_%g3640136617%_
                          _%g3640236619%_
                          _%g3640336620%_
                          _%g3640436621%_
                          _%g3640536622%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%g3640436621%_
                                           (cons _%g3640336620%_ '()))
                                     '())
                               (cons (cons _%g3640536622%_
                                           (cons _%g3640236619%_
                                                 (foldr (lambda (_%g3664736650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3664836653%_)
                  (cons _%g3664736650%_ _%g3664836653%_))
                '()
                _%g3640136617%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3961939620%_
                 (lambda (_%g3643036506%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3652336526%_ _%g3652436529%_)
                                        (cons _%g3652336526%_ _%g3652436529%_))
                                      '()
                                      _%g3643036506%_))))))
            (let* ((_%__match3968539686%_
                    (lambda (_%e3643136458%_
                             _%hd3643236462%_
                             _%tl3643336465%_
                             _%e3643436468%_
                             _%hd3643536472%_
                             _%tl3643636475%_
                             _%__splice3962139622%_
                             _%target3643736478%_
                             _%tl3643936481%_)
                      (letrec ((_%loop3644036484%_
                                (lambda (_%hd3643836488%_ _%body3644436491%_)
                                  (if (gx#stx-pair? _%hd3643836488%_)
                                      (let ((_%e3644136493%_
                                             (gx#syntax-e _%hd3643836488%_)))
                                        (let ((_%lp-tl3644336500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3644136493%_)))
                                              (_%lp-hd3644236497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3644136493%_))))
                                          (_%loop3644036484%_
                                           _%lp-tl3644336500%_
                                           (cons _%lp-hd3644236497%_
                                                 _%body3644436491%_))))
                                      (let ((_%body3644536503%_
                                             (reverse _%body3644436491%_)))
                                        (_%__kont3961939620%_
                                         _%body3644536503%_))))))
                        (_%loop3644036484%_ _%target3643736478%_ '()))))
                   (_%__match3966339664%_
                    (lambda (_%e3640636539%_
                             _%hd3640736543%_
                             _%tl3640836546%_
                             _%e3640936549%_
                             _%hd3641036553%_
                             _%tl3641136556%_
                             _%e3641236559%_
                             _%hd3641336563%_
                             _%tl3641436566%_
                             _%e3641536569%_
                             _%hd3641636573%_
                             _%tl3641736576%_
                             _%e3641836579%_
                             _%hd3641936583%_
                             _%tl3642036586%_
                             _%__splice3961739618%_
                             _%target3642136589%_
                             _%tl3642336592%_)
                      (letrec ((_%loop3642436595%_
                                (lambda (_%hd3642236599%_ _%body3642836602%_)
                                  (if (gx#stx-pair? _%hd3642236599%_)
                                      (let ((_%e3642536604%_
                                             (gx#syntax-e _%hd3642236599%_)))
                                        (let ((_%lp-tl3642736611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3642536604%_)))
                                              (_%lp-hd3642636608%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3642536604%_))))
                                          (_%loop3642436595%_
                                           _%lp-tl3642736611%_
                                           (cons _%lp-hd3642636608%_
                                                 _%body3642836602%_))))
                                      (let ((_%body3642936614%_
                                             (reverse _%body3642836602%_)))
                                        (_%__kont3961539616%_
                                         _%body3642936614%_
                                         _%tl3641436566%_
                                         _%hd3641936583%_
                                         _%hd3641636573%_
                                         _%hd3640736543%_))))))
                        (_%loop3642436595%_ _%target3642136589%_ '())))))
              (if (gx#stx-pair? _%__stx3961239613%_)
                  (let ((_%e3640636539%_ (gx#syntax-e _%__stx3961239613%_)))
                    (let ((_%tl3640836546%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3640636539%_)))
                          (_%hd3640736543%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3640636539%_))))
                      (if (gx#stx-pair? _%tl3640836546%_)
                          (let ((_%e3640936549%_
                                 (gx#syntax-e _%tl3640836546%_)))
                            (let ((_%tl3641136556%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3640936549%_)))
                                  (_%hd3641036553%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3640936549%_))))
                              (if (gx#stx-pair? _%hd3641036553%_)
                                  (let ((_%e3641236559%_
                                         (gx#syntax-e _%hd3641036553%_)))
                                    (let ((_%tl3641436566%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3641236559%_)))
                                          (_%hd3641336563%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3641236559%_))))
                                      (if (gx#stx-pair? _%hd3641336563%_)
                                          (let ((_%e3641536569%_
                                                 (gx#syntax-e
                                                  _%hd3641336563%_)))
                                            (let ((_%tl3641736576%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3641536569%_)))
                                                  (_%hd3641636573%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3641536569%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3641736576%_)
                                                  (let ((_%e3641836579%_
                                                         (gx#syntax-e
                                                          _%tl3641736576%_)))
                                                    (let ((_%tl3642036586%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3641836579%_)))
                                                          (_%hd3641936583%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3641836579%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3642036586%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3641136556%_)
                                                              (let ((_%__splice3961739618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl3641136556%_
                              '0)))
                        (let ((_%tl3642336592%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3961739618%_ '1)))
                              (_%target3642136589%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3961739618%_ '0))))
                          (if (gx#stx-null? _%tl3642336592%_)
                              (_%__match3966339664%_
                               _%e3640636539%_
                               _%hd3640736543%_
                               _%tl3640836546%_
                               _%e3640936549%_
                               _%hd3641036553%_
                               _%tl3641136556%_
                               _%e3641236559%_
                               _%hd3641336563%_
                               _%tl3641436566%_
                               _%e3641536569%_
                               _%hd3641636573%_
                               _%tl3641736576%_
                               _%e3641836579%_
                               _%hd3641936583%_
                               _%tl3642036586%_
                               _%__splice3961739618%_
                               _%target3642136589%_
                               _%tl3642336592%_)
                              (let ()
                                (declare (not safe))
                                (_%g3639936451%_)))))
                      (let () (declare (not safe)) (_%g3639936451%_)))
                  (let () (declare (not safe)) (_%g3639936451%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3639936451%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3639936451%_)))))
                                  (if (gx#stx-null? _%hd3641036553%_)
                                      (if (gx#stx-pair/null? _%tl3641136556%_)
                                          (let ((_%__splice3962139622%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl3641136556%_
                                                  '0)))
                                            (let ((_%tl3643936481%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3962139622%_
                                                      '1)))
                                                  (_%target3643736478%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3962139622%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3643936481%_)
                                                  (_%__match3968539686%_
                                                   _%e3640636539%_
                                                   _%hd3640736543%_
                                                   _%tl3640836546%_
                                                   _%e3640936549%_
                                                   _%hd3641036553%_
                                                   _%tl3641136556%_
                                                   _%__splice3962139622%_
                                                   _%target3643736478%_
                                                   _%tl3643936481%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3639936451%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3639936451%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3639936451%_))))))
                          (let () (declare (not safe)) (_%g3639936451%_)))))
                  (let () (declare (not safe)) (_%g3639936451%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx36662%_)
        (let* ((_%__stx3968839689%_ _%$stx36662%_)
               (_%g3667336819%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3968839689%_))))
          (let ((_%__kont3969139692%_
                 (lambda (_%g3667537419%_ _%g3667637421%_ _%g3667737422%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3744337446%_ _%g3744437449%_)
                                  (cons (cons _%g3667737422%_
                                              (cons _%g3744337446%_
                                                    (cons _%g3667537419%_
                                                          '())))
                                        _%g3744437449%_))
                                '()
                                _%g3667637421%_))))
                (_%__kont3969539696%_
                 (lambda (_%g3669937311%_ _%g3670037313%_ _%g3670137314%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3733537338%_ _%g3733637341%_)
                                  (cons (cons _%g3670137314%_
                                              (cons _%g3733537338%_
                                                    (cons _%g3669937311%_
                                                          '())))
                                        _%g3733637341%_))
                                '()
                                _%g3670037313%_))))
                (_%__kont3969939700%_
                 (lambda (_%g3672337213%_ _%g3672437215%_ _%g3672537216%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%g3672537216%_
                                     (cons _%g3672437215%_
                                           (cons _%g3672337213%_ '())))
                               '()))))
                (_%__kont3970139702%_
                 (lambda (_%g3674137139%_ _%g3674237141%_)
                   (cons _%g3674237141%_ (cons _%g3674137139%_ '()))))
                (_%__kont3970339704%_
                 (lambda (_%g3675237087%_ _%g3675337089%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%g3675337089%_
                                           (cons _%g3675237087%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont3970539706%_
                 (lambda (_%g3676037039%_ _%g3676137041%_ _%g3676237042%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%g3676237042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g3676137041%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3676037039%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3970739708%_
                 (lambda (_%g3677536970%_ _%g3677636972%_ _%g3677736973%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g3677736973%_
                                                       (cons _%g3677636972%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3677536970%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3970939710%_
                 (lambda (_%g3679136890%_
                          _%g3679236892%_
                          _%g3679336893%_
                          _%g3679436894%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g3679436894%_
                                                       (cons _%g3679336893%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3679136890%_
                                                             (cons (cons _%g3679236892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match3986139862%_
                    (lambda (_%e3676336999%_
                             _%hd3676437003%_
                             _%tl3676537006%_
                             _%e3676637009%_
                             _%hd3676737013%_
                             _%tl3676837016%_
                             _%e3676937019%_
                             _%hd3677037023%_
                             _%tl3677137026%_)
                      (if (gx#identifier? _%hd3677037023%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40063_|
                               _%hd3677037023%_)
                              (if (gx#stx-pair? _%tl3677137026%_)
                                  (let ((_%e3677237029%_
                                         (gx#syntax-e _%tl3677137026%_)))
                                    (let ((_%tl3677437036%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3677237029%_)))
                                          (_%hd3677337033%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3677237029%_))))
                                      (if (gx#stx-null? _%tl3677437036%_)
                                          (_%__kont3970539706%_
                                           _%hd3677337033%_
                                           _%hd3676737013%_
                                           _%hd3676437003%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3667336819%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3667336819%_)))
                              (let () (declare (not safe)) (_%g3667336819%_)))
                          (if (gx#stx-datum? _%hd3677037023%_)
                              (let ((_%e3678736956%_
                                     (gx#stx-e _%hd3677037023%_)))
                                (if (equal? _%e3678736956%_ '::)
                                    (if (gx#stx-pair? _%tl3677137026%_)
                                        (let ((_%e3678836960%_
                                               (gx#syntax-e _%tl3677137026%_)))
                                          (let ((_%tl3679036967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3678836960%_)))
                                                (_%hd3678936964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3678836960%_))))
                                            (if (gx#stx-null? _%tl3679036967%_)
                                                (_%__kont3970739708%_
                                                 _%hd3678936964%_
                                                 _%hd3676737013%_
                                                 _%hd3676437003%_)
                                                (if (gx#stx-pair?
                                                     _%tl3679036967%_)
                                                    (let ((_%e3680836870%_
                                                           (gx#syntax-e
                                                            _%tl3679036967%_)))
                                                      (let ((_%tl3681036877%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3680836870%_)))
                    (_%hd3680936874%_
                     (let () (declare (not safe)) (##car _%e3680836870%_))))
                (if (gx#identifier? _%hd3680936874%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g40064_|
                         _%hd3680936874%_)
                        (if (gx#stx-pair? _%tl3681036877%_)
                            (let ((_%e3681136880%_
                                   (gx#syntax-e _%tl3681036877%_)))
                              (let ((_%tl3681336887%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3681136880%_)))
                                    (_%hd3681236884%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3681136880%_))))
                                (if (gx#stx-null? _%tl3681336887%_)
                                    (_%__kont3970939710%_
                                     _%hd3681236884%_
                                     _%hd3678936964%_
                                     _%hd3676737013%_
                                     _%hd3676437003%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3667336819%_)))))
                            (let () (declare (not safe)) (_%g3667336819%_)))
                        (let () (declare (not safe)) (_%g3667336819%_)))
                    (let () (declare (not safe)) (_%g3667336819%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3667336819%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3667336819%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3667336819%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3667336819%_))))))
                   (_%__match3984139842%_
                    (lambda (_%e3675437067%_
                             _%hd3675537071%_
                             _%tl3675637074%_
                             _%e3675737077%_
                             _%hd3675837081%_
                             _%tl3675937084%_)
                      (if (gx#stx-null? _%tl3675937084%_)
                          (_%__kont3970339704%_
                           _%hd3675837081%_
                           _%hd3675537071%_)
                          (if (gx#stx-pair? _%tl3675937084%_)
                              (let ((_%e3676937019%_
                                     (gx#syntax-e _%tl3675937084%_)))
                                (let ((_%tl3677137026%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3676937019%_)))
                                      (_%hd3677037023%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3676937019%_))))
                                  (if (gx#identifier? _%hd3677037023%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40063_|
                                           _%hd3677037023%_)
                                          (if (gx#stx-pair? _%tl3677137026%_)
                                              (let ((_%e3677237029%_
                                                     (gx#syntax-e
                                                      _%tl3677137026%_)))
                                                (let ((_%tl3677437036%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3677237029%_)))
                                                      (_%hd3677337033%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3677237029%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3677437036%_)
                                                      (_%__kont3970539706%_
                                                       _%hd3677337033%_
                                                       _%hd3675837081%_
                                                       _%hd3675537071%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3667336819%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3667336819%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3667336819%_)))
                                      (if (gx#stx-datum? _%hd3677037023%_)
                                          (let ((_%e3678736956%_
                                                 (gx#stx-e _%hd3677037023%_)))
                                            (if (equal? _%e3678736956%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3677137026%_)
                                                    (let ((_%e3678836960%_
                                                           (gx#syntax-e
                                                            _%tl3677137026%_)))
                                                      (let ((_%tl3679036967%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3678836960%_)))
                    (_%hd3678936964%_
                     (let () (declare (not safe)) (##car _%e3678836960%_))))
                (if (gx#stx-null? _%tl3679036967%_)
                    (_%__kont3970739708%_
                     _%hd3678936964%_
                     _%hd3675837081%_
                     _%hd3675537071%_)
                    (if (gx#stx-pair? _%tl3679036967%_)
                        (let ((_%e3680836870%_ (gx#syntax-e _%tl3679036967%_)))
                          (let ((_%tl3681036877%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3680836870%_)))
                                (_%hd3680936874%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3680836870%_))))
                            (if (gx#identifier? _%hd3680936874%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g40064_|
                                     _%hd3680936874%_)
                                    (if (gx#stx-pair? _%tl3681036877%_)
                                        (let ((_%e3681136880%_
                                               (gx#syntax-e _%tl3681036877%_)))
                                          (let ((_%tl3681336887%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3681136880%_)))
                                                (_%hd3681236884%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3681136880%_))))
                                            (if (gx#stx-null? _%tl3681336887%_)
                                                (_%__kont3970939710%_
                                                 _%hd3681236884%_
                                                 _%hd3678936964%_
                                                 _%hd3675837081%_
                                                 _%hd3675537071%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3667336819%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3667336819%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3667336819%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3667336819%_)))))
                        (let () (declare (not safe)) (_%g3667336819%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3667336819%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3667336819%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3667336819%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3667336819%_))))))
                   (_%__match3977139772%_
                    (lambda (_%e3670237243%_
                             _%hd3670337247%_
                             _%tl3670437250%_
                             _%e3670537253%_
                             _%hd3670637257%_
                             _%tl3670737260%_
                             _%e3670837263%_
                             _%hd3670937267%_
                             _%tl3671037270%_
                             _%__splice3969739698%_
                             _%target3671137273%_
                             _%tl3671337276%_)
                      (letrec ((_%loop3671437279%_
                                (lambda (_%hd3671237283%_ _%pred3671837286%_)
                                  (if (gx#stx-pair? _%hd3671237283%_)
                                      (let ((_%e3671537288%_
                                             (gx#syntax-e _%hd3671237283%_)))
                                        (let ((_%lp-tl3671737295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3671537288%_)))
                                              (_%lp-hd3671637292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3671537288%_))))
                                          (_%loop3671437279%_
                                           _%lp-tl3671737295%_
                                           (cons _%lp-hd3671637292%_
                                                 _%pred3671837286%_))))
                                      (let ((_%pred3671937298%_
                                             (reverse _%pred3671837286%_)))
                                        (if (gx#stx-pair? _%tl3670737260%_)
                                            (let ((_%e3672037301%_
                                                   (gx#syntax-e
                                                    _%tl3670737260%_)))
                                              (let ((_%tl3672237308%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3672037301%_)))
                                                    (_%hd3672137305%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3672037301%_))))
                                                (if (gx#stx-null?
                                                     _%tl3672237308%_)
                                                    (_%__kont3969539696%_
                                                     _%hd3672137305%_
                                                     _%pred3671937298%_
                                                     _%hd3670337247%_)
                                                    (_%__match3986139862%_
                                                     _%e3670237243%_
                                                     _%hd3670337247%_
                                                     _%tl3670437250%_
                                                     _%e3670537253%_
                                                     _%hd3670637257%_
                                                     _%tl3670737260%_
                                                     _%e3672037301%_
                                                     _%hd3672137305%_
                                                     _%tl3672237308%_))))
                                            (_%__match3984139842%_
                                             _%e3670237243%_
                                             _%hd3670337247%_
                                             _%tl3670437250%_
                                             _%e3670537253%_
                                             _%hd3670637257%_
                                             _%tl3670737260%_)))))))
                        (_%loop3671437279%_ _%target3671137273%_ '()))))
                   (_%__match3974139742%_
                    (lambda (_%e3667837351%_
                             _%hd3667937355%_
                             _%tl3668037358%_
                             _%e3668137361%_
                             _%hd3668237365%_
                             _%tl3668337368%_
                             _%e3668437371%_
                             _%hd3668537375%_
                             _%tl3668637378%_
                             _%__splice3969339694%_
                             _%target3668737381%_
                             _%tl3668937384%_)
                      (letrec ((_%loop3669037387%_
                                (lambda (_%hd3668837391%_ _%pred3669437394%_)
                                  (if (gx#stx-pair? _%hd3668837391%_)
                                      (let ((_%e3669137396%_
                                             (gx#syntax-e _%hd3668837391%_)))
                                        (let ((_%lp-tl3669337403%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3669137396%_)))
                                              (_%lp-hd3669237400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3669137396%_))))
                                          (_%loop3669037387%_
                                           _%lp-tl3669337403%_
                                           (cons _%lp-hd3669237400%_
                                                 _%pred3669437394%_))))
                                      (let ((_%pred3669537406%_
                                             (reverse _%pred3669437394%_)))
                                        (if (gx#stx-pair? _%tl3668337368%_)
                                            (let ((_%e3669637409%_
                                                   (gx#syntax-e
                                                    _%tl3668337368%_)))
                                              (let ((_%tl3669837416%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3669637409%_)))
                                                    (_%hd3669737413%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3669637409%_))))
                                                (if (gx#stx-null?
                                                     _%tl3669837416%_)
                                                    (_%__kont3969139692%_
                                                     _%hd3669737413%_
                                                     _%pred3669537406%_
                                                     _%hd3667937355%_)
                                                    (_%__match3986139862%_
                                                     _%e3667837351%_
                                                     _%hd3667937355%_
                                                     _%tl3668037358%_
                                                     _%e3668137361%_
                                                     _%hd3668237365%_
                                                     _%tl3668337368%_
                                                     _%e3669637409%_
                                                     _%hd3669737413%_
                                                     _%tl3669837416%_))))
                                            (_%__match3984139842%_
                                             _%e3667837351%_
                                             _%hd3667937355%_
                                             _%tl3668037358%_
                                             _%e3668137361%_
                                             _%hd3668237365%_
                                             _%tl3668337368%_)))))))
                        (_%loop3669037387%_ _%target3668737381%_ '())))))
              (if (gx#stx-pair? _%__stx3968839689%_)
                  (let ((_%e3667837351%_ (gx#syntax-e _%__stx3968839689%_)))
                    (let ((_%tl3668037358%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3667837351%_)))
                          (_%hd3667937355%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3667837351%_))))
                      (if (gx#stx-pair? _%tl3668037358%_)
                          (let ((_%e3668137361%_
                                 (gx#syntax-e _%tl3668037358%_)))
                            (let ((_%tl3668337368%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3668137361%_)))
                                  (_%hd3668237365%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3668137361%_))))
                              (if (gx#stx-pair? _%hd3668237365%_)
                                  (let ((_%e3668437371%_
                                         (gx#syntax-e _%hd3668237365%_)))
                                    (let ((_%tl3668637378%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3668437371%_)))
                                          (_%hd3668537375%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3668437371%_))))
                                      (if (gx#identifier? _%hd3668537375%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40065_|
                                               _%hd3668537375%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3668637378%_)
                                                  (let ((_%__splice3969339694%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl3668637378%_
                                                          '0)))
                                                    (let ((_%tl3668937384%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3969339694%_
                                                              '1)))
                                                          (_%target3668737381%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3969339694%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3668937384%_)
                                                          (_%__match3974139742%_
                                                           _%e3667837351%_
                                                           _%hd3667937355%_
                                                           _%tl3668037358%_
                                                           _%e3668137361%_
                                                           _%hd3668237365%_
                                                           _%tl3668337368%_
                                                           _%e3668437371%_
                                                           _%hd3668537375%_
                                                           _%tl3668637378%_
                                                           _%__splice3969339694%_
                                                           _%target3668737381%_
                                                           _%tl3668937384%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3668337368%_)
                                                              (let ((_%e3674937129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3668337368%_)))
                        (let ((_%tl3675137136%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3674937129%_)))
                              (_%hd3675037133%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3674937129%_))))
                          (if (gx#stx-null? _%tl3675137136%_)
                              (_%__kont3970139702%_
                               _%hd3675037133%_
                               _%hd3668237365%_)
                              (if (gx#identifier? _%hd3675037133%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40063_|
                                       _%hd3675037133%_)
                                      (if (gx#stx-pair? _%tl3675137136%_)
                                          (let ((_%e3677237029%_
                                                 (gx#syntax-e
                                                  _%tl3675137136%_)))
                                            (let ((_%tl3677437036%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3677237029%_)))
                                                  (_%hd3677337033%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3677237029%_))))
                                              (if (gx#stx-null?
                                                   _%tl3677437036%_)
                                                  (_%__kont3970539706%_
                                                   _%hd3677337033%_
                                                   _%hd3668237365%_
                                                   _%hd3667937355%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3667336819%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3667336819%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3667336819%_)))
                                  (if (gx#stx-datum? _%hd3675037133%_)
                                      (let ((_%e3678736956%_
                                             (gx#stx-e _%hd3675037133%_)))
                                        (if (equal? _%e3678736956%_ '::)
                                            (if (gx#stx-pair? _%tl3675137136%_)
                                                (let ((_%e3678836960%_
                                                       (gx#syntax-e
                                                        _%tl3675137136%_)))
                                                  (let ((_%tl3679036967%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3678836960%_)))
                                                        (_%hd3678936964%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3678836960%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3679036967%_)
                                                        (_%__kont3970739708%_
                                                         _%hd3678936964%_
                                                         _%hd3668237365%_
                                                         _%hd3667937355%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3679036967%_)
                                                            (let ((_%e3680836870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3679036967%_)))
                      (let ((_%tl3681036877%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3680836870%_)))
                            (_%hd3680936874%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3680836870%_))))
                        (if (gx#identifier? _%hd3680936874%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g40064_|
                                 _%hd3680936874%_)
                                (if (gx#stx-pair? _%tl3681036877%_)
                                    (let ((_%e3681136880%_
                                           (gx#syntax-e _%tl3681036877%_)))
                                      (let ((_%tl3681336887%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3681136880%_)))
                                            (_%hd3681236884%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3681136880%_))))
                                        (if (gx#stx-null? _%tl3681336887%_)
                                            (_%__kont3970939710%_
                                             _%hd3681236884%_
                                             _%hd3678936964%_
                                             _%hd3668237365%_
                                             _%hd3667937355%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3667336819%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3667336819%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3667336819%_)))
                            (let () (declare (not safe)) (_%g3667336819%_)))))
                    (let () (declare (not safe)) (_%g3667336819%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3667336819%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3667336819%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3667336819%_)))))))
                      (if (gx#stx-null? _%tl3668337368%_)
                          (_%__kont3970339704%_
                           _%hd3668237365%_
                           _%hd3667937355%_)
                          (let () (declare (not safe)) (_%g3667336819%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3668337368%_)
                                                      (let ((_%e3674937129%_
                                                             (gx#syntax-e
                                                              _%tl3668337368%_)))
                                                        (let ((_%tl3675137136%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3674937129%_)))
                      (_%hd3675037133%_
                       (let () (declare (not safe)) (##car _%e3674937129%_))))
                  (if (gx#stx-null? _%tl3675137136%_)
                      (_%__kont3970139702%_ _%hd3675037133%_ _%hd3668237365%_)
                      (if (gx#identifier? _%hd3675037133%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40063_|
                               _%hd3675037133%_)
                              (if (gx#stx-pair? _%tl3675137136%_)
                                  (let ((_%e3677237029%_
                                         (gx#syntax-e _%tl3675137136%_)))
                                    (let ((_%tl3677437036%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3677237029%_)))
                                          (_%hd3677337033%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3677237029%_))))
                                      (if (gx#stx-null? _%tl3677437036%_)
                                          (_%__kont3970539706%_
                                           _%hd3677337033%_
                                           _%hd3668237365%_
                                           _%hd3667937355%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3667336819%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3667336819%_)))
                              (let () (declare (not safe)) (_%g3667336819%_)))
                          (if (gx#stx-datum? _%hd3675037133%_)
                              (let ((_%e3678736956%_
                                     (gx#stx-e _%hd3675037133%_)))
                                (if (equal? _%e3678736956%_ '::)
                                    (if (gx#stx-pair? _%tl3675137136%_)
                                        (let ((_%e3678836960%_
                                               (gx#syntax-e _%tl3675137136%_)))
                                          (let ((_%tl3679036967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3678836960%_)))
                                                (_%hd3678936964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3678836960%_))))
                                            (if (gx#stx-null? _%tl3679036967%_)
                                                (_%__kont3970739708%_
                                                 _%hd3678936964%_
                                                 _%hd3668237365%_
                                                 _%hd3667937355%_)
                                                (if (gx#stx-pair?
                                                     _%tl3679036967%_)
                                                    (let ((_%e3680836870%_
                                                           (gx#syntax-e
                                                            _%tl3679036967%_)))
                                                      (let ((_%tl3681036877%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3680836870%_)))
                    (_%hd3680936874%_
                     (let () (declare (not safe)) (##car _%e3680836870%_))))
                (if (gx#identifier? _%hd3680936874%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g40064_|
                         _%hd3680936874%_)
                        (if (gx#stx-pair? _%tl3681036877%_)
                            (let ((_%e3681136880%_
                                   (gx#syntax-e _%tl3681036877%_)))
                              (let ((_%tl3681336887%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3681136880%_)))
                                    (_%hd3681236884%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3681136880%_))))
                                (if (gx#stx-null? _%tl3681336887%_)
                                    (_%__kont3970939710%_
                                     _%hd3681236884%_
                                     _%hd3678936964%_
                                     _%hd3668237365%_
                                     _%hd3667937355%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3667336819%_)))))
                            (let () (declare (not safe)) (_%g3667336819%_)))
                        (let () (declare (not safe)) (_%g3667336819%_)))
                    (let () (declare (not safe)) (_%g3667336819%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3667336819%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3667336819%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3667336819%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3667336819%_)))))))
              (if (gx#stx-null? _%tl3668337368%_)
                  (_%__kont3970339704%_ _%hd3668237365%_ _%hd3667937355%_)
                  (let () (declare (not safe)) (_%g3667336819%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g40066_|
                                                   _%hd3668537375%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3668637378%_)
                                                      (let ((_%__splice3969739698%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl3668637378%_
                                                              '0)))
                                                        (let ((_%tl3671337276%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice3969739698%_ '1)))
                      (_%target3671137273%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice3969739698%_ '0))))
                  (if (gx#stx-null? _%tl3671337276%_)
                      (_%__match3977139772%_
                       _%e3667837351%_
                       _%hd3667937355%_
                       _%tl3668037358%_
                       _%e3668137361%_
                       _%hd3668237365%_
                       _%tl3668337368%_
                       _%e3668437371%_
                       _%hd3668537375%_
                       _%tl3668637378%_
                       _%__splice3969739698%_
                       _%target3671137273%_
                       _%tl3671337276%_)
                      (if (gx#stx-pair? _%tl3668337368%_)
                          (let ((_%e3674937129%_
                                 (gx#syntax-e _%tl3668337368%_)))
                            (let ((_%tl3675137136%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3674937129%_)))
                                  (_%hd3675037133%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3674937129%_))))
                              (if (gx#stx-null? _%tl3675137136%_)
                                  (_%__kont3970139702%_
                                   _%hd3675037133%_
                                   _%hd3668237365%_)
                                  (if (gx#identifier? _%hd3675037133%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40063_|
                                           _%hd3675037133%_)
                                          (if (gx#stx-pair? _%tl3675137136%_)
                                              (let ((_%e3677237029%_
                                                     (gx#syntax-e
                                                      _%tl3675137136%_)))
                                                (let ((_%tl3677437036%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3677237029%_)))
                                                      (_%hd3677337033%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3677237029%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3677437036%_)
                                                      (_%__kont3970539706%_
                                                       _%hd3677337033%_
                                                       _%hd3668237365%_
                                                       _%hd3667937355%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3667336819%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3667336819%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3667336819%_)))
                                      (if (gx#stx-datum? _%hd3675037133%_)
                                          (let ((_%e3678736956%_
                                                 (gx#stx-e _%hd3675037133%_)))
                                            (if (equal? _%e3678736956%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3675137136%_)
                                                    (let ((_%e3678836960%_
                                                           (gx#syntax-e
                                                            _%tl3675137136%_)))
                                                      (let ((_%tl3679036967%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3678836960%_)))
                    (_%hd3678936964%_
                     (let () (declare (not safe)) (##car _%e3678836960%_))))
                (if (gx#stx-null? _%tl3679036967%_)
                    (_%__kont3970739708%_
                     _%hd3678936964%_
                     _%hd3668237365%_
                     _%hd3667937355%_)
                    (if (gx#stx-pair? _%tl3679036967%_)
                        (let ((_%e3680836870%_ (gx#syntax-e _%tl3679036967%_)))
                          (let ((_%tl3681036877%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3680836870%_)))
                                (_%hd3680936874%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3680836870%_))))
                            (if (gx#identifier? _%hd3680936874%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g40064_|
                                     _%hd3680936874%_)
                                    (if (gx#stx-pair? _%tl3681036877%_)
                                        (let ((_%e3681136880%_
                                               (gx#syntax-e _%tl3681036877%_)))
                                          (let ((_%tl3681336887%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3681136880%_)))
                                                (_%hd3681236884%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3681136880%_))))
                                            (if (gx#stx-null? _%tl3681336887%_)
                                                (_%__kont3970939710%_
                                                 _%hd3681236884%_
                                                 _%hd3678936964%_
                                                 _%hd3668237365%_
                                                 _%hd3667937355%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3667336819%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3667336819%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3667336819%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3667336819%_)))))
                        (let () (declare (not safe)) (_%g3667336819%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3667336819%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3667336819%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3667336819%_)))))))
                          (if (gx#stx-null? _%tl3668337368%_)
                              (_%__kont3970339704%_
                               _%hd3668237365%_
                               _%hd3667937355%_)
                              (let ()
                                (declare (not safe))
                                (_%g3667336819%_)))))))
              (if (gx#stx-pair? _%tl3668337368%_)
                  (let ((_%e3674937129%_ (gx#syntax-e _%tl3668337368%_)))
                    (let ((_%tl3675137136%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3674937129%_)))
                          (_%hd3675037133%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3674937129%_))))
                      (if (gx#stx-null? _%tl3675137136%_)
                          (_%__kont3970139702%_
                           _%hd3675037133%_
                           _%hd3668237365%_)
                          (if (gx#identifier? _%hd3675037133%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40063_|
                                   _%hd3675037133%_)
                                  (if (gx#stx-pair? _%tl3675137136%_)
                                      (let ((_%e3677237029%_
                                             (gx#syntax-e _%tl3675137136%_)))
                                        (let ((_%tl3677437036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3677237029%_)))
                                              (_%hd3677337033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3677237029%_))))
                                          (if (gx#stx-null? _%tl3677437036%_)
                                              (_%__kont3970539706%_
                                               _%hd3677337033%_
                                               _%hd3668237365%_
                                               _%hd3667937355%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3667336819%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3667336819%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3667336819%_)))
                              (if (gx#stx-datum? _%hd3675037133%_)
                                  (let ((_%e3678736956%_
                                         (gx#stx-e _%hd3675037133%_)))
                                    (if (equal? _%e3678736956%_ '::)
                                        (if (gx#stx-pair? _%tl3675137136%_)
                                            (let ((_%e3678836960%_
                                                   (gx#syntax-e
                                                    _%tl3675137136%_)))
                                              (let ((_%tl3679036967%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3678836960%_)))
                                                    (_%hd3678936964%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3678836960%_))))
                                                (if (gx#stx-null?
                                                     _%tl3679036967%_)
                                                    (_%__kont3970739708%_
                                                     _%hd3678936964%_
                                                     _%hd3668237365%_
                                                     _%hd3667937355%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3679036967%_)
                                                        (let ((_%e3680836870%_
                                                               (gx#syntax-e
                                                                _%tl3679036967%_)))
                                                          (let ((_%tl3681036877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3680836870%_)))
                        (_%hd3680936874%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3680836870%_))))
                    (if (gx#identifier? _%hd3680936874%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40064_|
                             _%hd3680936874%_)
                            (if (gx#stx-pair? _%tl3681036877%_)
                                (let ((_%e3681136880%_
                                       (gx#syntax-e _%tl3681036877%_)))
                                  (let ((_%tl3681336887%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3681136880%_)))
                                        (_%hd3681236884%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3681136880%_))))
                                    (if (gx#stx-null? _%tl3681336887%_)
                                        (_%__kont3970939710%_
                                         _%hd3681236884%_
                                         _%hd3678936964%_
                                         _%hd3668237365%_
                                         _%hd3667937355%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3667336819%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3667336819%_)))
                            (let () (declare (not safe)) (_%g3667336819%_)))
                        (let () (declare (not safe)) (_%g3667336819%_)))))
                (let () (declare (not safe)) (_%g3667336819%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3667336819%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3667336819%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3667336819%_)))))))
                  (if (gx#stx-null? _%tl3668337368%_)
                      (_%__kont3970339704%_ _%hd3668237365%_ _%hd3667937355%_)
                      (let () (declare (not safe)) (_%g3667336819%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40067_|
                                                       _%hd3668537375%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3668637378%_)
                                                          (let ((_%e3673537193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3668637378%_)))
                    (let ((_%tl3673737200%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3673537193%_)))
                          (_%hd3673637197%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3673537193%_))))
                      (if (gx#stx-null? _%tl3673737200%_)
                          (if (gx#stx-pair? _%tl3668337368%_)
                              (let ((_%e3673837203%_
                                     (gx#syntax-e _%tl3668337368%_)))
                                (let ((_%tl3674037210%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3673837203%_)))
                                      (_%hd3673937207%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3673837203%_))))
                                  (if (gx#stx-null? _%tl3674037210%_)
                                      (_%__kont3969939700%_
                                       _%hd3673937207%_
                                       _%hd3673637197%_
                                       _%hd3667937355%_)
                                      (if (gx#identifier? _%hd3673937207%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40063_|
                                               _%hd3673937207%_)
                                              (if (gx#stx-pair?
                                                   _%tl3674037210%_)
                                                  (let ((_%e3677237029%_
                                                         (gx#syntax-e
                                                          _%tl3674037210%_)))
                                                    (let ((_%tl3677437036%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3677237029%_)))
                                                          (_%hd3677337033%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3677237029%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3677437036%_)
                                                          (_%__kont3970539706%_
                                                           _%hd3677337033%_
                                                           _%hd3668237365%_
                                                           _%hd3667937355%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3667336819%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3667336819%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3667336819%_)))
                                          (if (gx#stx-datum? _%hd3673937207%_)
                                              (let ((_%e3678736956%_
                                                     (gx#stx-e
                                                      _%hd3673937207%_)))
                                                (if (equal? _%e3678736956%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3674037210%_)
                                                        (let ((_%e3678836960%_
                                                               (gx#syntax-e
                                                                _%tl3674037210%_)))
                                                          (let ((_%tl3679036967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3678836960%_)))
                        (_%hd3678936964%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3678836960%_))))
                    (if (gx#stx-null? _%tl3679036967%_)
                        (_%__kont3970739708%_
                         _%hd3678936964%_
                         _%hd3668237365%_
                         _%hd3667937355%_)
                        (if (gx#stx-pair? _%tl3679036967%_)
                            (let ((_%e3680836870%_
                                   (gx#syntax-e _%tl3679036967%_)))
                              (let ((_%tl3681036877%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3680836870%_)))
                                    (_%hd3680936874%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3680836870%_))))
                                (if (gx#identifier? _%hd3680936874%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40064_|
                                         _%hd3680936874%_)
                                        (if (gx#stx-pair? _%tl3681036877%_)
                                            (let ((_%e3681136880%_
                                                   (gx#syntax-e
                                                    _%tl3681036877%_)))
                                              (let ((_%tl3681336887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3681136880%_)))
                                                    (_%hd3681236884%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3681136880%_))))
                                                (if (gx#stx-null?
                                                     _%tl3681336887%_)
                                                    (_%__kont3970939710%_
                                                     _%hd3681236884%_
                                                     _%hd3678936964%_
                                                     _%hd3668237365%_
                                                     _%hd3667937355%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3667336819%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3667336819%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3667336819%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3667336819%_)))))
                            (let () (declare (not safe)) (_%g3667336819%_))))))
                (let () (declare (not safe)) (_%g3667336819%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3667336819%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3667336819%_)))))))
                              (if (gx#stx-null? _%tl3668337368%_)
                                  (_%__kont3970339704%_
                                   _%hd3668237365%_
                                   _%hd3667937355%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3667336819%_))))
                          (if (gx#stx-pair? _%tl3668337368%_)
                              (let ((_%e3674937129%_
                                     (gx#syntax-e _%tl3668337368%_)))
                                (let ((_%tl3675137136%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3674937129%_)))
                                      (_%hd3675037133%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3674937129%_))))
                                  (if (gx#stx-null? _%tl3675137136%_)
                                      (_%__kont3970139702%_
                                       _%hd3675037133%_
                                       _%hd3668237365%_)
                                      (if (gx#identifier? _%hd3675037133%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40063_|
                                               _%hd3675037133%_)
                                              (if (gx#stx-pair?
                                                   _%tl3675137136%_)
                                                  (let ((_%e3677237029%_
                                                         (gx#syntax-e
                                                          _%tl3675137136%_)))
                                                    (let ((_%tl3677437036%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3677237029%_)))
                                                          (_%hd3677337033%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3677237029%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3677437036%_)
                                                          (_%__kont3970539706%_
                                                           _%hd3677337033%_
                                                           _%hd3668237365%_
                                                           _%hd3667937355%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3667336819%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3667336819%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3667336819%_)))
                                          (if (gx#stx-datum? _%hd3675037133%_)
                                              (let ((_%e3678736956%_
                                                     (gx#stx-e
                                                      _%hd3675037133%_)))
                                                (if (equal? _%e3678736956%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3675137136%_)
                                                        (let ((_%e3678836960%_
                                                               (gx#syntax-e
                                                                _%tl3675137136%_)))
                                                          (let ((_%tl3679036967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3678836960%_)))
                        (_%hd3678936964%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3678836960%_))))
                    (if (gx#stx-null? _%tl3679036967%_)
                        (_%__kont3970739708%_
                         _%hd3678936964%_
                         _%hd3668237365%_
                         _%hd3667937355%_)
                        (if (gx#stx-pair? _%tl3679036967%_)
                            (let ((_%e3680836870%_
                                   (gx#syntax-e _%tl3679036967%_)))
                              (let ((_%tl3681036877%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3680836870%_)))
                                    (_%hd3680936874%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3680836870%_))))
                                (if (gx#identifier? _%hd3680936874%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40064_|
                                         _%hd3680936874%_)
                                        (if (gx#stx-pair? _%tl3681036877%_)
                                            (let ((_%e3681136880%_
                                                   (gx#syntax-e
                                                    _%tl3681036877%_)))
                                              (let ((_%tl3681336887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3681136880%_)))
                                                    (_%hd3681236884%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3681136880%_))))
                                                (if (gx#stx-null?
                                                     _%tl3681336887%_)
                                                    (_%__kont3970939710%_
                                                     _%hd3681236884%_
                                                     _%hd3678936964%_
                                                     _%hd3668237365%_
                                                     _%hd3667937355%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3667336819%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3667336819%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3667336819%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3667336819%_)))))
                            (let () (declare (not safe)) (_%g3667336819%_))))))
                (let () (declare (not safe)) (_%g3667336819%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3667336819%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3667336819%_)))))))
                              (if (gx#stx-null? _%tl3668337368%_)
                                  (_%__kont3970339704%_
                                   _%hd3668237365%_
                                   _%hd3667937355%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3667336819%_)))))))
                  (if (gx#stx-pair? _%tl3668337368%_)
                      (let ((_%e3674937129%_ (gx#syntax-e _%tl3668337368%_)))
                        (let ((_%tl3675137136%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3674937129%_)))
                              (_%hd3675037133%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3674937129%_))))
                          (if (gx#stx-null? _%tl3675137136%_)
                              (_%__kont3970139702%_
                               _%hd3675037133%_
                               _%hd3668237365%_)
                              (if (gx#identifier? _%hd3675037133%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40063_|
                                       _%hd3675037133%_)
                                      (if (gx#stx-pair? _%tl3675137136%_)
                                          (let ((_%e3677237029%_
                                                 (gx#syntax-e
                                                  _%tl3675137136%_)))
                                            (let ((_%tl3677437036%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3677237029%_)))
                                                  (_%hd3677337033%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3677237029%_))))
                                              (if (gx#stx-null?
                                                   _%tl3677437036%_)
                                                  (_%__kont3970539706%_
                                                   _%hd3677337033%_
                                                   _%hd3668237365%_
                                                   _%hd3667937355%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3667336819%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3667336819%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3667336819%_)))
                                  (if (gx#stx-datum? _%hd3675037133%_)
                                      (let ((_%e3678736956%_
                                             (gx#stx-e _%hd3675037133%_)))
                                        (if (equal? _%e3678736956%_ '::)
                                            (if (gx#stx-pair? _%tl3675137136%_)
                                                (let ((_%e3678836960%_
                                                       (gx#syntax-e
                                                        _%tl3675137136%_)))
                                                  (let ((_%tl3679036967%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3678836960%_)))
                                                        (_%hd3678936964%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3678836960%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3679036967%_)
                                                        (_%__kont3970739708%_
                                                         _%hd3678936964%_
                                                         _%hd3668237365%_
                                                         _%hd3667937355%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3679036967%_)
                                                            (let ((_%e3680836870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3679036967%_)))
                      (let ((_%tl3681036877%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3680836870%_)))
                            (_%hd3680936874%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3680836870%_))))
                        (if (gx#identifier? _%hd3680936874%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g40064_|
                                 _%hd3680936874%_)
                                (if (gx#stx-pair? _%tl3681036877%_)
                                    (let ((_%e3681136880%_
                                           (gx#syntax-e _%tl3681036877%_)))
                                      (let ((_%tl3681336887%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3681136880%_)))
                                            (_%hd3681236884%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3681136880%_))))
                                        (if (gx#stx-null? _%tl3681336887%_)
                                            (_%__kont3970939710%_
                                             _%hd3681236884%_
                                             _%hd3678936964%_
                                             _%hd3668237365%_
                                             _%hd3667937355%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3667336819%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3667336819%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3667336819%_)))
                            (let () (declare (not safe)) (_%g3667336819%_)))))
                    (let () (declare (not safe)) (_%g3667336819%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3667336819%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3667336819%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3667336819%_)))))))
                      (if (gx#stx-null? _%tl3668337368%_)
                          (_%__kont3970339704%_
                           _%hd3668237365%_
                           _%hd3667937355%_)
                          (let () (declare (not safe)) (_%g3667336819%_)))))
              (if (gx#stx-pair? _%tl3668337368%_)
                  (let ((_%e3674937129%_ (gx#syntax-e _%tl3668337368%_)))
                    (let ((_%tl3675137136%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3674937129%_)))
                          (_%hd3675037133%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3674937129%_))))
                      (if (gx#stx-null? _%tl3675137136%_)
                          (_%__kont3970139702%_
                           _%hd3675037133%_
                           _%hd3668237365%_)
                          (if (gx#identifier? _%hd3675037133%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40063_|
                                   _%hd3675037133%_)
                                  (if (gx#stx-pair? _%tl3675137136%_)
                                      (let ((_%e3677237029%_
                                             (gx#syntax-e _%tl3675137136%_)))
                                        (let ((_%tl3677437036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3677237029%_)))
                                              (_%hd3677337033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3677237029%_))))
                                          (if (gx#stx-null? _%tl3677437036%_)
                                              (_%__kont3970539706%_
                                               _%hd3677337033%_
                                               _%hd3668237365%_
                                               _%hd3667937355%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3667336819%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3667336819%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3667336819%_)))
                              (if (gx#stx-datum? _%hd3675037133%_)
                                  (let ((_%e3678736956%_
                                         (gx#stx-e _%hd3675037133%_)))
                                    (if (equal? _%e3678736956%_ '::)
                                        (if (gx#stx-pair? _%tl3675137136%_)
                                            (let ((_%e3678836960%_
                                                   (gx#syntax-e
                                                    _%tl3675137136%_)))
                                              (let ((_%tl3679036967%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3678836960%_)))
                                                    (_%hd3678936964%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3678836960%_))))
                                                (if (gx#stx-null?
                                                     _%tl3679036967%_)
                                                    (_%__kont3970739708%_
                                                     _%hd3678936964%_
                                                     _%hd3668237365%_
                                                     _%hd3667937355%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3679036967%_)
                                                        (let ((_%e3680836870%_
                                                               (gx#syntax-e
                                                                _%tl3679036967%_)))
                                                          (let ((_%tl3681036877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3680836870%_)))
                        (_%hd3680936874%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3680836870%_))))
                    (if (gx#identifier? _%hd3680936874%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40064_|
                             _%hd3680936874%_)
                            (if (gx#stx-pair? _%tl3681036877%_)
                                (let ((_%e3681136880%_
                                       (gx#syntax-e _%tl3681036877%_)))
                                  (let ((_%tl3681336887%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3681136880%_)))
                                        (_%hd3681236884%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3681136880%_))))
                                    (if (gx#stx-null? _%tl3681336887%_)
                                        (_%__kont3970939710%_
                                         _%hd3681236884%_
                                         _%hd3678936964%_
                                         _%hd3668237365%_
                                         _%hd3667937355%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3667336819%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3667336819%_)))
                            (let () (declare (not safe)) (_%g3667336819%_)))
                        (let () (declare (not safe)) (_%g3667336819%_)))))
                (let () (declare (not safe)) (_%g3667336819%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3667336819%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3667336819%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3667336819%_)))))))
                  (if (gx#stx-null? _%tl3668337368%_)
                      (_%__kont3970339704%_ _%hd3668237365%_ _%hd3667937355%_)
                      (let () (declare (not safe)) (_%g3667336819%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3668337368%_)
                                              (let ((_%e3674937129%_
                                                     (gx#syntax-e
                                                      _%tl3668337368%_)))
                                                (let ((_%tl3675137136%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3674937129%_)))
                                                      (_%hd3675037133%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3674937129%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3675137136%_)
                                                      (_%__kont3970139702%_
                                                       _%hd3675037133%_
                                                       _%hd3668237365%_)
                                                      (if (gx#identifier?
                                                           _%hd3675037133%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g40063_|
                                                               _%hd3675037133%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3675137136%_)
                          (let ((_%e3677237029%_
                                 (gx#syntax-e _%tl3675137136%_)))
                            (let ((_%tl3677437036%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3677237029%_)))
                                  (_%hd3677337033%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3677237029%_))))
                              (if (gx#stx-null? _%tl3677437036%_)
                                  (_%__kont3970539706%_
                                   _%hd3677337033%_
                                   _%hd3668237365%_
                                   _%hd3667937355%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3667336819%_)))))
                          (let () (declare (not safe)) (_%g3667336819%_)))
                      (let () (declare (not safe)) (_%g3667336819%_)))
                  (if (gx#stx-datum? _%hd3675037133%_)
                      (let ((_%e3678736956%_ (gx#stx-e _%hd3675037133%_)))
                        (if (equal? _%e3678736956%_ '::)
                            (if (gx#stx-pair? _%tl3675137136%_)
                                (let ((_%e3678836960%_
                                       (gx#syntax-e _%tl3675137136%_)))
                                  (let ((_%tl3679036967%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3678836960%_)))
                                        (_%hd3678936964%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3678836960%_))))
                                    (if (gx#stx-null? _%tl3679036967%_)
                                        (_%__kont3970739708%_
                                         _%hd3678936964%_
                                         _%hd3668237365%_
                                         _%hd3667937355%_)
                                        (if (gx#stx-pair? _%tl3679036967%_)
                                            (let ((_%e3680836870%_
                                                   (gx#syntax-e
                                                    _%tl3679036967%_)))
                                              (let ((_%tl3681036877%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3680836870%_)))
                                                    (_%hd3680936874%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3680836870%_))))
                                                (if (gx#identifier?
                                                     _%hd3680936874%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g40064_|
                                                         _%hd3680936874%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3681036877%_)
                                                            (let ((_%e3681136880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3681036877%_)))
                      (let ((_%tl3681336887%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3681136880%_)))
                            (_%hd3681236884%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3681136880%_))))
                        (if (gx#stx-null? _%tl3681336887%_)
                            (_%__kont3970939710%_
                             _%hd3681236884%_
                             _%hd3678936964%_
                             _%hd3668237365%_
                             _%hd3667937355%_)
                            (let () (declare (not safe)) (_%g3667336819%_)))))
                    (let () (declare (not safe)) (_%g3667336819%_)))
                (let () (declare (not safe)) (_%g3667336819%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3667336819%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3667336819%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3667336819%_)))
                            (let () (declare (not safe)) (_%g3667336819%_))))
                      (let () (declare (not safe)) (_%g3667336819%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3668337368%_)
                                                  (_%__kont3970339704%_
                                                   _%hd3668237365%_
                                                   _%hd3667937355%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3667336819%_)))))))
                                  (if (gx#stx-pair? _%tl3668337368%_)
                                      (let ((_%e3674937129%_
                                             (gx#syntax-e _%tl3668337368%_)))
                                        (let ((_%tl3675137136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3674937129%_)))
                                              (_%hd3675037133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3674937129%_))))
                                          (if (gx#stx-null? _%tl3675137136%_)
                                              (_%__kont3970139702%_
                                               _%hd3675037133%_
                                               _%hd3668237365%_)
                                              (if (gx#identifier?
                                                   _%hd3675037133%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40063_|
                                                       _%hd3675037133%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3675137136%_)
                                                          (let ((_%e3677237029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3675137136%_)))
                    (let ((_%tl3677437036%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3677237029%_)))
                          (_%hd3677337033%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3677237029%_))))
                      (if (gx#stx-null? _%tl3677437036%_)
                          (_%__kont3970539706%_
                           _%hd3677337033%_
                           _%hd3668237365%_
                           _%hd3667937355%_)
                          (let () (declare (not safe)) (_%g3667336819%_)))))
                  (let () (declare (not safe)) (_%g3667336819%_)))
              (let () (declare (not safe)) (_%g3667336819%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3675037133%_)
                                                      (let ((_%e3678736956%_
                                                             (gx#stx-e
                                                              _%hd3675037133%_)))
                                                        (if (equal? _%e3678736956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3675137136%_)
                        (let ((_%e3678836960%_ (gx#syntax-e _%tl3675137136%_)))
                          (let ((_%tl3679036967%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3678836960%_)))
                                (_%hd3678936964%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3678836960%_))))
                            (if (gx#stx-null? _%tl3679036967%_)
                                (_%__kont3970739708%_
                                 _%hd3678936964%_
                                 _%hd3668237365%_
                                 _%hd3667937355%_)
                                (if (gx#stx-pair? _%tl3679036967%_)
                                    (let ((_%e3680836870%_
                                           (gx#syntax-e _%tl3679036967%_)))
                                      (let ((_%tl3681036877%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3680836870%_)))
                                            (_%hd3680936874%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3680836870%_))))
                                        (if (gx#identifier? _%hd3680936874%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g40064_|
                                                 _%hd3680936874%_)
                                                (if (gx#stx-pair?
                                                     _%tl3681036877%_)
                                                    (let ((_%e3681136880%_
                                                           (gx#syntax-e
                                                            _%tl3681036877%_)))
                                                      (let ((_%tl3681336887%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3681136880%_)))
                    (_%hd3681236884%_
                     (let () (declare (not safe)) (##car _%e3681136880%_))))
                (if (gx#stx-null? _%tl3681336887%_)
                    (_%__kont3970939710%_
                     _%hd3681236884%_
                     _%hd3678936964%_
                     _%hd3668237365%_
                     _%hd3667937355%_)
                    (let () (declare (not safe)) (_%g3667336819%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3667336819%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3667336819%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3667336819%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3667336819%_))))))
                        (let () (declare (not safe)) (_%g3667336819%_)))
                    (let () (declare (not safe)) (_%g3667336819%_))))
              (let () (declare (not safe)) (_%g3667336819%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3668337368%_)
                                          (_%__kont3970339704%_
                                           _%hd3668237365%_
                                           _%hd3667937355%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3667336819%_)))))))
                          (let () (declare (not safe)) (_%g3667336819%_)))))
                  (let () (declare (not safe)) (_%g3667336819%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37458%_)
        (let* ((_%__stx3995639957%_ _%$stx37458%_)
               (_%g3746337497%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3995639957%_))))
          (let ((_%__kont3995939960%_
                 (lambda (_%g3746537601%_ _%g3746637603%_ _%g3746737604%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%g3746737604%_
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
                                       (cons _%g3746637603%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%g3746537601%_ '()))
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
                (_%__kont3996139962%_
                 (lambda (_%g3748037534%_ _%g3748137536%_ _%g3748237537%_)
                   (cons _%g3748237537%_
                         (cons _%g3748137536%_
                               (cons _%g3748037534%_
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
            (let ((_%__match3998939990%_
                   (lambda (_%e3746837561%_
                            _%hd3746937565%_
                            _%tl3747037568%_
                            _%e3747137571%_
                            _%hd3747237575%_
                            _%tl3747337578%_
                            _%e3747437581%_
                            _%hd3747537585%_
                            _%tl3747637588%_
                            _%e3747737591%_
                            _%hd3747837595%_
                            _%tl3747937598%_)
                     (let ((_%g3746537601%_ _%hd3747837595%_)
                           (_%g3746637603%_ _%hd3747537585%_)
                           (_%g3746737604%_ _%hd3747237575%_))
                       (if (gx#identifier? _%g3746737604%_)
                           (_%__kont3995939960%_
                            _%g3746537601%_
                            _%g3746637603%_
                            _%g3746737604%_)
                           (let () (declare (not safe)) (_%g3746337497%_)))))))
              (if (gx#stx-pair? _%__stx3995639957%_)
                  (let ((_%e3746837561%_ (gx#syntax-e _%__stx3995639957%_)))
                    (let ((_%tl3747037568%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3746837561%_)))
                          (_%hd3746937565%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3746837561%_))))
                      (if (gx#stx-pair? _%tl3747037568%_)
                          (let ((_%e3747137571%_
                                 (gx#syntax-e _%tl3747037568%_)))
                            (let ((_%tl3747337578%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3747137571%_)))
                                  (_%hd3747237575%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3747137571%_))))
                              (if (gx#stx-pair? _%tl3747337578%_)
                                  (let ((_%e3747437581%_
                                         (gx#syntax-e _%tl3747337578%_)))
                                    (let ((_%tl3747637588%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3747437581%_)))
                                          (_%hd3747537585%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3747437581%_))))
                                      (if (gx#stx-pair? _%tl3747637588%_)
                                          (let ((_%e3747737591%_
                                                 (gx#syntax-e
                                                  _%tl3747637588%_)))
                                            (let ((_%tl3747937598%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3747737591%_)))
                                                  (_%hd3747837595%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3747737591%_))))
                                              (if (gx#stx-null?
                                                   _%tl3747937598%_)
                                                  (_%__match3998939990%_
                                                   _%e3746837561%_
                                                   _%hd3746937565%_
                                                   _%tl3747037568%_
                                                   _%e3747137571%_
                                                   _%hd3747237575%_
                                                   _%tl3747337578%_
                                                   _%e3747437581%_
                                                   _%hd3747537585%_
                                                   _%tl3747637588%_
                                                   _%e3747737591%_
                                                   _%hd3747837595%_
                                                   _%tl3747937598%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3746337497%_)))))
                                          (if (gx#stx-null? _%tl3747637588%_)
                                              (_%__kont3996139962%_
                                               _%hd3747537585%_
                                               _%hd3747237575%_
                                               _%hd3746937565%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3746337497%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3746337497%_)))))
                          (let () (declare (not safe)) (_%g3746337497%_)))))
                  (let () (declare (not safe)) (_%g3746337497%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx37626%_)
        (let* ((_%g3763037645%_
                (lambda (_%g3763137641%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3763137641%_)))
               (_%g3762937688%_
                (lambda (_%g3763137649%_)
                  (if (gx#stx-pair? _%g3763137649%_)
                      (let ((_%e3763437652%_ (gx#syntax-e _%g3763137649%_)))
                        (let ((_%hd3763537656%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3763437652%_)))
                              (_%tl3763637659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3763437652%_))))
                          (if (gx#stx-pair? _%tl3763637659%_)
                              (let ((_%e3763737662%_
                                     (gx#syntax-e _%tl3763637659%_)))
                                (let ((_%hd3763837666%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3763737662%_)))
                                      (_%tl3763937669%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3763737662%_))))
                                  ((lambda (_%g3763237672%_ _%g3763337674%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%g3763337674%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%g3763237672%_)
                                                       '()))))
                                   _%tl3763937669%_
                                   _%hd3763837666%_)))
                              (_%g3763037645%_ _%g3763137649%_))))
                      (_%g3763037645%_ _%g3763137649%_)))))
          (_%g3762937688%_ _%$stx37626%_))))))
