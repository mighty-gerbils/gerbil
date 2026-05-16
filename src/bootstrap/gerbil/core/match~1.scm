(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g40034_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40035_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40036_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40037_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40038_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40039_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40040_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40041_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40042_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40043_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40044_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40045_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40046_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40047_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40048_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40061_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40069_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40070_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40071_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40076_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40077_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40078_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40079_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40080_|
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
      (lambda _%$args35355%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35355%_)))
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
      (lambda (_%stx35352%_)
        (if (gx#identifier? _%stx35352%_)
            (let ((__tmp40033 (gx#syntax-local-value _%stx35352%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp40033))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx33654%_ _%match-stx33656%_)
        (letrec ((_%parse133658%_
                  (lambda (_%hd34017%_)
                    (let* ((_%__stx3782137822%_ _%hd34017%_)
                           (_%g3404334185%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3782137822%_))))
                      (let ((_%__kont3782437825%_
                             (lambda (_%g3404535115%_ _%g3404635117%_)
                               (let* ((_%__stx3774137742%_ _%g3404535115%_)
                                      (_%g3513435167%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3774137742%_))))
                                 (let ((_%__kont3774437745%_
                                        (lambda ()
                                          (cons '?:
                                                (cons _%g3404635117%_ '()))))
                                       (_%__kont3774637747%_
                                        (lambda (_%g3513635308%_)
                                          (cons '?:
                                                (cons _%g3404635117%_
                                                      (cons (_%parse133658%_
                                                             _%g3513635308%_)
                                                            '())))))
                                       (_%__kont3774837749%_
                                        (lambda (_%g3514035278%_)
                                          (cons '?:
                                                (cons _%g3404635117%_
                                                      (cons '=>:
                                                            (cons (_%parse133658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g3514035278%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3775037751%_
                                        (lambda (_%g3514735229%_
                                                 _%g3514835231%_)
                                          (cons '?:
                                                (cons _%g3404635117%_
                                                      (cons '::
                                                            (cons _%g3514835231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse133658%_ _%g3514735229%_)
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3775237753%_
                                        (lambda ()
                                          (_%parse-error33665%_ _%hd34017%_))))
                                   (let ((_%g3513035319%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3774137742%_)
                                                (let ((_%e3513735298%_
                                                       (gx#syntax-e
                                                        _%__stx3774137742%_)))
                                                  (let ((_%tl3513935305%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3513735298%_)))
                                                        (_%hd3513835302%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3513735298%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3513935305%_)
                                                        (_%__kont3774637747%_
                                                         _%hd3513835302%_)
                                                        (if (gx#identifier?
                                                             _%hd3513835302%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g40034_|
                         _%hd3513835302%_)
                        (if (gx#stx-pair? _%tl3513935305%_)
                            (let ((_%e3514435268%_
                                   (gx#syntax-e _%tl3513935305%_)))
                              (let ((_%tl3514635275%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3514435268%_)))
                                    (_%hd3514535272%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3514435268%_))))
                                (if (gx#stx-null? _%tl3514635275%_)
                                    (_%__kont3774837749%_ _%hd3514535272%_)
                                    (_%__kont3775237753%_))))
                            (_%__kont3775237753%_))
                        (_%__kont3775237753%_))
                    (if (gx#stx-datum? _%hd3513835302%_)
                        (let ((_%e3515235195%_ (gx#stx-e _%hd3513835302%_)))
                          (if (equal? _%e3515235195%_ '::)
                              (if (gx#stx-pair? _%tl3513935305%_)
                                  (let ((_%e3515335199%_
                                         (gx#syntax-e _%tl3513935305%_)))
                                    (let ((_%tl3515535206%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3515335199%_)))
                                          (_%hd3515435203%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3515335199%_))))
                                      (if (gx#stx-pair? _%tl3515535206%_)
                                          (let ((_%e3515635209%_
                                                 (gx#syntax-e
                                                  _%tl3515535206%_)))
                                            (let ((_%tl3515835216%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3515635209%_)))
                                                  (_%hd3515735213%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3515635209%_))))
                                              (if (gx#identifier?
                                                   _%hd3515735213%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40035_|
                                                       _%hd3515735213%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3515835216%_)
                                                          (let ((_%e3515935219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3515835216%_)))
                    (let ((_%tl3516135226%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3515935219%_)))
                          (_%hd3516035223%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3515935219%_))))
                      (if (gx#stx-null? _%tl3516135226%_)
                          (_%__kont3775037751%_
                           _%hd3516035223%_
                           _%hd3515435203%_)
                          (_%__kont3775237753%_))))
                  (_%__kont3775237753%_))
              (_%__kont3775237753%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3775237753%_))))
                                          (_%__kont3775237753%_))))
                                  (_%__kont3775237753%_))
                              (_%__kont3775237753%_)))
                        (_%__kont3775237753%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3775237753%_)))))
                                     (if (gx#stx-null? _%__stx3774137742%_)
                                         (_%__kont3774437745%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3513035319%_))))))))
                            (_%__kont3782637827%_
                             (lambda (_%g3405335020%_)
                               (let* ((_%__stx3772337724%_ _%g3405335020%_)
                                      (_%g3503235043%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3772337724%_))))
                                 (let ((_%__kont3772637727%_
                                        (lambda (_%g3503435071%_)
                                          (_%parse133658%_ _%g3503435071%_)))
                                       (_%__kont3772837729%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse133658%_
                                                 _%g3405335020%_)))))
                                   (if (gx#stx-pair? _%__stx3772337724%_)
                                       (let ((_%e3503535061%_
                                              (gx#syntax-e
                                               _%__stx3772337724%_)))
                                         (let ((_%tl3503735068%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3503535061%_)))
                                               (_%hd3503635065%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3503535061%_))))
                                           (if (gx#stx-null? _%tl3503735068%_)
                                               (_%__kont3772637727%_
                                                _%hd3503635065%_)
                                               (_%__kont3772837729%_))))
                                       (_%__kont3772837729%_))))))
                            (_%__kont3782837829%_
                             (lambda (_%g3405734935%_)
                               (let* ((_%__stx3770537706%_ _%g3405734935%_)
                                      (_%g3494734958%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3770537706%_))))
                                 (let ((_%__kont3770837709%_
                                        (lambda (_%g3494934986%_)
                                          (_%parse133658%_ _%g3494934986%_)))
                                       (_%__kont3771037711%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse133658%_
                                                 _%g3405734935%_)))))
                                   (if (gx#stx-pair? _%__stx3770537706%_)
                                       (let ((_%e3495034976%_
                                              (gx#syntax-e
                                               _%__stx3770537706%_)))
                                         (let ((_%tl3495234983%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3495034976%_)))
                                               (_%hd3495134980%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3495034976%_))))
                                           (if (gx#stx-null? _%tl3495234983%_)
                                               (_%__kont3770837709%_
                                                _%hd3495134980%_)
                                               (_%__kont3771037711%_))))
                                       (_%__kont3771037711%_))))))
                            (_%__kont3783037831%_
                             (lambda (_%g3406134905%_)
                               (cons 'not:
                                     (cons (_%parse133658%_ _%g3406134905%_)
                                           '()))))
                            (_%__kont3783237833%_
                             (lambda (_%g3406834861%_ _%g3406934863%_)
                               (cons 'cons:
                                     (cons (_%parse133658%_ _%g3406934863%_)
                                           (cons (_%parse133658%_
                                                  _%g3406834861%_)
                                                 '())))))
                            (_%__kont3783437835%_
                             (lambda (_%g3407934805%_
                                      _%g3408034807%_
                                      _%g3408134808%_)
                               (if (gx#stx-null? _%g3407934805%_)
                                   (cons 'cons:
                                         (cons (_%parse133658%_
                                                _%g3408134808%_)
                                               (cons (_%parse133658%_
                                                      _%g3408034807%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse133658%_
                                                _%g3408134808%_)
                                               (cons (_%parse133658%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%g3408034807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g3407934805%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3783637837%_
                             (lambda (_%g3409134757%_)
                               (_%parse-list33660%_ _%g3409134757%_)))
                            (_%__kont3783837839%_
                             (lambda (_%g3409534727%_)
                               (cons 'box:
                                     (cons (_%parse133658%_ _%g3409534727%_)
                                           '()))))
                            (_%__kont3784037841%_
                             (lambda (_%g3410234690%_)
                               (cons 'box:
                                     (cons (_%parse133658%_ _%g3410234690%_)
                                           '()))))
                            (_%__kont3784237843%_
                             (lambda (_%g3410434666%_)
                               (_%parse133658%_ _%g3410434666%_)))
                            (_%__kont3784437845%_
                             (lambda (_%g3411134628%_)
                               (cons 'values:
                                     (cons (_%parse-vector33661%_
                                            _%g3411134628%_)
                                           '()))))
                            (_%__kont3784637847%_
                             (lambda (_%g3411534600%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33661%_
                                            _%g3411534600%_)
                                           '()))))
                            (_%__kont3784837849%_
                             (lambda (_%g3411934561%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33661%_
                                            (foldr (lambda (_%g3457434577%_
                                                            _%g3457534580%_)
                                                     (cons _%g3457434577%_
                                                           _%g3457534580%_))
                                                   '()
                                                   _%g3411934561%_))
                                           '()))))
                            (_%__kont3785237853%_
                             (lambda (_%g3413034509%_ _%g3413134511%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value
                                            _%g3413134511%_)
                                           (cons (_%parse-vector33661%_
                                                  _%g3413034509%_)
                                                 '())))))
                            (_%__kont3785437855%_
                             (lambda (_%g3413534479%_ _%g3413634481%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value
                                            _%g3413634481%_)
                                           (cons (_%parse-class-body33663%_
                                                  _%g3413534479%_)
                                                 '())))))
                            (_%__kont3785637857%_
                             (lambda (_%g3414034439%_ _%g3414134441%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%g3414134441%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%g3414034439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3785837859%_
                             (lambda (_%g3414834399%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g3414834399%_) '()))))
                            (_%__kont3786037861%_
                             (lambda (_%g3415534359%_)
                               (_%parse-qq33664%_ _%g3415534359%_)))
                            (_%__kont3786237863%_
                             (lambda (_%g3416234315%_ _%g3416334317%_)
                               (cons 'apply:
                                     (cons _%g3416334317%_
                                           (cons (_%parse133658%_
                                                  _%g3416234315%_)
                                                 '())))))
                            (_%__kont3786437865%_
                             (lambda (_%g3417334263%_)
                               (_%parse133658%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%g3417334263%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd34017%_)
                                  (let ((_%$e34274%_
                                         (gx#stx-source _%hd34017%_)))
                                    (if _%$e34274%_
                                        _%$e34274%_
                                        (gx#stx-source _%stx33654%_))))))))
                            (_%__kont3786637867%_
                             (lambda (_%g3417734237%_) (cons 'any: '())))
                            (_%__kont3786837869%_
                             (lambda (_%g3417834221%_)
                               (cons 'var: (cons _%g3417834221%_ '()))))
                            (_%__kont3787037871%_
                             (lambda (_%g3417934203%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g3417934203%_) '()))))
                            (_%__kont3787237873%_
                             (lambda () (_%parse-error33665%_ _%hd34017%_))))
                        (let* ((_%g3404134214%_
                                (lambda ()
                                  (let ((_%g3417934203%_ _%__stx3782137822%_))
                                    (if (gx#stx-datum? _%g3417934203%_)
                                        (_%__kont3787037871%_ _%g3417934203%_)
                                        (_%__kont3787237873%_)))))
                               (_%g3404034230%_
                                (lambda ()
                                  (let ((_%g3417834221%_ _%__stx3782137822%_))
                                    (if (and (gx#identifier? _%g3417834221%_)
                                             (not (gx#ellipsis?
                                                   _%g3417834221%_)))
                                        (_%__kont3786837869%_ _%g3417834221%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3404134214%_))))))
                               (_%g3403934246%_
                                (lambda ()
                                  (let ((_%g3417734237%_ _%__stx3782137822%_))
                                    (if (gx#underscore? _%g3417734237%_)
                                        (_%__kont3786637867%_ _%g3417734237%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3404034230%_))))))
                               (_%__match3814838149%_
                                (lambda (_%e3417434253%_
                                         _%hd3417534257%_
                                         _%tl3417634260%_)
                                  (let ((_%g3417334263%_ _%hd3417534257%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%g3417334263%_)
                                        (_%__kont3786437865%_ _%g3417334263%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3403934246%_))))))
                               (_%__match3808238083%_
                                (lambda (_%e3414234419%_
                                         _%hd3414334423%_
                                         _%tl3414434426%_
                                         _%e3414534429%_
                                         _%hd3414634433%_
                                         _%tl3414734436%_)
                                  (let ((_%g3414034439%_ _%hd3414634433%_)
                                        (_%g3414134441%_ _%hd3414334423%_))
                                    (if (and (gx#identifier? _%g3414134441%_)
                                             (or (gx#free-identifier=?
                                                  _%g3414134441%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%g3414134441%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%g3414134441%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3785637857%_
                                         _%g3414034439%_
                                         _%g3414134441%_)
                                        (if (gx#identifier? _%hd3414334423%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g40036_|
                                                 _%hd3414334423%_)
                                                (_%__kont3785837859%_
                                                 _%hd3414634433%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g40037_|
                                                     _%hd3414334423%_)
                                                    (_%__kont3786037861%_
                                                     _%hd3414634433%_)
                                                    (_%__match3814838149%_
                                                     _%e3414234419%_
                                                     _%hd3414334423%_
                                                     _%tl3414434426%_)))
                                            (_%__match3814838149%_
                                             _%e3414234419%_
                                             _%hd3414334423%_
                                             _%tl3414434426%_))))))
                               (_%__match3806838069%_
                                (lambda (_%e3413734469%_
                                         _%hd3413834473%_
                                         _%tl3413934476%_)
                                  (let ((_%g3413534479%_ _%tl3413934476%_)
                                        (_%g3413634481%_ _%hd3413834473%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%g3413634481%_))
                                        (_%__kont3785437855%_
                                         _%g3413534479%_
                                         _%g3413634481%_)
                                        (if (gx#stx-pair? _%tl3413934476%_)
                                            (let ((_%e3414534429%_
                                                   (gx#syntax-e
                                                    _%tl3413934476%_)))
                                              (let ((_%tl3414734436%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3414534429%_)))
                                                    (_%hd3414634433%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3414534429%_))))
                                                (if (gx#stx-null?
                                                     _%tl3414734436%_)
                                                    (_%__match3808238083%_
                                                     _%e3413734469%_
                                                     _%hd3413834473%_
                                                     _%tl3413934476%_
                                                     _%e3414534429%_
                                                     _%hd3414634433%_
                                                     _%tl3414734436%_)
                                                    (if (gx#identifier?
                                                         _%hd3413834473%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g40036_|
                                                             _%hd3413834473%_)
                                                            (_%__match3814838149%_
                                                             _%e3413734469%_
                                                             _%hd3413834473%_
                                                             _%tl3413934476%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g40037_|
                         _%hd3413834473%_)
                        (_%__match3814838149%_
                         _%e3413734469%_
                         _%hd3413834473%_
                         _%tl3413934476%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40038_|
                             _%hd3413834473%_)
                            (if (gx#stx-pair? _%tl3414734436%_)
                                (let ((_%e3417034305%_
                                       (gx#syntax-e _%tl3414734436%_)))
                                  (let ((_%tl3417234312%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3417034305%_)))
                                        (_%hd3417134309%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3417034305%_))))
                                    (if (gx#stx-null? _%tl3417234312%_)
                                        (_%__kont3786237863%_
                                         _%hd3417134309%_
                                         _%hd3414634433%_)
                                        (_%__match3814838149%_
                                         _%e3413734469%_
                                         _%hd3413834473%_
                                         _%tl3413934476%_))))
                                (_%__match3814838149%_
                                 _%e3413734469%_
                                 _%hd3413834473%_
                                 _%tl3413934476%_))
                            (_%__match3814838149%_
                             _%e3413734469%_
                             _%hd3413834473%_
                             _%tl3413934476%_))))
                (_%__match3814838149%_
                 _%e3413734469%_
                 _%hd3413834473%_
                 _%tl3413934476%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3814838149%_
                                             _%e3413734469%_
                                             _%hd3413834473%_
                                             _%tl3413934476%_))))))
                               (_%__match3806238063%_
                                (lambda (_%e3413234499%_
                                         _%hd3413334503%_
                                         _%tl3413434506%_)
                                  (let ((_%g3413034509%_ _%tl3413434506%_)
                                        (_%g3413134511%_ _%hd3413334503%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%g3413134511%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3785237853%_
                                         _%g3413034509%_
                                         _%g3413134511%_)
                                        (_%__match3806838069%_
                                         _%e3413234499%_
                                         _%hd3413334503%_
                                         _%tl3413434506%_)))))
                               (_%__match3805638057%_
                                (lambda (_%e3412034529%_
                                         _%__splice3785037851%_
                                         _%target3412134533%_
                                         _%tl3412334536%_)
                                  (letrec ((_%loop3412434539%_
                                            (lambda (_%hd3412234543%_
                                                     _%body3412834546%_)
                                              (if (gx#stx-pair?
                                                   _%hd3412234543%_)
                                                  (let ((_%e3412534548%_
                                                         (gx#syntax-e
                                                          _%hd3412234543%_)))
                                                    (let ((_%lp-tl3412734555%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3412534548%_)))
                                                          (_%lp-hd3412634552%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3412534548%_))))
                                                      (_%loop3412434539%_
                                                       _%lp-tl3412734555%_
                                                       (cons _%lp-hd3412634552%_
                                                             _%body3412834546%_))))
                                                  (let ((_%body3412934558%_
                                                         (reverse _%body3412834546%_)))
                                                    (_%__kont3784837849%_
                                                     _%body3412934558%_))))))
                                    (_%loop3412434539%_
                                     _%target3412134533%_
                                     '()))))
                               (_%g3403134583%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3782137822%_)
                                      (let ((_%e3412034529%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3782137822%_))))
                                        (if (gx#stx-pair/null? _%e3412034529%_)
                                            (let ((_%__splice3785037851%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e3412034529%_
                                                    '0)))
                                              (let ((_%tl3412334536%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3785037851%_
                                                        '1)))
                                                    (_%target3412134533%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3785037851%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3412334536%_)
                                                    (_%__match3805638057%_
                                                     _%e3412034529%_
                                                     _%__splice3785037851%_
                                                     _%target3412134533%_
                                                     _%tl3412334536%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3403934246%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3403934246%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3403934246%_)))))
                               (_%g3402734700%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3782137822%_)
                                      (let ((_%e3410334686%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3782137822%_))))
                                        (_%__kont3784037841%_ _%e3410334686%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3403134583%_)))))
                               (_%__match3791037911%_
                                (lambda (_%e3405834925%_
                                         _%hd3405934929%_
                                         _%tl3406034932%_)
                                  (let ((_%g3405734935%_ _%tl3406034932%_))
                                    (if (gx#stx-list? _%g3405734935%_)
                                        (_%__kont3782837829%_ _%g3405734935%_)
                                        (_%__match3806238063%_
                                         _%e3405834925%_
                                         _%hd3405934929%_
                                         _%tl3406034932%_)))))
                               (_%__match3790037901%_
                                (lambda (_%e3405435010%_
                                         _%hd3405535014%_
                                         _%tl3405635017%_)
                                  (let ((_%g3405335020%_ _%tl3405635017%_))
                                    (if (gx#stx-list? _%g3405335020%_)
                                        (_%__kont3782637827%_ _%g3405335020%_)
                                        (_%__match3806238063%_
                                         _%e3405435010%_
                                         _%hd3405535014%_
                                         _%tl3405635017%_))))))
                          (if (gx#stx-pair? _%__stx3782137822%_)
                              (let ((_%e3404735095%_
                                     (gx#syntax-e _%__stx3782137822%_)))
                                (let ((_%tl3404935102%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3404735095%_)))
                                      (_%hd3404835099%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3404735095%_))))
                                  (if (gx#identifier? _%hd3404835099%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40039_|
                                           _%hd3404835099%_)
                                          (if (gx#stx-pair? _%tl3404935102%_)
                                              (let ((_%e3405035105%_
                                                     (gx#syntax-e
                                                      _%tl3404935102%_)))
                                                (let ((_%tl3405235112%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3405035105%_)))
                                                      (_%hd3405135109%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3405035105%_))))
                                                  (_%__kont3782437825%_
                                                   _%tl3405235112%_
                                                   _%hd3405135109%_)))
                                              (_%__match3806238063%_
                                               _%e3404735095%_
                                               _%hd3404835099%_
                                               _%tl3404935102%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40040_|
                                               _%hd3404835099%_)
                                              (_%__match3790037901%_
                                               _%e3404735095%_
                                               _%hd3404835099%_
                                               _%tl3404935102%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g40041_|
                                                   _%hd3404835099%_)
                                                  (_%__match3791037911%_
                                                   _%e3404735095%_
                                                   _%hd3404835099%_
                                                   _%tl3404935102%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40042_|
                                                       _%hd3404835099%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3404935102%_)
                                                          (let ((_%e3406534895%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3404935102%_)))
                    (let ((_%tl3406734902%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3406534895%_)))
                          (_%hd3406634899%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3406534895%_))))
                      (if (gx#stx-null? _%tl3406734902%_)
                          (_%__kont3783037831%_ _%hd3406634899%_)
                          (_%__match3806238063%_
                           _%e3404735095%_
                           _%hd3404835099%_
                           _%tl3404935102%_))))
                  (_%__match3806238063%_
                   _%e3404735095%_
                   _%hd3404835099%_
                   _%tl3404935102%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g40043_|
                   _%hd3404835099%_)
                  (if (gx#stx-pair? _%tl3404935102%_)
                      (let ((_%e3407334841%_ (gx#syntax-e _%tl3404935102%_)))
                        (let ((_%tl3407534848%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3407334841%_)))
                              (_%hd3407434845%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3407334841%_))))
                          (if (gx#stx-pair? _%tl3407534848%_)
                              (let ((_%e3407634851%_
                                     (gx#syntax-e _%tl3407534848%_)))
                                (let ((_%tl3407834858%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3407634851%_)))
                                      (_%hd3407734855%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3407634851%_))))
                                  (if (gx#stx-null? _%tl3407834858%_)
                                      (_%__kont3783237833%_
                                       _%hd3407734855%_
                                       _%hd3407434845%_)
                                      (_%__match3806238063%_
                                       _%e3404735095%_
                                       _%hd3404835099%_
                                       _%tl3404935102%_))))
                              (_%__match3806238063%_
                               _%e3404735095%_
                               _%hd3404835099%_
                               _%tl3404935102%_))))
                      (_%__match3806238063%_
                       _%e3404735095%_
                       _%hd3404835099%_
                       _%tl3404935102%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g40044_|
                       _%hd3404835099%_)
                      (if (gx#stx-pair? _%tl3404935102%_)
                          (let ((_%e3408534785%_
                                 (gx#syntax-e _%tl3404935102%_)))
                            (let ((_%tl3408734792%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3408534785%_)))
                                  (_%hd3408634789%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3408534785%_))))
                              (if (gx#stx-pair? _%tl3408734792%_)
                                  (let ((_%e3408834795%_
                                         (gx#syntax-e _%tl3408734792%_)))
                                    (let ((_%tl3409034802%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3408834795%_)))
                                          (_%hd3408934799%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3408834795%_))))
                                      (_%__kont3783437835%_
                                       _%tl3409034802%_
                                       _%hd3408934799%_
                                       _%hd3408634789%_)))
                                  (_%__match3806238063%_
                                   _%e3404735095%_
                                   _%hd3404835099%_
                                   _%tl3404935102%_))))
                          (_%__match3806238063%_
                           _%e3404735095%_
                           _%hd3404835099%_
                           _%tl3404935102%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g40045_|
                           _%hd3404835099%_)
                          (_%__kont3783637837%_ _%tl3404935102%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40046_|
                               _%hd3404835099%_)
                              (if (gx#stx-pair? _%tl3404935102%_)
                                  (let ((_%e3409934717%_
                                         (gx#syntax-e _%tl3404935102%_)))
                                    (let ((_%tl3410134724%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3409934717%_)))
                                          (_%hd3410034721%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3409934717%_))))
                                      (if (gx#stx-null? _%tl3410134724%_)
                                          (_%__kont3783837839%_
                                           _%hd3410034721%_)
                                          (_%__match3806238063%_
                                           _%e3404735095%_
                                           _%hd3404835099%_
                                           _%tl3404935102%_))))
                                  (_%__match3806238063%_
                                   _%e3404735095%_
                                   _%hd3404835099%_
                                   _%tl3404935102%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40047_|
                                   _%hd3404835099%_)
                                  (if (gx#stx-pair? _%tl3404935102%_)
                                      (let ((_%e3410834656%_
                                             (gx#syntax-e _%tl3404935102%_)))
                                        (let ((_%tl3411034663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3410834656%_)))
                                              (_%hd3410934660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3410834656%_))))
                                          (if (gx#stx-null? _%tl3411034663%_)
                                              (_%__kont3784237843%_
                                               _%hd3410934660%_)
                                              (_%__kont3784437845%_
                                               _%tl3404935102%_))))
                                      (_%__kont3784437845%_ _%tl3404935102%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40048_|
                                       _%hd3404835099%_)
                                      (_%__kont3784637847%_ _%tl3404935102%_)
                                      (_%__match3806238063%_
                                       _%e3404735095%_
                                       _%hd3404835099%_
                                       _%tl3404935102%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3806238063%_
                                       _%e3404735095%_
                                       _%hd3404835099%_
                                       _%tl3404935102%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3402734700%_))))))))
                 (_%parse-list33660%_
                  (lambda (_%body33840%_)
                    (let* ((_%__stx3815138152%_ _%body33840%_)
                           (_%g3384633875%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3815138152%_))))
                      (let ((_%__kont3815438155%_
                             (lambda (_%g3384833999%_)
                               (_%parse133658%_ _%g3384833999%_)))
                            (_%__kont3815638157%_
                             (lambda (_%g3385633951%_
                                      _%g3385733953%_
                                      _%g3385833954%_)
                               (cons 'splice:
                                     (cons (_%parse133658%_ _%g3385833954%_)
                                           (cons (_%parse-list33660%_
                                                  _%g3385633951%_)
                                                 '())))))
                            (_%__kont3815838159%_
                             (lambda (_%g3386533909%_ _%g3386633911%_)
                               (cons 'cons:
                                     (cons (_%parse133658%_ _%g3386633911%_)
                                           (cons (_%parse-list33660%_
                                                  _%g3386533909%_)
                                                 '())))))
                            (_%__kont3816038161%_
                             (lambda ()
                               (if (gx#stx-null? _%body33840%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body33840%_)
                                       (_%parse-error33665%_ _%body33840%_)
                                       (_%parse133658%_ _%body33840%_))))))
                        (let* ((_%__match3820038201%_
                                (lambda (_%e3386733899%_
                                         _%hd3386833903%_
                                         _%tl3386933906%_)
                                  (let ((_%g3386533909%_ _%tl3386933906%_)
                                        (_%g3386633911%_ _%hd3386833903%_))
                                    (if (gx#ellipsis? _%g3386633911%_)
                                        (_%__kont3816038161%_)
                                        (_%__kont3815838159%_
                                         _%g3386533909%_
                                         _%g3386633911%_)))))
                               (_%__match3819438195%_
                                (lambda (_%e3385933931%_
                                         _%hd3386033935%_
                                         _%tl3386133938%_
                                         _%e3386233941%_
                                         _%hd3386333945%_
                                         _%tl3386433948%_)
                                  (let ((_%g3385633951%_ _%tl3386433948%_)
                                        (_%g3385733953%_ _%hd3386333945%_)
                                        (_%g3385833954%_ _%hd3386033935%_))
                                    (if (gx#ellipsis? _%g3385733953%_)
                                        (_%__kont3815638157%_
                                         _%g3385633951%_
                                         _%g3385733953%_
                                         _%g3385833954%_)
                                        (_%__match3820038201%_
                                         _%e3385933931%_
                                         _%hd3386033935%_
                                         _%tl3386133938%_))))))
                          (if (gx#stx-pair? _%__stx3815138152%_)
                              (let ((_%e3384933975%_
                                     (gx#syntax-e _%__stx3815138152%_)))
                                (let ((_%tl3385133982%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3384933975%_)))
                                      (_%hd3385033979%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3384933975%_))))
                                  (if (gx#stx-datum? _%hd3385033979%_)
                                      (let ((_%e3385233985%_
                                             (gx#stx-e _%hd3385033979%_)))
                                        (if (equal? _%e3385233985%_ '::)
                                            (if (gx#stx-pair? _%tl3385133982%_)
                                                (let ((_%e3385333989%_
                                                       (gx#syntax-e
                                                        _%tl3385133982%_)))
                                                  (let ((_%tl3385533996%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3385333989%_)))
                                                        (_%hd3385433993%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3385333989%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3385533996%_)
                                                        (_%__kont3815438155%_
                                                         _%hd3385433993%_)
                                                        (_%__match3819438195%_
                                                         _%e3384933975%_
                                                         _%hd3385033979%_
                                                         _%tl3385133982%_
                                                         _%e3385333989%_
                                                         _%hd3385433993%_
                                                         _%tl3385533996%_))))
                                                (_%__match3820038201%_
                                                 _%e3384933975%_
                                                 _%hd3385033979%_
                                                 _%tl3385133982%_))
                                            (if (gx#stx-pair? _%tl3385133982%_)
                                                (let ((_%e3386233941%_
                                                       (gx#syntax-e
                                                        _%tl3385133982%_)))
                                                  (let ((_%tl3386433948%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3386233941%_)))
                                                        (_%hd3386333945%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3386233941%_))))
                                                    (_%__match3819438195%_
                                                     _%e3384933975%_
                                                     _%hd3385033979%_
                                                     _%tl3385133982%_
                                                     _%e3386233941%_
                                                     _%hd3386333945%_
                                                     _%tl3386433948%_)))
                                                (_%__match3820038201%_
                                                 _%e3384933975%_
                                                 _%hd3385033979%_
                                                 _%tl3385133982%_))))
                                      (if (gx#stx-pair? _%tl3385133982%_)
                                          (let ((_%e3386233941%_
                                                 (gx#syntax-e
                                                  _%tl3385133982%_)))
                                            (let ((_%tl3386433948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3386233941%_)))
                                                  (_%hd3386333945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3386233941%_))))
                                              (_%__match3819438195%_
                                               _%e3384933975%_
                                               _%hd3385033979%_
                                               _%tl3385133982%_
                                               _%e3386233941%_
                                               _%hd3386333945%_
                                               _%tl3386433948%_)))
                                          (_%__match3820038201%_
                                           _%e3384933975%_
                                           _%hd3385033979%_
                                           _%tl3385133982%_)))))
                              (_%__kont3816038161%_)))))))
                 (_%parse-vector33661%_
                  (lambda (_%body33837%_)
                    (if (_%simple-vector?33662%_ _%body33837%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse133658%_ _%body33837%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list33660%_ _%body33837%_)
                                    '())))))
                 (_%simple-vector?33662%_
                  (lambda (_%body33774%_)
                    (let* ((_%__stx3820338204%_ _%body33774%_)
                           (_%g3377833790%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3820338204%_))))
                      (let ((_%__kont3820638207%_
                             (lambda (_%g3378033818%_ _%g3378133820%_)
                               (if (gx#ellipsis? _%g3378133820%_)
                                   '#f
                                   (_%simple-vector?33662%_ _%g3378033818%_))))
                            (_%__kont3820838209%_
                             (lambda () (gx#stx-null? _%body33774%_))))
                        (if (gx#stx-pair? _%__stx3820338204%_)
                            (let ((_%e3378233808%_
                                   (gx#syntax-e _%__stx3820338204%_)))
                              (let ((_%tl3378433815%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3378233808%_)))
                                    (_%hd3378333812%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3378233808%_))))
                                (_%__kont3820638207%_
                                 _%tl3378433815%_
                                 _%hd3378333812%_)))
                            (_%__kont3820838209%_))))))
                 (_%parse-class-body33663%_
                  (lambda (_%body33683%_)
                    (let _%recur33686%_ ((_%rest33689%_ _%body33683%_))
                      (let* ((_%__stx3821938220%_ _%rest33689%_)
                             (_%g3369333709%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3821938220%_))))
                        (let ((_%__kont3822238223%_
                               (lambda (_%g3369533747%_
                                        _%g3369633749%_
                                        _%g3369733750%_)
                                 (cons _%g3369733750%_
                                       (cons (_%parse133658%_ _%g3369633749%_)
                                             (_%recur33686%_
                                              _%g3369533747%_)))))
                              (_%__kont3822438225%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest33689%_)
                                     '()
                                     (_%parse-error33665%_ _%rest33689%_)))))
                          (let ((_%__match3823838239%_
                                 (lambda (_%e3369833727%_
                                          _%hd3369933731%_
                                          _%tl3370033734%_
                                          _%e3370133737%_
                                          _%hd3370233741%_
                                          _%tl3370333744%_)
                                   (let ((_%g3369533747%_ _%tl3370333744%_)
                                         (_%g3369633749%_ _%hd3370233741%_)
                                         (_%g3369733750%_ _%hd3369933731%_))
                                     (if (gx#stx-keyword? _%g3369733750%_)
                                         (_%__kont3822238223%_
                                          _%g3369533747%_
                                          _%g3369633749%_
                                          _%g3369733750%_)
                                         (_%__kont3822438225%_))))))
                            (if (gx#stx-pair? _%__stx3821938220%_)
                                (let ((_%e3369833727%_
                                       (gx#syntax-e _%__stx3821938220%_)))
                                  (let ((_%tl3370033734%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3369833727%_)))
                                        (_%hd3369933731%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3369833727%_))))
                                    (if (gx#stx-pair? _%tl3370033734%_)
                                        (let ((_%e3370133737%_
                                               (gx#syntax-e _%tl3370033734%_)))
                                          (let ((_%tl3370333744%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3370133737%_)))
                                                (_%hd3370233741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3370133737%_))))
                                            (_%__match3823838239%_
                                             _%e3369833727%_
                                             _%hd3369933731%_
                                             _%tl3370033734%_
                                             _%e3370133737%_
                                             _%hd3370233741%_
                                             _%tl3370333744%_)))
                                        (_%__kont3822438225%_))))
                                (_%__kont3822438225%_))))))))
                 (_%parse-qq33664%_
                  (lambda (_%hd33670%_)
                    (let ((_%g3367233679%_
                           (lambda (_%g3367333675%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3367333675%_))))
                      (_%g3367233679%_ _%hd33670%_))))
                 (_%parse-error33665%_
                  (lambda (_%hd33667%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx33656%_
                               (cons _%match-stx33656%_
                                     (cons _%stx33654%_
                                           (cons _%hd33667%_ '())))
                               (cons _%stx33654%_ (cons _%hd33667%_ '())))))))
          (_%parse133658%_ _%stx33654%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35342%_)
        (let ((_%match-stx35345%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35342%_
           _%match-stx35345%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g40049_
        (let ((_g40050_ (let () (declare (not safe)) (##length _g40049_))))
          (cond ((let () (declare (not safe)) (##fx= _g40050_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g40049_))
                ((let () (declare (not safe)) (##fx= _g40050_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g40049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g40049_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx33639%_)
        (let ((__tmp40051
               (lambda (_%E33642%_)
                 (with-exception-handler
                  (let ((_%E!33645%_ (current-exception-handler)))
                    (lambda (_%e33648%_)
                      (if (syntax-error? _%e33648%_)
                          (_%E33642%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!33645%_ _%e33648%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx33639%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp40051))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32374%_)
        (letrec ((_%loop32377%_
                  (lambda (_%ptree32664%_ _%vars32666%_ _%K32667%_)
                    (let* ((_%__stx3833738338%_ _%ptree32664%_)
                           (_%g3268032790%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3833738338%_))))
                      (let ((_%__kont3834038341%_
                             (lambda (_%g3268233420%_)
                               (let* ((_%__stx3825738258%_ _%g3268233420%_)
                                      (_%g3343733471%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3825738258%_))))
                                 (let ((_%__kont3826038261%_
                                        (lambda (_%g3343933620%_)
                                          (_%loop32377%_
                                           _%g3343933620%_
                                           _%vars32666%_
                                           _%K32667%_)))
                                       (_%__kont3826238263%_
                                        (lambda (_%g3344333589%_)
                                          (_%loop32377%_
                                           _%g3344333589%_
                                           _%vars32666%_
                                           _%K32667%_)))
                                       (_%__kont3826438265%_
                                        (lambda (_%g3345133537%_)
                                          (_%loop32377%_
                                           _%g3345133537%_
                                           _%vars32666%_
                                           _%K32667%_)))
                                       (_%__kont3826638267%_
                                        (lambda ()
                                          (_%K32667%_ _%vars32666%_))))
                                   (if (gx#stx-pair? _%__stx3825738258%_)
                                       (let ((_%e3344033610%_
                                              (gx#syntax-e
                                               _%__stx3825738258%_)))
                                         (let ((_%tl3344233617%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3344033610%_)))
                                               (_%hd3344133614%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3344033610%_))))
                                           (if (gx#stx-null? _%tl3344233617%_)
                                               (_%__kont3826038261%_
                                                _%hd3344133614%_)
                                               (if (gx#stx-datum?
                                                    _%hd3344133614%_)
                                                   (let ((_%e3344733575%_
                                                          (gx#stx-e
                                                           _%hd3344133614%_)))
                                                     (if (equal? _%e3344733575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3344233617%_)
                     (let ((_%e3344833579%_ (gx#syntax-e _%tl3344233617%_)))
                       (let ((_%tl3345033586%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3344833579%_)))
                             (_%hd3344933583%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3344833579%_))))
                         (if (gx#stx-null? _%tl3345033586%_)
                             (_%__kont3826238263%_ _%hd3344933583%_)
                             (_%__kont3826638267%_))))
                     (_%__kont3826638267%_))
                 (if (equal? _%e3344733575%_ '::)
                     (if (gx#stx-pair? _%tl3344233617%_)
                         (let ((_%e3345633503%_
                                (gx#syntax-e _%tl3344233617%_)))
                           (let ((_%tl3345833510%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3345633503%_)))
                                 (_%hd3345733507%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3345633503%_))))
                             (if (gx#stx-pair? _%tl3345833510%_)
                                 (let ((_%e3345933513%_
                                        (gx#syntax-e _%tl3345833510%_)))
                                   (let ((_%tl3346133520%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3345933513%_)))
                                         (_%hd3346033517%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3345933513%_))))
                                     (if (gx#stx-datum? _%hd3346033517%_)
                                         (let ((_%e3346233523%_
                                                (gx#stx-e _%hd3346033517%_)))
                                           (if (equal? _%e3346233523%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3346133520%_)
                                                   (let ((_%e3346333527%_
                                                          (gx#syntax-e
                                                           _%tl3346133520%_)))
                                                     (let ((_%tl3346533534%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3346333527%_)))
                                                           (_%hd3346433531%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3346333527%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3346533534%_)
                                                           (_%__kont3826438265%_
                                                            _%hd3346433531%_)
                                                           (_%__kont3826638267%_))))
                                                   (_%__kont3826638267%_))
                                               (_%__kont3826638267%_)))
                                         (_%__kont3826638267%_))))
                                 (_%__kont3826638267%_))))
                         (_%__kont3826638267%_))
                     (_%__kont3826638267%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3826638267%_)))))
                                       (_%__kont3826638267%_))))))
                            (_%__kont3834238343%_
                             (lambda (_%g3269033307%_ _%g3269133309%_)
                               (let* ((_%__stx3824138242%_ _%g3269033307%_)
                                      (_%g3332533337%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3824138242%_))))
                                 (let ((_%__kont3824438245%_
                                        (lambda (_%g3332733365%_
                                                 _%g3332833367%_)
                                          (_%loop32377%_
                                           _%g3332833367%_
                                           _%vars32666%_
                                           (lambda (_%g3337933381%_)
                                             (_%loop32377%_
                                              (cons _%g3269133309%_
                                                    _%g3332733365%_)
                                              _%g3337933381%_
                                              _%K32667%_)))))
                                       (_%__kont3824638247%_
                                        (lambda ()
                                          (_%K32667%_ _%vars32666%_))))
                                   (if (gx#stx-pair? _%__stx3824138242%_)
                                       (let ((_%e3332933355%_
                                              (gx#syntax-e
                                               _%__stx3824138242%_)))
                                         (let ((_%tl3333133362%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3332933355%_)))
                                               (_%hd3333033359%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3332933355%_))))
                                           (_%__kont3824438245%_
                                            _%tl3333133362%_
                                            _%hd3333033359%_)))
                                       (_%__kont3824638247%_))))))
                            (_%__kont3834438345%_
                             (lambda (_%g3269533276%_)
                               (_%loop32377%_
                                _%g3269533276%_
                                _%vars32666%_
                                _%K32667%_)))
                            (_%__kont3834638347%_
                             (lambda (_%g3270333222%_ _%g3270433224%_)
                               (_%loop32377%_
                                _%g3270433224%_
                                _%vars32666%_
                                (lambda (_%g3323933241%_)
                                  (_%loop32377%_
                                   _%g3270333222%_
                                   _%g3323933241%_
                                   _%K32667%_)))))
                            (_%__kont3834838349%_
                             (lambda (_%g3271533158%_ _%g3271633160%_)
                               (_%loop32377%_
                                _%g3271633160%_
                                _%vars32666%_
                                (lambda (_%g3317533177%_)
                                  (_%loop32377%_
                                   _%g3271533158%_
                                   _%g3317533177%_
                                   _%K32667%_)))))
                            (_%__kont3835038351%_
                             (lambda (_%g3272733103%_)
                               (_%loop32377%_
                                _%g3272733103%_
                                _%vars32666%_
                                _%K32667%_)))
                            (_%__kont3835238353%_
                             (lambda (_%g3273533053%_ _%g3273633055%_)
                               (_%loop-vector32379%_
                                _%g3273533053%_
                                _%vars32666%_
                                _%K32667%_)))
                            (_%__kont3835438355%_
                             (lambda (_%g3274333010%_)
                               (_%loop-vector32379%_
                                _%g3274333010%_
                                _%vars32666%_
                                _%K32667%_)))
                            (_%__kont3835638357%_
                             (lambda (_%g3275432953%_)
                               (_%loop-class-list32381%_
                                _%g3275432953%_
                                _%vars32666%_
                                _%K32667%_)))
                            (_%__kont3835838359%_
                             (lambda (_%g3276532894%_ _%g3276632896%_)
                               (_%loop32377%_
                                _%g3276532894%_
                                _%vars32666%_
                                _%K32667%_)))
                            (_%__kont3836038361%_
                             (lambda (_%g3277732832%_)
                               (if (find (lambda (_%g3284732849%_)
                                           (gx#bound-identifier=?
                                            _%g3284732849%_
                                            _%g3277732832%_))
                                         _%vars32666%_)
                                   (_%K32667%_ _%vars32666%_)
                                   (_%K32667%_
                                    (cons _%g3277732832%_ _%vars32666%_)))))
                            (_%__kont3836238363%_
                             (lambda () (_%K32667%_ _%vars32666%_))))
                        (let* ((_%__match3849438495%_
                                (lambda (_%e3273733033%_
                                         _%hd3273833037%_
                                         _%tl3273933040%_
                                         _%e3274033043%_
                                         _%hd3274133047%_
                                         _%tl3274233050%_)
                                  (let ((_%g3273533053%_ _%hd3274133047%_)
                                        (_%g3273633055%_ _%hd3273833037%_))
                                    (if (or (gx#stx-eq?
                                             'values:
                                             _%g3273633055%_)
                                            (gx#stx-eq?
                                             'vector:
                                             _%g3273633055%_))
                                        (_%__kont3835238353%_
                                         _%g3273533053%_
                                         _%g3273633055%_)
                                        (if (gx#stx-datum? _%hd3273833037%_)
                                            (let ((_%e3274732986%_
                                                   (gx#stx-e
                                                    _%hd3273833037%_)))
                                              (if (equal? _%e3274732986%_
                                                          'struct:)
                                                  (_%__kont3836238363%_)
                                                  (if (equal? _%e3274732986%_
                                                              'class:)
                                                      (_%__kont3836238363%_)
                                                      (if (equal? _%e3274732986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3836238363%_)
                  (if (equal? _%e3274732986%_ 'var:)
                      (_%__kont3836038361%_ _%hd3274133047%_)
                      (_%__kont3836238363%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3836238363%_))))))
                               (_%__match3838838389%_
                                (lambda (_%e3269233297%_
                                         _%hd3269333301%_
                                         _%tl3269433304%_)
                                  (let ((_%g3269033307%_ _%tl3269433304%_)
                                        (_%g3269133309%_ _%hd3269333301%_))
                                    (if (or (gx#stx-eq? 'and: _%g3269133309%_)
                                            (gx#stx-eq? 'or: _%g3269133309%_))
                                        (_%__kont3834238343%_
                                         _%g3269033307%_
                                         _%g3269133309%_)
                                        (if (gx#stx-datum? _%hd3269333301%_)
                                            (let ((_%e3269933262%_
                                                   (gx#stx-e
                                                    _%hd3269333301%_)))
                                              (if (equal? _%e3269933262%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3269433304%_)
                                                      (let ((_%e3270033266%_
                                                             (gx#syntax-e
                                                              _%tl3269433304%_)))
                                                        (let ((_%tl3270233273%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3270033266%_)))
                      (_%hd3270133270%_
                       (let () (declare (not safe)) (##car _%e3270033266%_))))
                  (if (gx#stx-null? _%tl3270233273%_)
                      (_%__kont3834438345%_ _%hd3270133270%_)
                      (_%__kont3836238363%_))))
              (_%__kont3836238363%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3269933262%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3269433304%_)
                                                          (let ((_%e3270933202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3269433304%_)))
                    (let ((_%tl3271133209%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3270933202%_)))
                          (_%hd3271033206%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3270933202%_))))
                      (if (gx#stx-pair? _%tl3271133209%_)
                          (let ((_%e3271233212%_
                                 (gx#syntax-e _%tl3271133209%_)))
                            (let ((_%tl3271433219%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3271233212%_)))
                                  (_%hd3271333216%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3271233212%_))))
                              (if (gx#stx-null? _%tl3271433219%_)
                                  (_%__kont3834638347%_
                                   _%hd3271333216%_
                                   _%hd3271033206%_)
                                  (_%__kont3836238363%_))))
                          (if (gx#stx-null? _%tl3271133209%_)
                              (_%__match3849438495%_
                               _%e3269233297%_
                               _%hd3269333301%_
                               _%tl3269433304%_
                               _%e3270933202%_
                               _%hd3271033206%_
                               _%tl3271133209%_)
                              (_%__kont3836238363%_)))))
                  (_%__kont3836238363%_))
              (if (equal? _%e3269933262%_ 'splice:)
                  (if (gx#stx-pair? _%tl3269433304%_)
                      (let ((_%e3272133138%_ (gx#syntax-e _%tl3269433304%_)))
                        (let ((_%tl3272333145%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3272133138%_)))
                              (_%hd3272233142%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3272133138%_))))
                          (if (gx#stx-pair? _%tl3272333145%_)
                              (let ((_%e3272433148%_
                                     (gx#syntax-e _%tl3272333145%_)))
                                (let ((_%tl3272633155%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3272433148%_)))
                                      (_%hd3272533152%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3272433148%_))))
                                  (if (gx#stx-null? _%tl3272633155%_)
                                      (_%__kont3834838349%_
                                       _%hd3272533152%_
                                       _%hd3272233142%_)
                                      (_%__kont3836238363%_))))
                              (if (gx#stx-null? _%tl3272333145%_)
                                  (_%__match3849438495%_
                                   _%e3269233297%_
                                   _%hd3269333301%_
                                   _%tl3269433304%_
                                   _%e3272133138%_
                                   _%hd3272233142%_
                                   _%tl3272333145%_)
                                  (_%__kont3836238363%_)))))
                      (_%__kont3836238363%_))
                  (if (equal? _%e3269933262%_ 'box:)
                      (if (gx#stx-pair? _%tl3269433304%_)
                          (let ((_%e3273233093%_
                                 (gx#syntax-e _%tl3269433304%_)))
                            (let ((_%tl3273433100%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3273233093%_)))
                                  (_%hd3273333097%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3273233093%_))))
                              (if (gx#stx-null? _%tl3273433100%_)
                                  (_%__kont3835038351%_ _%hd3273333097%_)
                                  (_%__kont3836238363%_))))
                          (_%__kont3836238363%_))
                      (if (gx#stx-pair? _%tl3269433304%_)
                          (let ((_%e3274033043%_
                                 (gx#syntax-e _%tl3269433304%_)))
                            (let ((_%tl3274233050%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3274033043%_)))
                                  (_%hd3274133047%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3274033043%_))))
                              (if (gx#stx-null? _%tl3274233050%_)
                                  (_%__match3849438495%_
                                   _%e3269233297%_
                                   _%hd3269333301%_
                                   _%tl3269433304%_
                                   _%e3274033043%_
                                   _%hd3274133047%_
                                   _%tl3274233050%_)
                                  (if (equal? _%e3269933262%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3274233050%_)
                                          (let ((_%e3275133000%_
                                                 (gx#syntax-e
                                                  _%tl3274233050%_)))
                                            (let ((_%tl3275333007%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3275133000%_)))
                                                  (_%hd3275233004%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3275133000%_))))
                                              (if (gx#stx-null?
                                                   _%tl3275333007%_)
                                                  (_%__kont3835438355%_
                                                   _%hd3275233004%_)
                                                  (_%__kont3836238363%_))))
                                          (_%__kont3836238363%_))
                                      (if (equal? _%e3269933262%_ 'class:)
                                          (if (gx#stx-pair? _%tl3274233050%_)
                                              (let ((_%e3276232943%_
                                                     (gx#syntax-e
                                                      _%tl3274233050%_)))
                                                (let ((_%tl3276432950%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3276232943%_)))
                                                      (_%hd3276332947%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3276232943%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3276432950%_)
                                                      (_%__kont3835638357%_
                                                       _%hd3276332947%_)
                                                      (_%__kont3836238363%_))))
                                              (_%__kont3836238363%_))
                                          (if (equal? _%e3269933262%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3274233050%_)
                                                  (let ((_%e3277432884%_
                                                         (gx#syntax-e
                                                          _%tl3274233050%_)))
                                                    (let ((_%tl3277632891%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3277432884%_)))
                                                          (_%hd3277532888%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3277432884%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3277632891%_)
                                                          (_%__kont3835838359%_
                                                           _%hd3277532888%_
                                                           _%hd3274133047%_)
                                                          (_%__kont3836238363%_))))
                                                  (_%__kont3836238363%_))
                                              (_%__kont3836238363%_)))))))
                          (_%__kont3836238363%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3269433304%_)
                                                (let ((_%e3274033043%_
                                                       (gx#syntax-e
                                                        _%tl3269433304%_)))
                                                  (let ((_%tl3274233050%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3274033043%_)))
                                                        (_%hd3274133047%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3274033043%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3274233050%_)
                                                        (_%__match3849438495%_
                                                         _%e3269233297%_
                                                         _%hd3269333301%_
                                                         _%tl3269433304%_
                                                         _%e3274033043%_
                                                         _%hd3274133047%_
                                                         _%tl3274233050%_)
                                                        (_%__kont3836238363%_))))
                                                (_%__kont3836238363%_))))))))
                          (if (gx#stx-pair? _%__stx3833738338%_)
                              (let ((_%e3268333396%_
                                     (gx#syntax-e _%__stx3833738338%_)))
                                (let ((_%tl3268533403%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3268333396%_)))
                                      (_%hd3268433400%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3268333396%_))))
                                  (if (gx#stx-datum? _%hd3268433400%_)
                                      (let ((_%e3268633406%_
                                             (gx#stx-e _%hd3268433400%_)))
                                        (if (equal? _%e3268633406%_ '?:)
                                            (if (gx#stx-pair? _%tl3268533403%_)
                                                (let ((_%e3268733410%_
                                                       (gx#syntax-e
                                                        _%tl3268533403%_)))
                                                  (let ((_%tl3268933417%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3268733410%_)))
                                                        (_%hd3268833414%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3268733410%_))))
                                                    (_%__kont3834038341%_
                                                     _%tl3268933417%_)))
                                                (_%__match3838838389%_
                                                 _%e3268333396%_
                                                 _%hd3268433400%_
                                                 _%tl3268533403%_))
                                            (_%__match3838838389%_
                                             _%e3268333396%_
                                             _%hd3268433400%_
                                             _%tl3268533403%_)))
                                      (_%__match3838838389%_
                                       _%e3268333396%_
                                       _%hd3268433400%_
                                       _%tl3268533403%_))))
                              (_%__kont3836238363%_)))))))
                 (_%loop-vector32379%_
                  (lambda (_%body32540%_ _%vars32542%_ _%K32543%_)
                    (let* ((_%__stx3859538596%_ _%body32540%_)
                           (_%g3254632569%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3859538596%_))))
                      (let ((_%__kont3859838599%_
                             (lambda (_%g3254832646%_)
                               (_%loop-list32380%_
                                _%g3254832646%_
                                _%vars32542%_
                                _%K32543%_)))
                            (_%__kont3860038601%_
                             (lambda (_%g3255632600%_)
                               (_%loop32377%_
                                _%g3255632600%_
                                _%vars32542%_
                                _%K32543%_))))
                        (if (gx#stx-pair? _%__stx3859538596%_)
                            (let ((_%e3254932622%_
                                   (gx#syntax-e _%__stx3859538596%_)))
                              (let ((_%tl3255132629%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3254932622%_)))
                                    (_%hd3255032626%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3254932622%_))))
                                (if (gx#stx-datum? _%hd3255032626%_)
                                    (let ((_%e3255232632%_
                                           (gx#stx-e _%hd3255032626%_)))
                                      (if (equal? _%e3255232632%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3255132629%_)
                                              (let ((_%e3255332636%_
                                                     (gx#syntax-e
                                                      _%tl3255132629%_)))
                                                (let ((_%tl3255532643%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3255332636%_)))
                                                      (_%hd3255432640%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3255332636%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3255532643%_)
                                                      (_%__kont3859838599%_
                                                       _%hd3255432640%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3254632569%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3254632569%_)))
                                          (if (equal? _%e3255232632%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3255132629%_)
                                                  (let ((_%e3256132590%_
                                                         (gx#syntax-e
                                                          _%tl3255132629%_)))
                                                    (let ((_%tl3256332597%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3256132590%_)))
                                                          (_%hd3256232594%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3256132590%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3256332597%_)
                                                          (_%__kont3860038601%_
                                                           _%hd3256232594%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3254632569%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3254632569%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3254632569%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3254632569%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3254632569%_)))))))
                 (_%loop-list32380%_
                  (lambda (_%rest32470%_ _%vars32472%_ _%K32473%_)
                    (let* ((_%__stx3864538646%_ _%rest32470%_)
                           (_%g3247632488%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3864538646%_))))
                      (let ((_%__kont3864838649%_
                             (lambda (_%g3247832516%_ _%g3247932518%_)
                               (_%loop32377%_
                                _%g3247932518%_
                                _%vars32472%_
                                (lambda (_%g3253032532%_)
                                  (_%loop-list32380%_
                                   _%g3247832516%_
                                   _%g3253032532%_
                                   _%K32473%_)))))
                            (_%__kont3865038651%_
                             (lambda () (_%K32473%_ _%vars32472%_))))
                        (if (gx#stx-pair? _%__stx3864538646%_)
                            (let ((_%e3248032506%_
                                   (gx#syntax-e _%__stx3864538646%_)))
                              (let ((_%tl3248232513%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3248032506%_)))
                                    (_%hd3248132510%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3248032506%_))))
                                (_%__kont3864838649%_
                                 _%tl3248232513%_
                                 _%hd3248132510%_)))
                            (_%__kont3865038651%_))))))
                 (_%loop-class-list32381%_
                  (lambda (_%rest32383%_ _%vars32385%_ _%K32386%_)
                    (let* ((_%__stx3866138662%_ _%rest32383%_)
                           (_%g3238932404%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3866138662%_))))
                      (let ((_%__kont3866438665%_
                             (lambda (_%g3239132442%_ _%g3239232444%_)
                               (_%loop32377%_
                                _%g3239232444%_
                                _%vars32385%_
                                (lambda (_%g3246032462%_)
                                  (_%loop-class-list32381%_
                                   _%g3239132442%_
                                   _%g3246032462%_
                                   _%K32386%_)))))
                            (_%__kont3866638667%_
                             (lambda () (_%K32386%_ _%vars32385%_))))
                        (if (gx#stx-pair? _%__stx3866138662%_)
                            (let ((_%e3239332422%_
                                   (gx#syntax-e _%__stx3866138662%_)))
                              (let ((_%tl3239532429%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3239332422%_)))
                                    (_%hd3239432426%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3239332422%_))))
                                (if (gx#stx-pair? _%tl3239532429%_)
                                    (let ((_%e3239632432%_
                                           (gx#syntax-e _%tl3239532429%_)))
                                      (let ((_%tl3239832439%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3239632432%_)))
                                            (_%hd3239732436%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3239632432%_))))
                                        (_%__kont3866438665%_
                                         _%tl3239832439%_
                                         _%hd3239732436%_)))
                                    (_%__kont3866638667%_))))
                            (_%__kont3866638667%_)))))))
          (_%loop32377%_ _%ptree32374%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29306%_ _%tgt29308%_ _%ptree29309%_ _%K29310%_ _%E29311%_)
        (letrec ((_%generate129313%_
                  (lambda (_%tgt30573%_ _%ptree30575%_ _%K30576%_ _%E30577%_)
                    (let* ((_%g3057930587%_
                            (lambda (_%g3058030583%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3058030583%_)))
                           (_%g3057832370%_
                            (lambda (_%g3058030591%_)
                              ((lambda (_%g3058130594%_)
                                 (let* ((_%__stx3889738898%_ _%ptree30575%_)
                                        (_%g3062130763%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3889738898%_))))
                                   (let ((_%__kont3890038901%_
                                          (lambda (_%g3062332085%_
                                                   _%g3062432087%_)
                                            (let* ((_%__stx3881538816%_
                                                    _%g3062332085%_)
                                                   (_%g3210432139%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3881538816%_))))
                                              (let ((_%__kont3881838819%_
                                                     (lambda ()
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%g3062432087%_
                                       (cons _%g3058130594%_ '())))
                           (cons _%K30576%_ (cons _%E30577%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3882038821%_
                                                     (lambda (_%g3210632340%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%g3062432087%_
                                       (cons _%g3058130594%_ '())))
                           (cons (_%generate129313%_
                                  _%tgt30573%_
                                  _%g3210632340%_
                                  _%K30576%_
                                  _%E30577%_)
                                 (cons _%E30577%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3882238823%_
                                                     (lambda (_%g3211032278%_)
                                                       (let* ((_%g3229232300%_
                                                               (lambda (_%g3229332296%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3229332296%_)))
                      (_%g3229132319%_
                       (lambda (_%g3229332304%_)
                         ((lambda (_%g3229432307%_)
                            (cons 'let
                                  (cons (cons (cons _%g3229432307%_
                                                    (cons (cons _%g3062432087%_
                                                                (cons _%g3058130594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons 'if
                                                    (cons _%g3229432307%_
                                                          (cons (_%generate129313%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3229432307%_
                         _%g3211032278%_
                         _%K30576%_
                         _%E30577%_)
                        (cons _%E30577%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _%g3229332304%_))))
                 (_%g3229132319%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3882438825%_
                                                     (lambda (_%g3211832194%_
                                                              _%g3211932196%_)
                                                       (let* ((_%g3221632224%_
                                                               (lambda (_%g3221732220%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3221732220%_)))
                      (_%g3221532243%_
                       (lambda (_%g3221732228%_)
                         ((lambda (_%g3221832231%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '?)
                                              (cons _%g3062432087%_
                                                    (cons _%g3058130594%_
                                                          '())))
                                        (cons (cons 'let
                                                    (cons (cons (cons _%g3221832231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons _%g3211932196%_
                                          (cons _%g3058130594%_ '()))
                                    '()))
                        '())
                  (cons (_%generate129313%_
                         _%g3221832231%_
                         _%g3211832194%_
                         _%K30576%_
                         _%E30577%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30577%_ '())))))
                          _%g3221732228%_))))
                 (_%g3221532243%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%g3210132351%_
                                                       (lambda ()
                                                         (if (gx#stx-pair?
                                                              _%__stx3881538816%_)
                                                             (let ((_%e3210732330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%__stx3881538816%_)))
                       (let ((_%tl3210932337%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3210732330%_)))
                             (_%hd3210832334%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3210732330%_))))
                         (if (gx#stx-null? _%tl3210932337%_)
                             (_%__kont3882038821%_ _%hd3210832334%_)
                             (if (gx#stx-datum? _%hd3210832334%_)
                                 (let ((_%e3211432264%_
                                        (gx#stx-e _%hd3210832334%_)))
                                   (if (equal? _%e3211432264%_ '=>:)
                                       (if (gx#stx-pair? _%tl3210932337%_)
                                           (let ((_%e3211532268%_
                                                  (gx#syntax-e
                                                   _%tl3210932337%_)))
                                             (let ((_%tl3211732275%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3211532268%_)))
                                                   (_%hd3211632272%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3211532268%_))))
                                               (if (gx#stx-null?
                                                    _%tl3211732275%_)
                                                   (_%__kont3882238823%_
                                                    _%hd3211632272%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3210432139%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3210432139%_)))
                                       (if (equal? _%e3211432264%_ '::)
                                           (if (gx#stx-pair? _%tl3210932337%_)
                                               (let ((_%e3212432160%_
                                                      (gx#syntax-e
                                                       _%tl3210932337%_)))
                                                 (let ((_%tl3212632167%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3212432160%_)))
                                                       (_%hd3212532164%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3212432160%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3212632167%_)
                                                       (let ((_%e3212732170%_
                                                              (gx#syntax-e
                                                               _%tl3212632167%_)))
                                                         (let ((_%tl3212932177%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3212732170%_)))
                       (_%hd3212832174%_
                        (let () (declare (not safe)) (##car _%e3212732170%_))))
                   (if (gx#stx-datum? _%hd3212832174%_)
                       (let ((_%e3213032180%_ (gx#stx-e _%hd3212832174%_)))
                         (if (equal? _%e3213032180%_ '=>:)
                             (if (gx#stx-pair? _%tl3212932177%_)
                                 (let ((_%e3213132184%_
                                        (gx#syntax-e _%tl3212932177%_)))
                                   (let ((_%tl3213332191%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3213132184%_)))
                                         (_%hd3213232188%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3213132184%_))))
                                     (if (gx#stx-null? _%tl3213332191%_)
                                         (_%__kont3882438825%_
                                          _%hd3213232188%_
                                          _%hd3212532164%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3210432139%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3210432139%_)))
                             (let () (declare (not safe)) (_%g3210432139%_))))
                       (let () (declare (not safe)) (_%g3210432139%_)))))
               (let () (declare (not safe)) (_%g3210432139%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3210432139%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3210432139%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3210432139%_))))))
                     (let () (declare (not safe)) (_%g3210432139%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%__stx3881538816%_)
                                                      (_%__kont3881838819%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3210132351%_))))))))
                                         (_%__kont3890238903%_
                                          (lambda (_%g3063231982%_)
                                            (let* ((_%__stx3879938800%_
                                                    _%g3063231982%_)
                                                   (_%g3199532007%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3879938800%_))))
                                              (let ((_%__kont3880238803%_
                                                     (lambda (_%g3199732035%_
                                                              _%g3199832037%_)
                                                       (_%generate129313%_
                                                        _%tgt30573%_
                                                        _%g3199832037%_
                                                        (_%generate129313%_
                                                         _%tgt30573%_
                                                         (cons 'and:
                                                               _%g3199732035%_)
                                                         _%K30576%_
                                                         _%E30577%_)
                                                        _%E30577%_)))
                                                    (_%__kont3880438805%_
                                                     (lambda () _%K30576%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3879938800%_)
                                                    (let ((_%e3199932025%_
                                                           (gx#syntax-e
                                                            _%__stx3879938800%_)))
                                                      (let ((_%tl3200132032%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3199932025%_)))
                    (_%hd3200032029%_
                     (let () (declare (not safe)) (##car _%e3199932025%_))))
                (_%__kont3880238803%_ _%tl3200132032%_ _%hd3200032029%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3880438805%_))))))
                                         (_%__kont3890438905%_
                                          (lambda (_%g3063731889%_)
                                            (let* ((_%__stx3878338784%_
                                                    _%g3063731889%_)
                                                   (_%g3190231914%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3878338784%_))))
                                              (let ((_%__kont3878638787%_
                                                     (lambda (_%g3190431942%_
                                                              _%g3190531944%_)
                                                       (_%generate129313%_
                                                        _%tgt30573%_
                                                        _%g3190531944%_
                                                        _%K30576%_
                                                        (_%generate129313%_
                                                         _%tgt30573%_
                                                         (cons 'or:
                                                               _%g3190431942%_)
                                                         _%K30576%_
                                                         _%E30577%_))))
                                                    (_%__kont3878838789%_
                                                     (lambda () _%E30577%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3878338784%_)
                                                    (let ((_%e3190631932%_
                                                           (gx#syntax-e
                                                            _%__stx3878338784%_)))
                                                      (let ((_%tl3190831939%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3190631932%_)))
                    (_%hd3190731936%_
                     (let () (declare (not safe)) (##car _%e3190631932%_))))
                (_%__kont3878638787%_ _%tl3190831939%_ _%hd3190731936%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3878838789%_))))))
                                         (_%__kont3890638907%_
                                          (lambda (_%g3064231854%_)
                                            (_%generate129313%_
                                             _%tgt30573%_
                                             _%g3064231854%_
                                             _%E30577%_
                                             _%K30576%_)))
                                         (_%__kont3890838909%_
                                          (lambda (_%g3065031728%_
                                                   _%g3065131730%_)
                                            (let* ((_%g3174731762%_
                                                    (lambda (_%g3174831758%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3174831758%_)))
                                                   (_%g3174631819%_
                                                    (lambda (_%g3174831766%_)
                                                      (if (gx#stx-pair?
                                                           _%g3174831766%_)
                                                          (let ((_%e3175131769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%g3174831766%_)))
                    (let ((_%hd3175231773%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3175131769%_)))
                          (_%tl3175331776%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3175131769%_))))
                      (if (gx#stx-pair? _%tl3175331776%_)
                          (let ((_%e3175431779%_
                                 (gx#syntax-e _%tl3175331776%_)))
                            (let ((_%hd3175531783%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3175431779%_)))
                                  (_%tl3175631786%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3175431779%_))))
                              (if (gx#stx-null? _%tl3175631786%_)
                                  ((lambda (_%g3174931789%_ _%g3175031791%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'pair?)
                                                       (cons _%g3058130594%_
                                                             '()))
                                                 (cons (let ((_%hd-pat31807%_
                                                              (gx#stx-e
                                                               _%g3065131730%_))
                                                             (_%tl-pat31809%_
                                                              (gx#stx-e
                                                               _%g3065031728%_)))
                                                         (if (and (equal? _%hd-pat31807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat31809%_ '(any:)))
                     _%K30576%_
                     (if (equal? _%tl-pat31809%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%g3175031791%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%g3058130594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate129313%_
                                            _%g3175031791%_
                                            _%g3065131730%_
                                            _%K30576%_
                                            _%E30577%_)
                                           '())))
                         (if (equal? _%hd-pat31807%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%g3174931789%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%g3058130594%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate129313%_
                                                _%g3174931789%_
                                                _%g3065031728%_
                                                _%K30576%_
                                                _%E30577%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%g3175031791%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%g3058130594%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%g3174931789%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%g3058130594%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate129313%_
                                                _%g3175031791%_
                                                _%g3065131730%_
                                                (_%generate129313%_
                                                 _%g3174931789%_
                                                 _%g3065031728%_
                                                 _%K30576%_
                                                 _%E30577%_)
                                                _%E30577%_)
                                               '())))))))
               (cons _%E30577%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd3175531783%_
                                   _%hd3175231773%_)
                                  (_%g3174731762%_ _%g3174831766%_))))
                          (_%g3174731762%_ _%g3174831766%_))))
                  (_%g3174731762%_ _%g3174831766%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3174631819%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl))))))
                                         (_%__kont3891038911%_
                                          (lambda ()
                                            (cons 'if
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'null?)
                                                              (cons _%g3058130594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%K30576%_ (cons _%E30577%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3891238913%_
                                          (lambda (_%g3066631644%_
                                                   _%g3066731646%_)
                                            (_%generate-splice29315%_
                                             _%tgt30573%_
                                             _%g3066731646%_
                                             _%g3066631644%_
                                             _%K30576%_
                                             _%E30577%_)))
                                         (_%__kont3891438915%_
                                          (lambda (_%g3067831558%_)
                                            (let* ((_%g3157231580%_
                                                    (lambda (_%g3157331576%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3157331576%_)))
                                                   (_%g3157131599%_
                                                    (lambda (_%g3157331584%_)
                                                      ((lambda (_%g3157431587%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'box?)
                                   (cons _%g3058130594%_ '()))
                             (cons (cons 'let
                                         (cons (cons (cons _%g3157431587%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##unbox)
                               (cons _%g3058130594%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (_%generate129313%_
                                                      _%g3157431587%_
                                                      _%g3067831558%_
                                                      _%K30576%_
                                                      _%E30577%_)
                                                     '())))
                                   (cons _%E30577%_ '())))))
               _%g3157331584%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3157131599%_
                                               (gx#genident 'e)))))
                                         (_%__kont3891638917%_
                                          (lambda (_%g3068631363%_)
                                            (let* ((_%__stx3873338734%_
                                                    _%g3068631363%_)
                                                   (_%g3137831401%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3873338734%_))))
                                              (let ((_%__kont3873638737%_
                                                     (lambda (_%g3138031478%_)
                                                       (let* ((_%g3149231500%_
                                                               (lambda (_%g3149331496%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3149331496%_)))
                      (_%g3149131519%_
                       (lambda (_%g3149331504%_)
                         ((lambda (_%g3149431507%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'values-count)
                                                          (cons _%g3058130594%_
                                                                '()))
                                                    (cons _%g3149431507%_
                                                          '())))
                                        (cons (_%generate-simple-vector29316%_
                                               _%tgt30573%_
                                               _%g3138031478%_
                                               '0
                                               '##values-ref
                                               _%K30576%_
                                               _%E30577%_)
                                              (cons _%E30577%_ '())))))
                          _%g3149331504%_))))
                 (_%g3149131519%_ (gx#stx-length _%g3138031478%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3873838739%_
                                                     (lambda (_%g3138831432%_)
                                                       (_%generate-list-vector29317%_
                                                        _%tgt30573%_
                                                        _%g3138831432%_
                                                        'values->list
                                                        _%K30576%_
                                                        _%E30577%_))))
                                                (if (gx#stx-pair?
                                                     _%__stx3873338734%_)
                                                    (let ((_%e3138131454%_
                                                           (gx#syntax-e
                                                            _%__stx3873338734%_)))
                                                      (let ((_%tl3138331461%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3138131454%_)))
                    (_%hd3138231458%_
                     (let () (declare (not safe)) (##car _%e3138131454%_))))
                (if (gx#stx-datum? _%hd3138231458%_)
                    (let ((_%e3138431464%_ (gx#stx-e _%hd3138231458%_)))
                      (if (equal? _%e3138431464%_ 'simple:)
                          (if (gx#stx-pair? _%tl3138331461%_)
                              (let ((_%e3138531468%_
                                     (gx#syntax-e _%tl3138331461%_)))
                                (let ((_%tl3138731475%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3138531468%_)))
                                      (_%hd3138631472%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3138531468%_))))
                                  (if (gx#stx-null? _%tl3138731475%_)
                                      (_%__kont3873638737%_ _%hd3138631472%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3137831401%_)))))
                              (let () (declare (not safe)) (_%g3137831401%_)))
                          (if (equal? _%e3138431464%_ 'list:)
                              (if (gx#stx-pair? _%tl3138331461%_)
                                  (let ((_%e3139331422%_
                                         (gx#syntax-e _%tl3138331461%_)))
                                    (let ((_%tl3139531429%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3139331422%_)))
                                          (_%hd3139431426%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3139331422%_))))
                                      (if (gx#stx-null? _%tl3139531429%_)
                                          (_%__kont3873838739%_
                                           _%hd3139431426%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3137831401%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3137831401%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3137831401%_)))))
                    (let () (declare (not safe)) (_%g3137831401%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3137831401%_)))))))
                                         (_%__kont3891838919%_
                                          (lambda (_%g3069431168%_)
                                            (let* ((_%__stx3868338684%_
                                                    _%g3069431168%_)
                                                   (_%g3118331206%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3868338684%_))))
                                              (let ((_%__kont3868638687%_
                                                     (lambda (_%g3118531283%_)
                                                       (let* ((_%g3129731305%_
                                                               (lambda (_%g3129831301%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3129831301%_)))
                      (_%g3129631324%_
                       (lambda (_%g3129831309%_)
                         ((lambda (_%g3129931312%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f 'vector?)
                                              (cons _%g3058130594%_ '()))
                                        (cons (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _%g3058130594%_ '()))
                              (cons _%g3129931312%_ '())))
                  (cons (_%generate-simple-vector29316%_
                         _%tgt30573%_
                         _%g3118531283%_
                         '0
                         '##vector-ref
                         _%K30576%_
                         _%E30577%_)
                        (cons _%E30577%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30577%_ '())))))
                          _%g3129831309%_))))
                 (_%g3129631324%_ (gx#stx-length _%g3118531283%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3868838689%_
                                                     (lambda (_%g3119331237%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'vector?)
                                 (cons _%g3058130594%_ '()))
                           (cons (_%generate-list-vector29317%_
                                  _%tgt30573%_
                                  _%g3119331237%_
                                  'vector->list
                                  _%K30576%_
                                  _%E30577%_)
                                 (cons _%E30577%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx3868338684%_)
                                                    (let ((_%e3118631259%_
                                                           (gx#syntax-e
                                                            _%__stx3868338684%_)))
                                                      (let ((_%tl3118831266%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3118631259%_)))
                    (_%hd3118731263%_
                     (let () (declare (not safe)) (##car _%e3118631259%_))))
                (if (gx#stx-datum? _%hd3118731263%_)
                    (let ((_%e3118931269%_ (gx#stx-e _%hd3118731263%_)))
                      (if (equal? _%e3118931269%_ 'simple:)
                          (if (gx#stx-pair? _%tl3118831266%_)
                              (let ((_%e3119031273%_
                                     (gx#syntax-e _%tl3118831266%_)))
                                (let ((_%tl3119231280%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3119031273%_)))
                                      (_%hd3119131277%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3119031273%_))))
                                  (if (gx#stx-null? _%tl3119231280%_)
                                      (_%__kont3868638687%_ _%hd3119131277%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3118331206%_)))))
                              (let () (declare (not safe)) (_%g3118331206%_)))
                          (if (equal? _%e3118931269%_ 'list:)
                              (if (gx#stx-pair? _%tl3118831266%_)
                                  (let ((_%e3119831227%_
                                         (gx#syntax-e _%tl3118831266%_)))
                                    (let ((_%tl3120031234%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3119831227%_)))
                                          (_%hd3119931231%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3119831227%_))))
                                      (if (gx#stx-null? _%tl3120031234%_)
                                          (_%__kont3868838689%_
                                           _%hd3119931231%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3118331206%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3118331206%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3118331206%_)))))
                    (let () (declare (not safe)) (_%g3118331206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3118331206%_)))))))
                                         (_%__kont3892038921%_
                                          (lambda (_%g3070231119%_
                                                   _%g3070331121%_)
                                            (_%generate-struct29318%_
                                             (gx#stx-e _%g3070331121%_)
                                             _%tgt30573%_
                                             _%g3070231119%_
                                             _%K30576%_
                                             _%E30577%_)))
                                         (_%__kont3892238923%_
                                          (lambda (_%g3071431060%_
                                                   _%g3071531062%_)
                                            (_%generate-class29321%_
                                             (gx#stx-e _%g3071531062%_)
                                             _%tgt30573%_
                                             _%g3071431060%_
                                             _%K30576%_
                                             _%E30577%_)))
                                         (_%__kont3892438925%_
                                          (lambda (_%g3072630957%_)
                                            (let* ((_%g3097130979%_
                                                    (lambda (_%g3097230975%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3097230975%_)))
                                                   (_%g3097030998%_
                                                    (lambda (_%g3097230983%_)
                                                      ((lambda (_%g3097330986%_)
                                                         (cons 'if
                                                               (cons (cons _%g3097330986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%g3058130594%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g3072630957%_
                                                           '()))
                                               '())))
                             (cons _%K30576%_ (cons _%E30577%_ '())))))
               _%g3097230983%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3097030998%_
                                               (let ((_%e31002%_
                                                      (gx#stx-e
                                                       _%g3072630957%_)))
                                                 (if (or (symbol? _%e31002%_)
                                                         (keyword? _%e31002%_)
                                                         (immediate?
                                                          _%e31002%_))
                                                     '##eq?
                                                     (if (number? _%e31002%_)
                                                         'eqv?
                                                         'equal?)))))))
                                         (_%__kont3892638927%_
                                          (lambda (_%g3073430877%_
                                                   _%g3073530879%_)
                                            (let* ((_%g3089530903%_
                                                    (lambda (_%g3089630899%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3089630899%_)))
                                                   (_%g3089430922%_
                                                    (lambda (_%g3089630907%_)
                                                      ((lambda (_%g3089730910%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%g3089730910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%g3073530879%_
                                                     (cons _%g3058130594%_
                                                           '()))
                                               '()))
                                   '())
                             (cons (_%generate129313%_
                                    _%g3089730910%_
                                    _%g3073430877%_
                                    _%K30576%_
                                    _%E30577%_)
                                   '()))))
               _%g3089630907%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3089430922%_
                                               (gx#genident 'e)))))
                                         (_%__kont3892838929%_
                                          (lambda (_%g3074630819%_)
                                            (cons 'let
                                                  (cons (cons (cons _%g3074630819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g3058130594%_ '()))
                      '())
                (cons _%K30576%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3893038931%_
                                          (lambda () _%K30576%_)))
                                     (if (gx#stx-pair? _%__stx3889738898%_)
                                         (let ((_%e3062532061%_
                                                (gx#syntax-e
                                                 _%__stx3889738898%_)))
                                           (let ((_%tl3062732068%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e3062532061%_)))
                                                 (_%hd3062632065%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e3062532061%_))))
                                             (if (gx#stx-datum?
                                                  _%hd3062632065%_)
                                                 (let ((_%e3062832071%_
                                                        (gx#stx-e
                                                         _%hd3062632065%_)))
                                                   (if (equal? _%e3062832071%_
                                                               '?:)
                                                       (if (gx#stx-pair?
                                                            _%tl3062732068%_)
                                                           (let ((_%e3062932075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3062732068%_)))
                     (let ((_%tl3063132082%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3062932075%_)))
                           (_%hd3063032079%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3062932075%_))))
                       (_%__kont3890038901%_
                        _%tl3063132082%_
                        _%hd3063032079%_)))
                   (let () (declare (not safe)) (_%g3062130763%_)))
               (if (equal? _%e3062832071%_ 'and:)
                   (_%__kont3890238903%_ _%tl3062732068%_)
                   (if (equal? _%e3062832071%_ 'or:)
                       (_%__kont3890438905%_ _%tl3062732068%_)
                       (if (equal? _%e3062832071%_ 'not:)
                           (if (gx#stx-pair? _%tl3062732068%_)
                               (let ((_%e3064731844%_
                                      (gx#syntax-e _%tl3062732068%_)))
                                 (let ((_%tl3064931851%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3064731844%_)))
                                       (_%hd3064831848%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3064731844%_))))
                                   (if (gx#stx-null? _%tl3064931851%_)
                                       (_%__kont3890638907%_ _%hd3064831848%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3062130763%_)))))
                               (let () (declare (not safe)) (_%g3062130763%_)))
                           (if (equal? _%e3062832071%_ 'cons:)
                               (if (gx#stx-pair? _%tl3062732068%_)
                                   (let ((_%e3065631708%_
                                          (gx#syntax-e _%tl3062732068%_)))
                                     (let ((_%tl3065831715%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3065631708%_)))
                                           (_%hd3065731712%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3065631708%_))))
                                       (if (gx#stx-pair? _%tl3065831715%_)
                                           (let ((_%e3065931718%_
                                                  (gx#syntax-e
                                                   _%tl3065831715%_)))
                                             (let ((_%tl3066131725%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3065931718%_)))
                                                   (_%hd3066031722%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3065931718%_))))
                                               (if (gx#stx-null?
                                                    _%tl3066131725%_)
                                                   (_%__kont3890838909%_
                                                    _%hd3066031722%_
                                                    _%hd3065731712%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3062130763%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3062130763%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3062130763%_)))
                               (if (equal? _%e3062832071%_ 'null:)
                                   (if (gx#stx-null? _%tl3062732068%_)
                                       (_%__kont3891038911%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3062130763%_)))
                                   (if (equal? _%e3062832071%_ 'splice:)
                                       (if (gx#stx-pair? _%tl3062732068%_)
                                           (let ((_%e3067231624%_
                                                  (gx#syntax-e
                                                   _%tl3062732068%_)))
                                             (let ((_%tl3067431631%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3067231624%_)))
                                                   (_%hd3067331628%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3067231624%_))))
                                               (if (gx#stx-pair?
                                                    _%tl3067431631%_)
                                                   (let ((_%e3067531634%_
                                                          (gx#syntax-e
                                                           _%tl3067431631%_)))
                                                     (let ((_%tl3067731641%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3067531634%_)))
                                                           (_%hd3067631638%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3067531634%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3067731641%_)
                                                           (_%__kont3891238913%_
                                                            _%hd3067631638%_
                                                            _%hd3067331628%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3062130763%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3062130763%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3062130763%_)))
                                       (if (equal? _%e3062832071%_ 'box:)
                                           (if (gx#stx-pair? _%tl3062732068%_)
                                               (let ((_%e3068331548%_
                                                      (gx#syntax-e
                                                       _%tl3062732068%_)))
                                                 (let ((_%tl3068531555%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3068331548%_)))
                                                       (_%hd3068431552%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3068331548%_))))
                                                   (if (gx#stx-null?
                                                        _%tl3068531555%_)
                                                       (_%__kont3891438915%_
                                                        _%hd3068431552%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g3062130763%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3062130763%_)))
                                           (if (equal? _%e3062832071%_
                                                       'values:)
                                               (if (gx#stx-pair?
                                                    _%tl3062732068%_)
                                                   (let ((_%e3069131353%_
                                                          (gx#syntax-e
                                                           _%tl3062732068%_)))
                                                     (let ((_%tl3069331360%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3069131353%_)))
                                                           (_%hd3069231357%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3069131353%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3069331360%_)
                                                           (_%__kont3891638917%_
                                                            _%hd3069231357%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3062130763%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3062130763%_)))
                                               (if (equal? _%e3062832071%_
                                                           'vector:)
                                                   (if (gx#stx-pair?
                                                        _%tl3062732068%_)
                                                       (let ((_%e3069931158%_
                                                              (gx#syntax-e
                                                               _%tl3062732068%_)))
                                                         (let ((_%tl3070131165%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3069931158%_)))
                       (_%hd3070031162%_
                        (let () (declare (not safe)) (##car _%e3069931158%_))))
                   (if (gx#stx-null? _%tl3070131165%_)
                       (_%__kont3891838919%_ _%hd3070031162%_)
                       (let () (declare (not safe)) (_%g3062130763%_)))))
               (let () (declare (not safe)) (_%g3062130763%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (equal? _%e3062832071%_
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _%tl3062732068%_)
                                                           (let ((_%e3070831099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3062732068%_)))
                     (let ((_%tl3071031106%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3070831099%_)))
                           (_%hd3070931103%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3070831099%_))))
                       (if (gx#stx-pair? _%tl3071031106%_)
                           (let ((_%e3071131109%_
                                  (gx#syntax-e _%tl3071031106%_)))
                             (let ((_%tl3071331116%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3071131109%_)))
                                   (_%hd3071231113%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3071131109%_))))
                               (if (gx#stx-null? _%tl3071331116%_)
                                   (_%__kont3892038921%_
                                    _%hd3071231113%_
                                    _%hd3070931103%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3062130763%_)))))
                           (let () (declare (not safe)) (_%g3062130763%_)))))
                   (let () (declare (not safe)) (_%g3062130763%_)))
               (if (equal? _%e3062832071%_ 'class:)
                   (if (gx#stx-pair? _%tl3062732068%_)
                       (let ((_%e3072031040%_ (gx#syntax-e _%tl3062732068%_)))
                         (let ((_%tl3072231047%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3072031040%_)))
                               (_%hd3072131044%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3072031040%_))))
                           (if (gx#stx-pair? _%tl3072231047%_)
                               (let ((_%e3072331050%_
                                      (gx#syntax-e _%tl3072231047%_)))
                                 (let ((_%tl3072531057%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3072331050%_)))
                                       (_%hd3072431054%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3072331050%_))))
                                   (if (gx#stx-null? _%tl3072531057%_)
                                       (_%__kont3892238923%_
                                        _%hd3072431054%_
                                        _%hd3072131044%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3062130763%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g3062130763%_)))))
                       (let () (declare (not safe)) (_%g3062130763%_)))
                   (if (equal? _%e3062832071%_ 'datum:)
                       (if (gx#stx-pair? _%tl3062732068%_)
                           (let ((_%e3073130947%_
                                  (gx#syntax-e _%tl3062732068%_)))
                             (let ((_%tl3073330954%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3073130947%_)))
                                   (_%hd3073230951%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3073130947%_))))
                               (if (gx#stx-null? _%tl3073330954%_)
                                   (_%__kont3892438925%_ _%hd3073230951%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3062130763%_)))))
                           (let () (declare (not safe)) (_%g3062130763%_)))
                       (if (equal? _%e3062832071%_ 'apply:)
                           (if (gx#stx-pair? _%tl3062732068%_)
                               (let ((_%e3074030857%_
                                      (gx#syntax-e _%tl3062732068%_)))
                                 (let ((_%tl3074230864%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3074030857%_)))
                                       (_%hd3074130861%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3074030857%_))))
                                   (if (gx#stx-pair? _%tl3074230864%_)
                                       (let ((_%e3074330867%_
                                              (gx#syntax-e _%tl3074230864%_)))
                                         (let ((_%tl3074530874%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3074330867%_)))
                                               (_%hd3074430871%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3074330867%_))))
                                           (if (gx#stx-null? _%tl3074530874%_)
                                               (_%__kont3892638927%_
                                                _%hd3074430871%_
                                                _%hd3074130861%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3062130763%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g3062130763%_)))))
                               (let () (declare (not safe)) (_%g3062130763%_)))
                           (if (equal? _%e3062832071%_ 'var:)
                               (if (gx#stx-pair? _%tl3062732068%_)
                                   (let ((_%e3075130809%_
                                          (gx#syntax-e _%tl3062732068%_)))
                                     (let ((_%tl3075330816%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3075130809%_)))
                                           (_%hd3075230813%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3075130809%_))))
                                       (if (gx#stx-null? _%tl3075330816%_)
                                           (_%__kont3892838929%_
                                            _%hd3075230813%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g3062130763%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3062130763%_)))
                               (if (equal? _%e3062832071%_ 'any:)
                                   (if (gx#stx-null? _%tl3062732068%_)
                                       (_%__kont3893038931%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3062130763%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3062130763%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3062130763%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3062130763%_))))))
                               _%g3058030591%_))))
                      (_%g3057832370%_ _%tgt30573%_))))
                 (_%generate-splice29315%_
                  (lambda (_%tgt29951%_
                           _%hd29953%_
                           _%rest29954%_
                           _%K29955%_
                           _%E29956%_)
                    (let* ((_%g2995829975%_
                            (lambda (_%g2995929971%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2995929971%_)))
                           (_%g2995730569%_
                            (lambda (_%g2995929979%_)
                              (if (gx#stx-pair/null? _%g2995929979%_)
                                  (let ((_g40052_
                                         (gx#syntax-split-splice
                                          _%g2995929979%_
                                          '0)))
                                    (begin
                                      (let ((_g40053_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g40052_)
                                                   (##values-length _g40052_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g40053_ 2)))
                                            (error "Context expects 2 values"
                                                   _g40053_)))
                                      (let ((_%target2996129982%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40052_ 0)))
                                            (_%tl2996329985%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40052_ 1))))
                                        (if (gx#stx-null? _%tl2996329985%_)
                                            (letrec ((_%loop2996429988%_
                                                      (lambda (_%hd2996229992%_
                                                               _%var2996829995%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2996229992%_)
                                                            (let ((_%e2996529997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2996229992%_)))
                      (let ((_%lp-hd2996630001%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2996529997%_)))
                            (_%lp-tl2996730004%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2996529997%_))))
                        (_%loop2996429988%_
                         _%lp-tl2996730004%_
                         (cons _%lp-hd2996630001%_ _%var2996829995%_))))
                    (let ((_%var2996930007%_ (reverse _%var2996829995%_)))
                      ((lambda (_%g2996030010%_)
                         (let* ((_%g3002630043%_
                                 (lambda (_%g3002730039%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g3002730039%_)))
                                (_%g3002530557%_
                                 (lambda (_%g3002730047%_)
                                   (if (gx#stx-pair/null? _%g3002730047%_)
                                       (let ((_g40054_
                                              (gx#syntax-split-splice
                                               _%g3002730047%_
                                               '0)))
                                         (begin
                                           (let ((_g40055_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g40054_)
                                                        (##values-length
                                                         _g40054_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g40055_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g40055_)))
                                           (let ((_%target3002930050%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g40054_ 0)))
                                                 (_%tl3003130053%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g40054_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl3003130053%_)
                                                 (letrec ((_%loop3003230056%_
                                                           (lambda (_%hd3003030060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%var-r3003630063%_)
                     (if (gx#stx-pair? _%hd3003030060%_)
                         (let ((_%e3003330065%_
                                (gx#syntax-e _%hd3003030060%_)))
                           (let ((_%lp-hd3003430069%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3003330065%_)))
                                 (_%lp-tl3003530072%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3003330065%_))))
                             (_%loop3003230056%_
                              _%lp-tl3003530072%_
                              (cons _%lp-hd3003430069%_ _%var-r3003630063%_))))
                         (let ((_%var-r3003730075%_
                                (reverse _%var-r3003630063%_)))
                           ((lambda (_%g3002830078%_)
                              (let* ((_%g3009530112%_
                                      (lambda (_%g3009630108%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g3009630108%_)))
                                     (_%g3009430545%_
                                      (lambda (_%g3009630116%_)
                                        (if (gx#stx-pair/null? _%g3009630116%_)
                                            (let ((_g40056_
                                                   (gx#syntax-split-splice
                                                    _%g3009630116%_
                                                    '0)))
                                              (begin
                                                (let ((_g40057_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g40056_)
                                                             (##values-length
                                                              _g40056_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g40057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g40057_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target3009830119%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40056_
                                                          0)))
                                                      (_%tl3010030122%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40056_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl3010030122%_)
                                                      (letrec ((_%loop3010130125%_
                                                                (lambda (_%hd3009930129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%init3010530132%_)
                          (if (gx#stx-pair? _%hd3009930129%_)
                              (let ((_%e3010230134%_
                                     (gx#syntax-e _%hd3009930129%_)))
                                (let ((_%lp-hd3010330138%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3010230134%_)))
                                      (_%lp-tl3010430141%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3010230134%_))))
                                  (_%loop3010130125%_
                                   _%lp-tl3010430141%_
                                   (cons _%lp-hd3010330138%_
                                         _%init3010530132%_))))
                              (let ((_%init3010630144%_
                                     (reverse _%init3010530132%_)))
                                ((lambda (_%g3009730147%_)
                                   (let* ((_%g3016430172%_
                                           (lambda (_%g3016530168%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g3016530168%_)))
                                          (_%g3016330541%_
                                           (lambda (_%g3016530176%_)
                                             ((lambda (_%g3016630179%_)
                                                (let* ((_%g3019230200%_
                                                        (lambda (_%g3019330196%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g3019330196%_)))
                                                       (_%g3019130537%_
                                                        (lambda (_%g3019330204%_)
                                                          ((lambda (_%g3019430207%_)
                                                             (let* ((_%g3022030228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g3022130224%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g3022130224%_)))
                            (_%g3021930533%_
                             (lambda (_%g3022130232%_)
                               ((lambda (_%g3022230235%_)
                                  (let* ((_%g3024830256%_
                                          (lambda (_%g3024930252%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3024930252%_)))
                                         (_%g3024730529%_
                                          (lambda (_%g3024930260%_)
                                            ((lambda (_%g3025030263%_)
                                               (let* ((_%g3027630284%_
                                                       (lambda (_%g3027730280%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g3027730280%_)))
                                                      (_%g3027530525%_
                                                       (lambda (_%g3027730288%_)
                                                         ((lambda (_%g3027830291%_)
                                                            (let* ((_%g3030430312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3030530308%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3030530308%_)))
                           (_%g3030330521%_
                            (lambda (_%g3030530316%_)
                              ((lambda (_%g3030630319%_)
                                 (let* ((_%g3033230340%_
                                         (lambda (_%g3033330336%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3033330336%_)))
                                        (_%g3033130517%_
                                         (lambda (_%g3033330344%_)
                                           ((lambda (_%g3033430347%_)
                                              (let* ((_%g3036030368%_
                                                      (lambda (_%g3036130364%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3036130364%_)))
                                                     (_%g3035930502%_
                                                      (lambda (_%g3036130372%_)
                                                        ((lambda (_%g3036230375%_)
                                                           (let* ((_%g3038830396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g3038930392%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3038930392%_)))
                          (_%g3038730490%_
                           (lambda (_%g3038930400%_)
                             ((lambda (_%g3039030403%_)
                                (let* ((_%g3041630424%_
                                        (lambda (_%g3041730420%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3041730420%_)))
                                       (_%g3041530486%_
                                        (lambda (_%g3041730428%_)
                                          ((lambda (_%g3041830431%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%g3019430207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%g3030630319%_
                                                     (foldr (lambda (_%g3044530456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g3044630459%_)
                      (cons _%g3044530456%_ _%g3044630459%_))
                    '()
                    _%g2996030010%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%g3033430347%_ '())))
                                   '()))
                       (cons (cons _%g3025030263%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%g3027830291%_
                                                           (cons _%g3030630319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3044730462%_ _%g3044830465%_)
                                  (cons _%g3044730462%_ _%g3044830465%_))
                                '()
                                _%g3002830078%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%g3041830431%_
                                                           '())))
                                         '()))
                             (cons (cons _%g3022230235%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%g3030630319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3044930468%_ _%g3045030471%_)
                                  (cons _%g3044930468%_ _%g3045030471%_))
                                '()
                                _%g3002830078%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%g3030630319%_ '()))
                                     (cons (cons _%g3025030263%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%g3030630319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%g3030630319%_
                     (foldr (lambda (_%g3045130474%_ _%g3045230477%_)
                              (cons _%g3045130474%_ _%g3045230477%_))
                            '()
                            _%g3002830078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%g3039030403%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%g3022230235%_
                             (cons _%g3016630179%_
                                   (foldr (lambda (_%g3045330480%_
                                                   _%g3045430483%_)
                                            (cons _%g3045330480%_
                                                  _%g3045430483%_))
                                          '()
                                          _%g3009730147%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3041730428%_))))
                                  (_%g3041530486%_
                                   (_%generate129313%_
                                    _%g3027830291%_
                                    _%hd29953%_
                                    _%g3036230375%_
                                    _%g3039030403%_))))
                              _%g3038930400%_))))
                     (_%g3038730490%_
                      (cons _%g3019430207%_
                            (cons _%g3030630319%_
                                  (foldr (lambda (_%g3049330496%_
                                                  _%g3049430499%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%g3049330496%_
                                                             '()))
                                                 _%g3049430499%_))
                                         '()
                                         _%g3002830078%_))))))
                 _%g3036130372%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3035930502%_
                                                 (cons _%g3022230235%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%g3030630319%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets
                        _%g3002830078%_
                        _%g2996030010%_)
                       (foldr (lambda (_%g3050530509%_
                                       _%g3050630512%_
                                       _%g3050730514%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%g3050630512%_
                                                  (cons _%g3050530509%_ '())))
                                      _%g3050730514%_))
                              '()
                              _%g3002830078%_
                              _%g2996030010%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g3033330344%_))))
                                   (_%g3033130517%_
                                    (_%generate129313%_
                                     _%g3030630319%_
                                     _%rest29954%_
                                     _%K29955%_
                                     _%E29956%_))))
                               _%g3030530316%_))))
                      (_%g3030330521%_ (gx#genident 'rest))))
                  _%g3027730288%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3027530525%_
                                                  (gx#genident 'hd))))
                                             _%g3024930260%_))))
                                    (_%g3024730529%_
                                     (gx#genident 'splice-try))))
                                _%g3022130232%_))))
                       (_%g3021930533%_ (gx#genident 'splice-loop))))
                   _%g3019330204%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g3019130537%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%g3016530176%_))))
                                     (_%g3016330541%_ _%tgt29951%_)))
                                 _%init3010630144%_))))))
                (_%loop3010130125%_ _%target3009830119%_ '()))
              (_%g3009530112%_ _%g3009630116%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g3009530112%_
                                             _%g3009630116%_)))))
                                (_%g3009430545%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%g3054830551%_
                                                   _%g3054930554%_)
                                            (cons _%g3054830551%_
                                                  _%g3054930554%_))
                                          '()
                                          _%g2996030010%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%var-r3003730075%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop3003230056%_
                                                    _%target3002930050%_
                                                    '()))
                                                 (_%g3002630043%_
                                                  _%g3002730047%_)))))
                                       (_%g3002630043%_ _%g3002730047%_)))))
                           (_%g3002530557%_
                            (gx#gentemps
                             (foldr (lambda (_%g3056030563%_ _%g3056130566%_)
                                      (cons _%g3056030563%_ _%g3056130566%_))
                                    '()
                                    _%g2996030010%_)))))
                       _%var2996930007%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2996429988%_
                                               _%target2996129982%_
                                               '()))
                                            (_%g2995829975%_
                                             _%g2995929979%_)))))
                                  (_%g2995829975%_ _%g2995929979%_)))))
                      (_%g2995730569%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd29953%_)))))
                 (_%generate-simple-vector29316%_
                  (lambda (_%tgt29774%_
                           _%body29776%_
                           _%start29777%_
                           _%ref29778%_
                           _%K29779%_
                           _%E29780%_)
                    (let _%recur29782%_ ((_%rest29785%_ _%body29776%_)
                                         (_%off29787%_ _%start29777%_))
                      (let* ((_%__stx3925539256%_ _%rest29785%_)
                             (_%g2979029802%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3925539256%_))))
                        (let ((_%__kont3925839259%_
                               (lambda (_%g2979229830%_ _%g2979329832%_)
                                 (let* ((_%g2984729870%_
                                         (lambda (_%g2984829866%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2984829866%_)))
                                        (_%g2984629943%_
                                         (lambda (_%g2984829874%_)
                                           (if (gx#stx-pair? _%g2984829874%_)
                                               (let ((_%e2985329877%_
                                                      (gx#syntax-e
                                                       _%g2984829874%_)))
                                                 (let ((_%hd2985429881%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2985329877%_)))
                                                       (_%tl2985529884%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2985329877%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2985529884%_)
                                                       (let ((_%e2985629887%_
                                                              (gx#syntax-e
                                                               _%tl2985529884%_)))
                                                         (let ((_%hd2985729891%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2985629887%_)))
                       (_%tl2985829894%_
                        (let () (declare (not safe)) (##cdr _%e2985629887%_))))
                   (if (gx#stx-pair? _%tl2985829894%_)
                       (let ((_%e2985929897%_ (gx#syntax-e _%tl2985829894%_)))
                         (let ((_%hd2986029901%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e2985929897%_)))
                               (_%tl2986129904%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e2985929897%_))))
                           (if (gx#stx-pair? _%tl2986129904%_)
                               (let ((_%e2986229907%_
                                      (gx#syntax-e _%tl2986129904%_)))
                                 (let ((_%hd2986329911%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2986229907%_)))
                                       (_%tl2986429914%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2986229907%_))))
                                   (if (gx#stx-null? _%tl2986429914%_)
                                       ((lambda (_%g2984929917%_
                                                 _%g2985029919%_
                                                 _%g2985129920%_
                                                 _%g2985229921%_)
                                          (cons 'let
                                                (cons (cons (cons _%g2985229921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _%g2984929917%_
                                      (cons _%g2985129920%_
                                            (cons _%g2985029919%_ '())))
                                '()))
                    '())
              (cons (_%generate129313%_
                     _%g2985229921%_
                     _%g2979329832%_
                     (_%recur29782%_ _%g2979229830%_ (fx1+ _%off29787%_))
                     _%E29780%_)
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%hd2986329911%_
                                        _%hd2986029901%_
                                        _%hd2985729891%_
                                        _%hd2985429881%_)
                                       (_%g2984729870%_ _%g2984829874%_))))
                               (_%g2984729870%_ _%g2984829874%_))))
                       (_%g2984729870%_ _%g2984829874%_))))
               (_%g2984729870%_ _%g2984829874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2984729870%_
                                                _%g2984829874%_)))))
                                   (_%g2984629943%_
                                    (list (gx#genident 'e)
                                          _%tgt29774%_
                                          _%off29787%_
                                          _%ref29778%_)))))
                              (_%__kont3926039261%_ (lambda () _%K29779%_)))
                          (if (gx#stx-pair? _%__stx3925539256%_)
                              (let ((_%e2979429820%_
                                     (gx#syntax-e _%__stx3925539256%_)))
                                (let ((_%tl2979629827%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2979429820%_)))
                                      (_%hd2979529824%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2979429820%_))))
                                  (_%__kont3925839259%_
                                   _%tl2979629827%_
                                   _%hd2979529824%_)))
                              (_%__kont3926039261%_)))))))
                 (_%generate-list-vector29317%_
                  (lambda (_%tgt29666%_
                           _%body29668%_
                           _%->list29669%_
                           _%K29670%_
                           _%E29671%_)
                    (let* ((_%g2967329681%_
                            (lambda (_%g2967429677%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2967429677%_)))
                           (_%g2967229770%_
                            (lambda (_%g2967429685%_)
                              ((lambda (_%g2967529688%_)
                                 (let* ((_%g2970029708%_
                                         (lambda (_%g2970129704%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2970129704%_)))
                                        (_%g2969929766%_
                                         (lambda (_%g2970129712%_)
                                           ((lambda (_%g2970229715%_)
                                              (let* ((_%g2972829736%_
                                                      (lambda (_%g2972929732%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2972929732%_)))
                                                     (_%g2972729758%_
                                                      (lambda (_%g2972929740%_)
                                                        ((lambda (_%g2973029743%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%g2967529688%_
                                           (cons _%g2973029743%_ '()))
                                     '())
                               (cons (_%generate129313%_
                                      _%g2967529688%_
                                      _%body29668%_
                                      _%K29670%_
                                      _%E29671%_)
                                     '()))))
                 _%g2972929740%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2972729758%_
                                                 (let ((_%$e29762%_
                                                        _%->list29669%_))
                                                   (if (eq? 'values->list
                                                            _%$e29762%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%g2970229715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e29762%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%g2970229715%_ '()))
                   (if (eq? 'struct->list _%$e29762%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax '#f 'struct->list)
                                         (cons _%g2970229715%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx29306%_
                        _%->list29669%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2970129712%_))))
                                   (_%g2969929766%_ _%tgt29666%_)))
                               _%g2967429685%_))))
                      (_%g2967229770%_ (gx#genident 'e)))))
                 (_%generate-struct29318%_
                  (lambda (_%info29537%_
                           _%tgt29539%_
                           _%body29540%_
                           _%K29541%_
                           _%E29542%_)
                    (let* ((_%__stx3927139272%_ _%body29540%_)
                           (_%g2954529568%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3927139272%_))))
                      (let ((_%__kont3927439275%_
                             (lambda (_%g2954729645%_)
                               (let ((_%fields29659%_
                                      (_%struct-field-accessors29320%_
                                       _%info29537%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj40025
                                                          _%info29537%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj40025
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj40025
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj40025
                                                          'predicate)))
                                                   (cons _%tgt29539%_ '()))
                                             (cons (_%generate-simple-struct-body29319%_
                                                    _%info29537%_
                                                    _%tgt29539%_
                                                    _%g2954729645%_
                                                    _%K29541%_
                                                    _%E29542%_)
                                                   (cons _%E29542%_ '())))))))
                            (_%__kont3927639277%_
                             (lambda (_%g2955529599%_)
                               (cons 'if
                                     (cons (cons (let ((__obj40026
                                                        _%info29537%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj40026
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj40026
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj40026
                                                        'predicate)))
                                                 (cons _%tgt29539%_ '()))
                                           (cons (_%generate-list-vector29317%_
                                                  _%tgt29539%_
                                                  _%g2955529599%_
                                                  'struct->list
                                                  _%K29541%_
                                                  _%E29542%_)
                                                 (cons _%E29542%_ '())))))))
                        (if (gx#stx-pair? _%__stx3927139272%_)
                            (let ((_%e2954829621%_
                                   (gx#syntax-e _%__stx3927139272%_)))
                              (let ((_%tl2955029628%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2954829621%_)))
                                    (_%hd2954929625%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2954829621%_))))
                                (if (gx#stx-datum? _%hd2954929625%_)
                                    (let ((_%e2955129631%_
                                           (gx#stx-e _%hd2954929625%_)))
                                      (if (equal? _%e2955129631%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2955029628%_)
                                              (let ((_%e2955229635%_
                                                     (gx#syntax-e
                                                      _%tl2955029628%_)))
                                                (let ((_%tl2955429642%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2955229635%_)))
                                                      (_%hd2955329639%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2955229635%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2955429642%_)
                                                      (_%__kont3927439275%_
                                                       _%hd2955329639%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2954529568%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2954529568%_)))
                                          (if (equal? _%e2955129631%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2955029628%_)
                                                  (let ((_%e2956029589%_
                                                         (gx#syntax-e
                                                          _%tl2955029628%_)))
                                                    (let ((_%tl2956229596%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2956029589%_)))
                                                          (_%hd2956129593%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2956029589%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2956229596%_)
                                                          (_%__kont3927639277%_
                                                           _%hd2956129593%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2954529568%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2954529568%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2954529568%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2954529568%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2954529568%_)))))))
                 (_%generate-simple-struct-body29319%_
                  (lambda (_%info29457%_
                           _%tgt29459%_
                           _%body29460%_
                           _%K29461%_
                           _%E29462%_)
                    (let _%recur29464%_ ((_%rest29467%_ _%body29460%_)
                                         (_%fields29469%_
                                          (_%struct-field-accessors29320%_
                                           _%info29457%_)))
                      (let* ((_%__stx3932139322%_ _%rest29467%_)
                             (_%g2947229484%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3932139322%_))))
                        (let ((_%__kont3932439325%_
                               (lambda (_%g2947429512%_ _%g2947529514%_)
                                 (if (null? _%fields29469%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29306%_
                                      _%info29457%_
                                      (let ((__obj40027 _%info29457%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj40027
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj40027
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj40027
                                             'name))))
                                     (let ((_%$tgt29529%_ (gx#genident 'e))
                                           (_%getf29531%_
                                            (car _%fields29469%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29529%_
                                                               (cons (cons _%getf29531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29459%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129313%_
                                                          _%$tgt29529%_
                                                          _%g2947529514%_
                                                          (_%recur29464%_
                                                           _%g2947429512%_
                                                           (cdr _%fields29469%_))
                                                          _%E29462%_)
                                                         '())))))))
                              (_%__kont3932639327%_ (lambda () _%K29461%_)))
                          (if (gx#stx-pair? _%__stx3932139322%_)
                              (let ((_%e2947629502%_
                                     (gx#syntax-e _%__stx3932139322%_)))
                                (let ((_%tl2947829509%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2947629502%_)))
                                      (_%hd2947729506%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2947629502%_))))
                                  (_%__kont3932439325%_
                                   _%tl2947829509%_
                                   _%hd2947729506%_)))
                              (_%__kont3932639327%_)))))))
                 (_%struct-field-accessors29320%_
                  (lambda (_%info29438%_)
                    (let _%recur29441%_ ((_%next29444%_
                                          (cons _%info29438%_ '())))
                      (if (null? _%next29444%_)
                          '()
                          (let ((_%ti29447%_ (car _%next29444%_)))
                            (let ((__tmp40059
                                   (_%recur29441%_
                                    (map gx#syntax-local-value
                                         (let ((__obj40028 _%ti29447%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj40028
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj40028
                                                  '4
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj40028
                                                'super))))))
                                  (__tmp40058
                                   (map (lambda (_%slot29450%_)
                                          (let ((_%$e29453%_
                                                 (agetq _%slot29450%_
                                                        (let ((__obj40029
                                                               _%ti29447%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj40029
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj40029 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj40029
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29453%_
                                                _%$e29453%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29306%_
                                                 _%info29438%_
                                                 _%slot29450%_))))
                                        (let ((__obj40030 _%ti29447%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj40030
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj40030
                                                 '5
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj40030
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp40059 __tmp40058)))))))
                 (_%generate-class29321%_
                  (lambda (_%info29431%_
                           _%tgt29433%_
                           _%body29434%_
                           _%K29435%_
                           _%E29436%_)
                    (cons 'if
                          (cons (cons (let ((__obj40031 _%info29431%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj40031
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj40031
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj40031
                                             'predicate)))
                                      (cons _%tgt29433%_ '()))
                                (cons (_%generate-class-body29322%_
                                       _%info29431%_
                                       _%tgt29433%_
                                       _%body29434%_
                                       _%K29435%_
                                       _%E29436%_)
                                      (cons _%E29436%_ '()))))))
                 (_%generate-class-body29322%_
                  (lambda (_%info29324%_
                           _%tgt29326%_
                           _%body29327%_
                           _%K29328%_
                           _%E29329%_)
                    (let _%recur29331%_ ((_%rest29334%_ _%body29327%_))
                      (let* ((_%__stx3933739338%_ _%rest29334%_)
                             (_%g2933829354%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3933739338%_))))
                        (let ((_%__kont3934039341%_
                               (lambda (_%g2934029392%_
                                        _%g2934129394%_
                                        _%g2934229395%_)
                                 (let ((_%$e29415%_
                                        (agetq (let ((__tmp40060
                                                      (keyword->string
                                                       (gx#stx-e
                                                        _%g2934229395%_))))
                                                 (declare (not safe))
                                                 (##string->symbol __tmp40060))
                                               (let ((__obj40032
                                                      _%info29324%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj40032
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj40032
                                                        '17
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj40032
                                                      'unchecked-accessors))))))
                                   (if _%$e29415%_
                                       ((lambda (_%getf29419%_)
                                          (let ((_%$tgt29422%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt29422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf29419%_ (cons _%tgt29326%_ '()))
                                  '()))
                      '())
                (cons (_%generate129313%_
                       _%$tgt29422%_
                       _%g2934129394%_
                       (_%recur29331%_ _%g2934029392%_)
                       _%E29329%_)
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e29415%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx29306%_
                                        _%info29324%_
                                        _%g2934229395%_)))))
                              (_%__kont3934239343%_ (lambda () _%K29328%_)))
                          (if (gx#stx-pair? _%__stx3933739338%_)
                              (let ((_%e2934329372%_
                                     (gx#syntax-e _%__stx3933739338%_)))
                                (let ((_%tl2934529379%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2934329372%_)))
                                      (_%hd2934429376%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2934329372%_))))
                                  (if (gx#stx-pair? _%tl2934529379%_)
                                      (let ((_%e2934629382%_
                                             (gx#syntax-e _%tl2934529379%_)))
                                        (let ((_%tl2934829389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2934629382%_)))
                                              (_%hd2934729386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2934629382%_))))
                                          (_%__kont3934039341%_
                                           _%tl2934829389%_
                                           _%hd2934729386%_
                                           _%hd2934429376%_)))
                                      (_%__kont3934239343%_))))
                              (_%__kont3934239343%_))))))))
          (_%generate129313%_
           _%tgt29308%_
           _%ptree29309%_
           _%K29310%_
           _%E29311%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx28125%_ _%tgt-lst28127%_ _%clauses28128%_)
        (letrec ((_%parse-body28130%_
                  (lambda (_%hd-len29128%_)
                    (let _%lp29131%_ ((_%rest29134%_ _%clauses28128%_)
                                      (_%r29136%_ '()))
                      (let* ((_%__stx3938739388%_ _%rest29134%_)
                             (_%g2913929151%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3938739388%_))))
                        (let ((_%__kont3939039391%_
                               (lambda (_%g2914129179%_ _%g2914229181%_)
                                 (let* ((_%__stx3935939360%_ _%g2914229181%_)
                                        (_%g2919829214%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3935939360%_))))
                                   (let ((_%__kont3936239363%_
                                          (lambda (_%g2920029283%_)
                                            (if (gx#stx-null? _%g2914129179%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%g2920029283%_)
                                 (let ((_%$e29294%_
                                        (gx#stx-source _%g2914229181%_)))
                                   (if _%$e29294%_
                                       _%$e29294%_
                                       (gx#stx-source _%stx28125%_))))
                                '())))
              _%r29136%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx28125%_
                                                 _%g2914229181%_))))
                                         (_%__kont3936439365%_
                                          (lambda (_%g2920429242%_
                                                   _%g2920529244%_)
                                            (_%lp29131%_
                                             _%g2914129179%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g2925629258%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g2925629258%_
                           _%stx28125%_))
                        _%g2920529244%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin)
                                    _%g2920429242%_)
                              (let ((_%$e29262%_
                                     (gx#stx-source _%g2914229181%_)))
                                (if _%$e29262%_
                                    _%$e29262%_
                                    (gx#stx-source _%stx28125%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r29136%_))))
                                         (_%__kont3936639367%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx28125%_
                                             _%g2914229181%_))))
                                     (let* ((_%__match3938439385%_
                                             (lambda (_%e2920629232%_
                                                      _%hd2920729236%_
                                                      _%tl2920829239%_)
                                               (let ((_%g2920429242%_
                                                      _%tl2920829239%_)
                                                     (_%g2920529244%_
                                                      _%hd2920729236%_))
                                                 (if (and (gx#stx-list?
                                                           _%g2920529244%_)
                                                          (fx= (gx#stx-length
                                                                _%g2920529244%_)
                                                               _%hd-len29128%_)
                                                          (gx#stx-list?
                                                           _%g2920429242%_)
                                                          (not (gx#stx-null?
                                                                _%g2920429242%_)))
                                                     (_%__kont3936439365%_
                                                      _%g2920429242%_
                                                      _%g2920529244%_)
                                                     (_%__kont3936639367%_)))))
                                            (_%__match3937839379%_
                                             (lambda (_%e2920129273%_
                                                      _%hd2920229277%_
                                                      _%tl2920329280%_)
                                               (let ((_%g2920029283%_
                                                      _%tl2920329280%_))
                                                 (if (and (gx#stx-list?
                                                           _%g2920029283%_)
                                                          (not (gx#stx-null?
                                                                _%g2920029283%_)))
                                                     (_%__kont3936239363%_
                                                      _%g2920029283%_)
                                                     (_%__match3938439385%_
                                                      _%e2920129273%_
                                                      _%hd2920229277%_
                                                      _%tl2920329280%_))))))
                                       (if (gx#stx-pair? _%__stx3935939360%_)
                                           (let ((_%e2920129273%_
                                                  (gx#syntax-e
                                                   _%__stx3935939360%_)))
                                             (let ((_%tl2920329280%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2920129273%_)))
                                                   (_%hd2920229277%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2920129273%_))))
                                               (if (gx#identifier?
                                                    _%hd2920229277%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g40061_|
                                                        _%hd2920229277%_)
                                                       (_%__match3937839379%_
                                                        _%e2920129273%_
                                                        _%hd2920229277%_
                                                        _%tl2920329280%_)
                                                       (_%__match3938439385%_
                                                        _%e2920129273%_
                                                        _%hd2920229277%_
                                                        _%tl2920329280%_))
                                                   (_%__match3938439385%_
                                                    _%e2920129273%_
                                                    _%hd2920229277%_
                                                    _%tl2920329280%_))))
                                           (_%__kont3936639367%_)))))))
                              (_%__kont3939239393%_ (lambda () _%r29136%_)))
                          (if (gx#stx-pair? _%__stx3938739388%_)
                              (let ((_%e2914329169%_
                                     (gx#syntax-e _%__stx3938739388%_)))
                                (let ((_%tl2914529176%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2914329169%_)))
                                      (_%hd2914429173%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2914329169%_))))
                                  (_%__kont3939039391%_
                                   _%tl2914529176%_
                                   _%hd2914429173%_)))
                              (_%__kont3939239393%_)))))))
                 (_%generate-body28132%_
                  (lambda (_%body28834%_)
                    (let* ((_%g2883728845%_
                            (lambda (_%g2883828841%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2883828841%_)))
                           (_%g2883629124%_
                            (lambda (_%g2883828849%_)
                              ((lambda (_%g2883928852%_)
                                 (let* ((_%g2886428881%_
                                         (lambda (_%g2886528877%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2886528877%_)))
                                        (_%g2886329120%_
                                         (lambda (_%g2886528885%_)
                                           (if (gx#stx-pair/null?
                                                _%g2886528885%_)
                                               (let ((_g40062_
                                                      (gx#syntax-split-splice
                                                       _%g2886528885%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g40063_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g40062_)
                        (##values-length _g40062_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g40063_ 2)))
                 (error "Context expects 2 values" _g40063_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target2886728888%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40062_
                                                             0)))
                                                         (_%tl2886928891%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40062_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl2886928891%_)
                                                         (letrec ((_%loop2887028894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd2886828898%_ _%target2887428901%_)
                             (if (gx#stx-pair? _%hd2886828898%_)
                                 (let ((_%e2887128903%_
                                        (gx#syntax-e _%hd2886828898%_)))
                                   (let ((_%lp-hd2887228907%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2887128903%_)))
                                         (_%lp-tl2887328910%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2887128903%_))))
                                     (_%loop2887028894%_
                                      _%lp-tl2887328910%_
                                      (cons _%lp-hd2887228907%_
                                            _%target2887428901%_))))
                                 (let ((_%target2887528913%_
                                        (reverse _%target2887428901%_)))
                                   ((lambda (_%g2886628916%_)
                                      (let* ((_%g2893328950%_
                                              (lambda (_%g2893428946%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2893428946%_)))
                                             (_%g2893229116%_
                                              (lambda (_%g2893428954%_)
                                                (if (gx#stx-pair/null?
                                                     _%g2893428954%_)
                                                    (let ((_g40064_
                                                           (gx#syntax-split-splice
                                                            _%g2893428954%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g40065_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g40064_)
                             (##values-length _g40064_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g40065_ 2)))
                      (error "Context expects 2 values" _g40065_)))
                (let ((_%target2893628957%_
                       (let () (declare (not safe)) (##values-ref _g40064_ 0)))
                      (_%tl2893828960%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g40064_ 1))))
                  (if (gx#stx-null? _%tl2893828960%_)
                      (letrec ((_%loop2893928963%_
                                (lambda (_%hd2893728967%_
                                         _%fail-diagnostic2894328970%_)
                                  (if (gx#stx-pair? _%hd2893728967%_)
                                      (let ((_%e2894028972%_
                                             (gx#syntax-e _%hd2893728967%_)))
                                        (let ((_%lp-hd2894128976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2894028972%_)))
                                              (_%lp-tl2894228979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2894028972%_))))
                                          (_%loop2893928963%_
                                           _%lp-tl2894228979%_
                                           (cons _%lp-hd2894128976%_
                                                 _%fail-diagnostic2894328970%_))))
                                      (let ((_%fail-diagnostic2894428982%_
                                             (reverse _%fail-diagnostic2894328970%_)))
                                        ((lambda (_%g2893528985%_)
                                           (let* ((_%g2900229010%_
                                                   (lambda (_%g2900329006%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2900329006%_)))
                                                  (_%g2900129096%_
                                                   (lambda (_%g2900329014%_)
                                                     ((lambda (_%g2900429017%_)
                                                        (let* ((_%g2903029038%_
                                                                (lambda (_%g2903129034%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2903129034%_)))
                       (_%g2902929092%_
                        (lambda (_%g2903129042%_)
                          ((lambda (_%g2903229045%_)
                             (let* ((_%g2905829066%_
                                     (lambda (_%g2905929062%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2905929062%_)))
                                    (_%g2905729088%_
                                     (lambda (_%g2905929070%_)
                                       ((lambda (_%g2906029073%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%g2906029073%_
                                                            '()))))
                                        _%g2905929070%_))))
                               (_%g2905729088%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%g2883928852%_
                                                         (cons _%g2900429017%_
                                                               '()))
                                                   '())
                                             (cons _%g2903229045%_ '())))
                                 (gx#stx-source _%stx28125%_)))))
                           _%g2903129042%_))))
                  (_%g2902929092%_
                   (_%generate-clauses28133%_
                    _%body28834%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%g2883928852%_ '()) '())))))))
              _%g2900329014%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2900129096%_
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
                                     (foldr (lambda (_%g2909929104%_
                                                     _%g2910029107%_)
                                              (cons _%g2909929104%_
                                                    _%g2910029107%_))
                                            (foldr (lambda (_%g2910129110%_
                                                            _%g2910229113%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g2910129110%_ '()))
                   _%g2910229113%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%g2893528985%_)
                                            _%g2886628916%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx28125%_)))))
                                         _%fail-diagnostic2894428982%_))))))
                        (_%loop2893928963%_ _%target2893628957%_ '()))
                      (_%g2893328950%_ _%g2893428954%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2893328950%_
                                                     _%g2893428954%_)))))
                                        (_%g2893229116%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses28128%_))))
                                    _%target2887528913%_))))))
                   (_%loop2887028894%_ _%target2886728888%_ '()))
                 (_%g2886428881%_ _%g2886528885%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2886428881%_
                                                _%g2886528885%_)))))
                                   (_%g2886329120%_ _%tgt-lst28127%_)))
                               _%g2883828849%_))))
                      (_%g2883629124%_ (gx#genident 'E)))))
                 (_%generate-clauses28133%_
                  (lambda (_%rest28486%_ _%E28488%_)
                    (let* ((_%__stx3940339404%_ _%rest28486%_)
                           (_%g2849228508%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3940339404%_))))
                      (let ((_%__kont3940639407%_
                             (lambda (_%g2849428742%_)
                               (let* ((_%g2875328771%_
                                       (lambda (_%g2875428767%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2875428767%_)))
                                      (_%g2875228826%_
                                       (lambda (_%g2875428775%_)
                                         (if (gx#stx-pair? _%g2875428775%_)
                                             (let ((_%e2875728778%_
                                                    (gx#syntax-e
                                                     _%g2875428775%_)))
                                               (let ((_%hd2875828782%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2875728778%_)))
                                                     (_%tl2875928785%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2875728778%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2875928785%_)
                                                     (let ((_%e2876028788%_
                                                            (gx#syntax-e
                                                             _%tl2875928785%_)))
                                                       (let ((_%hd2876128792%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2876028788%_)))
                     (_%tl2876228795%_
                      (let () (declare (not safe)) (##cdr _%e2876028788%_))))
                 (if (gx#stx-pair? _%tl2876228795%_)
                     (let ((_%e2876328798%_ (gx#syntax-e _%tl2876228795%_)))
                       (let ((_%hd2876428802%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2876328798%_)))
                             (_%tl2876528805%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2876328798%_))))
                         (if (gx#stx-null? _%tl2876528805%_)
                             ((lambda (_%g2875528808%_ _%g2875628810%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e
                                                       _%g2875628810%_)
                                                      (_%generate128134%_
                                                       _%g2875628810%_
                                                       _%g2875528808%_
                                                       _%E28488%_)
                                                      _%g2875528808%_)
                                                  '()))))
                              _%hd2876428802%_
                              _%hd2876128792%_)
                             (_%g2875328771%_ _%g2875428775%_))))
                     (_%g2875328771%_ _%g2875428775%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2875328771%_
                                                      _%g2875428775%_))))
                                             (_%g2875328771%_
                                              _%g2875428775%_)))))
                                 (_%g2875228826%_ _%g2849428742%_))))
                            (_%__kont3940839409%_
                             (lambda (_%g2849828536%_ _%g2849928538%_)
                               (let* ((_%g2855128570%_
                                       (lambda (_%g2855228566%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2855228566%_)))
                                      (_%g2855028721%_
                                       (lambda (_%g2855228574%_)
                                         (if (gx#stx-pair? _%g2855228574%_)
                                             (let ((_%e2855628577%_
                                                    (gx#syntax-e
                                                     _%g2855228574%_)))
                                               (let ((_%hd2855728581%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2855628577%_)))
                                                     (_%tl2855828584%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2855628577%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2855828584%_)
                                                     (let ((_%e2855928587%_
                                                            (gx#syntax-e
                                                             _%tl2855828584%_)))
                                                       (let ((_%hd2856028591%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2855928587%_)))
                     (_%tl2856128594%_
                      (let () (declare (not safe)) (##cdr _%e2855928587%_))))
                 (if (gx#stx-pair? _%tl2856128594%_)
                     (let ((_%e2856228597%_ (gx#syntax-e _%tl2856128594%_)))
                       (let ((_%hd2856328601%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2856228597%_)))
                             (_%tl2856428604%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2856228597%_))))
                         (if (gx#stx-null? _%tl2856428604%_)
                             ((lambda (_%g2855328607%_
                                       _%g2855428609%_
                                       _%g2855528610%_)
                                (if (gx#stx-e _%g2855428609%_)
                                    (let* ((_%g2862728642%_
                                            (lambda (_%g2862828638%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2862828638%_)))
                                           (_%g2862628687%_
                                            (lambda (_%g2862828646%_)
                                              (if (gx#stx-pair?
                                                   _%g2862828646%_)
                                                  (let ((_%e2863128649%_
                                                         (gx#syntax-e
                                                          _%g2862828646%_)))
                                                    (let ((_%hd2863228653%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2863128649%_)))
                                                          (_%tl2863328656%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2863128649%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl2863328656%_)
                                                          (let ((_%e2863428659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2863328656%_)))
                    (let ((_%hd2863528663%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2863428659%_)))
                          (_%tl2863628666%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2863428659%_))))
                      (if (gx#stx-null? _%tl2863628666%_)
                          ((lambda (_%g2862928669%_ _%g2863028671%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _%g2855528610%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%g2863028671%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%g2862928669%_ '()))))
                           _%hd2863528663%_
                           _%hd2863228653%_)
                          (_%g2862728642%_ _%g2862828646%_))))
                  (_%g2862728642%_ _%g2862828646%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2862728642%_
                                                   _%g2862828646%_)))))
                                      (_%g2862628687%_
                                       (list (_%generate128134%_
                                              _%g2855428609%_
                                              _%g2855328607%_
                                              _%E28488%_)
                                             (_%generate-clauses28133%_
                                              _%g2849828536%_
                                              (cons _%g2855528610%_ '())))))
                                    (let* ((_%g2869128699%_
                                            (lambda (_%g2869228695%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2869228695%_)))
                                           (_%g2869028717%_
                                            (lambda (_%g2869228703%_)
                                              ((lambda (_%g2869328706%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g2855528610%_
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
                             (cons _%g2855328607%_ '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons _%g2869328706%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2869228703%_))))
                                      (_%g2869028717%_
                                       (_%generate-clauses28133%_
                                        _%g2849828536%_
                                        (cons _%g2855528610%_ '()))))))
                              _%hd2856328601%_
                              _%hd2856028591%_
                              _%hd2855728581%_)
                             (_%g2855128570%_ _%g2855228574%_))))
                     (_%g2855128570%_ _%g2855228574%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2855128570%_
                                                      _%g2855228574%_))))
                                             (_%g2855128570%_
                                              _%g2855228574%_)))))
                                 (_%g2855028721%_ _%g2849928538%_))))
                            (_%__kont3941039411%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28488%_ '()))))))
                        (if (gx#stx-pair? _%__stx3940339404%_)
                            (let ((_%e2849528732%_
                                   (gx#syntax-e _%__stx3940339404%_)))
                              (let ((_%tl2849728739%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2849528732%_)))
                                    (_%hd2849628736%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2849528732%_))))
                                (if (gx#stx-null? _%tl2849728739%_)
                                    (_%__kont3940639407%_ _%hd2849628736%_)
                                    (_%__kont3940839409%_
                                     _%tl2849728739%_
                                     _%hd2849628736%_))))
                            (_%__kont3941039411%_))))))
                 (_%generate128134%_
                  (lambda (_%clause28136%_ _%body28138%_ _%E28139%_)
                    (let* ((_%g2814128165%_
                            (lambda (_%g2814228161%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2814228161%_)))
                           (_%g2814028482%_
                            (lambda (_%g2814228169%_)
                              (if (gx#stx-pair? _%g2814228169%_)
                                  (let ((_%e2814528172%_
                                         (gx#syntax-e _%g2814228169%_)))
                                    (let ((_%hd2814628176%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2814528172%_)))
                                          (_%tl2814728179%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2814528172%_))))
                                      (if (gx#stx-pair? _%tl2814728179%_)
                                          (let ((_%e2814828182%_
                                                 (gx#syntax-e
                                                  _%tl2814728179%_)))
                                            (let ((_%hd2814928186%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2814828182%_)))
                                                  (_%tl2815028189%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2814828182%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2814928186%_)
                                                  (let ((_g40066_
                                                         (gx#syntax-split-splice
                                                          _%hd2814928186%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g40067_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g40066_)
                           (##values-length _g40066_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g40067_ 2)))
                    (error "Context expects 2 values" _g40067_)))
              (let ((_%target2815128192%_
                     (let () (declare (not safe)) (##values-ref _g40066_ 0)))
                    (_%tl2815328195%_
                     (let () (declare (not safe)) (##values-ref _g40066_ 1))))
                (if (gx#stx-null? _%tl2815328195%_)
                    (letrec ((_%loop2815428198%_
                              (lambda (_%hd2815228202%_ _%var2815828205%_)
                                (if (gx#stx-pair? _%hd2815228202%_)
                                    (let ((_%e2815528207%_
                                           (gx#syntax-e _%hd2815228202%_)))
                                      (let ((_%lp-hd2815628211%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2815528207%_)))
                                            (_%lp-tl2815728214%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2815528207%_))))
                                        (_%loop2815428198%_
                                         _%lp-tl2815728214%_
                                         (cons _%lp-hd2815628211%_
                                               _%var2815828205%_))))
                                    (let ((_%var2815928217%_
                                           (reverse _%var2815828205%_)))
                                      (if (gx#stx-null? _%tl2815028189%_)
                                          ((lambda (_%g2814328220%_
                                                    _%g2814428222%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g2824328246%_
                                                                _%g2824428249%_)
                                                         (cons _%g2824328246%_
                                                               _%g2824428249%_))
                                                       '()
                                                       _%g2814328220%_)
                                                _%stx28125%_)
                                               (let* ((_%g2825228260%_
                                                       (lambda (_%g2825328256%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2825328256%_)))
                                                      (_%g2825128354%_
                                                       (lambda (_%g2825328264%_)
                                                         ((lambda (_%g2825428267%_)
                                                            (let* ((_%g2828028288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2828128284%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2828128284%_)))
                           (_%g2827928350%_
                            (lambda (_%g2828128292%_)
                              ((lambda (_%g2828228295%_)
                                 (let* ((_%g2830828316%_
                                         (lambda (_%g2830928312%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2830928312%_)))
                                        (_%g2830728338%_
                                         (lambda (_%g2830928320%_)
                                           ((lambda (_%g2831028323%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%g2814428222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g2831028323%_ '()))
                   (cons _%g2825428267%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx28125%_)))
                                            _%g2830928320%_))))
                                   (_%g2830728338%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%g2834128344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2834228347%_)
                  (cons _%g2834128344%_ _%g2834228347%_))
                '()
                _%g2814328220%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g2828228295%_ '())))
                                     (gx#stx-source _%stx28125%_)))))
                               _%g2828128292%_))))
                      (_%g2827928350%_ _%body28138%_)))
                  _%g2825328264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2825128354%_
                                                  (let _%recur28358%_ ((_%rest28361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%clause28136%_)
                               (_%rest-targets28363%_ _%tgt-lst28127%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%__stx3942939430%_
                                                            _%rest28361%_)
                                                           (_%g2836628378%_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx3942939430%_))))
                                                      (let ((_%__kont3943239433%_
                                                             (lambda (_%g2836828414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2836928416%_)
                       (let* ((_%g2843128443%_
                               (lambda (_%g2843228439%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2843228439%_)))
                              (_%g2843028474%_
                               (lambda (_%g2843228447%_)
                                 (if (gx#stx-pair? _%g2843228447%_)
                                     (let ((_%e2843528450%_
                                            (gx#syntax-e _%g2843228447%_)))
                                       (let ((_%hd2843628454%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2843528450%_)))
                                             (_%tl2843728457%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2843528450%_))))
                                         ((lambda (_%g2843328460%_
                                                   _%g2843428462%_)
                                            (|gerbil/core/match[1]#generate-match1|
                                             _%stx28125%_
                                             _%g2843428462%_
                                             _%g2836928416%_
                                             (_%recur28358%_
                                              _%g2836828414%_
                                              _%g2843328460%_)
                                             _%E28139%_))
                                          _%tl2843728457%_
                                          _%hd2843628454%_)))
                                     (_%g2843128443%_ _%g2843228447%_)))))
                         (_%g2843028474%_ _%rest-targets28363%_))))
                    (_%__kont3943439435%_
                     (lambda ()
                       (cons _%g2814428222%_
                             (foldr (lambda (_%g2838828391%_ _%g2838928394%_)
                                      (cons _%g2838828391%_ _%g2838928394%_))
                                    '()
                                    _%g2814328220%_)))))
                (if (gx#stx-pair? _%__stx3942939430%_)
                    (let ((_%e2837028404%_ (gx#syntax-e _%__stx3942939430%_)))
                      (let ((_%tl2837228411%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2837028404%_)))
                            (_%hd2837128408%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2837028404%_))))
                        (_%__kont3943239433%_
                         _%tl2837228411%_
                         _%hd2837128408%_)))
                    (_%__kont3943439435%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%var2815928217%_
                                           _%hd2814628176%_)
                                          (_%g2814128165%_
                                           _%g2814228169%_)))))))
                      (_%loop2815428198%_ _%target2815128192%_ '()))
                    (_%g2814128165%_ _%g2814228169%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2814128165%_
                                                   _%g2814228169%_))))
                                          (_%g2814128165%_ _%g2814228169%_))))
                                  (_%g2814128165%_ _%g2814228169%_)))))
                      (_%g2814028482%_
                       (list (gx#genident 'K)
                             (let ((__tmp40068
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause28136%_)))
                               (declare (not safe))
                               (##apply append __tmp40068))))))))
          (_%generate-body28132%_
           (_%parse-body28130%_ (gx#stx-length _%tgt-lst28127%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx28027%_ _%tgt28029%_ _%clauses28030%_)
        (letrec ((_%reclause28032%_
                  (lambda (_%clause28035%_)
                    (let* ((_%__stx3944539446%_ _%clause28035%_)
                           (_%g2804028055%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3944539446%_))))
                      (let ((_%__kont3944839449%_ (lambda () _%clause28035%_))
                            (_%__kont3945039451%_
                             (lambda (_%g2804528083%_ _%g2804628085%_)
                               (gx#stx-wrap-source
                                (cons (cons _%g2804628085%_ '())
                                      _%g2804528083%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3945239453%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx28027%_
                                _%clause28035%_))))
                        (if (gx#stx-pair? _%__stx3944539446%_)
                            (let ((_%e2804228107%_
                                   (gx#syntax-e _%__stx3944539446%_)))
                              (let ((_%tl2804428114%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2804228107%_)))
                                    (_%hd2804328111%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2804228107%_))))
                                (if (gx#identifier? _%hd2804328111%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40069_|
                                         _%hd2804328111%_)
                                        (_%__kont3944839449%_)
                                        (_%__kont3945039451%_
                                         _%tl2804428114%_
                                         _%hd2804328111%_))
                                    (_%__kont3945039451%_
                                     _%tl2804428114%_
                                     _%hd2804328111%_))))
                            (_%__kont3945239453%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx28027%_
           (cons _%tgt28029%_ '())
           (gx#stx-map _%reclause28032%_ _%clauses28030%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35368%_)
        (let* ((_%__stx3947339474%_ _%stx35368%_)
               (_%g3537335402%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3947339474%_))))
          (let ((_%__kont3947639477%_
                 (lambda (_%g3537535642%_)
                   (let* ((_%g3565535663%_
                           (lambda (_%g3565635659%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3565635659%_)))
                          (_%g3565435716%_
                           (lambda (_%g3565635667%_)
                             ((lambda (_%g3565735670%_)
                                (let* ((_%g3568235690%_
                                        (lambda (_%g3568335686%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3568335686%_)))
                                       (_%g3568135712%_
                                        (lambda (_%g3568335694%_)
                                          ((lambda (_%g3568435697%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%g3565735670%_
                                                               '())
                                                         (cons _%g3568435697%_
                                                               '()))))
                                           _%g3568335694%_))))
                                  (_%g3568135712%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%g3565735670%_
                                                _%g3537535642%_))
                                    (gx#stx-source _%stx35368%_)))))
                              _%g3565635667%_))))
                     (_%g3565435716%_ (gx#genident 'e)))))
                (_%__kont3947839479%_
                 (lambda (_%g3538235537%_)
                   (let* ((_%g3555035558%_
                           (lambda (_%g3555135554%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3555135554%_)))
                          (_%g3554935611%_
                           (lambda (_%g3555135562%_)
                             ((lambda (_%g3555235565%_)
                                (let* ((_%g3557735585%_
                                        (lambda (_%g3557835581%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3557835581%_)))
                                       (_%g3557635607%_
                                        (lambda (_%g3557835589%_)
                                          ((lambda (_%g3557935592%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%g3555235565%_
                                                         (cons _%g3557935592%_
                                                               '()))))
                                           _%g3557835589%_))))
                                  (_%g3557635607%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%g3555235565%_
                                                _%g3538235537%_))
                                    (gx#stx-source _%stx35368%_)))))
                              _%g3555135562%_))))
                     (_%g3554935611%_ (gx#genident 'args)))))
                (_%__kont3948039481%_
                 (lambda (_%g3538935429%_ _%g3539035431%_)
                   (let* ((_%g3544535453%_
                           (lambda (_%g3544635449%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3544635449%_)))
                          (_%g3544435506%_
                           (lambda (_%g3544635457%_)
                             ((lambda (_%g3544735460%_)
                                (let* ((_%g3547235480%_
                                        (lambda (_%g3547335476%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3547335476%_)))
                                       (_%g3547135502%_
                                        (lambda (_%g3547335484%_)
                                          ((lambda (_%g3547435487%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%g3544735460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%g3539035431%_ '()))
                       '())
                 (cons _%g3547435487%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3547335484%_))))
                                  (_%g3547135502%_
                                   (|gerbil/core/match[1]#generate-match|
                                    _%stx35368%_
                                    _%g3544735460%_
                                    _%g3538935429%_))))
                              _%g3544635457%_))))
                     (_%g3544435506%_ (gx#genident _%g3539035431%_))))))
            (let* ((_%__match3952639527%_
                    (lambda (_%e3539135409%_
                             _%hd3539235413%_
                             _%tl3539335416%_
                             _%e3539435419%_
                             _%hd3539535423%_
                             _%tl3539635426%_)
                      (let ((_%g3538935429%_ _%tl3539635426%_)
                            (_%g3539035431%_ _%hd3539535423%_))
                        (if (gx#stx-list? _%g3538935429%_)
                            (_%__kont3948039481%_
                             _%g3538935429%_
                             _%g3539035431%_)
                            (let () (declare (not safe)) (_%g3537335402%_))))))
                   (_%__match3951439515%_
                    (lambda (_%e3538335517%_
                             _%hd3538435521%_
                             _%tl3538535524%_
                             _%e3538635527%_
                             _%hd3538735531%_
                             _%tl3538835534%_)
                      (let ((_%g3538235537%_ _%tl3538835534%_))
                        (if (gx#stx-list? _%g3538235537%_)
                            (_%__kont3947839479%_ _%g3538235537%_)
                            (_%__match3952639527%_
                             _%e3538335517%_
                             _%hd3538435521%_
                             _%tl3538535524%_
                             _%e3538635527%_
                             _%hd3538735531%_
                             _%tl3538835534%_)))))
                   (_%__match3949839499%_
                    (lambda (_%e3537635622%_
                             _%hd3537735626%_
                             _%tl3537835629%_
                             _%e3537935632%_
                             _%hd3538035636%_
                             _%tl3538135639%_)
                      (let ((_%g3537535642%_ _%tl3538135639%_))
                        (if (gx#stx-list? _%g3537535642%_)
                            (_%__kont3947639477%_ _%g3537535642%_)
                            (_%__match3952639527%_
                             _%e3537635622%_
                             _%hd3537735626%_
                             _%tl3537835629%_
                             _%e3537935632%_
                             _%hd3538035636%_
                             _%tl3538135639%_))))))
              (if (gx#stx-pair? _%__stx3947339474%_)
                  (let ((_%e3537635622%_ (gx#syntax-e _%__stx3947339474%_)))
                    (let ((_%tl3537835629%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3537635622%_)))
                          (_%hd3537735626%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3537635622%_))))
                      (if (gx#stx-pair? _%tl3537835629%_)
                          (let ((_%e3537935632%_
                                 (gx#syntax-e _%tl3537835629%_)))
                            (let ((_%tl3538135639%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3537935632%_)))
                                  (_%hd3538035636%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3537935632%_))))
                              (if (gx#identifier? _%hd3538035636%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40070_|
                                       _%hd3538035636%_)
                                      (_%__match3949839499%_
                                       _%e3537635622%_
                                       _%hd3537735626%_
                                       _%tl3537835629%_
                                       _%e3537935632%_
                                       _%hd3538035636%_
                                       _%tl3538135639%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40071_|
                                           _%hd3538035636%_)
                                          (_%__match3951439515%_
                                           _%e3537635622%_
                                           _%hd3537735626%_
                                           _%tl3537835629%_
                                           _%e3537935632%_
                                           _%hd3538035636%_
                                           _%tl3538135639%_)
                                          (_%__match3952639527%_
                                           _%e3537635622%_
                                           _%hd3537735626%_
                                           _%tl3537835629%_
                                           _%e3537935632%_
                                           _%hd3538035636%_
                                           _%tl3538135639%_)))
                                  (_%__match3952639527%_
                                   _%e3537635622%_
                                   _%hd3537735626%_
                                   _%tl3537835629%_
                                   _%e3537935632%_
                                   _%hd3538035636%_
                                   _%tl3538135639%_))))
                          (let () (declare (not safe)) (_%g3537335402%_)))))
                  (let () (declare (not safe)) (_%g3537335402%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx35724%_)
        (let* ((_%g3572735751%_
                (lambda (_%g3572835747%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3572835747%_)))
               (_%g3572635959%_
                (lambda (_%g3572835755%_)
                  (if (gx#stx-pair? _%g3572835755%_)
                      (let ((_%e3573135758%_ (gx#syntax-e _%g3572835755%_)))
                        (let ((_%hd3573235762%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3573135758%_)))
                              (_%tl3573335765%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3573135758%_))))
                          (if (gx#stx-pair? _%tl3573335765%_)
                              (let ((_%e3573435768%_
                                     (gx#syntax-e _%tl3573335765%_)))
                                (let ((_%hd3573535772%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3573435768%_)))
                                      (_%tl3573635775%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3573435768%_))))
                                  (if (gx#stx-pair/null? _%hd3573535772%_)
                                      (let ((_g40072_
                                             (gx#syntax-split-splice
                                              _%hd3573535772%_
                                              '0)))
                                        (begin
                                          (let ((_g40073_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g40072_)
                                                       (##values-length
                                                        _g40072_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g40073_ 2)))
                                                (error "Context expects 2 values"
                                                       _g40073_)))
                                          (let ((_%target3573735778%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g40072_ 0)))
                                                (_%tl3573935781%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g40072_ 1))))
                                            (if (gx#stx-null? _%tl3573935781%_)
                                                (letrec ((_%loop3574035784%_
                                                          (lambda (_%hd3573835788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3574435791%_)
                    (if (gx#stx-pair? _%hd3573835788%_)
                        (let ((_%e3574135793%_ (gx#syntax-e _%hd3573835788%_)))
                          (let ((_%lp-hd3574235797%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3574135793%_)))
                                (_%lp-tl3574335800%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3574135793%_))))
                            (_%loop3574035784%_
                             _%lp-tl3574335800%_
                             (cons _%lp-hd3574235797%_ _%e3574435791%_))))
                        (let ((_%e3574535803%_ (reverse _%e3574435791%_)))
                          ((lambda (_%g3572935806%_ _%g3573035808%_)
                             (if (gx#stx-list? _%g3572935806%_)
                                 (let* ((_%g3582635843%_
                                         (lambda (_%g3582735839%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3582735839%_)))
                                        (_%g3582535947%_
                                         (lambda (_%g3582735847%_)
                                           (if (gx#stx-pair/null?
                                                _%g3582735847%_)
                                               (let ((_g40074_
                                                      (gx#syntax-split-splice
                                                       _%g3582735847%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g40075_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g40074_)
                        (##values-length _g40074_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g40075_ 2)))
                 (error "Context expects 2 values" _g40075_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3582935850%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40074_
                                                             0)))
                                                         (_%tl3583135853%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40074_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3583135853%_)
                                                         (letrec ((_%loop3583235856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3583035860%_ _%$e3583635863%_)
                             (if (gx#stx-pair? _%hd3583035860%_)
                                 (let ((_%e3583335865%_
                                        (gx#syntax-e _%hd3583035860%_)))
                                   (let ((_%lp-hd3583435869%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3583335865%_)))
                                         (_%lp-tl3583535872%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3583335865%_))))
                                     (_%loop3583235856%_
                                      _%lp-tl3583535872%_
                                      (cons _%lp-hd3583435869%_
                                            _%$e3583635863%_))))
                                 (let ((_%$e3583735875%_
                                        (reverse _%$e3583635863%_)))
                                   ((lambda (_%g3582835878%_)
                                      (let* ((_%g3589435902%_
                                              (lambda (_%g3589535898%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g3589535898%_)))
                                             (_%g3589335935%_
                                              (lambda (_%g3589535906%_)
                                                ((lambda (_%g3589635909%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets
                          _%g3573035808%_
                          _%g3582835878%_)
                         (foldr (lambda (_%g3592335927%_
                                         _%g3592435930%_
                                         _%g3592535932%_)
                                  (cons (cons _%g3592435930%_
                                              (cons _%g3592335927%_ '()))
                                        _%g3592535932%_))
                                '()
                                _%g3573035808%_
                                _%g3582835878%_))
                       (cons _%g3589635909%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g3589535906%_))))
                                        (_%g3589335935%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx35724%_
                                          (foldr (lambda (_%g3593835941%_
                                                          _%g3593935944%_)
                                                   (cons _%g3593835941%_
                                                         _%g3593935944%_))
                                                 '()
                                                 _%g3582835878%_)
                                          _%g3572935806%_))))
                                    _%$e3583735875%_))))))
                   (_%loop3583235856%_ _%target3582935850%_ '()))
                 (_%g3582635843%_ _%g3582735847%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3582635843%_
                                                _%g3582735847%_)))))
                                   (_%g3582535947%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g3595035953%_
                                                     _%g3595135956%_)
                                              (cons _%g3595035953%_
                                                    _%g3595135956%_))
                                            '()
                                            _%g3573035808%_))))
                                 (_%g3572735751%_ _%g3572835755%_)))
                           _%tl3573635775%_
                           _%e3574535803%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3574035784%_
                                                   _%target3573735778%_
                                                   '()))
                                                (_%g3572735751%_
                                                 _%g3572835755%_)))))
                                      (_%g3572735751%_ _%g3572835755%_))))
                              (_%g3572735751%_ _%g3572835755%_))))
                      (_%g3572735751%_ _%g3572835755%_)))))
          (_%g3572635959%_ _%stx35724%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx35965%_)
        (let* ((_%__stx3952939530%_ _%$stx35965%_)
               (_%g3597136054%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3952939530%_))))
          (let ((_%__kont3953239533%_
                 (lambda (_%g3597336374%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3639036393%_ _%g3639136396%_)
                                        (cons _%g3639036393%_ _%g3639136396%_))
                                      '()
                                      _%g3597336374%_)))))
                (_%__kont3953639537%_
                 (lambda (_%g3598936284%_
                          _%g3599036286%_
                          _%g3599136287%_
                          _%g3599236288%_)
                   (cons _%g3599236288%_
                         (cons (cons (cons _%g3599136287%_
                                           (cons _%g3599036286%_ '()))
                                     '())
                               (foldr (lambda (_%g3631036313%_ _%g3631136316%_)
                                        (cons _%g3631036313%_ _%g3631136316%_))
                                      '()
                                      _%g3598936284%_)))))
                (_%__kont3954039541%_
                 (lambda (_%g3601436159%_ _%g3601536161%_ _%g3601636162%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3618436191%_ _%g3618536194%_)
                                        (cons _%g3618436191%_ _%g3618536194%_))
                                      '()
                                      _%g3601536161%_)
                               (cons (cons (foldr (lambda (_%g3618636197%_
                                                           _%g3618736200%_)
                                                    (cons _%g3618636197%_
                                                          _%g3618736200%_))
                                                  '()
                                                  _%g3601636162%_)
                                           (foldr (lambda (_%g3618836203%_
                                                           _%g3618936206%_)
                                                    (cons _%g3618836203%_
                                                          _%g3618936206%_))
                                                  '()
                                                  _%g3601436159%_))
                                     '()))))))
            (let* ((_%__match3962239623%_
                    (lambda (_%e3601736061%_
                             _%hd3601836065%_
                             _%tl3601936068%_
                             _%e3602036071%_
                             _%hd3602136075%_
                             _%tl3602236078%_
                             _%__splice3954239543%_
                             _%target3602336081%_
                             _%tl3602536084%_)
                      (letrec ((_%loop3602636087%_
                                (lambda (_%hd3602436091%_
                                         _%expr3603036094%_
                                         _%hd3603136095%_)
                                  (if (gx#stx-pair? _%hd3602436091%_)
                                      (let ((_%e3602736097%_
                                             (gx#syntax-e _%hd3602436091%_)))
                                        (let ((_%lp-tl3602936104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3602736097%_)))
                                              (_%lp-hd3602836101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3602736097%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3602836101%_)
                                              (let ((_%e3603436107%_
                                                     (gx#syntax-e
                                                      _%lp-hd3602836101%_)))
                                                (let ((_%tl3603636114%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3603436107%_)))
                                                      (_%hd3603536111%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3603436107%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3603636114%_)
                                                      (let ((_%e3603736117%_
                                                             (gx#syntax-e
                                                              _%tl3603636114%_)))
                                                        (let ((_%tl3603936124%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3603736117%_)))
                      (_%hd3603836121%_
                       (let () (declare (not safe)) (##car _%e3603736117%_))))
                  (if (gx#stx-null? _%tl3603936124%_)
                      (_%loop3602636087%_
                       _%lp-tl3602936104%_
                       (cons _%hd3603836121%_ _%expr3603036094%_)
                       (cons _%hd3603536111%_ _%hd3603136095%_))
                      (let () (declare (not safe)) (_%g3597136054%_)))))
              (let () (declare (not safe)) (_%g3597136054%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3597136054%_)))))
                                      (let ((_%hd3603336129%_
                                             (reverse _%hd3603136095%_))
                                            (_%expr3603236127%_
                                             (reverse _%expr3603036094%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3602236078%_)
                                            (let ((_%__splice3954439545%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl3602236078%_
                                                    '0)))
                                              (let ((_%tl3604236134%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3954439545%_
                                                        '1)))
                                                    (_%target3604036131%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3954439545%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3604236134%_)
                                                    (letrec ((_%loop3604336137%_
                                                              (lambda (_%hd3604136141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3604736144%_)
                        (if (gx#stx-pair? _%hd3604136141%_)
                            (let ((_%e3604436146%_
                                   (gx#syntax-e _%hd3604136141%_)))
                              (let ((_%lp-tl3604636153%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3604436146%_)))
                                    (_%lp-hd3604536150%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3604436146%_))))
                                (_%loop3604336137%_
                                 _%lp-tl3604636153%_
                                 (cons _%lp-hd3604536150%_
                                       _%body3604736144%_))))
                            (let ((_%body3604836156%_
                                   (reverse _%body3604736144%_)))
                              (_%__kont3954039541%_
                               _%body3604836156%_
                               _%expr3603236127%_
                               _%hd3603336129%_))))))
              (_%loop3604336137%_ _%target3604036131%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3597136054%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3597136054%_))))))))
                        (_%loop3602636087%_ _%target3602336081%_ '() '()))))
                   (_%__match3961439615%_
                    (lambda (_%e3601736061%_
                             _%hd3601836065%_
                             _%tl3601936068%_
                             _%e3602036071%_
                             _%hd3602136075%_
                             _%tl3602236078%_)
                      (if (gx#stx-pair/null? _%hd3602136075%_)
                          (let ((_%__splice3954239543%_
                                 (gx#syntax-split-splice->vector
                                  _%hd3602136075%_
                                  '0)))
                            (let ((_%tl3602536084%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3954239543%_ '1)))
                                  (_%target3602336081%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3954239543%_
                                      '0))))
                              (if (gx#stx-null? _%tl3602536084%_)
                                  (_%__match3962239623%_
                                   _%e3601736061%_
                                   _%hd3601836065%_
                                   _%tl3601936068%_
                                   _%e3602036071%_
                                   _%hd3602136075%_
                                   _%tl3602236078%_
                                   _%__splice3954239543%_
                                   _%target3602336081%_
                                   _%tl3602536084%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3597136054%_)))))
                          (let () (declare (not safe)) (_%g3597136054%_)))))
                   (_%__match3960239603%_
                    (lambda (_%e3599336216%_
                             _%hd3599436220%_
                             _%tl3599536223%_
                             _%e3599636226%_
                             _%hd3599736230%_
                             _%tl3599836233%_
                             _%e3599936236%_
                             _%hd3600036240%_
                             _%tl3600136243%_
                             _%e3600236246%_
                             _%hd3600336250%_
                             _%tl3600436253%_
                             _%__splice3953839539%_
                             _%target3600536256%_
                             _%tl3600736259%_)
                      (letrec ((_%loop3600836262%_
                                (lambda (_%hd3600636266%_ _%body3601236269%_)
                                  (if (gx#stx-pair? _%hd3600636266%_)
                                      (let ((_%e3600936271%_
                                             (gx#syntax-e _%hd3600636266%_)))
                                        (let ((_%lp-tl3601136278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3600936271%_)))
                                              (_%lp-hd3601036275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3600936271%_))))
                                          (_%loop3600836262%_
                                           _%lp-tl3601136278%_
                                           (cons _%lp-hd3601036275%_
                                                 _%body3601236269%_))))
                                      (let ((_%body3601336281%_
                                             (reverse _%body3601236269%_)))
                                        (let ((_%g3598936284%_
                                               _%body3601336281%_)
                                              (_%g3599036286%_
                                               _%hd3600336250%_)
                                              (_%g3599136287%_
                                               _%hd3600036240%_)
                                              (_%g3599236288%_
                                               _%hd3599436220%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%g3599136287%_)
                                              (_%__kont3953639537%_
                                               _%g3598936284%_
                                               _%g3599036286%_
                                               _%g3599136287%_
                                               _%g3599236288%_)
                                              (_%__match3961439615%_
                                               _%e3599336216%_
                                               _%hd3599436220%_
                                               _%tl3599536223%_
                                               _%e3599636226%_
                                               _%hd3599736230%_
                                               _%tl3599836233%_))))))))
                        (_%loop3600836262%_ _%target3600536256%_ '()))))
                   (_%__match3956839569%_
                    (lambda (_%e3597436326%_
                             _%hd3597536330%_
                             _%tl3597636333%_
                             _%e3597736336%_
                             _%hd3597836340%_
                             _%tl3597936343%_
                             _%__splice3953439535%_
                             _%target3598036346%_
                             _%tl3598236349%_)
                      (letrec ((_%loop3598336352%_
                                (lambda (_%hd3598136356%_ _%body3598736359%_)
                                  (if (gx#stx-pair? _%hd3598136356%_)
                                      (let ((_%e3598436361%_
                                             (gx#syntax-e _%hd3598136356%_)))
                                        (let ((_%lp-tl3598636368%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3598436361%_)))
                                              (_%lp-hd3598536365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3598436361%_))))
                                          (_%loop3598336352%_
                                           _%lp-tl3598636368%_
                                           (cons _%lp-hd3598536365%_
                                                 _%body3598736359%_))))
                                      (let ((_%body3598836371%_
                                             (reverse _%body3598736359%_)))
                                        (_%__kont3953239533%_
                                         _%body3598836371%_))))))
                        (_%loop3598336352%_ _%target3598036346%_ '())))))
              (if (gx#stx-pair? _%__stx3952939530%_)
                  (let ((_%e3597436326%_ (gx#syntax-e _%__stx3952939530%_)))
                    (let ((_%tl3597636333%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3597436326%_)))
                          (_%hd3597536330%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3597436326%_))))
                      (if (gx#stx-pair? _%tl3597636333%_)
                          (let ((_%e3597736336%_
                                 (gx#syntax-e _%tl3597636333%_)))
                            (let ((_%tl3597936343%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3597736336%_)))
                                  (_%hd3597836340%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3597736336%_))))
                              (if (gx#stx-null? _%hd3597836340%_)
                                  (if (gx#stx-pair/null? _%tl3597936343%_)
                                      (let ((_%__splice3953439535%_
                                             (gx#syntax-split-splice->vector
                                              _%tl3597936343%_
                                              '0)))
                                        (let ((_%tl3598236349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3953439535%_
                                                  '1)))
                                              (_%target3598036346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3953439535%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3598236349%_)
                                              (_%__match3956839569%_
                                               _%e3597436326%_
                                               _%hd3597536330%_
                                               _%tl3597636333%_
                                               _%e3597736336%_
                                               _%hd3597836340%_
                                               _%tl3597936343%_
                                               _%__splice3953439535%_
                                               _%target3598036346%_
                                               _%tl3598236349%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3597836340%_)
                                                  (let ((_%__splice3954239543%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3597836340%_
                                                          '0)))
                                                    (let ((_%tl3602536084%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3954239543%_
                                                              '1)))
                                                          (_%target3602336081%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3954239543%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3602536084%_)
                                                          (_%__match3962239623%_
                                                           _%e3597436326%_
                                                           _%hd3597536330%_
                                                           _%tl3597636333%_
                                                           _%e3597736336%_
                                                           _%hd3597836340%_
                                                           _%tl3597936343%_
                                                           _%__splice3954239543%_
                                                           _%target3602336081%_
                                                           _%tl3602536084%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3597136054%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3597136054%_))))))
                                      (if (gx#stx-pair/null? _%hd3597836340%_)
                                          (let ((_%__splice3954239543%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3597836340%_
                                                  '0)))
                                            (let ((_%tl3602536084%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3954239543%_
                                                      '1)))
                                                  (_%target3602336081%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3954239543%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3602536084%_)
                                                  (_%__match3962239623%_
                                                   _%e3597436326%_
                                                   _%hd3597536330%_
                                                   _%tl3597636333%_
                                                   _%e3597736336%_
                                                   _%hd3597836340%_
                                                   _%tl3597936343%_
                                                   _%__splice3954239543%_
                                                   _%target3602336081%_
                                                   _%tl3602536084%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3597136054%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3597136054%_))))
                                  (if (gx#stx-pair? _%hd3597836340%_)
                                      (let ((_%e3599936236%_
                                             (gx#syntax-e _%hd3597836340%_)))
                                        (let ((_%tl3600136243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3599936236%_)))
                                              (_%hd3600036240%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3599936236%_))))
                                          (if (gx#stx-pair? _%tl3600136243%_)
                                              (let ((_%e3600236246%_
                                                     (gx#syntax-e
                                                      _%tl3600136243%_)))
                                                (let ((_%tl3600436253%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3600236246%_)))
                                                      (_%hd3600336250%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3600236246%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3600436253%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3597936343%_)
                                                          (let ((_%__splice3953839539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl3597936343%_ '0)))
                    (let ((_%tl3600736259%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3953839539%_ '1)))
                          (_%target3600536256%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3953839539%_ '0))))
                      (if (gx#stx-null? _%tl3600736259%_)
                          (_%__match3960239603%_
                           _%e3597436326%_
                           _%hd3597536330%_
                           _%tl3597636333%_
                           _%e3597736336%_
                           _%hd3597836340%_
                           _%tl3597936343%_
                           _%e3599936236%_
                           _%hd3600036240%_
                           _%tl3600136243%_
                           _%e3600236246%_
                           _%hd3600336250%_
                           _%tl3600436253%_
                           _%__splice3953839539%_
                           _%target3600536256%_
                           _%tl3600736259%_)
                          (if (gx#stx-pair/null? _%hd3597836340%_)
                              (let ((_%__splice3954239543%_
                                     (gx#syntax-split-splice->vector
                                      _%hd3597836340%_
                                      '0)))
                                (let ((_%tl3602536084%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3954239543%_
                                          '1)))
                                      (_%target3602336081%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3954239543%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3602536084%_)
                                      (_%__match3962239623%_
                                       _%e3597436326%_
                                       _%hd3597536330%_
                                       _%tl3597636333%_
                                       _%e3597736336%_
                                       _%hd3597836340%_
                                       _%tl3597936343%_
                                       _%__splice3954239543%_
                                       _%target3602336081%_
                                       _%tl3602536084%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3597136054%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3597136054%_))))))
                  (if (gx#stx-pair/null? _%hd3597836340%_)
                      (let ((_%__splice3954239543%_
                             (gx#syntax-split-splice->vector
                              _%hd3597836340%_
                              '0)))
                        (let ((_%tl3602536084%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3954239543%_ '1)))
                              (_%target3602336081%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3954239543%_ '0))))
                          (if (gx#stx-null? _%tl3602536084%_)
                              (_%__match3962239623%_
                               _%e3597436326%_
                               _%hd3597536330%_
                               _%tl3597636333%_
                               _%e3597736336%_
                               _%hd3597836340%_
                               _%tl3597936343%_
                               _%__splice3954239543%_
                               _%target3602336081%_
                               _%tl3602536084%_)
                              (let ()
                                (declare (not safe))
                                (_%g3597136054%_)))))
                      (let () (declare (not safe)) (_%g3597136054%_))))
              (if (gx#stx-pair/null? _%hd3597836340%_)
                  (let ((_%__splice3954239543%_
                         (gx#syntax-split-splice->vector _%hd3597836340%_ '0)))
                    (let ((_%tl3602536084%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3954239543%_ '1)))
                          (_%target3602336081%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3954239543%_ '0))))
                      (if (gx#stx-null? _%tl3602536084%_)
                          (_%__match3962239623%_
                           _%e3597436326%_
                           _%hd3597536330%_
                           _%tl3597636333%_
                           _%e3597736336%_
                           _%hd3597836340%_
                           _%tl3597936343%_
                           _%__splice3954239543%_
                           _%target3602336081%_
                           _%tl3602536084%_)
                          (let () (declare (not safe)) (_%g3597136054%_)))))
                  (let () (declare (not safe)) (_%g3597136054%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3597836340%_)
                                                  (let ((_%__splice3954239543%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3597836340%_
                                                          '0)))
                                                    (let ((_%tl3602536084%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3954239543%_
                                                              '1)))
                                                          (_%target3602336081%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3954239543%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3602536084%_)
                                                          (_%__match3962239623%_
                                                           _%e3597436326%_
                                                           _%hd3597536330%_
                                                           _%tl3597636333%_
                                                           _%e3597736336%_
                                                           _%hd3597836340%_
                                                           _%tl3597936343%_
                                                           _%__splice3954239543%_
                                                           _%target3602336081%_
                                                           _%tl3602536084%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3597136054%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3597136054%_))))))
                                      (if (gx#stx-pair/null? _%hd3597836340%_)
                                          (let ((_%__splice3954239543%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3597836340%_
                                                  '0)))
                                            (let ((_%tl3602536084%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3954239543%_
                                                      '1)))
                                                  (_%target3602336081%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3954239543%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3602536084%_)
                                                  (_%__match3962239623%_
                                                   _%e3597436326%_
                                                   _%hd3597536330%_
                                                   _%tl3597636333%_
                                                   _%e3597736336%_
                                                   _%hd3597836340%_
                                                   _%tl3597936343%_
                                                   _%__splice3954239543%_
                                                   _%target3602336081%_
                                                   _%tl3602536084%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3597136054%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3597136054%_)))))))
                          (let () (declare (not safe)) (_%g3597136054%_)))))
                  (let () (declare (not safe)) (_%g3597136054%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36407%_)
        (let* ((_%__stx3962539626%_ _%$stx36407%_)
               (_%g3641236464%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3962539626%_))))
          (let ((_%__kont3962839629%_
                 (lambda (_%g3641436630%_
                          _%g3641536632%_
                          _%g3641636633%_
                          _%g3641736634%_
                          _%g3641836635%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%g3641736634%_
                                           (cons _%g3641636633%_ '()))
                                     '())
                               (cons (cons _%g3641836635%_
                                           (cons _%g3641536632%_
                                                 (foldr (lambda (_%g3666036663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3666136666%_)
                  (cons _%g3666036663%_ _%g3666136666%_))
                '()
                _%g3641436630%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3963239633%_
                 (lambda (_%g3644336519%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3653636539%_ _%g3653736542%_)
                                        (cons _%g3653636539%_ _%g3653736542%_))
                                      '()
                                      _%g3644336519%_))))))
            (let* ((_%__match3969839699%_
                    (lambda (_%e3644436471%_
                             _%hd3644536475%_
                             _%tl3644636478%_
                             _%e3644736481%_
                             _%hd3644836485%_
                             _%tl3644936488%_
                             _%__splice3963439635%_
                             _%target3645036491%_
                             _%tl3645236494%_)
                      (letrec ((_%loop3645336497%_
                                (lambda (_%hd3645136501%_ _%body3645736504%_)
                                  (if (gx#stx-pair? _%hd3645136501%_)
                                      (let ((_%e3645436506%_
                                             (gx#syntax-e _%hd3645136501%_)))
                                        (let ((_%lp-tl3645636513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3645436506%_)))
                                              (_%lp-hd3645536510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3645436506%_))))
                                          (_%loop3645336497%_
                                           _%lp-tl3645636513%_
                                           (cons _%lp-hd3645536510%_
                                                 _%body3645736504%_))))
                                      (let ((_%body3645836516%_
                                             (reverse _%body3645736504%_)))
                                        (_%__kont3963239633%_
                                         _%body3645836516%_))))))
                        (_%loop3645336497%_ _%target3645036491%_ '()))))
                   (_%__match3967639677%_
                    (lambda (_%e3641936552%_
                             _%hd3642036556%_
                             _%tl3642136559%_
                             _%e3642236562%_
                             _%hd3642336566%_
                             _%tl3642436569%_
                             _%e3642536572%_
                             _%hd3642636576%_
                             _%tl3642736579%_
                             _%e3642836582%_
                             _%hd3642936586%_
                             _%tl3643036589%_
                             _%e3643136592%_
                             _%hd3643236596%_
                             _%tl3643336599%_
                             _%__splice3963039631%_
                             _%target3643436602%_
                             _%tl3643636605%_)
                      (letrec ((_%loop3643736608%_
                                (lambda (_%hd3643536612%_ _%body3644136615%_)
                                  (if (gx#stx-pair? _%hd3643536612%_)
                                      (let ((_%e3643836617%_
                                             (gx#syntax-e _%hd3643536612%_)))
                                        (let ((_%lp-tl3644036624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3643836617%_)))
                                              (_%lp-hd3643936621%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3643836617%_))))
                                          (_%loop3643736608%_
                                           _%lp-tl3644036624%_
                                           (cons _%lp-hd3643936621%_
                                                 _%body3644136615%_))))
                                      (let ((_%body3644236627%_
                                             (reverse _%body3644136615%_)))
                                        (_%__kont3962839629%_
                                         _%body3644236627%_
                                         _%tl3642736579%_
                                         _%hd3643236596%_
                                         _%hd3642936586%_
                                         _%hd3642036556%_))))))
                        (_%loop3643736608%_ _%target3643436602%_ '())))))
              (if (gx#stx-pair? _%__stx3962539626%_)
                  (let ((_%e3641936552%_ (gx#syntax-e _%__stx3962539626%_)))
                    (let ((_%tl3642136559%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3641936552%_)))
                          (_%hd3642036556%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3641936552%_))))
                      (if (gx#stx-pair? _%tl3642136559%_)
                          (let ((_%e3642236562%_
                                 (gx#syntax-e _%tl3642136559%_)))
                            (let ((_%tl3642436569%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3642236562%_)))
                                  (_%hd3642336566%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3642236562%_))))
                              (if (gx#stx-pair? _%hd3642336566%_)
                                  (let ((_%e3642536572%_
                                         (gx#syntax-e _%hd3642336566%_)))
                                    (let ((_%tl3642736579%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3642536572%_)))
                                          (_%hd3642636576%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3642536572%_))))
                                      (if (gx#stx-pair? _%hd3642636576%_)
                                          (let ((_%e3642836582%_
                                                 (gx#syntax-e
                                                  _%hd3642636576%_)))
                                            (let ((_%tl3643036589%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3642836582%_)))
                                                  (_%hd3642936586%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3642836582%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3643036589%_)
                                                  (let ((_%e3643136592%_
                                                         (gx#syntax-e
                                                          _%tl3643036589%_)))
                                                    (let ((_%tl3643336599%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3643136592%_)))
                                                          (_%hd3643236596%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3643136592%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3643336599%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3642436569%_)
                                                              (let ((_%__splice3963039631%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl3642436569%_
                              '0)))
                        (let ((_%tl3643636605%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3963039631%_ '1)))
                              (_%target3643436602%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3963039631%_ '0))))
                          (if (gx#stx-null? _%tl3643636605%_)
                              (_%__match3967639677%_
                               _%e3641936552%_
                               _%hd3642036556%_
                               _%tl3642136559%_
                               _%e3642236562%_
                               _%hd3642336566%_
                               _%tl3642436569%_
                               _%e3642536572%_
                               _%hd3642636576%_
                               _%tl3642736579%_
                               _%e3642836582%_
                               _%hd3642936586%_
                               _%tl3643036589%_
                               _%e3643136592%_
                               _%hd3643236596%_
                               _%tl3643336599%_
                               _%__splice3963039631%_
                               _%target3643436602%_
                               _%tl3643636605%_)
                              (let ()
                                (declare (not safe))
                                (_%g3641236464%_)))))
                      (let () (declare (not safe)) (_%g3641236464%_)))
                  (let () (declare (not safe)) (_%g3641236464%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3641236464%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3641236464%_)))))
                                  (if (gx#stx-null? _%hd3642336566%_)
                                      (if (gx#stx-pair/null? _%tl3642436569%_)
                                          (let ((_%__splice3963439635%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl3642436569%_
                                                  '0)))
                                            (let ((_%tl3645236494%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3963439635%_
                                                      '1)))
                                                  (_%target3645036491%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3963439635%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3645236494%_)
                                                  (_%__match3969839699%_
                                                   _%e3641936552%_
                                                   _%hd3642036556%_
                                                   _%tl3642136559%_
                                                   _%e3642236562%_
                                                   _%hd3642336566%_
                                                   _%tl3642436569%_
                                                   _%__splice3963439635%_
                                                   _%target3645036491%_
                                                   _%tl3645236494%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3641236464%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3641236464%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3641236464%_))))))
                          (let () (declare (not safe)) (_%g3641236464%_)))))
                  (let () (declare (not safe)) (_%g3641236464%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx36675%_)
        (let* ((_%__stx3970139702%_ _%$stx36675%_)
               (_%g3668636832%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3970139702%_))))
          (let ((_%__kont3970439705%_
                 (lambda (_%g3668837432%_ _%g3668937434%_ _%g3669037435%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3745637459%_ _%g3745737462%_)
                                  (cons (cons _%g3669037435%_
                                              (cons _%g3745637459%_
                                                    (cons _%g3668837432%_
                                                          '())))
                                        _%g3745737462%_))
                                '()
                                _%g3668937434%_))))
                (_%__kont3970839709%_
                 (lambda (_%g3671237324%_ _%g3671337326%_ _%g3671437327%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3734837351%_ _%g3734937354%_)
                                  (cons (cons _%g3671437327%_
                                              (cons _%g3734837351%_
                                                    (cons _%g3671237324%_
                                                          '())))
                                        _%g3734937354%_))
                                '()
                                _%g3671337326%_))))
                (_%__kont3971239713%_
                 (lambda (_%g3673637226%_ _%g3673737228%_ _%g3673837229%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%g3673837229%_
                                     (cons _%g3673737228%_
                                           (cons _%g3673637226%_ '())))
                               '()))))
                (_%__kont3971439715%_
                 (lambda (_%g3675437152%_ _%g3675537154%_)
                   (cons _%g3675537154%_ (cons _%g3675437152%_ '()))))
                (_%__kont3971639717%_
                 (lambda (_%g3676537100%_ _%g3676637102%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%g3676637102%_
                                           (cons _%g3676537100%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont3971839719%_
                 (lambda (_%g3677337052%_ _%g3677437054%_ _%g3677537055%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%g3677537055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g3677437054%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3677337052%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3972039721%_
                 (lambda (_%g3678836983%_ _%g3678936985%_ _%g3679036986%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g3679036986%_
                                                       (cons _%g3678936985%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3678836983%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3972239723%_
                 (lambda (_%g3680436903%_
                          _%g3680536905%_
                          _%g3680636906%_
                          _%g3680736907%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g3680736907%_
                                                       (cons _%g3680636906%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3680436903%_
                                                             (cons (cons _%g3680536905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match3987439875%_
                    (lambda (_%e3677637012%_
                             _%hd3677737016%_
                             _%tl3677837019%_
                             _%e3677937022%_
                             _%hd3678037026%_
                             _%tl3678137029%_
                             _%e3678237032%_
                             _%hd3678337036%_
                             _%tl3678437039%_)
                      (if (gx#identifier? _%hd3678337036%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40076_|
                               _%hd3678337036%_)
                              (if (gx#stx-pair? _%tl3678437039%_)
                                  (let ((_%e3678537042%_
                                         (gx#syntax-e _%tl3678437039%_)))
                                    (let ((_%tl3678737049%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3678537042%_)))
                                          (_%hd3678637046%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3678537042%_))))
                                      (if (gx#stx-null? _%tl3678737049%_)
                                          (_%__kont3971839719%_
                                           _%hd3678637046%_
                                           _%hd3678037026%_
                                           _%hd3677737016%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3668636832%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3668636832%_)))
                              (let () (declare (not safe)) (_%g3668636832%_)))
                          (if (gx#stx-datum? _%hd3678337036%_)
                              (let ((_%e3680036969%_
                                     (gx#stx-e _%hd3678337036%_)))
                                (if (equal? _%e3680036969%_ '::)
                                    (if (gx#stx-pair? _%tl3678437039%_)
                                        (let ((_%e3680136973%_
                                               (gx#syntax-e _%tl3678437039%_)))
                                          (let ((_%tl3680336980%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3680136973%_)))
                                                (_%hd3680236977%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3680136973%_))))
                                            (if (gx#stx-null? _%tl3680336980%_)
                                                (_%__kont3972039721%_
                                                 _%hd3680236977%_
                                                 _%hd3678037026%_
                                                 _%hd3677737016%_)
                                                (if (gx#stx-pair?
                                                     _%tl3680336980%_)
                                                    (let ((_%e3682136883%_
                                                           (gx#syntax-e
                                                            _%tl3680336980%_)))
                                                      (let ((_%tl3682336890%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3682136883%_)))
                    (_%hd3682236887%_
                     (let () (declare (not safe)) (##car _%e3682136883%_))))
                (if (gx#identifier? _%hd3682236887%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g40077_|
                         _%hd3682236887%_)
                        (if (gx#stx-pair? _%tl3682336890%_)
                            (let ((_%e3682436893%_
                                   (gx#syntax-e _%tl3682336890%_)))
                              (let ((_%tl3682636900%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3682436893%_)))
                                    (_%hd3682536897%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3682436893%_))))
                                (if (gx#stx-null? _%tl3682636900%_)
                                    (_%__kont3972239723%_
                                     _%hd3682536897%_
                                     _%hd3680236977%_
                                     _%hd3678037026%_
                                     _%hd3677737016%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3668636832%_)))))
                            (let () (declare (not safe)) (_%g3668636832%_)))
                        (let () (declare (not safe)) (_%g3668636832%_)))
                    (let () (declare (not safe)) (_%g3668636832%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3668636832%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3668636832%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3668636832%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3668636832%_))))))
                   (_%__match3985439855%_
                    (lambda (_%e3676737080%_
                             _%hd3676837084%_
                             _%tl3676937087%_
                             _%e3677037090%_
                             _%hd3677137094%_
                             _%tl3677237097%_)
                      (if (gx#stx-null? _%tl3677237097%_)
                          (_%__kont3971639717%_
                           _%hd3677137094%_
                           _%hd3676837084%_)
                          (if (gx#stx-pair? _%tl3677237097%_)
                              (let ((_%e3678237032%_
                                     (gx#syntax-e _%tl3677237097%_)))
                                (let ((_%tl3678437039%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3678237032%_)))
                                      (_%hd3678337036%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3678237032%_))))
                                  (if (gx#identifier? _%hd3678337036%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40076_|
                                           _%hd3678337036%_)
                                          (if (gx#stx-pair? _%tl3678437039%_)
                                              (let ((_%e3678537042%_
                                                     (gx#syntax-e
                                                      _%tl3678437039%_)))
                                                (let ((_%tl3678737049%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3678537042%_)))
                                                      (_%hd3678637046%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3678537042%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3678737049%_)
                                                      (_%__kont3971839719%_
                                                       _%hd3678637046%_
                                                       _%hd3677137094%_
                                                       _%hd3676837084%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3668636832%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3668636832%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3668636832%_)))
                                      (if (gx#stx-datum? _%hd3678337036%_)
                                          (let ((_%e3680036969%_
                                                 (gx#stx-e _%hd3678337036%_)))
                                            (if (equal? _%e3680036969%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3678437039%_)
                                                    (let ((_%e3680136973%_
                                                           (gx#syntax-e
                                                            _%tl3678437039%_)))
                                                      (let ((_%tl3680336980%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3680136973%_)))
                    (_%hd3680236977%_
                     (let () (declare (not safe)) (##car _%e3680136973%_))))
                (if (gx#stx-null? _%tl3680336980%_)
                    (_%__kont3972039721%_
                     _%hd3680236977%_
                     _%hd3677137094%_
                     _%hd3676837084%_)
                    (if (gx#stx-pair? _%tl3680336980%_)
                        (let ((_%e3682136883%_ (gx#syntax-e _%tl3680336980%_)))
                          (let ((_%tl3682336890%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3682136883%_)))
                                (_%hd3682236887%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3682136883%_))))
                            (if (gx#identifier? _%hd3682236887%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g40077_|
                                     _%hd3682236887%_)
                                    (if (gx#stx-pair? _%tl3682336890%_)
                                        (let ((_%e3682436893%_
                                               (gx#syntax-e _%tl3682336890%_)))
                                          (let ((_%tl3682636900%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3682436893%_)))
                                                (_%hd3682536897%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3682436893%_))))
                                            (if (gx#stx-null? _%tl3682636900%_)
                                                (_%__kont3972239723%_
                                                 _%hd3682536897%_
                                                 _%hd3680236977%_
                                                 _%hd3677137094%_
                                                 _%hd3676837084%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3668636832%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3668636832%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3668636832%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3668636832%_)))))
                        (let () (declare (not safe)) (_%g3668636832%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3668636832%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3668636832%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3668636832%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3668636832%_))))))
                   (_%__match3978439785%_
                    (lambda (_%e3671537256%_
                             _%hd3671637260%_
                             _%tl3671737263%_
                             _%e3671837266%_
                             _%hd3671937270%_
                             _%tl3672037273%_
                             _%e3672137276%_
                             _%hd3672237280%_
                             _%tl3672337283%_
                             _%__splice3971039711%_
                             _%target3672437286%_
                             _%tl3672637289%_)
                      (letrec ((_%loop3672737292%_
                                (lambda (_%hd3672537296%_ _%pred3673137299%_)
                                  (if (gx#stx-pair? _%hd3672537296%_)
                                      (let ((_%e3672837301%_
                                             (gx#syntax-e _%hd3672537296%_)))
                                        (let ((_%lp-tl3673037308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3672837301%_)))
                                              (_%lp-hd3672937305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3672837301%_))))
                                          (_%loop3672737292%_
                                           _%lp-tl3673037308%_
                                           (cons _%lp-hd3672937305%_
                                                 _%pred3673137299%_))))
                                      (let ((_%pred3673237311%_
                                             (reverse _%pred3673137299%_)))
                                        (if (gx#stx-pair? _%tl3672037273%_)
                                            (let ((_%e3673337314%_
                                                   (gx#syntax-e
                                                    _%tl3672037273%_)))
                                              (let ((_%tl3673537321%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3673337314%_)))
                                                    (_%hd3673437318%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3673337314%_))))
                                                (if (gx#stx-null?
                                                     _%tl3673537321%_)
                                                    (_%__kont3970839709%_
                                                     _%hd3673437318%_
                                                     _%pred3673237311%_
                                                     _%hd3671637260%_)
                                                    (_%__match3987439875%_
                                                     _%e3671537256%_
                                                     _%hd3671637260%_
                                                     _%tl3671737263%_
                                                     _%e3671837266%_
                                                     _%hd3671937270%_
                                                     _%tl3672037273%_
                                                     _%e3673337314%_
                                                     _%hd3673437318%_
                                                     _%tl3673537321%_))))
                                            (_%__match3985439855%_
                                             _%e3671537256%_
                                             _%hd3671637260%_
                                             _%tl3671737263%_
                                             _%e3671837266%_
                                             _%hd3671937270%_
                                             _%tl3672037273%_)))))))
                        (_%loop3672737292%_ _%target3672437286%_ '()))))
                   (_%__match3975439755%_
                    (lambda (_%e3669137364%_
                             _%hd3669237368%_
                             _%tl3669337371%_
                             _%e3669437374%_
                             _%hd3669537378%_
                             _%tl3669637381%_
                             _%e3669737384%_
                             _%hd3669837388%_
                             _%tl3669937391%_
                             _%__splice3970639707%_
                             _%target3670037394%_
                             _%tl3670237397%_)
                      (letrec ((_%loop3670337400%_
                                (lambda (_%hd3670137404%_ _%pred3670737407%_)
                                  (if (gx#stx-pair? _%hd3670137404%_)
                                      (let ((_%e3670437409%_
                                             (gx#syntax-e _%hd3670137404%_)))
                                        (let ((_%lp-tl3670637416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3670437409%_)))
                                              (_%lp-hd3670537413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3670437409%_))))
                                          (_%loop3670337400%_
                                           _%lp-tl3670637416%_
                                           (cons _%lp-hd3670537413%_
                                                 _%pred3670737407%_))))
                                      (let ((_%pred3670837419%_
                                             (reverse _%pred3670737407%_)))
                                        (if (gx#stx-pair? _%tl3669637381%_)
                                            (let ((_%e3670937422%_
                                                   (gx#syntax-e
                                                    _%tl3669637381%_)))
                                              (let ((_%tl3671137429%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3670937422%_)))
                                                    (_%hd3671037426%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3670937422%_))))
                                                (if (gx#stx-null?
                                                     _%tl3671137429%_)
                                                    (_%__kont3970439705%_
                                                     _%hd3671037426%_
                                                     _%pred3670837419%_
                                                     _%hd3669237368%_)
                                                    (_%__match3987439875%_
                                                     _%e3669137364%_
                                                     _%hd3669237368%_
                                                     _%tl3669337371%_
                                                     _%e3669437374%_
                                                     _%hd3669537378%_
                                                     _%tl3669637381%_
                                                     _%e3670937422%_
                                                     _%hd3671037426%_
                                                     _%tl3671137429%_))))
                                            (_%__match3985439855%_
                                             _%e3669137364%_
                                             _%hd3669237368%_
                                             _%tl3669337371%_
                                             _%e3669437374%_
                                             _%hd3669537378%_
                                             _%tl3669637381%_)))))))
                        (_%loop3670337400%_ _%target3670037394%_ '())))))
              (if (gx#stx-pair? _%__stx3970139702%_)
                  (let ((_%e3669137364%_ (gx#syntax-e _%__stx3970139702%_)))
                    (let ((_%tl3669337371%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3669137364%_)))
                          (_%hd3669237368%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3669137364%_))))
                      (if (gx#stx-pair? _%tl3669337371%_)
                          (let ((_%e3669437374%_
                                 (gx#syntax-e _%tl3669337371%_)))
                            (let ((_%tl3669637381%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3669437374%_)))
                                  (_%hd3669537378%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3669437374%_))))
                              (if (gx#stx-pair? _%hd3669537378%_)
                                  (let ((_%e3669737384%_
                                         (gx#syntax-e _%hd3669537378%_)))
                                    (let ((_%tl3669937391%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3669737384%_)))
                                          (_%hd3669837388%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3669737384%_))))
                                      (if (gx#identifier? _%hd3669837388%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40078_|
                                               _%hd3669837388%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3669937391%_)
                                                  (let ((_%__splice3970639707%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl3669937391%_
                                                          '0)))
                                                    (let ((_%tl3670237397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3970639707%_
                                                              '1)))
                                                          (_%target3670037394%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3970639707%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3670237397%_)
                                                          (_%__match3975439755%_
                                                           _%e3669137364%_
                                                           _%hd3669237368%_
                                                           _%tl3669337371%_
                                                           _%e3669437374%_
                                                           _%hd3669537378%_
                                                           _%tl3669637381%_
                                                           _%e3669737384%_
                                                           _%hd3669837388%_
                                                           _%tl3669937391%_
                                                           _%__splice3970639707%_
                                                           _%target3670037394%_
                                                           _%tl3670237397%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3669637381%_)
                                                              (let ((_%e3676237142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3669637381%_)))
                        (let ((_%tl3676437149%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3676237142%_)))
                              (_%hd3676337146%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3676237142%_))))
                          (if (gx#stx-null? _%tl3676437149%_)
                              (_%__kont3971439715%_
                               _%hd3676337146%_
                               _%hd3669537378%_)
                              (if (gx#identifier? _%hd3676337146%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40076_|
                                       _%hd3676337146%_)
                                      (if (gx#stx-pair? _%tl3676437149%_)
                                          (let ((_%e3678537042%_
                                                 (gx#syntax-e
                                                  _%tl3676437149%_)))
                                            (let ((_%tl3678737049%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3678537042%_)))
                                                  (_%hd3678637046%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3678537042%_))))
                                              (if (gx#stx-null?
                                                   _%tl3678737049%_)
                                                  (_%__kont3971839719%_
                                                   _%hd3678637046%_
                                                   _%hd3669537378%_
                                                   _%hd3669237368%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3668636832%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3668636832%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3668636832%_)))
                                  (if (gx#stx-datum? _%hd3676337146%_)
                                      (let ((_%e3680036969%_
                                             (gx#stx-e _%hd3676337146%_)))
                                        (if (equal? _%e3680036969%_ '::)
                                            (if (gx#stx-pair? _%tl3676437149%_)
                                                (let ((_%e3680136973%_
                                                       (gx#syntax-e
                                                        _%tl3676437149%_)))
                                                  (let ((_%tl3680336980%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3680136973%_)))
                                                        (_%hd3680236977%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3680136973%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3680336980%_)
                                                        (_%__kont3972039721%_
                                                         _%hd3680236977%_
                                                         _%hd3669537378%_
                                                         _%hd3669237368%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3680336980%_)
                                                            (let ((_%e3682136883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3680336980%_)))
                      (let ((_%tl3682336890%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3682136883%_)))
                            (_%hd3682236887%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3682136883%_))))
                        (if (gx#identifier? _%hd3682236887%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g40077_|
                                 _%hd3682236887%_)
                                (if (gx#stx-pair? _%tl3682336890%_)
                                    (let ((_%e3682436893%_
                                           (gx#syntax-e _%tl3682336890%_)))
                                      (let ((_%tl3682636900%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3682436893%_)))
                                            (_%hd3682536897%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3682436893%_))))
                                        (if (gx#stx-null? _%tl3682636900%_)
                                            (_%__kont3972239723%_
                                             _%hd3682536897%_
                                             _%hd3680236977%_
                                             _%hd3669537378%_
                                             _%hd3669237368%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3668636832%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3668636832%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3668636832%_)))
                            (let () (declare (not safe)) (_%g3668636832%_)))))
                    (let () (declare (not safe)) (_%g3668636832%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3668636832%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3668636832%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3668636832%_)))))))
                      (if (gx#stx-null? _%tl3669637381%_)
                          (_%__kont3971639717%_
                           _%hd3669537378%_
                           _%hd3669237368%_)
                          (let () (declare (not safe)) (_%g3668636832%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3669637381%_)
                                                      (let ((_%e3676237142%_
                                                             (gx#syntax-e
                                                              _%tl3669637381%_)))
                                                        (let ((_%tl3676437149%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3676237142%_)))
                      (_%hd3676337146%_
                       (let () (declare (not safe)) (##car _%e3676237142%_))))
                  (if (gx#stx-null? _%tl3676437149%_)
                      (_%__kont3971439715%_ _%hd3676337146%_ _%hd3669537378%_)
                      (if (gx#identifier? _%hd3676337146%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40076_|
                               _%hd3676337146%_)
                              (if (gx#stx-pair? _%tl3676437149%_)
                                  (let ((_%e3678537042%_
                                         (gx#syntax-e _%tl3676437149%_)))
                                    (let ((_%tl3678737049%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3678537042%_)))
                                          (_%hd3678637046%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3678537042%_))))
                                      (if (gx#stx-null? _%tl3678737049%_)
                                          (_%__kont3971839719%_
                                           _%hd3678637046%_
                                           _%hd3669537378%_
                                           _%hd3669237368%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3668636832%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3668636832%_)))
                              (let () (declare (not safe)) (_%g3668636832%_)))
                          (if (gx#stx-datum? _%hd3676337146%_)
                              (let ((_%e3680036969%_
                                     (gx#stx-e _%hd3676337146%_)))
                                (if (equal? _%e3680036969%_ '::)
                                    (if (gx#stx-pair? _%tl3676437149%_)
                                        (let ((_%e3680136973%_
                                               (gx#syntax-e _%tl3676437149%_)))
                                          (let ((_%tl3680336980%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3680136973%_)))
                                                (_%hd3680236977%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3680136973%_))))
                                            (if (gx#stx-null? _%tl3680336980%_)
                                                (_%__kont3972039721%_
                                                 _%hd3680236977%_
                                                 _%hd3669537378%_
                                                 _%hd3669237368%_)
                                                (if (gx#stx-pair?
                                                     _%tl3680336980%_)
                                                    (let ((_%e3682136883%_
                                                           (gx#syntax-e
                                                            _%tl3680336980%_)))
                                                      (let ((_%tl3682336890%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3682136883%_)))
                    (_%hd3682236887%_
                     (let () (declare (not safe)) (##car _%e3682136883%_))))
                (if (gx#identifier? _%hd3682236887%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g40077_|
                         _%hd3682236887%_)
                        (if (gx#stx-pair? _%tl3682336890%_)
                            (let ((_%e3682436893%_
                                   (gx#syntax-e _%tl3682336890%_)))
                              (let ((_%tl3682636900%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3682436893%_)))
                                    (_%hd3682536897%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3682436893%_))))
                                (if (gx#stx-null? _%tl3682636900%_)
                                    (_%__kont3972239723%_
                                     _%hd3682536897%_
                                     _%hd3680236977%_
                                     _%hd3669537378%_
                                     _%hd3669237368%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3668636832%_)))))
                            (let () (declare (not safe)) (_%g3668636832%_)))
                        (let () (declare (not safe)) (_%g3668636832%_)))
                    (let () (declare (not safe)) (_%g3668636832%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3668636832%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3668636832%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3668636832%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3668636832%_)))))))
              (if (gx#stx-null? _%tl3669637381%_)
                  (_%__kont3971639717%_ _%hd3669537378%_ _%hd3669237368%_)
                  (let () (declare (not safe)) (_%g3668636832%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g40079_|
                                                   _%hd3669837388%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3669937391%_)
                                                      (let ((_%__splice3971039711%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl3669937391%_
                                                              '0)))
                                                        (let ((_%tl3672637289%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice3971039711%_ '1)))
                      (_%target3672437286%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice3971039711%_ '0))))
                  (if (gx#stx-null? _%tl3672637289%_)
                      (_%__match3978439785%_
                       _%e3669137364%_
                       _%hd3669237368%_
                       _%tl3669337371%_
                       _%e3669437374%_
                       _%hd3669537378%_
                       _%tl3669637381%_
                       _%e3669737384%_
                       _%hd3669837388%_
                       _%tl3669937391%_
                       _%__splice3971039711%_
                       _%target3672437286%_
                       _%tl3672637289%_)
                      (if (gx#stx-pair? _%tl3669637381%_)
                          (let ((_%e3676237142%_
                                 (gx#syntax-e _%tl3669637381%_)))
                            (let ((_%tl3676437149%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3676237142%_)))
                                  (_%hd3676337146%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3676237142%_))))
                              (if (gx#stx-null? _%tl3676437149%_)
                                  (_%__kont3971439715%_
                                   _%hd3676337146%_
                                   _%hd3669537378%_)
                                  (if (gx#identifier? _%hd3676337146%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40076_|
                                           _%hd3676337146%_)
                                          (if (gx#stx-pair? _%tl3676437149%_)
                                              (let ((_%e3678537042%_
                                                     (gx#syntax-e
                                                      _%tl3676437149%_)))
                                                (let ((_%tl3678737049%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3678537042%_)))
                                                      (_%hd3678637046%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3678537042%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3678737049%_)
                                                      (_%__kont3971839719%_
                                                       _%hd3678637046%_
                                                       _%hd3669537378%_
                                                       _%hd3669237368%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3668636832%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3668636832%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3668636832%_)))
                                      (if (gx#stx-datum? _%hd3676337146%_)
                                          (let ((_%e3680036969%_
                                                 (gx#stx-e _%hd3676337146%_)))
                                            (if (equal? _%e3680036969%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3676437149%_)
                                                    (let ((_%e3680136973%_
                                                           (gx#syntax-e
                                                            _%tl3676437149%_)))
                                                      (let ((_%tl3680336980%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3680136973%_)))
                    (_%hd3680236977%_
                     (let () (declare (not safe)) (##car _%e3680136973%_))))
                (if (gx#stx-null? _%tl3680336980%_)
                    (_%__kont3972039721%_
                     _%hd3680236977%_
                     _%hd3669537378%_
                     _%hd3669237368%_)
                    (if (gx#stx-pair? _%tl3680336980%_)
                        (let ((_%e3682136883%_ (gx#syntax-e _%tl3680336980%_)))
                          (let ((_%tl3682336890%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3682136883%_)))
                                (_%hd3682236887%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3682136883%_))))
                            (if (gx#identifier? _%hd3682236887%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g40077_|
                                     _%hd3682236887%_)
                                    (if (gx#stx-pair? _%tl3682336890%_)
                                        (let ((_%e3682436893%_
                                               (gx#syntax-e _%tl3682336890%_)))
                                          (let ((_%tl3682636900%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3682436893%_)))
                                                (_%hd3682536897%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3682436893%_))))
                                            (if (gx#stx-null? _%tl3682636900%_)
                                                (_%__kont3972239723%_
                                                 _%hd3682536897%_
                                                 _%hd3680236977%_
                                                 _%hd3669537378%_
                                                 _%hd3669237368%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3668636832%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3668636832%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3668636832%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3668636832%_)))))
                        (let () (declare (not safe)) (_%g3668636832%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3668636832%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3668636832%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3668636832%_)))))))
                          (if (gx#stx-null? _%tl3669637381%_)
                              (_%__kont3971639717%_
                               _%hd3669537378%_
                               _%hd3669237368%_)
                              (let ()
                                (declare (not safe))
                                (_%g3668636832%_)))))))
              (if (gx#stx-pair? _%tl3669637381%_)
                  (let ((_%e3676237142%_ (gx#syntax-e _%tl3669637381%_)))
                    (let ((_%tl3676437149%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3676237142%_)))
                          (_%hd3676337146%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3676237142%_))))
                      (if (gx#stx-null? _%tl3676437149%_)
                          (_%__kont3971439715%_
                           _%hd3676337146%_
                           _%hd3669537378%_)
                          (if (gx#identifier? _%hd3676337146%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40076_|
                                   _%hd3676337146%_)
                                  (if (gx#stx-pair? _%tl3676437149%_)
                                      (let ((_%e3678537042%_
                                             (gx#syntax-e _%tl3676437149%_)))
                                        (let ((_%tl3678737049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3678537042%_)))
                                              (_%hd3678637046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3678537042%_))))
                                          (if (gx#stx-null? _%tl3678737049%_)
                                              (_%__kont3971839719%_
                                               _%hd3678637046%_
                                               _%hd3669537378%_
                                               _%hd3669237368%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3668636832%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3668636832%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3668636832%_)))
                              (if (gx#stx-datum? _%hd3676337146%_)
                                  (let ((_%e3680036969%_
                                         (gx#stx-e _%hd3676337146%_)))
                                    (if (equal? _%e3680036969%_ '::)
                                        (if (gx#stx-pair? _%tl3676437149%_)
                                            (let ((_%e3680136973%_
                                                   (gx#syntax-e
                                                    _%tl3676437149%_)))
                                              (let ((_%tl3680336980%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3680136973%_)))
                                                    (_%hd3680236977%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3680136973%_))))
                                                (if (gx#stx-null?
                                                     _%tl3680336980%_)
                                                    (_%__kont3972039721%_
                                                     _%hd3680236977%_
                                                     _%hd3669537378%_
                                                     _%hd3669237368%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3680336980%_)
                                                        (let ((_%e3682136883%_
                                                               (gx#syntax-e
                                                                _%tl3680336980%_)))
                                                          (let ((_%tl3682336890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3682136883%_)))
                        (_%hd3682236887%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3682136883%_))))
                    (if (gx#identifier? _%hd3682236887%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40077_|
                             _%hd3682236887%_)
                            (if (gx#stx-pair? _%tl3682336890%_)
                                (let ((_%e3682436893%_
                                       (gx#syntax-e _%tl3682336890%_)))
                                  (let ((_%tl3682636900%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3682436893%_)))
                                        (_%hd3682536897%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3682436893%_))))
                                    (if (gx#stx-null? _%tl3682636900%_)
                                        (_%__kont3972239723%_
                                         _%hd3682536897%_
                                         _%hd3680236977%_
                                         _%hd3669537378%_
                                         _%hd3669237368%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3668636832%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3668636832%_)))
                            (let () (declare (not safe)) (_%g3668636832%_)))
                        (let () (declare (not safe)) (_%g3668636832%_)))))
                (let () (declare (not safe)) (_%g3668636832%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3668636832%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3668636832%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3668636832%_)))))))
                  (if (gx#stx-null? _%tl3669637381%_)
                      (_%__kont3971639717%_ _%hd3669537378%_ _%hd3669237368%_)
                      (let () (declare (not safe)) (_%g3668636832%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40080_|
                                                       _%hd3669837388%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3669937391%_)
                                                          (let ((_%e3674837206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3669937391%_)))
                    (let ((_%tl3675037213%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3674837206%_)))
                          (_%hd3674937210%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3674837206%_))))
                      (if (gx#stx-null? _%tl3675037213%_)
                          (if (gx#stx-pair? _%tl3669637381%_)
                              (let ((_%e3675137216%_
                                     (gx#syntax-e _%tl3669637381%_)))
                                (let ((_%tl3675337223%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3675137216%_)))
                                      (_%hd3675237220%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3675137216%_))))
                                  (if (gx#stx-null? _%tl3675337223%_)
                                      (_%__kont3971239713%_
                                       _%hd3675237220%_
                                       _%hd3674937210%_
                                       _%hd3669237368%_)
                                      (if (gx#identifier? _%hd3675237220%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40076_|
                                               _%hd3675237220%_)
                                              (if (gx#stx-pair?
                                                   _%tl3675337223%_)
                                                  (let ((_%e3678537042%_
                                                         (gx#syntax-e
                                                          _%tl3675337223%_)))
                                                    (let ((_%tl3678737049%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3678537042%_)))
                                                          (_%hd3678637046%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3678537042%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3678737049%_)
                                                          (_%__kont3971839719%_
                                                           _%hd3678637046%_
                                                           _%hd3669537378%_
                                                           _%hd3669237368%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3668636832%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3668636832%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3668636832%_)))
                                          (if (gx#stx-datum? _%hd3675237220%_)
                                              (let ((_%e3680036969%_
                                                     (gx#stx-e
                                                      _%hd3675237220%_)))
                                                (if (equal? _%e3680036969%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3675337223%_)
                                                        (let ((_%e3680136973%_
                                                               (gx#syntax-e
                                                                _%tl3675337223%_)))
                                                          (let ((_%tl3680336980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3680136973%_)))
                        (_%hd3680236977%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3680136973%_))))
                    (if (gx#stx-null? _%tl3680336980%_)
                        (_%__kont3972039721%_
                         _%hd3680236977%_
                         _%hd3669537378%_
                         _%hd3669237368%_)
                        (if (gx#stx-pair? _%tl3680336980%_)
                            (let ((_%e3682136883%_
                                   (gx#syntax-e _%tl3680336980%_)))
                              (let ((_%tl3682336890%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3682136883%_)))
                                    (_%hd3682236887%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3682136883%_))))
                                (if (gx#identifier? _%hd3682236887%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40077_|
                                         _%hd3682236887%_)
                                        (if (gx#stx-pair? _%tl3682336890%_)
                                            (let ((_%e3682436893%_
                                                   (gx#syntax-e
                                                    _%tl3682336890%_)))
                                              (let ((_%tl3682636900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3682436893%_)))
                                                    (_%hd3682536897%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3682436893%_))))
                                                (if (gx#stx-null?
                                                     _%tl3682636900%_)
                                                    (_%__kont3972239723%_
                                                     _%hd3682536897%_
                                                     _%hd3680236977%_
                                                     _%hd3669537378%_
                                                     _%hd3669237368%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3668636832%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3668636832%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3668636832%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3668636832%_)))))
                            (let () (declare (not safe)) (_%g3668636832%_))))))
                (let () (declare (not safe)) (_%g3668636832%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3668636832%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3668636832%_)))))))
                              (if (gx#stx-null? _%tl3669637381%_)
                                  (_%__kont3971639717%_
                                   _%hd3669537378%_
                                   _%hd3669237368%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3668636832%_))))
                          (if (gx#stx-pair? _%tl3669637381%_)
                              (let ((_%e3676237142%_
                                     (gx#syntax-e _%tl3669637381%_)))
                                (let ((_%tl3676437149%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3676237142%_)))
                                      (_%hd3676337146%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3676237142%_))))
                                  (if (gx#stx-null? _%tl3676437149%_)
                                      (_%__kont3971439715%_
                                       _%hd3676337146%_
                                       _%hd3669537378%_)
                                      (if (gx#identifier? _%hd3676337146%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40076_|
                                               _%hd3676337146%_)
                                              (if (gx#stx-pair?
                                                   _%tl3676437149%_)
                                                  (let ((_%e3678537042%_
                                                         (gx#syntax-e
                                                          _%tl3676437149%_)))
                                                    (let ((_%tl3678737049%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3678537042%_)))
                                                          (_%hd3678637046%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3678537042%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3678737049%_)
                                                          (_%__kont3971839719%_
                                                           _%hd3678637046%_
                                                           _%hd3669537378%_
                                                           _%hd3669237368%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3668636832%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3668636832%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3668636832%_)))
                                          (if (gx#stx-datum? _%hd3676337146%_)
                                              (let ((_%e3680036969%_
                                                     (gx#stx-e
                                                      _%hd3676337146%_)))
                                                (if (equal? _%e3680036969%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3676437149%_)
                                                        (let ((_%e3680136973%_
                                                               (gx#syntax-e
                                                                _%tl3676437149%_)))
                                                          (let ((_%tl3680336980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3680136973%_)))
                        (_%hd3680236977%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3680136973%_))))
                    (if (gx#stx-null? _%tl3680336980%_)
                        (_%__kont3972039721%_
                         _%hd3680236977%_
                         _%hd3669537378%_
                         _%hd3669237368%_)
                        (if (gx#stx-pair? _%tl3680336980%_)
                            (let ((_%e3682136883%_
                                   (gx#syntax-e _%tl3680336980%_)))
                              (let ((_%tl3682336890%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3682136883%_)))
                                    (_%hd3682236887%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3682136883%_))))
                                (if (gx#identifier? _%hd3682236887%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40077_|
                                         _%hd3682236887%_)
                                        (if (gx#stx-pair? _%tl3682336890%_)
                                            (let ((_%e3682436893%_
                                                   (gx#syntax-e
                                                    _%tl3682336890%_)))
                                              (let ((_%tl3682636900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3682436893%_)))
                                                    (_%hd3682536897%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3682436893%_))))
                                                (if (gx#stx-null?
                                                     _%tl3682636900%_)
                                                    (_%__kont3972239723%_
                                                     _%hd3682536897%_
                                                     _%hd3680236977%_
                                                     _%hd3669537378%_
                                                     _%hd3669237368%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3668636832%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3668636832%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3668636832%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3668636832%_)))))
                            (let () (declare (not safe)) (_%g3668636832%_))))))
                (let () (declare (not safe)) (_%g3668636832%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3668636832%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3668636832%_)))))))
                              (if (gx#stx-null? _%tl3669637381%_)
                                  (_%__kont3971639717%_
                                   _%hd3669537378%_
                                   _%hd3669237368%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3668636832%_)))))))
                  (if (gx#stx-pair? _%tl3669637381%_)
                      (let ((_%e3676237142%_ (gx#syntax-e _%tl3669637381%_)))
                        (let ((_%tl3676437149%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3676237142%_)))
                              (_%hd3676337146%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3676237142%_))))
                          (if (gx#stx-null? _%tl3676437149%_)
                              (_%__kont3971439715%_
                               _%hd3676337146%_
                               _%hd3669537378%_)
                              (if (gx#identifier? _%hd3676337146%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40076_|
                                       _%hd3676337146%_)
                                      (if (gx#stx-pair? _%tl3676437149%_)
                                          (let ((_%e3678537042%_
                                                 (gx#syntax-e
                                                  _%tl3676437149%_)))
                                            (let ((_%tl3678737049%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3678537042%_)))
                                                  (_%hd3678637046%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3678537042%_))))
                                              (if (gx#stx-null?
                                                   _%tl3678737049%_)
                                                  (_%__kont3971839719%_
                                                   _%hd3678637046%_
                                                   _%hd3669537378%_
                                                   _%hd3669237368%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3668636832%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3668636832%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3668636832%_)))
                                  (if (gx#stx-datum? _%hd3676337146%_)
                                      (let ((_%e3680036969%_
                                             (gx#stx-e _%hd3676337146%_)))
                                        (if (equal? _%e3680036969%_ '::)
                                            (if (gx#stx-pair? _%tl3676437149%_)
                                                (let ((_%e3680136973%_
                                                       (gx#syntax-e
                                                        _%tl3676437149%_)))
                                                  (let ((_%tl3680336980%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3680136973%_)))
                                                        (_%hd3680236977%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3680136973%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3680336980%_)
                                                        (_%__kont3972039721%_
                                                         _%hd3680236977%_
                                                         _%hd3669537378%_
                                                         _%hd3669237368%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3680336980%_)
                                                            (let ((_%e3682136883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3680336980%_)))
                      (let ((_%tl3682336890%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3682136883%_)))
                            (_%hd3682236887%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3682136883%_))))
                        (if (gx#identifier? _%hd3682236887%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g40077_|
                                 _%hd3682236887%_)
                                (if (gx#stx-pair? _%tl3682336890%_)
                                    (let ((_%e3682436893%_
                                           (gx#syntax-e _%tl3682336890%_)))
                                      (let ((_%tl3682636900%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3682436893%_)))
                                            (_%hd3682536897%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3682436893%_))))
                                        (if (gx#stx-null? _%tl3682636900%_)
                                            (_%__kont3972239723%_
                                             _%hd3682536897%_
                                             _%hd3680236977%_
                                             _%hd3669537378%_
                                             _%hd3669237368%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3668636832%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3668636832%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3668636832%_)))
                            (let () (declare (not safe)) (_%g3668636832%_)))))
                    (let () (declare (not safe)) (_%g3668636832%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3668636832%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3668636832%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3668636832%_)))))))
                      (if (gx#stx-null? _%tl3669637381%_)
                          (_%__kont3971639717%_
                           _%hd3669537378%_
                           _%hd3669237368%_)
                          (let () (declare (not safe)) (_%g3668636832%_)))))
              (if (gx#stx-pair? _%tl3669637381%_)
                  (let ((_%e3676237142%_ (gx#syntax-e _%tl3669637381%_)))
                    (let ((_%tl3676437149%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3676237142%_)))
                          (_%hd3676337146%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3676237142%_))))
                      (if (gx#stx-null? _%tl3676437149%_)
                          (_%__kont3971439715%_
                           _%hd3676337146%_
                           _%hd3669537378%_)
                          (if (gx#identifier? _%hd3676337146%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40076_|
                                   _%hd3676337146%_)
                                  (if (gx#stx-pair? _%tl3676437149%_)
                                      (let ((_%e3678537042%_
                                             (gx#syntax-e _%tl3676437149%_)))
                                        (let ((_%tl3678737049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3678537042%_)))
                                              (_%hd3678637046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3678537042%_))))
                                          (if (gx#stx-null? _%tl3678737049%_)
                                              (_%__kont3971839719%_
                                               _%hd3678637046%_
                                               _%hd3669537378%_
                                               _%hd3669237368%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3668636832%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3668636832%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3668636832%_)))
                              (if (gx#stx-datum? _%hd3676337146%_)
                                  (let ((_%e3680036969%_
                                         (gx#stx-e _%hd3676337146%_)))
                                    (if (equal? _%e3680036969%_ '::)
                                        (if (gx#stx-pair? _%tl3676437149%_)
                                            (let ((_%e3680136973%_
                                                   (gx#syntax-e
                                                    _%tl3676437149%_)))
                                              (let ((_%tl3680336980%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3680136973%_)))
                                                    (_%hd3680236977%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3680136973%_))))
                                                (if (gx#stx-null?
                                                     _%tl3680336980%_)
                                                    (_%__kont3972039721%_
                                                     _%hd3680236977%_
                                                     _%hd3669537378%_
                                                     _%hd3669237368%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3680336980%_)
                                                        (let ((_%e3682136883%_
                                                               (gx#syntax-e
                                                                _%tl3680336980%_)))
                                                          (let ((_%tl3682336890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3682136883%_)))
                        (_%hd3682236887%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3682136883%_))))
                    (if (gx#identifier? _%hd3682236887%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40077_|
                             _%hd3682236887%_)
                            (if (gx#stx-pair? _%tl3682336890%_)
                                (let ((_%e3682436893%_
                                       (gx#syntax-e _%tl3682336890%_)))
                                  (let ((_%tl3682636900%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3682436893%_)))
                                        (_%hd3682536897%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3682436893%_))))
                                    (if (gx#stx-null? _%tl3682636900%_)
                                        (_%__kont3972239723%_
                                         _%hd3682536897%_
                                         _%hd3680236977%_
                                         _%hd3669537378%_
                                         _%hd3669237368%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3668636832%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3668636832%_)))
                            (let () (declare (not safe)) (_%g3668636832%_)))
                        (let () (declare (not safe)) (_%g3668636832%_)))))
                (let () (declare (not safe)) (_%g3668636832%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3668636832%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3668636832%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3668636832%_)))))))
                  (if (gx#stx-null? _%tl3669637381%_)
                      (_%__kont3971639717%_ _%hd3669537378%_ _%hd3669237368%_)
                      (let () (declare (not safe)) (_%g3668636832%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3669637381%_)
                                              (let ((_%e3676237142%_
                                                     (gx#syntax-e
                                                      _%tl3669637381%_)))
                                                (let ((_%tl3676437149%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3676237142%_)))
                                                      (_%hd3676337146%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3676237142%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3676437149%_)
                                                      (_%__kont3971439715%_
                                                       _%hd3676337146%_
                                                       _%hd3669537378%_)
                                                      (if (gx#identifier?
                                                           _%hd3676337146%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g40076_|
                                                               _%hd3676337146%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3676437149%_)
                          (let ((_%e3678537042%_
                                 (gx#syntax-e _%tl3676437149%_)))
                            (let ((_%tl3678737049%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3678537042%_)))
                                  (_%hd3678637046%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3678537042%_))))
                              (if (gx#stx-null? _%tl3678737049%_)
                                  (_%__kont3971839719%_
                                   _%hd3678637046%_
                                   _%hd3669537378%_
                                   _%hd3669237368%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3668636832%_)))))
                          (let () (declare (not safe)) (_%g3668636832%_)))
                      (let () (declare (not safe)) (_%g3668636832%_)))
                  (if (gx#stx-datum? _%hd3676337146%_)
                      (let ((_%e3680036969%_ (gx#stx-e _%hd3676337146%_)))
                        (if (equal? _%e3680036969%_ '::)
                            (if (gx#stx-pair? _%tl3676437149%_)
                                (let ((_%e3680136973%_
                                       (gx#syntax-e _%tl3676437149%_)))
                                  (let ((_%tl3680336980%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3680136973%_)))
                                        (_%hd3680236977%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3680136973%_))))
                                    (if (gx#stx-null? _%tl3680336980%_)
                                        (_%__kont3972039721%_
                                         _%hd3680236977%_
                                         _%hd3669537378%_
                                         _%hd3669237368%_)
                                        (if (gx#stx-pair? _%tl3680336980%_)
                                            (let ((_%e3682136883%_
                                                   (gx#syntax-e
                                                    _%tl3680336980%_)))
                                              (let ((_%tl3682336890%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3682136883%_)))
                                                    (_%hd3682236887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3682136883%_))))
                                                (if (gx#identifier?
                                                     _%hd3682236887%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g40077_|
                                                         _%hd3682236887%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3682336890%_)
                                                            (let ((_%e3682436893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3682336890%_)))
                      (let ((_%tl3682636900%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3682436893%_)))
                            (_%hd3682536897%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3682436893%_))))
                        (if (gx#stx-null? _%tl3682636900%_)
                            (_%__kont3972239723%_
                             _%hd3682536897%_
                             _%hd3680236977%_
                             _%hd3669537378%_
                             _%hd3669237368%_)
                            (let () (declare (not safe)) (_%g3668636832%_)))))
                    (let () (declare (not safe)) (_%g3668636832%_)))
                (let () (declare (not safe)) (_%g3668636832%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3668636832%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3668636832%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3668636832%_)))
                            (let () (declare (not safe)) (_%g3668636832%_))))
                      (let () (declare (not safe)) (_%g3668636832%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3669637381%_)
                                                  (_%__kont3971639717%_
                                                   _%hd3669537378%_
                                                   _%hd3669237368%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3668636832%_)))))))
                                  (if (gx#stx-pair? _%tl3669637381%_)
                                      (let ((_%e3676237142%_
                                             (gx#syntax-e _%tl3669637381%_)))
                                        (let ((_%tl3676437149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3676237142%_)))
                                              (_%hd3676337146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3676237142%_))))
                                          (if (gx#stx-null? _%tl3676437149%_)
                                              (_%__kont3971439715%_
                                               _%hd3676337146%_
                                               _%hd3669537378%_)
                                              (if (gx#identifier?
                                                   _%hd3676337146%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40076_|
                                                       _%hd3676337146%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3676437149%_)
                                                          (let ((_%e3678537042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3676437149%_)))
                    (let ((_%tl3678737049%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3678537042%_)))
                          (_%hd3678637046%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3678537042%_))))
                      (if (gx#stx-null? _%tl3678737049%_)
                          (_%__kont3971839719%_
                           _%hd3678637046%_
                           _%hd3669537378%_
                           _%hd3669237368%_)
                          (let () (declare (not safe)) (_%g3668636832%_)))))
                  (let () (declare (not safe)) (_%g3668636832%_)))
              (let () (declare (not safe)) (_%g3668636832%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3676337146%_)
                                                      (let ((_%e3680036969%_
                                                             (gx#stx-e
                                                              _%hd3676337146%_)))
                                                        (if (equal? _%e3680036969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3676437149%_)
                        (let ((_%e3680136973%_ (gx#syntax-e _%tl3676437149%_)))
                          (let ((_%tl3680336980%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3680136973%_)))
                                (_%hd3680236977%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3680136973%_))))
                            (if (gx#stx-null? _%tl3680336980%_)
                                (_%__kont3972039721%_
                                 _%hd3680236977%_
                                 _%hd3669537378%_
                                 _%hd3669237368%_)
                                (if (gx#stx-pair? _%tl3680336980%_)
                                    (let ((_%e3682136883%_
                                           (gx#syntax-e _%tl3680336980%_)))
                                      (let ((_%tl3682336890%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3682136883%_)))
                                            (_%hd3682236887%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3682136883%_))))
                                        (if (gx#identifier? _%hd3682236887%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g40077_|
                                                 _%hd3682236887%_)
                                                (if (gx#stx-pair?
                                                     _%tl3682336890%_)
                                                    (let ((_%e3682436893%_
                                                           (gx#syntax-e
                                                            _%tl3682336890%_)))
                                                      (let ((_%tl3682636900%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3682436893%_)))
                    (_%hd3682536897%_
                     (let () (declare (not safe)) (##car _%e3682436893%_))))
                (if (gx#stx-null? _%tl3682636900%_)
                    (_%__kont3972239723%_
                     _%hd3682536897%_
                     _%hd3680236977%_
                     _%hd3669537378%_
                     _%hd3669237368%_)
                    (let () (declare (not safe)) (_%g3668636832%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3668636832%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3668636832%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3668636832%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3668636832%_))))))
                        (let () (declare (not safe)) (_%g3668636832%_)))
                    (let () (declare (not safe)) (_%g3668636832%_))))
              (let () (declare (not safe)) (_%g3668636832%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3669637381%_)
                                          (_%__kont3971639717%_
                                           _%hd3669537378%_
                                           _%hd3669237368%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3668636832%_)))))))
                          (let () (declare (not safe)) (_%g3668636832%_)))))
                  (let () (declare (not safe)) (_%g3668636832%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37471%_)
        (let* ((_%__stx3996939970%_ _%$stx37471%_)
               (_%g3747637510%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3996939970%_))))
          (let ((_%__kont3997239973%_
                 (lambda (_%g3747837614%_ _%g3747937616%_ _%g3748037617%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%g3748037617%_
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
                                       (cons _%g3747937616%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%g3747837614%_ '()))
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
                (_%__kont3997439975%_
                 (lambda (_%g3749337547%_ _%g3749437549%_ _%g3749537550%_)
                   (cons _%g3749537550%_
                         (cons _%g3749437549%_
                               (cons _%g3749337547%_
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
            (let ((_%__match4000240003%_
                   (lambda (_%e3748137574%_
                            _%hd3748237578%_
                            _%tl3748337581%_
                            _%e3748437584%_
                            _%hd3748537588%_
                            _%tl3748637591%_
                            _%e3748737594%_
                            _%hd3748837598%_
                            _%tl3748937601%_
                            _%e3749037604%_
                            _%hd3749137608%_
                            _%tl3749237611%_)
                     (let ((_%g3747837614%_ _%hd3749137608%_)
                           (_%g3747937616%_ _%hd3748837598%_)
                           (_%g3748037617%_ _%hd3748537588%_))
                       (if (gx#identifier? _%g3748037617%_)
                           (_%__kont3997239973%_
                            _%g3747837614%_
                            _%g3747937616%_
                            _%g3748037617%_)
                           (let () (declare (not safe)) (_%g3747637510%_)))))))
              (if (gx#stx-pair? _%__stx3996939970%_)
                  (let ((_%e3748137574%_ (gx#syntax-e _%__stx3996939970%_)))
                    (let ((_%tl3748337581%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3748137574%_)))
                          (_%hd3748237578%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3748137574%_))))
                      (if (gx#stx-pair? _%tl3748337581%_)
                          (let ((_%e3748437584%_
                                 (gx#syntax-e _%tl3748337581%_)))
                            (let ((_%tl3748637591%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3748437584%_)))
                                  (_%hd3748537588%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3748437584%_))))
                              (if (gx#stx-pair? _%tl3748637591%_)
                                  (let ((_%e3748737594%_
                                         (gx#syntax-e _%tl3748637591%_)))
                                    (let ((_%tl3748937601%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3748737594%_)))
                                          (_%hd3748837598%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3748737594%_))))
                                      (if (gx#stx-pair? _%tl3748937601%_)
                                          (let ((_%e3749037604%_
                                                 (gx#syntax-e
                                                  _%tl3748937601%_)))
                                            (let ((_%tl3749237611%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3749037604%_)))
                                                  (_%hd3749137608%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3749037604%_))))
                                              (if (gx#stx-null?
                                                   _%tl3749237611%_)
                                                  (_%__match4000240003%_
                                                   _%e3748137574%_
                                                   _%hd3748237578%_
                                                   _%tl3748337581%_
                                                   _%e3748437584%_
                                                   _%hd3748537588%_
                                                   _%tl3748637591%_
                                                   _%e3748737594%_
                                                   _%hd3748837598%_
                                                   _%tl3748937601%_
                                                   _%e3749037604%_
                                                   _%hd3749137608%_
                                                   _%tl3749237611%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3747637510%_)))))
                                          (if (gx#stx-null? _%tl3748937601%_)
                                              (_%__kont3997439975%_
                                               _%hd3748837598%_
                                               _%hd3748537588%_
                                               _%hd3748237578%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3747637510%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3747637510%_)))))
                          (let () (declare (not safe)) (_%g3747637510%_)))))
                  (let () (declare (not safe)) (_%g3747637510%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx37639%_)
        (let* ((_%g3764337658%_
                (lambda (_%g3764437654%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3764437654%_)))
               (_%g3764237701%_
                (lambda (_%g3764437662%_)
                  (if (gx#stx-pair? _%g3764437662%_)
                      (let ((_%e3764737665%_ (gx#syntax-e _%g3764437662%_)))
                        (let ((_%hd3764837669%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3764737665%_)))
                              (_%tl3764937672%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3764737665%_))))
                          (if (gx#stx-pair? _%tl3764937672%_)
                              (let ((_%e3765037675%_
                                     (gx#syntax-e _%tl3764937672%_)))
                                (let ((_%hd3765137679%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3765037675%_)))
                                      (_%tl3765237682%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3765037675%_))))
                                  ((lambda (_%g3764537685%_ _%g3764637687%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%g3764637687%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%g3764537685%_)
                                                       '()))))
                                   _%tl3765237682%_
                                   _%hd3765137679%_)))
                              (_%g3764337658%_ _%g3764437662%_))))
                      (_%g3764337658%_ _%g3764437662%_)))))
          (_%g3764237701%_ _%$stx37639%_))))))
