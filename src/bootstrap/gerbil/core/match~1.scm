(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g40419_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40420_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40421_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40422_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40423_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40424_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40425_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40426_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40427_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40428_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40429_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40430_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40431_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40432_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40433_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40446_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40454_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40455_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40456_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40461_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40462_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40463_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40464_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40465_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/match[1]#match-macro::t|
      (make-class-type
       'gerbil/core#match-macro::t
       'match-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/match[1]#match-macro?|
      (make-class-predicate |gerbil/core/match[1]#match-macro::t|))
    (define |gerbil/core/match[1]#make-match-macro|
      (lambda _%$args35740%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35740%_)))
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
      (lambda (_%stx35737%_)
        (if (gx#identifier? _%stx35737%_)
            (let ((__tmp40418 (gx#syntax-local-value _%stx35737%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp40418))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx34039%_ _%match-stx34041%_)
        (letrec ((_%parse134043%_
                  (lambda (_%hd34402%_)
                    (let* ((_%__stx3820638207%_ _%hd34402%_)
                           (_%$%g3442834570%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3820638207%_))))
                      (let ((_%__kont3820938210%_
                             (lambda (_%$%g3443035500%_ _%$%g3443135502%_)
                               (let* ((_%__stx3812638127%_ _%$%g3443035500%_)
                                      (_%$%g3551935552%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3812638127%_))))
                                 (let ((_%__kont3812938130%_
                                        (lambda ()
                                          (cons '?:
                                                (cons _%$%g3443135502%_ '()))))
                                       (_%__kont3813138132%_
                                        (lambda (_%$%g3552135693%_)
                                          (cons '?:
                                                (cons _%$%g3443135502%_
                                                      (cons (_%parse134043%_
                                                             _%$%g3552135693%_)
                                                            '())))))
                                       (_%__kont3813338134%_
                                        (lambda (_%$%g3552535663%_)
                                          (cons '?:
                                                (cons _%$%g3443135502%_
                                                      (cons '=>:
                                                            (cons (_%parse134043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g3552535663%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3813538136%_
                                        (lambda (_%$%g3553235614%_
                                                 _%$%g3553335616%_)
                                          (cons '?:
                                                (cons _%$%g3443135502%_
                                                      (cons '::
                                                            (cons _%$%g3553335616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse134043%_ _%$%g3553235614%_)
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3813738138%_
                                        (lambda ()
                                          (_%parse-error34050%_ _%hd34402%_))))
                                   (let ((_%$%g3551535704%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3812638127%_)
                                                (let ((_%$%e3552235683%_
                                                       (gx#syntax-e
                                                        _%__stx3812638127%_)))
                                                  (let ((_%$%tl3552435690%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e3552235683%_)))
                                                        (_%$%hd3552335687%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e3552235683%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl3552435690%_)
                                                        (_%__kont3813138132%_
                                                         _%$%hd3552335687%_)
                                                        (if (gx#identifier?
                                                             _%$%hd3552335687%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g40419_|
                         _%$%hd3552335687%_)
                        (if (gx#stx-pair? _%$%tl3552435690%_)
                            (let ((_%$%e3552935653%_
                                   (gx#syntax-e _%$%tl3552435690%_)))
                              (let ((_%$%tl3553135660%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e3552935653%_)))
                                    (_%$%hd3553035657%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e3552935653%_))))
                                (if (gx#stx-null? _%$%tl3553135660%_)
                                    (_%__kont3813338134%_ _%$%hd3553035657%_)
                                    (_%__kont3813738138%_))))
                            (_%__kont3813738138%_))
                        (_%__kont3813738138%_))
                    (if (gx#stx-datum? _%$%hd3552335687%_)
                        (let ((_%$%e3553735580%_
                               (gx#stx-e _%$%hd3552335687%_)))
                          (if (equal? _%$%e3553735580%_ '::)
                              (if (gx#stx-pair? _%$%tl3552435690%_)
                                  (let ((_%$%e3553835584%_
                                         (gx#syntax-e _%$%tl3552435690%_)))
                                    (let ((_%$%tl3554035591%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e3553835584%_)))
                                          (_%$%hd3553935588%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e3553835584%_))))
                                      (if (gx#stx-pair? _%$%tl3554035591%_)
                                          (let ((_%$%e3554135594%_
                                                 (gx#syntax-e
                                                  _%$%tl3554035591%_)))
                                            (let ((_%$%tl3554335601%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e3554135594%_)))
                                                  (_%$%hd3554235598%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e3554135594%_))))
                                              (if (gx#identifier?
                                                   _%$%hd3554235598%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40420_|
                                                       _%$%hd3554235598%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl3554335601%_)
                                                          (let ((_%$%e3554435604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl3554335601%_)))
                    (let ((_%$%tl3554635611%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e3554435604%_)))
                          (_%$%hd3554535608%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e3554435604%_))))
                      (if (gx#stx-null? _%$%tl3554635611%_)
                          (_%__kont3813538136%_
                           _%$%hd3554535608%_
                           _%$%hd3553935588%_)
                          (_%__kont3813738138%_))))
                  (_%__kont3813738138%_))
              (_%__kont3813738138%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3813738138%_))))
                                          (_%__kont3813738138%_))))
                                  (_%__kont3813738138%_))
                              (_%__kont3813738138%_)))
                        (_%__kont3813738138%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3813738138%_)))))
                                     (if (gx#stx-null? _%__stx3812638127%_)
                                         (_%__kont3812938130%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g3551535704%_))))))))
                            (_%__kont3821138212%_
                             (lambda (_%$%g3443835405%_)
                               (let* ((_%__stx3810838109%_ _%$%g3443835405%_)
                                      (_%$%g3541735428%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3810838109%_))))
                                 (let ((_%__kont3811138112%_
                                        (lambda (_%$%g3541935456%_)
                                          (_%parse134043%_ _%$%g3541935456%_)))
                                       (_%__kont3811338114%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse134043%_
                                                 _%$%g3443835405%_)))))
                                   (if (gx#stx-pair? _%__stx3810838109%_)
                                       (let ((_%$%e3542035446%_
                                              (gx#syntax-e
                                               _%__stx3810838109%_)))
                                         (let ((_%$%tl3542235453%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e3542035446%_)))
                                               (_%$%hd3542135450%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e3542035446%_))))
                                           (if (gx#stx-null?
                                                _%$%tl3542235453%_)
                                               (_%__kont3811138112%_
                                                _%$%hd3542135450%_)
                                               (_%__kont3811338114%_))))
                                       (_%__kont3811338114%_))))))
                            (_%__kont3821338214%_
                             (lambda (_%$%g3444235320%_)
                               (let* ((_%__stx3809038091%_ _%$%g3444235320%_)
                                      (_%$%g3533235343%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3809038091%_))))
                                 (let ((_%__kont3809338094%_
                                        (lambda (_%$%g3533435371%_)
                                          (_%parse134043%_ _%$%g3533435371%_)))
                                       (_%__kont3809538096%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse134043%_
                                                 _%$%g3444235320%_)))))
                                   (if (gx#stx-pair? _%__stx3809038091%_)
                                       (let ((_%$%e3533535361%_
                                              (gx#syntax-e
                                               _%__stx3809038091%_)))
                                         (let ((_%$%tl3533735368%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e3533535361%_)))
                                               (_%$%hd3533635365%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e3533535361%_))))
                                           (if (gx#stx-null?
                                                _%$%tl3533735368%_)
                                               (_%__kont3809338094%_
                                                _%$%hd3533635365%_)
                                               (_%__kont3809538096%_))))
                                       (_%__kont3809538096%_))))))
                            (_%__kont3821538216%_
                             (lambda (_%$%g3444635290%_)
                               (cons 'not:
                                     (cons (_%parse134043%_ _%$%g3444635290%_)
                                           '()))))
                            (_%__kont3821738218%_
                             (lambda (_%$%g3445335246%_ _%$%g3445435248%_)
                               (cons 'cons:
                                     (cons (_%parse134043%_ _%$%g3445435248%_)
                                           (cons (_%parse134043%_
                                                  _%$%g3445335246%_)
                                                 '())))))
                            (_%__kont3821938220%_
                             (lambda (_%$%g3446435190%_
                                      _%$%g3446535192%_
                                      _%$%g3446635193%_)
                               (if (gx#stx-null? _%$%g3446435190%_)
                                   (cons 'cons:
                                         (cons (_%parse134043%_
                                                _%$%g3446635193%_)
                                               (cons (_%parse134043%_
                                                      _%$%g3446535192%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse134043%_
                                                _%$%g3446635193%_)
                                               (cons (_%parse134043%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%$%g3446535192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g3446435190%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3822138222%_
                             (lambda (_%$%g3447635142%_)
                               (_%parse-list34045%_ _%$%g3447635142%_)))
                            (_%__kont3822338224%_
                             (lambda (_%$%g3448035112%_)
                               (cons 'box:
                                     (cons (_%parse134043%_ _%$%g3448035112%_)
                                           '()))))
                            (_%__kont3822538226%_
                             (lambda (_%$%g3448735075%_)
                               (cons 'box:
                                     (cons (_%parse134043%_ _%$%g3448735075%_)
                                           '()))))
                            (_%__kont3822738228%_
                             (lambda (_%$%g3448935051%_)
                               (_%parse134043%_ _%$%g3448935051%_)))
                            (_%__kont3822938230%_
                             (lambda (_%$%g3449635013%_)
                               (cons 'values:
                                     (cons (_%parse-vector34046%_
                                            _%$%g3449635013%_)
                                           '()))))
                            (_%__kont3823138232%_
                             (lambda (_%$%g3450034985%_)
                               (cons 'vector:
                                     (cons (_%parse-vector34046%_
                                            _%$%g3450034985%_)
                                           '()))))
                            (_%__kont3823338234%_
                             (lambda (_%$%g3450434946%_)
                               (cons 'vector:
                                     (cons (_%parse-vector34046%_
                                            (foldr (lambda (_%$%g3495934962%_
                                                            _%$%g3496034965%_)
                                                     (cons _%$%g3495934962%_
                                                           _%$%g3496034965%_))
                                                   '()
                                                   _%$%g3450434946%_))
                                           '()))))
                            (_%__kont3823738238%_
                             (lambda (_%$%g3451534894%_ _%$%g3451634896%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value
                                            _%$%g3451634896%_)
                                           (cons (_%parse-vector34046%_
                                                  _%$%g3451534894%_)
                                                 '())))))
                            (_%__kont3823938240%_
                             (lambda (_%$%g3452034864%_ _%$%g3452134866%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value
                                            _%$%g3452134866%_)
                                           (cons (_%parse-class-body34048%_
                                                  _%$%g3452034864%_)
                                                 '())))))
                            (_%__kont3824138242%_
                             (lambda (_%$%g3452534824%_ _%$%g3452634826%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%$%g3452634826%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%$%g3452534824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3824338244%_
                             (lambda (_%$%g3453334784%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%$%g3453334784%_) '()))))
                            (_%__kont3824538246%_
                             (lambda (_%$%g3454034744%_)
                               (_%parse-qq34049%_ _%$%g3454034744%_)))
                            (_%__kont3824738248%_
                             (lambda (_%$%g3454734700%_ _%$%g3454834702%_)
                               (cons 'apply:
                                     (cons _%$%g3454834702%_
                                           (cons (_%parse134043%_
                                                  _%$%g3454734700%_)
                                                 '())))))
                            (_%__kont3824938250%_
                             (lambda (_%$%g3455834648%_)
                               (_%parse134043%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%$%g3455834648%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd34402%_)
                                  (let ((_%$e34659%_
                                         (gx#stx-source _%hd34402%_)))
                                    (if _%$e34659%_
                                        _%$e34659%_
                                        (gx#stx-source _%stx34039%_))))))))
                            (_%__kont3825138252%_
                             (lambda (_%$%g3456234622%_) (cons 'any: '())))
                            (_%__kont3825338254%_
                             (lambda (_%$%g3456334606%_)
                               (cons 'var: (cons _%$%g3456334606%_ '()))))
                            (_%__kont3825538256%_
                             (lambda (_%$%g3456434588%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%$%g3456434588%_) '()))))
                            (_%__kont3825738258%_
                             (lambda () (_%parse-error34050%_ _%hd34402%_))))
                        (let* ((_%$%g3442634599%_
                                (lambda ()
                                  (let ((_%$%g3456434588%_
                                         _%__stx3820638207%_))
                                    (if (gx#stx-datum? _%$%g3456434588%_)
                                        (_%__kont3825538256%_
                                         _%$%g3456434588%_)
                                        (_%__kont3825738258%_)))))
                               (_%$%g3442534615%_
                                (lambda ()
                                  (let ((_%$%g3456334606%_
                                         _%__stx3820638207%_))
                                    (if (and (gx#identifier? _%$%g3456334606%_)
                                             (not (gx#ellipsis?
                                                   _%$%g3456334606%_)))
                                        (_%__kont3825338254%_
                                         _%$%g3456334606%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g3442634599%_))))))
                               (_%$%g3442434631%_
                                (lambda ()
                                  (let ((_%$%g3456234622%_
                                         _%__stx3820638207%_))
                                    (if (gx#underscore? _%$%g3456234622%_)
                                        (_%__kont3825138252%_
                                         _%$%g3456234622%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g3442534615%_))))))
                               (_%__match3853338534%_
                                (lambda (_%$%e3455934638%_
                                         _%$%hd3456034642%_
                                         _%$%tl3456134645%_)
                                  (let ((_%$%g3455834648%_ _%$%hd3456034642%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%$%g3455834648%_)
                                        (_%__kont3824938250%_
                                         _%$%g3455834648%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g3442434631%_))))))
                               (_%__match3846738468%_
                                (lambda (_%$%e3452734804%_
                                         _%$%hd3452834808%_
                                         _%$%tl3452934811%_
                                         _%$%e3453034814%_
                                         _%$%hd3453134818%_
                                         _%$%tl3453234821%_)
                                  (let ((_%$%g3452534824%_ _%$%hd3453134818%_)
                                        (_%$%g3452634826%_ _%$%hd3452834808%_))
                                    (if (and (gx#identifier? _%$%g3452634826%_)
                                             (or (gx#free-identifier=?
                                                  _%$%g3452634826%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%$%g3452634826%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%$%g3452634826%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3824138242%_
                                         _%$%g3452534824%_
                                         _%$%g3452634826%_)
                                        (if (gx#identifier? _%$%hd3452834808%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g40421_|
                                                 _%$%hd3452834808%_)
                                                (_%__kont3824338244%_
                                                 _%$%hd3453134818%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g40422_|
                                                     _%$%hd3452834808%_)
                                                    (_%__kont3824538246%_
                                                     _%$%hd3453134818%_)
                                                    (_%__match3853338534%_
                                                     _%$%e3452734804%_
                                                     _%$%hd3452834808%_
                                                     _%$%tl3452934811%_)))
                                            (_%__match3853338534%_
                                             _%$%e3452734804%_
                                             _%$%hd3452834808%_
                                             _%$%tl3452934811%_))))))
                               (_%__match3845338454%_
                                (lambda (_%$%e3452234854%_
                                         _%$%hd3452334858%_
                                         _%$%tl3452434861%_)
                                  (let ((_%$%g3452034864%_ _%$%tl3452434861%_)
                                        (_%$%g3452134866%_ _%$%hd3452334858%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%$%g3452134866%_))
                                        (_%__kont3823938240%_
                                         _%$%g3452034864%_
                                         _%$%g3452134866%_)
                                        (if (gx#stx-pair? _%$%tl3452434861%_)
                                            (let ((_%$%e3453034814%_
                                                   (gx#syntax-e
                                                    _%$%tl3452434861%_)))
                                              (let ((_%$%tl3453234821%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e3453034814%_)))
                                                    (_%$%hd3453134818%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e3453034814%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl3453234821%_)
                                                    (_%__match3846738468%_
                                                     _%$%e3452234854%_
                                                     _%$%hd3452334858%_
                                                     _%$%tl3452434861%_
                                                     _%$%e3453034814%_
                                                     _%$%hd3453134818%_
                                                     _%$%tl3453234821%_)
                                                    (if (gx#identifier?
                                                         _%$%hd3452334858%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g40421_|
                                                             _%$%hd3452334858%_)
                                                            (_%__match3853338534%_
                                                             _%$%e3452234854%_
                                                             _%$%hd3452334858%_
                                                             _%$%tl3452434861%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g40422_|
                         _%$%hd3452334858%_)
                        (_%__match3853338534%_
                         _%$%e3452234854%_
                         _%$%hd3452334858%_
                         _%$%tl3452434861%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40423_|
                             _%$%hd3452334858%_)
                            (if (gx#stx-pair? _%$%tl3453234821%_)
                                (let ((_%$%e3455534690%_
                                       (gx#syntax-e _%$%tl3453234821%_)))
                                  (let ((_%$%tl3455734697%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e3455534690%_)))
                                        (_%$%hd3455634694%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e3455534690%_))))
                                    (if (gx#stx-null? _%$%tl3455734697%_)
                                        (_%__kont3824738248%_
                                         _%$%hd3455634694%_
                                         _%$%hd3453134818%_)
                                        (_%__match3853338534%_
                                         _%$%e3452234854%_
                                         _%$%hd3452334858%_
                                         _%$%tl3452434861%_))))
                                (_%__match3853338534%_
                                 _%$%e3452234854%_
                                 _%$%hd3452334858%_
                                 _%$%tl3452434861%_))
                            (_%__match3853338534%_
                             _%$%e3452234854%_
                             _%$%hd3452334858%_
                             _%$%tl3452434861%_))))
                (_%__match3853338534%_
                 _%$%e3452234854%_
                 _%$%hd3452334858%_
                 _%$%tl3452434861%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3853338534%_
                                             _%$%e3452234854%_
                                             _%$%hd3452334858%_
                                             _%$%tl3452434861%_))))))
                               (_%__match3844738448%_
                                (lambda (_%$%e3451734884%_
                                         _%$%hd3451834888%_
                                         _%$%tl3451934891%_)
                                  (let ((_%$%g3451534894%_ _%$%tl3451934891%_)
                                        (_%$%g3451634896%_ _%$%hd3451834888%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%$%g3451634896%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3823738238%_
                                         _%$%g3451534894%_
                                         _%$%g3451634896%_)
                                        (_%__match3845338454%_
                                         _%$%e3451734884%_
                                         _%$%hd3451834888%_
                                         _%$%tl3451934891%_)))))
                               (_%__match3844138442%_
                                (lambda (_%$%e3450534914%_
                                         _%__splice3823538236%_
                                         _%$%target3450634918%_
                                         _%$%tl3450834921%_)
                                  (letrec ((_%$%loop3450934924%_
                                            (lambda (_%$%hd3450734928%_
                                                     _%$%body3451334931%_)
                                              (if (gx#stx-pair?
                                                   _%$%hd3450734928%_)
                                                  (let ((_%$%e3451034933%_
                                                         (gx#syntax-e
                                                          _%$%hd3450734928%_)))
                                                    (let ((_%$%lp-tl3451234940%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e3451034933%_)))
                                                          (_%$%lp-hd3451134937%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e3451034933%_))))
                                                      (_%$%loop3450934924%_
                                                       _%$%lp-tl3451234940%_
                                                       (cons _%$%lp-hd3451134937%_
                                                             _%$%body3451334931%_))))
                                                  (let ((_%$%body3451434943%_
                                                         (reverse _%$%body3451334931%_)))
                                                    (_%__kont3823338234%_
                                                     _%$%body3451434943%_))))))
                                    (_%$%loop3450934924%_
                                     _%$%target3450634918%_
                                     '()))))
                               (_%$%g3441634968%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3820638207%_)
                                      (let ((_%$%e3450534914%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3820638207%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%e3450534914%_)
                                            (let ((_%__splice3823538236%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%e3450534914%_
                                                    '0)))
                                              (let ((_%$%tl3450834921%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3823538236%_
                                                        '1)))
                                                    (_%$%target3450634918%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3823538236%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl3450834921%_)
                                                    (_%__match3844138442%_
                                                     _%$%e3450534914%_
                                                     _%__splice3823538236%_
                                                     _%$%target3450634918%_
                                                     _%$%tl3450834921%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g3442434631%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g3442434631%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g3442434631%_)))))
                               (_%$%g3441235085%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3820638207%_)
                                      (let ((_%$%e3448835071%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3820638207%_))))
                                        (_%__kont3822538226%_
                                         _%$%e3448835071%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g3441634968%_)))))
                               (_%__match3829538296%_
                                (lambda (_%$%e3444335310%_
                                         _%$%hd3444435314%_
                                         _%$%tl3444535317%_)
                                  (let ((_%$%g3444235320%_ _%$%tl3444535317%_))
                                    (if (gx#stx-list? _%$%g3444235320%_)
                                        (_%__kont3821338214%_
                                         _%$%g3444235320%_)
                                        (_%__match3844738448%_
                                         _%$%e3444335310%_
                                         _%$%hd3444435314%_
                                         _%$%tl3444535317%_)))))
                               (_%__match3828538286%_
                                (lambda (_%$%e3443935395%_
                                         _%$%hd3444035399%_
                                         _%$%tl3444135402%_)
                                  (let ((_%$%g3443835405%_ _%$%tl3444135402%_))
                                    (if (gx#stx-list? _%$%g3443835405%_)
                                        (_%__kont3821138212%_
                                         _%$%g3443835405%_)
                                        (_%__match3844738448%_
                                         _%$%e3443935395%_
                                         _%$%hd3444035399%_
                                         _%$%tl3444135402%_))))))
                          (if (gx#stx-pair? _%__stx3820638207%_)
                              (let ((_%$%e3443235480%_
                                     (gx#syntax-e _%__stx3820638207%_)))
                                (let ((_%$%tl3443435487%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3443235480%_)))
                                      (_%$%hd3443335484%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3443235480%_))))
                                  (if (gx#identifier? _%$%hd3443335484%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40424_|
                                           _%$%hd3443335484%_)
                                          (if (gx#stx-pair? _%$%tl3443435487%_)
                                              (let ((_%$%e3443535490%_
                                                     (gx#syntax-e
                                                      _%$%tl3443435487%_)))
                                                (let ((_%$%tl3443735497%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e3443535490%_)))
                                                      (_%$%hd3443635494%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e3443535490%_))))
                                                  (_%__kont3820938210%_
                                                   _%$%tl3443735497%_
                                                   _%$%hd3443635494%_)))
                                              (_%__match3844738448%_
                                               _%$%e3443235480%_
                                               _%$%hd3443335484%_
                                               _%$%tl3443435487%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40425_|
                                               _%$%hd3443335484%_)
                                              (_%__match3828538286%_
                                               _%$%e3443235480%_
                                               _%$%hd3443335484%_
                                               _%$%tl3443435487%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g40426_|
                                                   _%$%hd3443335484%_)
                                                  (_%__match3829538296%_
                                                   _%$%e3443235480%_
                                                   _%$%hd3443335484%_
                                                   _%$%tl3443435487%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40427_|
                                                       _%$%hd3443335484%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl3443435487%_)
                                                          (let ((_%$%e3445035280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl3443435487%_)))
                    (let ((_%$%tl3445235287%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e3445035280%_)))
                          (_%$%hd3445135284%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e3445035280%_))))
                      (if (gx#stx-null? _%$%tl3445235287%_)
                          (_%__kont3821538216%_ _%$%hd3445135284%_)
                          (_%__match3844738448%_
                           _%$%e3443235480%_
                           _%$%hd3443335484%_
                           _%$%tl3443435487%_))))
                  (_%__match3844738448%_
                   _%$%e3443235480%_
                   _%$%hd3443335484%_
                   _%$%tl3443435487%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g40428_|
                   _%$%hd3443335484%_)
                  (if (gx#stx-pair? _%$%tl3443435487%_)
                      (let ((_%$%e3445835226%_
                             (gx#syntax-e _%$%tl3443435487%_)))
                        (let ((_%$%tl3446035233%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3445835226%_)))
                              (_%$%hd3445935230%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3445835226%_))))
                          (if (gx#stx-pair? _%$%tl3446035233%_)
                              (let ((_%$%e3446135236%_
                                     (gx#syntax-e _%$%tl3446035233%_)))
                                (let ((_%$%tl3446335243%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3446135236%_)))
                                      (_%$%hd3446235240%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3446135236%_))))
                                  (if (gx#stx-null? _%$%tl3446335243%_)
                                      (_%__kont3821738218%_
                                       _%$%hd3446235240%_
                                       _%$%hd3445935230%_)
                                      (_%__match3844738448%_
                                       _%$%e3443235480%_
                                       _%$%hd3443335484%_
                                       _%$%tl3443435487%_))))
                              (_%__match3844738448%_
                               _%$%e3443235480%_
                               _%$%hd3443335484%_
                               _%$%tl3443435487%_))))
                      (_%__match3844738448%_
                       _%$%e3443235480%_
                       _%$%hd3443335484%_
                       _%$%tl3443435487%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g40429_|
                       _%$%hd3443335484%_)
                      (if (gx#stx-pair? _%$%tl3443435487%_)
                          (let ((_%$%e3447035170%_
                                 (gx#syntax-e _%$%tl3443435487%_)))
                            (let ((_%$%tl3447235177%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e3447035170%_)))
                                  (_%$%hd3447135174%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e3447035170%_))))
                              (if (gx#stx-pair? _%$%tl3447235177%_)
                                  (let ((_%$%e3447335180%_
                                         (gx#syntax-e _%$%tl3447235177%_)))
                                    (let ((_%$%tl3447535187%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e3447335180%_)))
                                          (_%$%hd3447435184%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e3447335180%_))))
                                      (_%__kont3821938220%_
                                       _%$%tl3447535187%_
                                       _%$%hd3447435184%_
                                       _%$%hd3447135174%_)))
                                  (_%__match3844738448%_
                                   _%$%e3443235480%_
                                   _%$%hd3443335484%_
                                   _%$%tl3443435487%_))))
                          (_%__match3844738448%_
                           _%$%e3443235480%_
                           _%$%hd3443335484%_
                           _%$%tl3443435487%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g40430_|
                           _%$%hd3443335484%_)
                          (_%__kont3822138222%_ _%$%tl3443435487%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40431_|
                               _%$%hd3443335484%_)
                              (if (gx#stx-pair? _%$%tl3443435487%_)
                                  (let ((_%$%e3448435102%_
                                         (gx#syntax-e _%$%tl3443435487%_)))
                                    (let ((_%$%tl3448635109%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e3448435102%_)))
                                          (_%$%hd3448535106%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e3448435102%_))))
                                      (if (gx#stx-null? _%$%tl3448635109%_)
                                          (_%__kont3822338224%_
                                           _%$%hd3448535106%_)
                                          (_%__match3844738448%_
                                           _%$%e3443235480%_
                                           _%$%hd3443335484%_
                                           _%$%tl3443435487%_))))
                                  (_%__match3844738448%_
                                   _%$%e3443235480%_
                                   _%$%hd3443335484%_
                                   _%$%tl3443435487%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40432_|
                                   _%$%hd3443335484%_)
                                  (if (gx#stx-pair? _%$%tl3443435487%_)
                                      (let ((_%$%e3449335041%_
                                             (gx#syntax-e _%$%tl3443435487%_)))
                                        (let ((_%$%tl3449535048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3449335041%_)))
                                              (_%$%hd3449435045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3449335041%_))))
                                          (if (gx#stx-null? _%$%tl3449535048%_)
                                              (_%__kont3822738228%_
                                               _%$%hd3449435045%_)
                                              (_%__kont3822938230%_
                                               _%$%tl3443435487%_))))
                                      (_%__kont3822938230%_
                                       _%$%tl3443435487%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40433_|
                                       _%$%hd3443335484%_)
                                      (_%__kont3823138232%_ _%$%tl3443435487%_)
                                      (_%__match3844738448%_
                                       _%$%e3443235480%_
                                       _%$%hd3443335484%_
                                       _%$%tl3443435487%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3844738448%_
                                       _%$%e3443235480%_
                                       _%$%hd3443335484%_
                                       _%$%tl3443435487%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g3441235085%_))))))))
                 (_%parse-list34045%_
                  (lambda (_%body34225%_)
                    (let* ((_%__stx3853638537%_ _%body34225%_)
                           (_%$%g3423134260%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3853638537%_))))
                      (let ((_%__kont3853938540%_
                             (lambda (_%$%g3423334384%_)
                               (_%parse134043%_ _%$%g3423334384%_)))
                            (_%__kont3854138542%_
                             (lambda (_%$%g3424134336%_
                                      _%$%g3424234338%_
                                      _%$%g3424334339%_)
                               (cons 'splice:
                                     (cons (_%parse134043%_ _%$%g3424334339%_)
                                           (cons (_%parse-list34045%_
                                                  _%$%g3424134336%_)
                                                 '())))))
                            (_%__kont3854338544%_
                             (lambda (_%$%g3425034294%_ _%$%g3425134296%_)
                               (cons 'cons:
                                     (cons (_%parse134043%_ _%$%g3425134296%_)
                                           (cons (_%parse-list34045%_
                                                  _%$%g3425034294%_)
                                                 '())))))
                            (_%__kont3854538546%_
                             (lambda ()
                               (if (gx#stx-null? _%body34225%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body34225%_)
                                       (_%parse-error34050%_ _%body34225%_)
                                       (_%parse134043%_ _%body34225%_))))))
                        (let* ((_%__match3858538586%_
                                (lambda (_%$%e3425234284%_
                                         _%$%hd3425334288%_
                                         _%$%tl3425434291%_)
                                  (let ((_%$%g3425034294%_ _%$%tl3425434291%_)
                                        (_%$%g3425134296%_ _%$%hd3425334288%_))
                                    (if (gx#ellipsis? _%$%g3425134296%_)
                                        (_%__kont3854538546%_)
                                        (_%__kont3854338544%_
                                         _%$%g3425034294%_
                                         _%$%g3425134296%_)))))
                               (_%__match3857938580%_
                                (lambda (_%$%e3424434316%_
                                         _%$%hd3424534320%_
                                         _%$%tl3424634323%_
                                         _%$%e3424734326%_
                                         _%$%hd3424834330%_
                                         _%$%tl3424934333%_)
                                  (let ((_%$%g3424134336%_ _%$%tl3424934333%_)
                                        (_%$%g3424234338%_ _%$%hd3424834330%_)
                                        (_%$%g3424334339%_ _%$%hd3424534320%_))
                                    (if (gx#ellipsis? _%$%g3424234338%_)
                                        (_%__kont3854138542%_
                                         _%$%g3424134336%_
                                         _%$%g3424234338%_
                                         _%$%g3424334339%_)
                                        (_%__match3858538586%_
                                         _%$%e3424434316%_
                                         _%$%hd3424534320%_
                                         _%$%tl3424634323%_))))))
                          (if (gx#stx-pair? _%__stx3853638537%_)
                              (let ((_%$%e3423434360%_
                                     (gx#syntax-e _%__stx3853638537%_)))
                                (let ((_%$%tl3423634367%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3423434360%_)))
                                      (_%$%hd3423534364%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3423434360%_))))
                                  (if (gx#stx-datum? _%$%hd3423534364%_)
                                      (let ((_%$%e3423734370%_
                                             (gx#stx-e _%$%hd3423534364%_)))
                                        (if (equal? _%$%e3423734370%_ '::)
                                            (if (gx#stx-pair?
                                                 _%$%tl3423634367%_)
                                                (let ((_%$%e3423834374%_
                                                       (gx#syntax-e
                                                        _%$%tl3423634367%_)))
                                                  (let ((_%$%tl3424034381%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e3423834374%_)))
                                                        (_%$%hd3423934378%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e3423834374%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl3424034381%_)
                                                        (_%__kont3853938540%_
                                                         _%$%hd3423934378%_)
                                                        (_%__match3857938580%_
                                                         _%$%e3423434360%_
                                                         _%$%hd3423534364%_
                                                         _%$%tl3423634367%_
                                                         _%$%e3423834374%_
                                                         _%$%hd3423934378%_
                                                         _%$%tl3424034381%_))))
                                                (_%__match3858538586%_
                                                 _%$%e3423434360%_
                                                 _%$%hd3423534364%_
                                                 _%$%tl3423634367%_))
                                            (if (gx#stx-pair?
                                                 _%$%tl3423634367%_)
                                                (let ((_%$%e3424734326%_
                                                       (gx#syntax-e
                                                        _%$%tl3423634367%_)))
                                                  (let ((_%$%tl3424934333%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e3424734326%_)))
                                                        (_%$%hd3424834330%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e3424734326%_))))
                                                    (_%__match3857938580%_
                                                     _%$%e3423434360%_
                                                     _%$%hd3423534364%_
                                                     _%$%tl3423634367%_
                                                     _%$%e3424734326%_
                                                     _%$%hd3424834330%_
                                                     _%$%tl3424934333%_)))
                                                (_%__match3858538586%_
                                                 _%$%e3423434360%_
                                                 _%$%hd3423534364%_
                                                 _%$%tl3423634367%_))))
                                      (if (gx#stx-pair? _%$%tl3423634367%_)
                                          (let ((_%$%e3424734326%_
                                                 (gx#syntax-e
                                                  _%$%tl3423634367%_)))
                                            (let ((_%$%tl3424934333%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e3424734326%_)))
                                                  (_%$%hd3424834330%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e3424734326%_))))
                                              (_%__match3857938580%_
                                               _%$%e3423434360%_
                                               _%$%hd3423534364%_
                                               _%$%tl3423634367%_
                                               _%$%e3424734326%_
                                               _%$%hd3424834330%_
                                               _%$%tl3424934333%_)))
                                          (_%__match3858538586%_
                                           _%$%e3423434360%_
                                           _%$%hd3423534364%_
                                           _%$%tl3423634367%_)))))
                              (_%__kont3854538546%_)))))))
                 (_%parse-vector34046%_
                  (lambda (_%body34222%_)
                    (if (_%simple-vector?34047%_ _%body34222%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse134043%_ _%body34222%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list34045%_ _%body34222%_)
                                    '())))))
                 (_%simple-vector?34047%_
                  (lambda (_%body34159%_)
                    (let* ((_%__stx3858838589%_ _%body34159%_)
                           (_%$%g3416334175%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3858838589%_))))
                      (let ((_%__kont3859138592%_
                             (lambda (_%$%g3416534203%_ _%$%g3416634205%_)
                               (if (gx#ellipsis? _%$%g3416634205%_)
                                   '#f
                                   (_%simple-vector?34047%_
                                    _%$%g3416534203%_))))
                            (_%__kont3859338594%_
                             (lambda () (gx#stx-null? _%body34159%_))))
                        (if (gx#stx-pair? _%__stx3858838589%_)
                            (let ((_%$%e3416734193%_
                                   (gx#syntax-e _%__stx3858838589%_)))
                              (let ((_%$%tl3416934200%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e3416734193%_)))
                                    (_%$%hd3416834197%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e3416734193%_))))
                                (_%__kont3859138592%_
                                 _%$%tl3416934200%_
                                 _%$%hd3416834197%_)))
                            (_%__kont3859338594%_))))))
                 (_%parse-class-body34048%_
                  (lambda (_%body34068%_)
                    (let _%recur34071%_ ((_%rest34074%_ _%body34068%_))
                      (let* ((_%__stx3860438605%_ _%rest34074%_)
                             (_%$%g3407834094%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3860438605%_))))
                        (let ((_%__kont3860738608%_
                               (lambda (_%$%g3408034132%_
                                        _%$%g3408134134%_
                                        _%$%g3408234135%_)
                                 (cons _%$%g3408234135%_
                                       (cons (_%parse134043%_
                                              _%$%g3408134134%_)
                                             (_%recur34071%_
                                              _%$%g3408034132%_)))))
                              (_%__kont3860938610%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest34074%_)
                                     '()
                                     (_%parse-error34050%_ _%rest34074%_)))))
                          (let ((_%__match3862338624%_
                                 (lambda (_%$%e3408334112%_
                                          _%$%hd3408434116%_
                                          _%$%tl3408534119%_
                                          _%$%e3408634122%_
                                          _%$%hd3408734126%_
                                          _%$%tl3408834129%_)
                                   (let ((_%$%g3408034132%_ _%$%tl3408834129%_)
                                         (_%$%g3408134134%_ _%$%hd3408734126%_)
                                         (_%$%g3408234135%_
                                          _%$%hd3408434116%_))
                                     (if (gx#stx-keyword? _%$%g3408234135%_)
                                         (_%__kont3860738608%_
                                          _%$%g3408034132%_
                                          _%$%g3408134134%_
                                          _%$%g3408234135%_)
                                         (_%__kont3860938610%_))))))
                            (if (gx#stx-pair? _%__stx3860438605%_)
                                (let ((_%$%e3408334112%_
                                       (gx#syntax-e _%__stx3860438605%_)))
                                  (let ((_%$%tl3408534119%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e3408334112%_)))
                                        (_%$%hd3408434116%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e3408334112%_))))
                                    (if (gx#stx-pair? _%$%tl3408534119%_)
                                        (let ((_%$%e3408634122%_
                                               (gx#syntax-e
                                                _%$%tl3408534119%_)))
                                          (let ((_%$%tl3408834129%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e3408634122%_)))
                                                (_%$%hd3408734126%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e3408634122%_))))
                                            (_%__match3862338624%_
                                             _%$%e3408334112%_
                                             _%$%hd3408434116%_
                                             _%$%tl3408534119%_
                                             _%$%e3408634122%_
                                             _%$%hd3408734126%_
                                             _%$%tl3408834129%_)))
                                        (_%__kont3860938610%_))))
                                (_%__kont3860938610%_))))))))
                 (_%parse-qq34049%_
                  (lambda (_%hd34055%_)
                    (let ((_%$%g3405734064%_
                           (lambda (_%$%g3405834060%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g3405834060%_))))
                      (_%$%g3405734064%_ _%hd34055%_))))
                 (_%parse-error34050%_
                  (lambda (_%hd34052%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx34041%_
                               (cons _%match-stx34041%_
                                     (cons _%stx34039%_
                                           (cons _%hd34052%_ '())))
                               (cons _%stx34039%_ (cons _%hd34052%_ '())))))))
          (_%parse134043%_ _%stx34039%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35727%_)
        (let ((_%match-stx35730%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35727%_
           _%match-stx35730%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g40434_
        (let ((_g40435_ (let () (declare (not safe)) (##length _g40434_))))
          (cond ((let () (declare (not safe)) (##fx= _g40435_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g40434_))
                ((let () (declare (not safe)) (##fx= _g40435_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g40434_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g40434_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx34024%_)
        (let ((__tmp40436
               (lambda (_%E34027%_)
                 (with-exception-handler
                  (let ((_%E!34030%_ (current-exception-handler)))
                    (lambda (_%e34033%_)
                      (if (syntax-error? _%e34033%_)
                          (_%E34027%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!34030%_ _%e34033%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx34024%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp40436))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32759%_)
        (letrec ((_%loop32762%_
                  (lambda (_%ptree33049%_ _%vars33051%_ _%K33052%_)
                    (let* ((_%__stx3872238723%_ _%ptree33049%_)
                           (_%$%g3306533175%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3872238723%_))))
                      (let ((_%__kont3872538726%_
                             (lambda (_%$%g3306733805%_)
                               (let* ((_%__stx3864238643%_ _%$%g3306733805%_)
                                      (_%$%g3382233856%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3864238643%_))))
                                 (let ((_%__kont3864538646%_
                                        (lambda (_%$%g3382434005%_)
                                          (_%loop32762%_
                                           _%$%g3382434005%_
                                           _%vars33051%_
                                           _%K33052%_)))
                                       (_%__kont3864738648%_
                                        (lambda (_%$%g3382833974%_)
                                          (_%loop32762%_
                                           _%$%g3382833974%_
                                           _%vars33051%_
                                           _%K33052%_)))
                                       (_%__kont3864938650%_
                                        (lambda (_%$%g3383633922%_)
                                          (_%loop32762%_
                                           _%$%g3383633922%_
                                           _%vars33051%_
                                           _%K33052%_)))
                                       (_%__kont3865138652%_
                                        (lambda ()
                                          (_%K33052%_ _%vars33051%_))))
                                   (if (gx#stx-pair? _%__stx3864238643%_)
                                       (let ((_%$%e3382533995%_
                                              (gx#syntax-e
                                               _%__stx3864238643%_)))
                                         (let ((_%$%tl3382734002%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e3382533995%_)))
                                               (_%$%hd3382633999%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e3382533995%_))))
                                           (if (gx#stx-null?
                                                _%$%tl3382734002%_)
                                               (_%__kont3864538646%_
                                                _%$%hd3382633999%_)
                                               (if (gx#stx-datum?
                                                    _%$%hd3382633999%_)
                                                   (let ((_%$%e3383233960%_
                                                          (gx#stx-e
                                                           _%$%hd3382633999%_)))
                                                     (if (equal? _%$%e3383233960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%$%tl3382734002%_)
                     (let ((_%$%e3383333964%_
                            (gx#syntax-e _%$%tl3382734002%_)))
                       (let ((_%$%tl3383533971%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e3383333964%_)))
                             (_%$%hd3383433968%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e3383333964%_))))
                         (if (gx#stx-null? _%$%tl3383533971%_)
                             (_%__kont3864738648%_ _%$%hd3383433968%_)
                             (_%__kont3865138652%_))))
                     (_%__kont3865138652%_))
                 (if (equal? _%$%e3383233960%_ '::)
                     (if (gx#stx-pair? _%$%tl3382734002%_)
                         (let ((_%$%e3384133888%_
                                (gx#syntax-e _%$%tl3382734002%_)))
                           (let ((_%$%tl3384333895%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e3384133888%_)))
                                 (_%$%hd3384233892%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e3384133888%_))))
                             (if (gx#stx-pair? _%$%tl3384333895%_)
                                 (let ((_%$%e3384433898%_
                                        (gx#syntax-e _%$%tl3384333895%_)))
                                   (let ((_%$%tl3384633905%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e3384433898%_)))
                                         (_%$%hd3384533902%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e3384433898%_))))
                                     (if (gx#stx-datum? _%$%hd3384533902%_)
                                         (let ((_%$%e3384733908%_
                                                (gx#stx-e _%$%hd3384533902%_)))
                                           (if (equal? _%$%e3384733908%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%$%tl3384633905%_)
                                                   (let ((_%$%e3384833912%_
                                                          (gx#syntax-e
                                                           _%$%tl3384633905%_)))
                                                     (let ((_%$%tl3385033919%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e3384833912%_)))
                                                           (_%$%hd3384933916%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e3384833912%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl3385033919%_)
                                                           (_%__kont3864938650%_
                                                            _%$%hd3384933916%_)
                                                           (_%__kont3865138652%_))))
                                                   (_%__kont3865138652%_))
                                               (_%__kont3865138652%_)))
                                         (_%__kont3865138652%_))))
                                 (_%__kont3865138652%_))))
                         (_%__kont3865138652%_))
                     (_%__kont3865138652%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3865138652%_)))))
                                       (_%__kont3865138652%_))))))
                            (_%__kont3872738728%_
                             (lambda (_%$%g3307533692%_ _%$%g3307633694%_)
                               (let* ((_%__stx3862638627%_ _%$%g3307533692%_)
                                      (_%$%g3371033722%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3862638627%_))))
                                 (let ((_%__kont3862938630%_
                                        (lambda (_%$%g3371233750%_
                                                 _%$%g3371333752%_)
                                          (_%loop32762%_
                                           _%$%g3371333752%_
                                           _%vars33051%_
                                           (lambda (_%$%g3376433766%_)
                                             (_%loop32762%_
                                              (cons _%$%g3307633694%_
                                                    _%$%g3371233750%_)
                                              _%$%g3376433766%_
                                              _%K33052%_)))))
                                       (_%__kont3863138632%_
                                        (lambda ()
                                          (_%K33052%_ _%vars33051%_))))
                                   (if (gx#stx-pair? _%__stx3862638627%_)
                                       (let ((_%$%e3371433740%_
                                              (gx#syntax-e
                                               _%__stx3862638627%_)))
                                         (let ((_%$%tl3371633747%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e3371433740%_)))
                                               (_%$%hd3371533744%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e3371433740%_))))
                                           (_%__kont3862938630%_
                                            _%$%tl3371633747%_
                                            _%$%hd3371533744%_)))
                                       (_%__kont3863138632%_))))))
                            (_%__kont3872938730%_
                             (lambda (_%$%g3308033661%_)
                               (_%loop32762%_
                                _%$%g3308033661%_
                                _%vars33051%_
                                _%K33052%_)))
                            (_%__kont3873138732%_
                             (lambda (_%$%g3308833607%_ _%$%g3308933609%_)
                               (_%loop32762%_
                                _%$%g3308933609%_
                                _%vars33051%_
                                (lambda (_%$%g3362433626%_)
                                  (_%loop32762%_
                                   _%$%g3308833607%_
                                   _%$%g3362433626%_
                                   _%K33052%_)))))
                            (_%__kont3873338734%_
                             (lambda (_%$%g3310033543%_ _%$%g3310133545%_)
                               (_%loop32762%_
                                _%$%g3310133545%_
                                _%vars33051%_
                                (lambda (_%$%g3356033562%_)
                                  (_%loop32762%_
                                   _%$%g3310033543%_
                                   _%$%g3356033562%_
                                   _%K33052%_)))))
                            (_%__kont3873538736%_
                             (lambda (_%$%g3311233488%_)
                               (_%loop32762%_
                                _%$%g3311233488%_
                                _%vars33051%_
                                _%K33052%_)))
                            (_%__kont3873738738%_
                             (lambda (_%$%g3312033438%_ _%$%g3312133440%_)
                               (_%loop-vector32764%_
                                _%$%g3312033438%_
                                _%vars33051%_
                                _%K33052%_)))
                            (_%__kont3873938740%_
                             (lambda (_%$%g3312833395%_)
                               (_%loop-vector32764%_
                                _%$%g3312833395%_
                                _%vars33051%_
                                _%K33052%_)))
                            (_%__kont3874138742%_
                             (lambda (_%$%g3313933338%_)
                               (_%loop-class-list32766%_
                                _%$%g3313933338%_
                                _%vars33051%_
                                _%K33052%_)))
                            (_%__kont3874338744%_
                             (lambda (_%$%g3315033279%_ _%$%g3315133281%_)
                               (_%loop32762%_
                                _%$%g3315033279%_
                                _%vars33051%_
                                _%K33052%_)))
                            (_%__kont3874538746%_
                             (lambda (_%$%g3316233217%_)
                               (if (find (lambda (_%$%g3323233234%_)
                                           (gx#bound-identifier=?
                                            _%$%g3323233234%_
                                            _%$%g3316233217%_))
                                         _%vars33051%_)
                                   (_%K33052%_ _%vars33051%_)
                                   (_%K33052%_
                                    (cons _%$%g3316233217%_ _%vars33051%_)))))
                            (_%__kont3874738748%_
                             (lambda () (_%K33052%_ _%vars33051%_))))
                        (let* ((_%__match3887938880%_
                                (lambda (_%$%e3312233418%_
                                         _%$%hd3312333422%_
                                         _%$%tl3312433425%_
                                         _%$%e3312533428%_
                                         _%$%hd3312633432%_
                                         _%$%tl3312733435%_)
                                  (let ((_%$%g3312033438%_ _%$%hd3312633432%_)
                                        (_%$%g3312133440%_ _%$%hd3312333422%_))
                                    (if (or (gx#stx-eq?
                                             'values:
                                             _%$%g3312133440%_)
                                            (gx#stx-eq?
                                             'vector:
                                             _%$%g3312133440%_))
                                        (_%__kont3873738738%_
                                         _%$%g3312033438%_
                                         _%$%g3312133440%_)
                                        (if (gx#stx-datum? _%$%hd3312333422%_)
                                            (let ((_%$%e3313233371%_
                                                   (gx#stx-e
                                                    _%$%hd3312333422%_)))
                                              (if (equal? _%$%e3313233371%_
                                                          'struct:)
                                                  (_%__kont3874738748%_)
                                                  (if (equal? _%$%e3313233371%_
                                                              'class:)
                                                      (_%__kont3874738748%_)
                                                      (if (equal? _%$%e3313233371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3874738748%_)
                  (if (equal? _%$%e3313233371%_ 'var:)
                      (_%__kont3874538746%_ _%$%hd3312633432%_)
                      (_%__kont3874738748%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3874738748%_))))))
                               (_%__match3877338774%_
                                (lambda (_%$%e3307733682%_
                                         _%$%hd3307833686%_
                                         _%$%tl3307933689%_)
                                  (let ((_%$%g3307533692%_ _%$%tl3307933689%_)
                                        (_%$%g3307633694%_ _%$%hd3307833686%_))
                                    (if (or (gx#stx-eq?
                                             'and:
                                             _%$%g3307633694%_)
                                            (gx#stx-eq?
                                             'or:
                                             _%$%g3307633694%_))
                                        (_%__kont3872738728%_
                                         _%$%g3307533692%_
                                         _%$%g3307633694%_)
                                        (if (gx#stx-datum? _%$%hd3307833686%_)
                                            (let ((_%$%e3308433647%_
                                                   (gx#stx-e
                                                    _%$%hd3307833686%_)))
                                              (if (equal? _%$%e3308433647%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%$%tl3307933689%_)
                                                      (let ((_%$%e3308533651%_
                                                             (gx#syntax-e
                                                              _%$%tl3307933689%_)))
                                                        (let ((_%$%tl3308733658%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e3308533651%_)))
                      (_%$%hd3308633655%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e3308533651%_))))
                  (if (gx#stx-null? _%$%tl3308733658%_)
                      (_%__kont3872938730%_ _%$%hd3308633655%_)
                      (_%__kont3874738748%_))))
              (_%__kont3874738748%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%$%e3308433647%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%$%tl3307933689%_)
                                                          (let ((_%$%e3309433587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl3307933689%_)))
                    (let ((_%$%tl3309633594%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e3309433587%_)))
                          (_%$%hd3309533591%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e3309433587%_))))
                      (if (gx#stx-pair? _%$%tl3309633594%_)
                          (let ((_%$%e3309733597%_
                                 (gx#syntax-e _%$%tl3309633594%_)))
                            (let ((_%$%tl3309933604%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e3309733597%_)))
                                  (_%$%hd3309833601%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e3309733597%_))))
                              (if (gx#stx-null? _%$%tl3309933604%_)
                                  (_%__kont3873138732%_
                                   _%$%hd3309833601%_
                                   _%$%hd3309533591%_)
                                  (_%__kont3874738748%_))))
                          (if (gx#stx-null? _%$%tl3309633594%_)
                              (_%__match3887938880%_
                               _%$%e3307733682%_
                               _%$%hd3307833686%_
                               _%$%tl3307933689%_
                               _%$%e3309433587%_
                               _%$%hd3309533591%_
                               _%$%tl3309633594%_)
                              (_%__kont3874738748%_)))))
                  (_%__kont3874738748%_))
              (if (equal? _%$%e3308433647%_ 'splice:)
                  (if (gx#stx-pair? _%$%tl3307933689%_)
                      (let ((_%$%e3310633523%_
                             (gx#syntax-e _%$%tl3307933689%_)))
                        (let ((_%$%tl3310833530%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3310633523%_)))
                              (_%$%hd3310733527%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3310633523%_))))
                          (if (gx#stx-pair? _%$%tl3310833530%_)
                              (let ((_%$%e3310933533%_
                                     (gx#syntax-e _%$%tl3310833530%_)))
                                (let ((_%$%tl3311133540%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3310933533%_)))
                                      (_%$%hd3311033537%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3310933533%_))))
                                  (if (gx#stx-null? _%$%tl3311133540%_)
                                      (_%__kont3873338734%_
                                       _%$%hd3311033537%_
                                       _%$%hd3310733527%_)
                                      (_%__kont3874738748%_))))
                              (if (gx#stx-null? _%$%tl3310833530%_)
                                  (_%__match3887938880%_
                                   _%$%e3307733682%_
                                   _%$%hd3307833686%_
                                   _%$%tl3307933689%_
                                   _%$%e3310633523%_
                                   _%$%hd3310733527%_
                                   _%$%tl3310833530%_)
                                  (_%__kont3874738748%_)))))
                      (_%__kont3874738748%_))
                  (if (equal? _%$%e3308433647%_ 'box:)
                      (if (gx#stx-pair? _%$%tl3307933689%_)
                          (let ((_%$%e3311733478%_
                                 (gx#syntax-e _%$%tl3307933689%_)))
                            (let ((_%$%tl3311933485%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e3311733478%_)))
                                  (_%$%hd3311833482%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e3311733478%_))))
                              (if (gx#stx-null? _%$%tl3311933485%_)
                                  (_%__kont3873538736%_ _%$%hd3311833482%_)
                                  (_%__kont3874738748%_))))
                          (_%__kont3874738748%_))
                      (if (gx#stx-pair? _%$%tl3307933689%_)
                          (let ((_%$%e3312533428%_
                                 (gx#syntax-e _%$%tl3307933689%_)))
                            (let ((_%$%tl3312733435%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e3312533428%_)))
                                  (_%$%hd3312633432%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e3312533428%_))))
                              (if (gx#stx-null? _%$%tl3312733435%_)
                                  (_%__match3887938880%_
                                   _%$%e3307733682%_
                                   _%$%hd3307833686%_
                                   _%$%tl3307933689%_
                                   _%$%e3312533428%_
                                   _%$%hd3312633432%_
                                   _%$%tl3312733435%_)
                                  (if (equal? _%$%e3308433647%_ 'struct:)
                                      (if (gx#stx-pair? _%$%tl3312733435%_)
                                          (let ((_%$%e3313633385%_
                                                 (gx#syntax-e
                                                  _%$%tl3312733435%_)))
                                            (let ((_%$%tl3313833392%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e3313633385%_)))
                                                  (_%$%hd3313733389%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e3313633385%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl3313833392%_)
                                                  (_%__kont3873938740%_
                                                   _%$%hd3313733389%_)
                                                  (_%__kont3874738748%_))))
                                          (_%__kont3874738748%_))
                                      (if (equal? _%$%e3308433647%_ 'class:)
                                          (if (gx#stx-pair? _%$%tl3312733435%_)
                                              (let ((_%$%e3314733328%_
                                                     (gx#syntax-e
                                                      _%$%tl3312733435%_)))
                                                (let ((_%$%tl3314933335%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e3314733328%_)))
                                                      (_%$%hd3314833332%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e3314733328%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl3314933335%_)
                                                      (_%__kont3874138742%_
                                                       _%$%hd3314833332%_)
                                                      (_%__kont3874738748%_))))
                                              (_%__kont3874738748%_))
                                          (if (equal? _%$%e3308433647%_
                                                      'apply:)
                                              (if (gx#stx-pair?
                                                   _%$%tl3312733435%_)
                                                  (let ((_%$%e3315933269%_
                                                         (gx#syntax-e
                                                          _%$%tl3312733435%_)))
                                                    (let ((_%$%tl3316133276%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e3315933269%_)))
                                                          (_%$%hd3316033273%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e3315933269%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl3316133276%_)
                                                          (_%__kont3874338744%_
                                                           _%$%hd3316033273%_
                                                           _%$%hd3312633432%_)
                                                          (_%__kont3874738748%_))))
                                                  (_%__kont3874738748%_))
                                              (_%__kont3874738748%_)))))))
                          (_%__kont3874738748%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair?
                                                 _%$%tl3307933689%_)
                                                (let ((_%$%e3312533428%_
                                                       (gx#syntax-e
                                                        _%$%tl3307933689%_)))
                                                  (let ((_%$%tl3312733435%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e3312533428%_)))
                                                        (_%$%hd3312633432%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e3312533428%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl3312733435%_)
                                                        (_%__match3887938880%_
                                                         _%$%e3307733682%_
                                                         _%$%hd3307833686%_
                                                         _%$%tl3307933689%_
                                                         _%$%e3312533428%_
                                                         _%$%hd3312633432%_
                                                         _%$%tl3312733435%_)
                                                        (_%__kont3874738748%_))))
                                                (_%__kont3874738748%_))))))))
                          (if (gx#stx-pair? _%__stx3872238723%_)
                              (let ((_%$%e3306833781%_
                                     (gx#syntax-e _%__stx3872238723%_)))
                                (let ((_%$%tl3307033788%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3306833781%_)))
                                      (_%$%hd3306933785%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3306833781%_))))
                                  (if (gx#stx-datum? _%$%hd3306933785%_)
                                      (let ((_%$%e3307133791%_
                                             (gx#stx-e _%$%hd3306933785%_)))
                                        (if (equal? _%$%e3307133791%_ '?:)
                                            (if (gx#stx-pair?
                                                 _%$%tl3307033788%_)
                                                (let ((_%$%e3307233795%_
                                                       (gx#syntax-e
                                                        _%$%tl3307033788%_)))
                                                  (let ((_%$%tl3307433802%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e3307233795%_)))
                                                        (_%$%hd3307333799%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e3307233795%_))))
                                                    (_%__kont3872538726%_
                                                     _%$%tl3307433802%_)))
                                                (_%__match3877338774%_
                                                 _%$%e3306833781%_
                                                 _%$%hd3306933785%_
                                                 _%$%tl3307033788%_))
                                            (_%__match3877338774%_
                                             _%$%e3306833781%_
                                             _%$%hd3306933785%_
                                             _%$%tl3307033788%_)))
                                      (_%__match3877338774%_
                                       _%$%e3306833781%_
                                       _%$%hd3306933785%_
                                       _%$%tl3307033788%_))))
                              (_%__kont3874738748%_)))))))
                 (_%loop-vector32764%_
                  (lambda (_%body32925%_ _%vars32927%_ _%K32928%_)
                    (let* ((_%__stx3898038981%_ _%body32925%_)
                           (_%$%g3293132954%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3898038981%_))))
                      (let ((_%__kont3898338984%_
                             (lambda (_%$%g3293333031%_)
                               (_%loop-list32765%_
                                _%$%g3293333031%_
                                _%vars32927%_
                                _%K32928%_)))
                            (_%__kont3898538986%_
                             (lambda (_%$%g3294132985%_)
                               (_%loop32762%_
                                _%$%g3294132985%_
                                _%vars32927%_
                                _%K32928%_))))
                        (if (gx#stx-pair? _%__stx3898038981%_)
                            (let ((_%$%e3293433007%_
                                   (gx#syntax-e _%__stx3898038981%_)))
                              (let ((_%$%tl3293633014%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e3293433007%_)))
                                    (_%$%hd3293533011%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e3293433007%_))))
                                (if (gx#stx-datum? _%$%hd3293533011%_)
                                    (let ((_%$%e3293733017%_
                                           (gx#stx-e _%$%hd3293533011%_)))
                                      (if (equal? _%$%e3293733017%_ 'simple:)
                                          (if (gx#stx-pair? _%$%tl3293633014%_)
                                              (let ((_%$%e3293833021%_
                                                     (gx#syntax-e
                                                      _%$%tl3293633014%_)))
                                                (let ((_%$%tl3294033028%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e3293833021%_)))
                                                      (_%$%hd3293933025%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e3293833021%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl3294033028%_)
                                                      (_%__kont3898338984%_
                                                       _%$%hd3293933025%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g3293132954%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g3293132954%_)))
                                          (if (equal? _%$%e3293733017%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%$%tl3293633014%_)
                                                  (let ((_%$%e3294632975%_
                                                         (gx#syntax-e
                                                          _%$%tl3293633014%_)))
                                                    (let ((_%$%tl3294832982%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e3294632975%_)))
                                                          (_%$%hd3294732979%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e3294632975%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl3294832982%_)
                                                          (_%__kont3898538986%_
                                                           _%$%hd3294732979%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g3293132954%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g3293132954%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g3293132954%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g3293132954%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g3293132954%_)))))))
                 (_%loop-list32765%_
                  (lambda (_%rest32855%_ _%vars32857%_ _%K32858%_)
                    (let* ((_%__stx3903039031%_ _%rest32855%_)
                           (_%$%g3286132873%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3903039031%_))))
                      (let ((_%__kont3903339034%_
                             (lambda (_%$%g3286332901%_ _%$%g3286432903%_)
                               (_%loop32762%_
                                _%$%g3286432903%_
                                _%vars32857%_
                                (lambda (_%$%g3291532917%_)
                                  (_%loop-list32765%_
                                   _%$%g3286332901%_
                                   _%$%g3291532917%_
                                   _%K32858%_)))))
                            (_%__kont3903539036%_
                             (lambda () (_%K32858%_ _%vars32857%_))))
                        (if (gx#stx-pair? _%__stx3903039031%_)
                            (let ((_%$%e3286532891%_
                                   (gx#syntax-e _%__stx3903039031%_)))
                              (let ((_%$%tl3286732898%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e3286532891%_)))
                                    (_%$%hd3286632895%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e3286532891%_))))
                                (_%__kont3903339034%_
                                 _%$%tl3286732898%_
                                 _%$%hd3286632895%_)))
                            (_%__kont3903539036%_))))))
                 (_%loop-class-list32766%_
                  (lambda (_%rest32768%_ _%vars32770%_ _%K32771%_)
                    (let* ((_%__stx3904639047%_ _%rest32768%_)
                           (_%$%g3277432789%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3904639047%_))))
                      (let ((_%__kont3904939050%_
                             (lambda (_%$%g3277632827%_ _%$%g3277732829%_)
                               (_%loop32762%_
                                _%$%g3277732829%_
                                _%vars32770%_
                                (lambda (_%$%g3284532847%_)
                                  (_%loop-class-list32766%_
                                   _%$%g3277632827%_
                                   _%$%g3284532847%_
                                   _%K32771%_)))))
                            (_%__kont3905139052%_
                             (lambda () (_%K32771%_ _%vars32770%_))))
                        (if (gx#stx-pair? _%__stx3904639047%_)
                            (let ((_%$%e3277832807%_
                                   (gx#syntax-e _%__stx3904639047%_)))
                              (let ((_%$%tl3278032814%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e3277832807%_)))
                                    (_%$%hd3277932811%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e3277832807%_))))
                                (if (gx#stx-pair? _%$%tl3278032814%_)
                                    (let ((_%$%e3278132817%_
                                           (gx#syntax-e _%$%tl3278032814%_)))
                                      (let ((_%$%tl3278332824%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e3278132817%_)))
                                            (_%$%hd3278232821%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e3278132817%_))))
                                        (_%__kont3904939050%_
                                         _%$%tl3278332824%_
                                         _%$%hd3278232821%_)))
                                    (_%__kont3905139052%_))))
                            (_%__kont3905139052%_)))))))
          (_%loop32762%_ _%ptree32759%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29691%_ _%tgt29693%_ _%ptree29694%_ _%K29695%_ _%E29696%_)
        (letrec ((_%generate129698%_
                  (lambda (_%tgt30958%_ _%ptree30960%_ _%K30961%_ _%E30962%_)
                    (let* ((_%$%g3096430972%_
                            (lambda (_%$%g3096530968%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g3096530968%_)))
                           (_%$%g3096332755%_
                            (lambda (_%$%g3096530976%_)
                              (let* ((_%__stx3928239283%_ _%ptree30960%_)
                                     (_%$%g3100631148%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx3928239283%_))))
                                (let ((_%__kont3928539286%_
                                       (lambda (_%$%g3100832470%_
                                                _%$%g3100932472%_)
                                         (let* ((_%__stx3920039201%_
                                                 _%$%g3100832470%_)
                                                (_%$%g3248932524%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%__stx3920039201%_))))
                                           (let ((_%__kont3920339204%_
                                                  (lambda ()
                                                    (cons 'if
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '?)
                              (cons _%$%g3100932472%_
                                    (cons _%$%g3096530976%_ '())))
                        (cons _%K30961%_ (cons _%E30962%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont3920539206%_
                                                  (lambda (_%$%g3249132725%_)
                                                    (cons 'if
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '?)
                              (cons _%$%g3100932472%_
                                    (cons _%$%g3096530976%_ '())))
                        (cons (_%generate129698%_
                               _%tgt30958%_
                               _%$%g3249132725%_
                               _%K30961%_
                               _%E30962%_)
                              (cons _%E30962%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont3920739208%_
                                                  (lambda (_%$%g3249532663%_)
                                                    (let* ((_%$%g3267732685%_
                                                            (lambda (_%$%g3267832681%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g3267832681%_)))
                                                           (_%$%g3267632704%_
                                                            (lambda (_%$%g3267832689%_)
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (cons _%$%g3267832689%_
                                              (cons (cons _%$%g3100932472%_
                                                          (cons _%$%g3096530976%_
                                                                '()))
                                                    '()))
                                        '())
                                  (cons (cons 'if
                                              (cons _%$%g3267832689%_
                                                    (cons (_%generate129698%_
                                                           _%$%g3267832689%_
                                                           _%$%g3249532663%_
                                                           _%K30961%_
                                                           _%E30962%_)
                                                          (cons _%E30962%_
                                                                '()))))
                                        '()))))))
              (_%$%g3267632704%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont3920939210%_
                                                  (lambda (_%$%g3250332579%_
                                                           _%$%g3250432581%_)
                                                    (let* ((_%$%g3260132609%_
                                                            (lambda (_%$%g3260232605%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g3260232605%_)))
                                                           (_%$%g3260032628%_
                                                            (lambda (_%$%g3260232613%_)
                                                              (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f '?)
                                        (cons _%$%g3100932472%_
                                              (cons _%$%g3096530976%_ '())))
                                  (cons (cons 'let
                                              (cons (cons (cons _%$%g3260232613%_
                                                                (cons (cons _%$%g3250432581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$%g3096530976%_ '()))
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (_%generate129698%_
                                                           _%$%g3260232613%_
                                                           _%$%g3250332579%_
                                                           _%K30961%_
                                                           _%E30962%_)
                                                          '())))
                                        (cons _%E30962%_ '())))))))
              (_%$%g3260032628%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_%$%g3248632736%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%__stx3920039201%_)
                                                          (let ((_%$%e3249232715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%__stx3920039201%_)))
                    (let ((_%$%tl3249432722%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e3249232715%_)))
                          (_%$%hd3249332719%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e3249232715%_))))
                      (if (gx#stx-null? _%$%tl3249432722%_)
                          (_%__kont3920539206%_ _%$%hd3249332719%_)
                          (if (gx#stx-datum? _%$%hd3249332719%_)
                              (let ((_%$%e3249932649%_
                                     (gx#stx-e _%$%hd3249332719%_)))
                                (if (equal? _%$%e3249932649%_ '=>:)
                                    (if (gx#stx-pair? _%$%tl3249432722%_)
                                        (let ((_%$%e3250032653%_
                                               (gx#syntax-e
                                                _%$%tl3249432722%_)))
                                          (let ((_%$%tl3250232660%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e3250032653%_)))
                                                (_%$%hd3250132657%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e3250032653%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl3250232660%_)
                                                (_%__kont3920739208%_
                                                 _%$%hd3250132657%_)
                                                (_%$%g3248932524%_))))
                                        (_%$%g3248932524%_))
                                    (if (equal? _%$%e3249932649%_ '::)
                                        (if (gx#stx-pair? _%$%tl3249432722%_)
                                            (let ((_%$%e3250932545%_
                                                   (gx#syntax-e
                                                    _%$%tl3249432722%_)))
                                              (let ((_%$%tl3251132552%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e3250932545%_)))
                                                    (_%$%hd3251032549%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e3250932545%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl3251132552%_)
                                                    (let ((_%$%e3251232555%_
                                                           (gx#syntax-e
                                                            _%$%tl3251132552%_)))
                                                      (let ((_%$%tl3251432562%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e3251232555%_)))
                    (_%$%hd3251332559%_
                     (let () (declare (not safe)) (##car _%$%e3251232555%_))))
                (if (gx#stx-datum? _%$%hd3251332559%_)
                    (let ((_%$%e3251532565%_ (gx#stx-e _%$%hd3251332559%_)))
                      (if (equal? _%$%e3251532565%_ '=>:)
                          (if (gx#stx-pair? _%$%tl3251432562%_)
                              (let ((_%$%e3251632569%_
                                     (gx#syntax-e _%$%tl3251432562%_)))
                                (let ((_%$%tl3251832576%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3251632569%_)))
                                      (_%$%hd3251732573%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3251632569%_))))
                                  (if (gx#stx-null? _%$%tl3251832576%_)
                                      (_%__kont3920939210%_
                                       _%$%hd3251732573%_
                                       _%$%hd3251032549%_)
                                      (_%$%g3248932524%_))))
                              (_%$%g3248932524%_))
                          (_%$%g3248932524%_)))
                    (_%$%g3248932524%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g3248932524%_))))
                                            (_%$%g3248932524%_))
                                        (_%$%g3248932524%_))))
                              (_%$%g3248932524%_)))))
                  (_%$%g3248932524%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-null?
                                                    _%__stx3920039201%_)
                                                   (_%__kont3920339204%_)
                                                   (_%$%g3248632736%_)))))))
                                      (_%__kont3928739288%_
                                       (lambda (_%$%g3101732367%_)
                                         (let* ((_%__stx3918439185%_
                                                 _%$%g3101732367%_)
                                                (_%$%g3238032392%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%__stx3918439185%_))))
                                           (let ((_%__kont3918739188%_
                                                  (lambda (_%$%g3238232420%_
                                                           _%$%g3238332422%_)
                                                    (_%generate129698%_
                                                     _%tgt30958%_
                                                     _%$%g3238332422%_
                                                     (_%generate129698%_
                                                      _%tgt30958%_
                                                      (cons 'and:
                                                            _%$%g3238232420%_)
                                                      _%K30961%_
                                                      _%E30962%_)
                                                     _%E30962%_)))
                                                 (_%__kont3918939190%_
                                                  (lambda () _%K30961%_)))
                                             (if (gx#stx-pair?
                                                  _%__stx3918439185%_)
                                                 (let ((_%$%e3238432410%_
                                                        (gx#syntax-e
                                                         _%__stx3918439185%_)))
                                                   (let ((_%$%tl3238632417%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e3238432410%_)))
                                                         (_%$%hd3238532414%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e3238432410%_))))
                                                     (_%__kont3918739188%_
                                                      _%$%tl3238632417%_
                                                      _%$%hd3238532414%_)))
                                                 (_%__kont3918939190%_))))))
                                      (_%__kont3928939290%_
                                       (lambda (_%$%g3102232274%_)
                                         (let* ((_%__stx3916839169%_
                                                 _%$%g3102232274%_)
                                                (_%$%g3228732299%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%__stx3916839169%_))))
                                           (let ((_%__kont3917139172%_
                                                  (lambda (_%$%g3228932327%_
                                                           _%$%g3229032329%_)
                                                    (_%generate129698%_
                                                     _%tgt30958%_
                                                     _%$%g3229032329%_
                                                     _%K30961%_
                                                     (_%generate129698%_
                                                      _%tgt30958%_
                                                      (cons 'or:
                                                            _%$%g3228932327%_)
                                                      _%K30961%_
                                                      _%E30962%_))))
                                                 (_%__kont3917339174%_
                                                  (lambda () _%E30962%_)))
                                             (if (gx#stx-pair?
                                                  _%__stx3916839169%_)
                                                 (let ((_%$%e3229132317%_
                                                        (gx#syntax-e
                                                         _%__stx3916839169%_)))
                                                   (let ((_%$%tl3229332324%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e3229132317%_)))
                                                         (_%$%hd3229232321%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e3229132317%_))))
                                                     (_%__kont3917139172%_
                                                      _%$%tl3229332324%_
                                                      _%$%hd3229232321%_)))
                                                 (_%__kont3917339174%_))))))
                                      (_%__kont3929139292%_
                                       (lambda (_%$%g3102732239%_)
                                         (_%generate129698%_
                                          _%tgt30958%_
                                          _%$%g3102732239%_
                                          _%E30962%_
                                          _%K30961%_)))
                                      (_%__kont3929339294%_
                                       (lambda (_%$%g3103532113%_
                                                _%$%g3103632115%_)
                                         (let* ((_%$%g3213232147%_
                                                 (lambda (_%$%g3213332143%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g3213332143%_)))
                                                (_%$%g3213132204%_
                                                 (lambda (_%$%g3213332151%_)
                                                   (if (gx#stx-pair?
                                                        _%$%g3213332151%_)
                                                       (let ((_%$%e3213632154%_
                                                              (gx#syntax-e
                                                               _%$%g3213332151%_)))
                                                         (let ((_%$%hd3213732158%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e3213632154%_)))
                       (_%$%tl3213832161%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e3213632154%_))))
                   (if (gx#stx-pair? _%$%tl3213832161%_)
                       (let ((_%$%e3213932164%_
                              (gx#syntax-e _%$%tl3213832161%_)))
                         (let ((_%$%hd3214032168%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e3213932164%_)))
                               (_%$%tl3214132171%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e3213932164%_))))
                           (if (gx#stx-null? _%$%tl3214132171%_)
                               (cons 'if
                                     (cons (cons (gx#datum->syntax '#f 'pair?)
                                                 (cons _%$%g3096530976%_ '()))
                                           (cons (let ((_%hd-pat32192%_
                                                        (gx#stx-e
                                                         _%$%g3103632115%_))
                                                       (_%tl-pat32194%_
                                                        (gx#stx-e
                                                         _%$%g3103532113%_)))
                                                   (if (and (equal? _%hd-pat32192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '(any:))
                    (equal? _%tl-pat32194%_ '(any:)))
               _%K30961%_
               (if (equal? _%tl-pat32194%_ '(any:))
                   (cons 'let
                         (cons (cons (cons _%$%hd3213732158%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##car)
                                                       (cons _%$%g3096530976%_
                                                             '()))
                                                 '()))
                                     '())
                               (cons (_%generate129698%_
                                      _%$%hd3213732158%_
                                      _%$%g3103632115%_
                                      _%K30961%_
                                      _%E30962%_)
                                     '())))
                   (if (equal? _%hd-pat32192%_ '(any:))
                       (cons 'let
                             (cons (cons (cons _%$%hd3214032168%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _%$%g3096530976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (_%generate129698%_
                                          _%$%hd3214032168%_
                                          _%$%g3103532113%_
                                          _%K30961%_
                                          _%E30962%_)
                                         '())))
                       (cons 'let
                             (cons (cons (cons _%$%hd3213732158%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##car)
                                                           (cons _%$%g3096530976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons _%$%hd3214032168%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%$%g3096530976%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (_%generate129698%_
                                          _%$%hd3213732158%_
                                          _%$%g3103632115%_
                                          (_%generate129698%_
                                           _%$%hd3214032168%_
                                           _%$%g3103532113%_
                                           _%K30961%_
                                           _%E30962%_)
                                          _%E30962%_)
                                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%E30962%_ '()))))
                               (_%$%g3213232147%_ _%$%g3213332151%_))))
                       (_%$%g3213232147%_ _%$%g3213332151%_))))
               (_%$%g3213232147%_ _%$%g3213332151%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g3213132204%_
                                            (list (gx#genident 'hd)
                                                  (gx#genident 'tl))))))
                                      (_%__kont3929539296%_
                                       (lambda ()
                                         (cons 'if
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'null?)
                                                           (cons _%$%g3096530976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%K30961%_
                                                           (cons _%E30962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__kont3929739298%_
                                       (lambda (_%$%g3105132029%_
                                                _%$%g3105232031%_)
                                         (_%generate-splice29700%_
                                          _%tgt30958%_
                                          _%$%g3105232031%_
                                          _%$%g3105132029%_
                                          _%K30961%_
                                          _%E30962%_)))
                                      (_%__kont3929939300%_
                                       (lambda (_%$%g3106331943%_)
                                         (let* ((_%$%g3195731965%_
                                                 (lambda (_%$%g3195831961%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g3195831961%_)))
                                                (_%$%g3195631984%_
                                                 (lambda (_%$%g3195831969%_)
                                                   (cons 'if
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'box?)
                             (cons _%$%g3096530976%_ '()))
                       (cons (cons 'let
                                   (cons (cons (cons _%$%g3195831969%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##unbox)
                         (cons _%$%g3096530976%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate129698%_
                                                _%$%g3195831969%_
                                                _%$%g3106331943%_
                                                _%K30961%_
                                                _%E30962%_)
                                               '())))
                             (cons _%E30962%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g3195631984%_
                                            (gx#genident 'e)))))
                                      (_%__kont3930139302%_
                                       (lambda (_%$%g3107131748%_)
                                         (let* ((_%__stx3911839119%_
                                                 _%$%g3107131748%_)
                                                (_%$%g3176331786%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%__stx3911839119%_))))
                                           (let ((_%__kont3912139122%_
                                                  (lambda (_%$%g3176531863%_)
                                                    (let* ((_%$%g3187731885%_
                                                            (lambda (_%$%g3187831881%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g3187831881%_)))
                                                           (_%$%g3187631904%_
                                                            (lambda (_%$%g3187831889%_)
                                                              (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f '##fx=)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'values-count)
                                                    (cons _%$%g3096530976%_
                                                          '()))
                                              (cons _%$%g3187831889%_ '())))
                                  (cons (_%generate-simple-vector29701%_
                                         _%tgt30958%_
                                         _%$%g3176531863%_
                                         '0
                                         '##values-ref
                                         _%K30961%_
                                         _%E30962%_)
                                        (cons _%E30962%_ '())))))))
              (_%$%g3187631904%_ (gx#stx-length _%$%g3176531863%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont3912339124%_
                                                  (lambda (_%$%g3177331817%_)
                                                    (_%generate-list-vector29702%_
                                                     _%tgt30958%_
                                                     _%$%g3177331817%_
                                                     'values->list
                                                     _%K30961%_
                                                     _%E30962%_))))
                                             (if (gx#stx-pair?
                                                  _%__stx3911839119%_)
                                                 (let ((_%$%e3176631839%_
                                                        (gx#syntax-e
                                                         _%__stx3911839119%_)))
                                                   (let ((_%$%tl3176831846%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e3176631839%_)))
                                                         (_%$%hd3176731843%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e3176631839%_))))
                                                     (if (gx#stx-datum?
                                                          _%$%hd3176731843%_)
                                                         (let ((_%$%e3176931849%_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd3176731843%_)))
                   (if (equal? _%$%e3176931849%_ 'simple:)
                       (if (gx#stx-pair? _%$%tl3176831846%_)
                           (let ((_%$%e3177031853%_
                                  (gx#syntax-e _%$%tl3176831846%_)))
                             (let ((_%$%tl3177231860%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e3177031853%_)))
                                   (_%$%hd3177131857%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e3177031853%_))))
                               (if (gx#stx-null? _%$%tl3177231860%_)
                                   (_%__kont3912139122%_ _%$%hd3177131857%_)
                                   (_%$%g3176331786%_))))
                           (_%$%g3176331786%_))
                       (if (equal? _%$%e3176931849%_ 'list:)
                           (if (gx#stx-pair? _%$%tl3176831846%_)
                               (let ((_%$%e3177831807%_
                                      (gx#syntax-e _%$%tl3176831846%_)))
                                 (let ((_%$%tl3178031814%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e3177831807%_)))
                                       (_%$%hd3177931811%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e3177831807%_))))
                                   (if (gx#stx-null? _%$%tl3178031814%_)
                                       (_%__kont3912339124%_
                                        _%$%hd3177931811%_)
                                       (_%$%g3176331786%_))))
                               (_%$%g3176331786%_))
                           (_%$%g3176331786%_))))
                 (_%$%g3176331786%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g3176331786%_))))))
                                      (_%__kont3930339304%_
                                       (lambda (_%$%g3107931553%_)
                                         (let* ((_%__stx3906839069%_
                                                 _%$%g3107931553%_)
                                                (_%$%g3156831591%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%__stx3906839069%_))))
                                           (let ((_%__kont3907139072%_
                                                  (lambda (_%$%g3157031668%_)
                                                    (let* ((_%$%g3168231690%_
                                                            (lambda (_%$%g3168331686%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g3168331686%_)))
                                                           (_%$%g3168131709%_
                                                            (lambda (_%$%g3168331694%_)
                                                              (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'vector?)
                                        (cons _%$%g3096530976%_ '()))
                                  (cons (cons 'if
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx=)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##vector-length)
                              (cons _%$%g3096530976%_ '()))
                        (cons _%$%g3168331694%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (_%generate-simple-vector29701%_
                                                           _%tgt30958%_
                                                           _%$%g3157031668%_
                                                           '0
                                                           '##vector-ref
                                                           _%K30961%_
                                                           _%E30962%_)
                                                          (cons _%E30962%_
                                                                '()))))
                                        (cons _%E30962%_ '())))))))
              (_%$%g3168131709%_ (gx#stx-length _%$%g3157031668%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont3907339074%_
                                                  (lambda (_%$%g3157831622%_)
                                                    (cons 'if
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'vector?)
                              (cons _%$%g3096530976%_ '()))
                        (cons (_%generate-list-vector29702%_
                               _%tgt30958%_
                               _%$%g3157831622%_
                               'vector->list
                               _%K30961%_
                               _%E30962%_)
                              (cons _%E30962%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair?
                                                  _%__stx3906839069%_)
                                                 (let ((_%$%e3157131644%_
                                                        (gx#syntax-e
                                                         _%__stx3906839069%_)))
                                                   (let ((_%$%tl3157331651%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e3157131644%_)))
                                                         (_%$%hd3157231648%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e3157131644%_))))
                                                     (if (gx#stx-datum?
                                                          _%$%hd3157231648%_)
                                                         (let ((_%$%e3157431654%_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd3157231648%_)))
                   (if (equal? _%$%e3157431654%_ 'simple:)
                       (if (gx#stx-pair? _%$%tl3157331651%_)
                           (let ((_%$%e3157531658%_
                                  (gx#syntax-e _%$%tl3157331651%_)))
                             (let ((_%$%tl3157731665%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e3157531658%_)))
                                   (_%$%hd3157631662%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e3157531658%_))))
                               (if (gx#stx-null? _%$%tl3157731665%_)
                                   (_%__kont3907139072%_ _%$%hd3157631662%_)
                                   (_%$%g3156831591%_))))
                           (_%$%g3156831591%_))
                       (if (equal? _%$%e3157431654%_ 'list:)
                           (if (gx#stx-pair? _%$%tl3157331651%_)
                               (let ((_%$%e3158331612%_
                                      (gx#syntax-e _%$%tl3157331651%_)))
                                 (let ((_%$%tl3158531619%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e3158331612%_)))
                                       (_%$%hd3158431616%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e3158331612%_))))
                                   (if (gx#stx-null? _%$%tl3158531619%_)
                                       (_%__kont3907339074%_
                                        _%$%hd3158431616%_)
                                       (_%$%g3156831591%_))))
                               (_%$%g3156831591%_))
                           (_%$%g3156831591%_))))
                 (_%$%g3156831591%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g3156831591%_))))))
                                      (_%__kont3930539306%_
                                       (lambda (_%$%g3108731504%_
                                                _%$%g3108831506%_)
                                         (_%generate-struct29703%_
                                          (gx#stx-e _%$%g3108831506%_)
                                          _%tgt30958%_
                                          _%$%g3108731504%_
                                          _%K30961%_
                                          _%E30962%_)))
                                      (_%__kont3930739308%_
                                       (lambda (_%$%g3109931445%_
                                                _%$%g3110031447%_)
                                         (_%generate-class29706%_
                                          (gx#stx-e _%$%g3110031447%_)
                                          _%tgt30958%_
                                          _%$%g3109931445%_
                                          _%K30961%_
                                          _%E30962%_)))
                                      (_%__kont3930939310%_
                                       (lambda (_%$%g3111131342%_)
                                         (let* ((_%$%g3135631364%_
                                                 (lambda (_%$%g3135731360%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g3135731360%_)))
                                                (_%$%g3135531383%_
                                                 (lambda (_%$%g3135731368%_)
                                                   (cons 'if
                                                         (cons (cons _%$%g3135731368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%$%g3096530976%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%$%g3111131342%_ '()))
                                         '())))
                       (cons _%K30961%_ (cons _%E30962%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g3135531383%_
                                            (let ((_%e31387%_
                                                   (gx#stx-e
                                                    _%$%g3111131342%_)))
                                              (if (or (symbol? _%e31387%_)
                                                      (keyword? _%e31387%_)
                                                      (immediate? _%e31387%_))
                                                  '##eq?
                                                  (if (number? _%e31387%_)
                                                      'eqv?
                                                      'equal?)))))))
                                      (_%__kont3931139312%_
                                       (lambda (_%$%g3111931262%_
                                                _%$%g3112031264%_)
                                         (let* ((_%$%g3128031288%_
                                                 (lambda (_%$%g3128131284%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g3128131284%_)))
                                                (_%$%g3127931307%_
                                                 (lambda (_%$%g3128131292%_)
                                                   (cons 'let
                                                         (cons (cons (cons _%$%g3128131292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons _%$%g3112031264%_
                                               (cons _%$%g3096530976%_ '()))
                                         '()))
                             '())
                       (cons (_%generate129698%_
                              _%$%g3128131292%_
                              _%$%g3111931262%_
                              _%K30961%_
                              _%E30962%_)
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g3127931307%_
                                            (gx#genident 'e)))))
                                      (_%__kont3931339314%_
                                       (lambda (_%$%g3113131204%_)
                                         (cons 'let
                                               (cons (cons (cons _%$%g3113131204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g3096530976%_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%K30961%_ '())))))
                                      (_%__kont3931539316%_
                                       (lambda () _%K30961%_)))
                                  (if (gx#stx-pair? _%__stx3928239283%_)
                                      (let ((_%$%e3101032446%_
                                             (gx#syntax-e
                                              _%__stx3928239283%_)))
                                        (let ((_%$%tl3101232453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3101032446%_)))
                                              (_%$%hd3101132450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3101032446%_))))
                                          (if (gx#stx-datum?
                                               _%$%hd3101132450%_)
                                              (let ((_%$%e3101332456%_
                                                     (gx#stx-e
                                                      _%$%hd3101132450%_)))
                                                (if (equal? _%$%e3101332456%_
                                                            '?:)
                                                    (if (gx#stx-pair?
                                                         _%$%tl3101232453%_)
                                                        (let ((_%$%e3101432460%_
                                                               (gx#syntax-e
                                                                _%$%tl3101232453%_)))
                                                          (let ((_%$%tl3101632467%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e3101432460%_)))
                        (_%$%hd3101532464%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e3101432460%_))))
                    (_%__kont3928539286%_
                     _%$%tl3101632467%_
                     _%$%hd3101532464%_)))
                (_%$%g3100631148%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%$%e3101332456%_
                                                                'and:)
                                                        (_%__kont3928739288%_
                                                         _%$%tl3101232453%_)
                                                        (if (equal? _%$%e3101332456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'or:)
                    (_%__kont3928939290%_ _%$%tl3101232453%_)
                    (if (equal? _%$%e3101332456%_ 'not:)
                        (if (gx#stx-pair? _%$%tl3101232453%_)
                            (let ((_%$%e3103232229%_
                                   (gx#syntax-e _%$%tl3101232453%_)))
                              (let ((_%$%tl3103432236%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e3103232229%_)))
                                    (_%$%hd3103332233%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e3103232229%_))))
                                (if (gx#stx-null? _%$%tl3103432236%_)
                                    (_%__kont3929139292%_ _%$%hd3103332233%_)
                                    (_%$%g3100631148%_))))
                            (_%$%g3100631148%_))
                        (if (equal? _%$%e3101332456%_ 'cons:)
                            (if (gx#stx-pair? _%$%tl3101232453%_)
                                (let ((_%$%e3104132093%_
                                       (gx#syntax-e _%$%tl3101232453%_)))
                                  (let ((_%$%tl3104332100%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e3104132093%_)))
                                        (_%$%hd3104232097%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e3104132093%_))))
                                    (if (gx#stx-pair? _%$%tl3104332100%_)
                                        (let ((_%$%e3104432103%_
                                               (gx#syntax-e
                                                _%$%tl3104332100%_)))
                                          (let ((_%$%tl3104632110%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e3104432103%_)))
                                                (_%$%hd3104532107%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e3104432103%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl3104632110%_)
                                                (_%__kont3929339294%_
                                                 _%$%hd3104532107%_
                                                 _%$%hd3104232097%_)
                                                (_%$%g3100631148%_))))
                                        (_%$%g3100631148%_))))
                                (_%$%g3100631148%_))
                            (if (equal? _%$%e3101332456%_ 'null:)
                                (if (gx#stx-null? _%$%tl3101232453%_)
                                    (_%__kont3929539296%_)
                                    (_%$%g3100631148%_))
                                (if (equal? _%$%e3101332456%_ 'splice:)
                                    (if (gx#stx-pair? _%$%tl3101232453%_)
                                        (let ((_%$%e3105732009%_
                                               (gx#syntax-e
                                                _%$%tl3101232453%_)))
                                          (let ((_%$%tl3105932016%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e3105732009%_)))
                                                (_%$%hd3105832013%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e3105732009%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl3105932016%_)
                                                (let ((_%$%e3106032019%_
                                                       (gx#syntax-e
                                                        _%$%tl3105932016%_)))
                                                  (let ((_%$%tl3106232026%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e3106032019%_)))
                                                        (_%$%hd3106132023%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e3106032019%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl3106232026%_)
                                                        (_%__kont3929739298%_
                                                         _%$%hd3106132023%_
                                                         _%$%hd3105832013%_)
                                                        (_%$%g3100631148%_))))
                                                (_%$%g3100631148%_))))
                                        (_%$%g3100631148%_))
                                    (if (equal? _%$%e3101332456%_ 'box:)
                                        (if (gx#stx-pair? _%$%tl3101232453%_)
                                            (let ((_%$%e3106831933%_
                                                   (gx#syntax-e
                                                    _%$%tl3101232453%_)))
                                              (let ((_%$%tl3107031940%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e3106831933%_)))
                                                    (_%$%hd3106931937%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e3106831933%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl3107031940%_)
                                                    (_%__kont3929939300%_
                                                     _%$%hd3106931937%_)
                                                    (_%$%g3100631148%_))))
                                            (_%$%g3100631148%_))
                                        (if (equal? _%$%e3101332456%_ 'values:)
                                            (if (gx#stx-pair?
                                                 _%$%tl3101232453%_)
                                                (let ((_%$%e3107631738%_
                                                       (gx#syntax-e
                                                        _%$%tl3101232453%_)))
                                                  (let ((_%$%tl3107831745%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e3107631738%_)))
                                                        (_%$%hd3107731742%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e3107631738%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl3107831745%_)
                                                        (_%__kont3930139302%_
                                                         _%$%hd3107731742%_)
                                                        (_%$%g3100631148%_))))
                                                (_%$%g3100631148%_))
                                            (if (equal? _%$%e3101332456%_
                                                        'vector:)
                                                (if (gx#stx-pair?
                                                     _%$%tl3101232453%_)
                                                    (let ((_%$%e3108431543%_
                                                           (gx#syntax-e
                                                            _%$%tl3101232453%_)))
                                                      (let ((_%$%tl3108631550%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e3108431543%_)))
                    (_%$%hd3108531547%_
                     (let () (declare (not safe)) (##car _%$%e3108431543%_))))
                (if (gx#stx-null? _%$%tl3108631550%_)
                    (_%__kont3930339304%_ _%$%hd3108531547%_)
                    (_%$%g3100631148%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g3100631148%_))
                                                (if (equal? _%$%e3101332456%_
                                                            'struct:)
                                                    (if (gx#stx-pair?
                                                         _%$%tl3101232453%_)
                                                        (let ((_%$%e3109331484%_
                                                               (gx#syntax-e
                                                                _%$%tl3101232453%_)))
                                                          (let ((_%$%tl3109531491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e3109331484%_)))
                        (_%$%hd3109431488%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e3109331484%_))))
                    (if (gx#stx-pair? _%$%tl3109531491%_)
                        (let ((_%$%e3109631494%_
                               (gx#syntax-e _%$%tl3109531491%_)))
                          (let ((_%$%tl3109831501%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3109631494%_)))
                                (_%$%hd3109731498%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3109631494%_))))
                            (if (gx#stx-null? _%$%tl3109831501%_)
                                (_%__kont3930539306%_
                                 _%$%hd3109731498%_
                                 _%$%hd3109431488%_)
                                (_%$%g3100631148%_))))
                        (_%$%g3100631148%_))))
                (_%$%g3100631148%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%$%e3101332456%_
                                                                'class:)
                                                        (if (gx#stx-pair?
                                                             _%$%tl3101232453%_)
                                                            (let ((_%$%e3110531425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl3101232453%_)))
                      (let ((_%$%tl3110731432%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e3110531425%_)))
                            (_%$%hd3110631429%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e3110531425%_))))
                        (if (gx#stx-pair? _%$%tl3110731432%_)
                            (let ((_%$%e3110831435%_
                                   (gx#syntax-e _%$%tl3110731432%_)))
                              (let ((_%$%tl3111031442%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e3110831435%_)))
                                    (_%$%hd3110931439%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e3110831435%_))))
                                (if (gx#stx-null? _%$%tl3111031442%_)
                                    (_%__kont3930739308%_
                                     _%$%hd3110931439%_
                                     _%$%hd3110631429%_)
                                    (_%$%g3100631148%_))))
                            (_%$%g3100631148%_))))
                    (_%$%g3100631148%_))
                (if (equal? _%$%e3101332456%_ 'datum:)
                    (if (gx#stx-pair? _%$%tl3101232453%_)
                        (let ((_%$%e3111631332%_
                               (gx#syntax-e _%$%tl3101232453%_)))
                          (let ((_%$%tl3111831339%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3111631332%_)))
                                (_%$%hd3111731336%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3111631332%_))))
                            (if (gx#stx-null? _%$%tl3111831339%_)
                                (_%__kont3930939310%_ _%$%hd3111731336%_)
                                (_%$%g3100631148%_))))
                        (_%$%g3100631148%_))
                    (if (equal? _%$%e3101332456%_ 'apply:)
                        (if (gx#stx-pair? _%$%tl3101232453%_)
                            (let ((_%$%e3112531242%_
                                   (gx#syntax-e _%$%tl3101232453%_)))
                              (let ((_%$%tl3112731249%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e3112531242%_)))
                                    (_%$%hd3112631246%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e3112531242%_))))
                                (if (gx#stx-pair? _%$%tl3112731249%_)
                                    (let ((_%$%e3112831252%_
                                           (gx#syntax-e _%$%tl3112731249%_)))
                                      (let ((_%$%tl3113031259%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e3112831252%_)))
                                            (_%$%hd3112931256%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e3112831252%_))))
                                        (if (gx#stx-null? _%$%tl3113031259%_)
                                            (_%__kont3931139312%_
                                             _%$%hd3112931256%_
                                             _%$%hd3112631246%_)
                                            (_%$%g3100631148%_))))
                                    (_%$%g3100631148%_))))
                            (_%$%g3100631148%_))
                        (if (equal? _%$%e3101332456%_ 'var:)
                            (if (gx#stx-pair? _%$%tl3101232453%_)
                                (let ((_%$%e3113631194%_
                                       (gx#syntax-e _%$%tl3101232453%_)))
                                  (let ((_%$%tl3113831201%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e3113631194%_)))
                                        (_%$%hd3113731198%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e3113631194%_))))
                                    (if (gx#stx-null? _%$%tl3113831201%_)
                                        (_%__kont3931339314%_
                                         _%$%hd3113731198%_)
                                        (_%$%g3100631148%_))))
                                (_%$%g3100631148%_))
                            (if (equal? _%$%e3101332456%_ 'any:)
                                (if (gx#stx-null? _%$%tl3101232453%_)
                                    (_%__kont3931539316%_)
                                    (_%$%g3100631148%_))
                                (_%$%g3100631148%_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g3100631148%_))))
                                      (_%$%g3100631148%_)))))))
                      (_%$%g3096332755%_ _%tgt30958%_))))
                 (_%generate-splice29700%_
                  (lambda (_%tgt30336%_
                           _%hd30338%_
                           _%rest30339%_
                           _%K30340%_
                           _%E30341%_)
                    (let* ((_%$%g3034330360%_
                            (lambda (_%$%g3034430356%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g3034430356%_)))
                           (_%$%g3034230954%_
                            (lambda (_%$%g3034430364%_)
                              (if (gx#stx-pair/null? _%$%g3034430364%_)
                                  (let ((_g40437_
                                         (gx#syntax-split-splice
                                          _%$%g3034430364%_
                                          '0)))
                                    (begin
                                      (let ((_g40438_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g40437_)
                                                   (##values-length _g40437_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g40438_ 2)))
                                            (error "Context expects 2 values"
                                                   _g40438_)))
                                      (let ((_%$%target3034630367%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40437_ 0)))
                                            (_%$%tl3034830370%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40437_ 1))))
                                        (if (gx#stx-null? _%$%tl3034830370%_)
                                            (letrec ((_%$%loop3034930373%_
                                                      (lambda (_%$%hd3034730377%_
                                                               _%$%var3035330380%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd3034730377%_)
                                                            (let ((_%$%e3035030382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd3034730377%_)))
                      (let ((_%$%lp-hd3035130386%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e3035030382%_)))
                            (_%$%lp-tl3035230389%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e3035030382%_))))
                        (_%$%loop3034930373%_
                         _%$%lp-tl3035230389%_
                         (cons _%$%lp-hd3035130386%_ _%$%var3035330380%_))))
                    (let* ((_%$%var3035430392%_ (reverse _%$%var3035330380%_))
                           (_%$%g3041130428%_
                            (lambda (_%$%g3041230424%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g3041230424%_)))
                           (_%$%g3041030942%_
                            (lambda (_%$%g3041230432%_)
                              (if (gx#stx-pair/null? _%$%g3041230432%_)
                                  (let ((_g40439_
                                         (gx#syntax-split-splice
                                          _%$%g3041230432%_
                                          '0)))
                                    (begin
                                      (let ((_g40440_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g40439_)
                                                   (##values-length _g40439_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g40440_ 2)))
                                            (error "Context expects 2 values"
                                                   _g40440_)))
                                      (let ((_%$%target3041430435%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40439_ 0)))
                                            (_%$%tl3041630438%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40439_ 1))))
                                        (if (gx#stx-null? _%$%tl3041630438%_)
                                            (letrec ((_%$%loop3041730441%_
                                                      (lambda (_%$%hd3041530445%_
                                                               _%$%var-r3042130448%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd3041530445%_)
                                                            (let ((_%$%e3041830450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd3041530445%_)))
                      (let ((_%$%lp-hd3041930454%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e3041830450%_)))
                            (_%$%lp-tl3042030457%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e3041830450%_))))
                        (_%$%loop3041730441%_
                         _%$%lp-tl3042030457%_
                         (cons _%$%lp-hd3041930454%_ _%$%var-r3042130448%_))))
                    (let* ((_%$%var-r3042230460%_
                            (reverse _%$%var-r3042130448%_))
                           (_%$%g3048030497%_
                            (lambda (_%$%g3048130493%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g3048130493%_)))
                           (_%$%g3047930930%_
                            (lambda (_%$%g3048130501%_)
                              (if (gx#stx-pair/null? _%$%g3048130501%_)
                                  (let ((_g40441_
                                         (gx#syntax-split-splice
                                          _%$%g3048130501%_
                                          '0)))
                                    (begin
                                      (let ((_g40442_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g40441_)
                                                   (##values-length _g40441_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g40442_ 2)))
                                            (error "Context expects 2 values"
                                                   _g40442_)))
                                      (let ((_%$%target3048330504%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40441_ 0)))
                                            (_%$%tl3048530507%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40441_ 1))))
                                        (if (gx#stx-null? _%$%tl3048530507%_)
                                            (letrec ((_%$%loop3048630510%_
                                                      (lambda (_%$%hd3048430514%_
                                                               _%$%init3049030517%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd3048430514%_)
                                                            (let ((_%$%e3048730519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd3048430514%_)))
                      (let ((_%$%lp-hd3048830523%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e3048730519%_)))
                            (_%$%lp-tl3048930526%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e3048730519%_))))
                        (_%$%loop3048630510%_
                         _%$%lp-tl3048930526%_
                         (cons _%$%lp-hd3048830523%_ _%$%init3049030517%_))))
                    (let* ((_%$%init3049130529%_
                            (reverse _%$%init3049030517%_))
                           (_%$%g3054930557%_
                            (lambda (_%$%g3055030553%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g3055030553%_)))
                           (_%$%g3054830926%_
                            (lambda (_%$%g3055030561%_)
                              (let* ((_%$%g3057730585%_
                                      (lambda (_%$%g3057830581%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g3057830581%_)))
                                     (_%$%g3057630922%_
                                      (lambda (_%$%g3057830589%_)
                                        (let* ((_%$%g3060530613%_
                                                (lambda (_%$%g3060630609%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g3060630609%_)))
                                               (_%$%g3060430918%_
                                                (lambda (_%$%g3060630617%_)
                                                  (let* ((_%$%g3063330641%_
                                                          (lambda (_%$%g3063430637%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g3063430637%_)))
                                                         (_%$%g3063230914%_
                                                          (lambda (_%$%g3063430645%_)
                                                            (let* ((_%$%g3066130669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g3066230665%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g3066230665%_)))
                           (_%$%g3066030910%_
                            (lambda (_%$%g3066230673%_)
                              (let* ((_%$%g3068930697%_
                                      (lambda (_%$%g3069030693%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g3069030693%_)))
                                     (_%$%g3068830906%_
                                      (lambda (_%$%g3069030701%_)
                                        (let* ((_%$%g3071730725%_
                                                (lambda (_%$%g3071830721%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g3071830721%_)))
                                               (_%$%g3071630902%_
                                                (lambda (_%$%g3071830729%_)
                                                  (let* ((_%$%g3074530753%_
                                                          (lambda (_%$%g3074630749%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g3074630749%_)))
                                                         (_%$%g3074430887%_
                                                          (lambda (_%$%g3074630757%_)
                                                            (let* ((_%$%g3077330781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g3077430777%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g3077430777%_)))
                           (_%$%g3077230875%_
                            (lambda (_%$%g3077430785%_)
                              (let* ((_%$%g3080130809%_
                                      (lambda (_%$%g3080230805%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g3080230805%_)))
                                     (_%$%g3080030871%_
                                      (lambda (_%$%g3080230813%_)
                                        (cons (gx#datum->syntax '#f 'letrec)
                                              (cons (cons (cons _%$%g3057830589%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'lambda)
                                    (cons (cons _%$%g3069030701%_
                                                (foldr (lambda (_%$%g3083030841%_
                                                                _%$%g3083130844%_)
                                                         (cons _%$%g3083030841%_
                                                               _%$%g3083130844%_))
                                                       '()
                                                       _%$%var3035430392%_))
                                          (cons _%$%g3071830729%_ '())))
                              '()))
                  (cons (cons _%$%g3063430645%_
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons (cons _%$%g3066230673%_
                                                      (cons _%$%g3069030701%_
                                                            (foldr (lambda (_%$%g3083230847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%$%g3083330850%_)
                             (cons _%$%g3083230847%_ _%$%g3083330850%_))
                           '()
                           _%$%var-r3042230460%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%$%g3080230813%_ '())))
                                    '()))
                        (cons (cons _%$%g3060630617%_
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%$%g3069030701%_
                                                            (foldr (lambda (_%$%g3083430853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%$%g3083530856%_)
                             (cons _%$%g3083430853%_ _%$%g3083530856%_))
                           '()
                           _%$%var-r3042230460%_))
              (cons (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'pair?)
                                      (cons _%$%g3069030701%_ '()))
                                (cons (cons _%$%g3063430645%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##car)
                                                        (cons _%$%g3069030701%_
                                                              '()))
                                                  (cons _%$%g3069030701%_
                                                        (foldr (lambda (_%$%g3083630859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g3083730862%_)
                         (cons _%$%g3083630859%_ _%$%g3083730862%_))
                       '()
                       _%$%var-r3042230460%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons _%$%g3077430785%_ '()))))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%$%g3060630617%_
                                                                (cons _%$%g3055030561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (foldr (lambda (_%$%g3083830865%_
                                              _%$%g3083930868%_)
                                       (cons _%$%g3083830865%_
                                             _%$%g3083930868%_))
                                     '()
                                     _%$%init3049130529%_)))
                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (_%$%g3080030871%_
                                 (_%generate129698%_
                                  _%$%g3066230673%_
                                  _%hd30338%_
                                  _%$%g3074630757%_
                                  _%$%g3077430785%_))))))
                      (_%$%g3077230875%_
                       (cons _%$%g3057830589%_
                             (cons _%$%g3069030701%_
                                   (foldr (lambda (_%$%g3087830881%_
                                                   _%$%g3087930884%_)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'reverse)
                                                        (cons _%$%g3087830881%_
                                                              '()))
                                                  _%$%g3087930884%_))
                                          '()
                                          _%$%var-r3042230460%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g3074430887%_
                                                     (cons _%$%g3060630617%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%$%g3069030701%_ '()))
                         (begin
                           (gx#syntax-check-splice-targets
                            _%$%var-r3042230460%_
                            _%$%var3035430392%_)
                           (foldr (lambda (_%$%g3089030894%_
                                           _%$%g3089130897%_
                                           _%$%g3089230899%_)
                                    (cons (cons (gx#datum->syntax '#f 'cons)
                                                (cons _%$%g3089130897%_
                                                      (cons _%$%g3089030894%_
                                                            '())))
                                          _%$%g3089230899%_))
                                  '()
                                  _%$%var-r3042230460%_
                                  _%$%var3035430392%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g3071630902%_
                                           (_%generate129698%_
                                            _%$%g3069030701%_
                                            _%rest30339%_
                                            _%K30340%_
                                            _%E30341%_))))))
                                (_%$%g3068830906%_ (gx#genident 'rest))))))
                      (_%$%g3066030910%_ (gx#genident 'hd))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g3063230914%_
                                                     (gx#genident
                                                      'splice-try))))))
                                          (_%$%g3060430918%_
                                           (gx#genident 'splice-loop))))))
                                (_%$%g3057630922%_
                                 (gx#genident 'splice-rest))))))
                      (_%$%g3054830926%_ _%tgt30336%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop3048630510%_
                                               _%$%target3048330504%_
                                               '()))
                                            (_%$%g3048030497%_
                                             _%$%g3048130501%_)))))
                                  (_%$%g3048030497%_ _%$%g3048130501%_)))))
                      (_%$%g3047930930%_
                       (make-list
                        (gx#stx-length
                         (foldr (lambda (_%$%g3093330936%_ _%$%g3093430939%_)
                                  (cons _%$%g3093330936%_ _%$%g3093430939%_))
                                '()
                                _%$%var3035430392%_))
                        (cons (gx#datum->syntax '#f '@list) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop3041730441%_
                                               _%$%target3041430435%_
                                               '()))
                                            (_%$%g3041130428%_
                                             _%$%g3041230432%_)))))
                                  (_%$%g3041130428%_ _%$%g3041230432%_)))))
                      (_%$%g3041030942%_
                       (gx#gentemps
                        (foldr (lambda (_%$%g3094530948%_ _%$%g3094630951%_)
                                 (cons _%$%g3094530948%_ _%$%g3094630951%_))
                               '()
                               _%$%var3035430392%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop3034930373%_
                                               _%$%target3034630367%_
                                               '()))
                                            (_%$%g3034330360%_
                                             _%$%g3034430364%_)))))
                                  (_%$%g3034330360%_ _%$%g3034430364%_)))))
                      (_%$%g3034230954%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd30338%_)))))
                 (_%generate-simple-vector29701%_
                  (lambda (_%tgt30159%_
                           _%body30161%_
                           _%start30162%_
                           _%ref30163%_
                           _%K30164%_
                           _%E30165%_)
                    (let _%recur30167%_ ((_%rest30170%_ _%body30161%_)
                                         (_%off30172%_ _%start30162%_))
                      (let* ((_%__stx3964039641%_ _%rest30170%_)
                             (_%$%g3017530187%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3964039641%_))))
                        (let ((_%__kont3964339644%_
                               (lambda (_%$%g3017730215%_ _%$%g3017830217%_)
                                 (let* ((_%$%g3023230255%_
                                         (lambda (_%$%g3023330251%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g3023330251%_)))
                                        (_%$%g3023130328%_
                                         (lambda (_%$%g3023330259%_)
                                           (if (gx#stx-pair? _%$%g3023330259%_)
                                               (let ((_%$%e3023830262%_
                                                      (gx#syntax-e
                                                       _%$%g3023330259%_)))
                                                 (let ((_%$%hd3023930266%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e3023830262%_)))
                                                       (_%$%tl3024030269%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e3023830262%_))))
                                                   (if (gx#stx-pair?
                                                        _%$%tl3024030269%_)
                                                       (let ((_%$%e3024130272%_
                                                              (gx#syntax-e
                                                               _%$%tl3024030269%_)))
                                                         (let ((_%$%hd3024230276%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e3024130272%_)))
                       (_%$%tl3024330279%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e3024130272%_))))
                   (if (gx#stx-pair? _%$%tl3024330279%_)
                       (let ((_%$%e3024430282%_
                              (gx#syntax-e _%$%tl3024330279%_)))
                         (let ((_%$%hd3024530286%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e3024430282%_)))
                               (_%$%tl3024630289%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e3024430282%_))))
                           (if (gx#stx-pair? _%$%tl3024630289%_)
                               (let ((_%$%e3024730292%_
                                      (gx#syntax-e _%$%tl3024630289%_)))
                                 (let ((_%$%hd3024830296%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e3024730292%_)))
                                       (_%$%tl3024930299%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e3024730292%_))))
                                   (if (gx#stx-null? _%$%tl3024930299%_)
                                       (cons 'let
                                             (cons (cons (cons _%$%hd3023930266%_
                                                               (cons (cons _%$%hd3024830296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%$%hd3024230276%_
                                         (cons _%$%hd3024530286%_ '())))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129698%_
                                                          _%$%hd3023930266%_
                                                          _%$%g3017830217%_
                                                          (_%recur30167%_
                                                           _%$%g3017730215%_
                                                           (fx1+ _%off30172%_))
                                                          _%E30165%_)
                                                         '())))
                                       (_%$%g3023230255%_ _%$%g3023330259%_))))
                               (_%$%g3023230255%_ _%$%g3023330259%_))))
                       (_%$%g3023230255%_ _%$%g3023330259%_))))
               (_%$%g3023230255%_ _%$%g3023330259%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g3023230255%_
                                                _%$%g3023330259%_)))))
                                   (_%$%g3023130328%_
                                    (list (gx#genident 'e)
                                          _%tgt30159%_
                                          _%off30172%_
                                          _%ref30163%_)))))
                              (_%__kont3964539646%_ (lambda () _%K30164%_)))
                          (if (gx#stx-pair? _%__stx3964039641%_)
                              (let ((_%$%e3017930205%_
                                     (gx#syntax-e _%__stx3964039641%_)))
                                (let ((_%$%tl3018130212%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3017930205%_)))
                                      (_%$%hd3018030209%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3017930205%_))))
                                  (_%__kont3964339644%_
                                   _%$%tl3018130212%_
                                   _%$%hd3018030209%_)))
                              (_%__kont3964539646%_)))))))
                 (_%generate-list-vector29702%_
                  (lambda (_%tgt30051%_
                           _%body30053%_
                           _%->list30054%_
                           _%K30055%_
                           _%E30056%_)
                    (let* ((_%$%g3005830066%_
                            (lambda (_%$%g3005930062%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g3005930062%_)))
                           (_%$%g3005730155%_
                            (lambda (_%$%g3005930070%_)
                              (let* ((_%$%g3008530093%_
                                      (lambda (_%$%g3008630089%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g3008630089%_)))
                                     (_%$%g3008430151%_
                                      (lambda (_%$%g3008630097%_)
                                        (let* ((_%$%g3011330121%_
                                                (lambda (_%$%g3011430117%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g3011430117%_)))
                                               (_%$%g3011230143%_
                                                (lambda (_%$%g3011430125%_)
                                                  (cons 'let
                                                        (cons (cons (cons _%$%g3005930070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _%$%g3011430125%_ '()))
                            '())
                      (cons (_%generate129698%_
                             _%$%g3005930070%_
                             _%body30053%_
                             _%K30055%_
                             _%E30056%_)
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g3011230143%_
                                           (let ((_%$e30147%_ _%->list30054%_))
                                             (if (eq? 'values->list
                                                      _%$e30147%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'values->list)
                                                       (cons _%$%g3008630097%_
                                                             '()))
                                                 (if (eq? 'vector->list
                                                          _%$e30147%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '##vector->list)
                                                           (cons _%$%g3008630097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (eq? 'struct->list
                                                              _%$e30147%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '##cdr)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'struct->list)
                                   (cons _%$%g3008630097%_ '()))
                             '()))
                 (gx#raise-syntax-error
                  '#f
                  '"Unexpected list conversion"
                  _%stx29691%_
                  _%->list30054%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (_%$%g3008430151%_ _%tgt30051%_)))))
                      (_%$%g3005730155%_ (gx#genident 'e)))))
                 (_%generate-struct29703%_
                  (lambda (_%info29922%_
                           _%tgt29924%_
                           _%body29925%_
                           _%K29926%_
                           _%E29927%_)
                    (let* ((_%__stx3965639657%_ _%body29925%_)
                           (_%$%g2993029953%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3965639657%_))))
                      (let ((_%__kont3965939660%_
                             (lambda (_%$%g2993230030%_)
                               (let ((_%fields30044%_
                                      (_%struct-field-accessors29705%_
                                       _%info29922%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj40410
                                                          _%info29922%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj40410
                                                            'gerbil/core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj40410
                                                            '15
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj40410
                                                          'predicate)))
                                                   (cons _%tgt29924%_ '()))
                                             (cons (_%generate-simple-struct-body29704%_
                                                    _%info29922%_
                                                    _%tgt29924%_
                                                    _%$%g2993230030%_
                                                    _%K29926%_
                                                    _%E29927%_)
                                                   (cons _%E29927%_ '())))))))
                            (_%__kont3966139662%_
                             (lambda (_%$%g2994029984%_)
                               (cons 'if
                                     (cons (cons (let ((__obj40411
                                                        _%info29922%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj40411
                                                          'gerbil/core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj40411
                                                          '15
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj40411
                                                        'predicate)))
                                                 (cons _%tgt29924%_ '()))
                                           (cons (_%generate-list-vector29702%_
                                                  _%tgt29924%_
                                                  _%$%g2994029984%_
                                                  'struct->list
                                                  _%K29926%_
                                                  _%E29927%_)
                                                 (cons _%E29927%_ '())))))))
                        (if (gx#stx-pair? _%__stx3965639657%_)
                            (let ((_%$%e2993330006%_
                                   (gx#syntax-e _%__stx3965639657%_)))
                              (let ((_%$%tl2993530013%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2993330006%_)))
                                    (_%$%hd2993430010%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2993330006%_))))
                                (if (gx#stx-datum? _%$%hd2993430010%_)
                                    (let ((_%$%e2993630016%_
                                           (gx#stx-e _%$%hd2993430010%_)))
                                      (if (equal? _%$%e2993630016%_ 'simple:)
                                          (if (gx#stx-pair? _%$%tl2993530013%_)
                                              (let ((_%$%e2993730020%_
                                                     (gx#syntax-e
                                                      _%$%tl2993530013%_)))
                                                (let ((_%$%tl2993930027%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e2993730020%_)))
                                                      (_%$%hd2993830024%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e2993730020%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl2993930027%_)
                                                      (_%__kont3965939660%_
                                                       _%$%hd2993830024%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g2993029953%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g2993029953%_)))
                                          (if (equal? _%$%e2993630016%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%$%tl2993530013%_)
                                                  (let ((_%$%e2994529974%_
                                                         (gx#syntax-e
                                                          _%$%tl2993530013%_)))
                                                    (let ((_%$%tl2994729981%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e2994529974%_)))
                                                          (_%$%hd2994629978%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e2994529974%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl2994729981%_)
                                                          (_%__kont3966139662%_
                                                           _%$%hd2994629978%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g2993029953%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g2993029953%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g2993029953%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g2993029953%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g2993029953%_)))))))
                 (_%generate-simple-struct-body29704%_
                  (lambda (_%info29842%_
                           _%tgt29844%_
                           _%body29845%_
                           _%K29846%_
                           _%E29847%_)
                    (let _%recur29849%_ ((_%rest29852%_ _%body29845%_)
                                         (_%fields29854%_
                                          (_%struct-field-accessors29705%_
                                           _%info29842%_)))
                      (let* ((_%__stx3970639707%_ _%rest29852%_)
                             (_%$%g2985729869%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3970639707%_))))
                        (let ((_%__kont3970939710%_
                               (lambda (_%$%g2985929897%_ _%$%g2986029899%_)
                                 (if (null? _%fields29854%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29691%_
                                      _%info29842%_
                                      (let ((__obj40412 _%info29842%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj40412
                                               'gerbil/core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj40412
                                               '3
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj40412
                                             'name))))
                                     (let ((_%$tgt29914%_ (gx#genident 'e))
                                           (_%getf29916%_
                                            (car _%fields29854%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29914%_
                                                               (cons (cons _%getf29916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29844%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129698%_
                                                          _%$tgt29914%_
                                                          _%$%g2986029899%_
                                                          (_%recur29849%_
                                                           _%$%g2985929897%_
                                                           (cdr _%fields29854%_))
                                                          _%E29847%_)
                                                         '())))))))
                              (_%__kont3971139712%_ (lambda () _%K29846%_)))
                          (if (gx#stx-pair? _%__stx3970639707%_)
                              (let ((_%$%e2986129887%_
                                     (gx#syntax-e _%__stx3970639707%_)))
                                (let ((_%$%tl2986329894%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2986129887%_)))
                                      (_%$%hd2986229891%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2986129887%_))))
                                  (_%__kont3970939710%_
                                   _%$%tl2986329894%_
                                   _%$%hd2986229891%_)))
                              (_%__kont3971139712%_)))))))
                 (_%struct-field-accessors29705%_
                  (lambda (_%info29823%_)
                    (let _%recur29826%_ ((_%next29829%_
                                          (cons _%info29823%_ '())))
                      (if (null? _%next29829%_)
                          '()
                          (let ((_%ti29832%_ (car _%next29829%_)))
                            (let ((__tmp40444
                                   (_%recur29826%_
                                    (map gx#syntax-local-value
                                         (let ((__obj40413 _%ti29832%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj40413
                                                  'gerbil/core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj40413
                                                  '5
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj40413
                                                'super))))))
                                  (__tmp40443
                                   (map (lambda (_%slot29835%_)
                                          (let ((_%$e29838%_
                                                 (agetq _%slot29835%_
                                                        (let ((__obj40414
                                                               _%ti29832%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj40414
                         'gerbil/core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj40414 '18 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj40414
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29838%_
                                                _%$e29838%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29691%_
                                                 _%info29823%_
                                                 _%slot29835%_))))
                                        (let ((__obj40415 _%ti29832%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj40415
                                                 'gerbil/core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj40415
                                                 '6
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj40415
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp40444 __tmp40443)))))))
                 (_%generate-class29706%_
                  (lambda (_%info29816%_
                           _%tgt29818%_
                           _%body29819%_
                           _%K29820%_
                           _%E29821%_)
                    (cons 'if
                          (cons (cons (let ((__obj40416 _%info29816%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj40416
                                               'gerbil/core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj40416
                                               '15
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj40416
                                             'predicate)))
                                      (cons _%tgt29818%_ '()))
                                (cons (_%generate-class-body29707%_
                                       _%info29816%_
                                       _%tgt29818%_
                                       _%body29819%_
                                       _%K29820%_
                                       _%E29821%_)
                                      (cons _%E29821%_ '()))))))
                 (_%generate-class-body29707%_
                  (lambda (_%info29709%_
                           _%tgt29711%_
                           _%body29712%_
                           _%K29713%_
                           _%E29714%_)
                    (let _%recur29716%_ ((_%rest29719%_ _%body29712%_))
                      (let* ((_%__stx3972239723%_ _%rest29719%_)
                             (_%$%g2972329739%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3972239723%_))))
                        (let ((_%__kont3972539726%_
                               (lambda (_%$%g2972529777%_
                                        _%$%g2972629779%_
                                        _%$%g2972729780%_)
                                 (let ((_%$e29800%_
                                        (agetq (let ((__tmp40445
                                                      (keyword->string
                                                       (gx#stx-e
                                                        _%$%g2972729780%_))))
                                                 (declare (not safe))
                                                 (##string->symbol __tmp40445))
                                               (let ((__obj40417
                                                      _%info29709%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj40417
                                                        'gerbil/core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj40417
                                                        '18
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj40417
                                                      'unchecked-accessors))))))
                                   (if _%$e29800%_
                                       (let ((_%$tgt29807%_ (gx#genident 'e)))
                                         (cons 'let
                                               (cons (cons (cons _%$tgt29807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons _%$e29800%_ (cons _%tgt29711%_ '())) '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (_%generate129698%_
                                                            _%$tgt29807%_
                                                            _%$%g2972629779%_
                                                            (_%recur29716%_
                                                             _%$%g2972529777%_)
                                                            _%E29714%_)
                                                           '()))))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx29691%_
                                        _%info29709%_
                                        _%$%g2972729780%_)))))
                              (_%__kont3972739728%_ (lambda () _%K29713%_)))
                          (if (gx#stx-pair? _%__stx3972239723%_)
                              (let ((_%$%e2972829757%_
                                     (gx#syntax-e _%__stx3972239723%_)))
                                (let ((_%$%tl2973029764%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2972829757%_)))
                                      (_%$%hd2972929761%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2972829757%_))))
                                  (if (gx#stx-pair? _%$%tl2973029764%_)
                                      (let ((_%$%e2973129767%_
                                             (gx#syntax-e _%$%tl2973029764%_)))
                                        (let ((_%$%tl2973329774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2973129767%_)))
                                              (_%$%hd2973229771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2973129767%_))))
                                          (_%__kont3972539726%_
                                           _%$%tl2973329774%_
                                           _%$%hd2973229771%_
                                           _%$%hd2972929761%_)))
                                      (_%__kont3972739728%_))))
                              (_%__kont3972739728%_))))))))
          (_%generate129698%_
           _%tgt29693%_
           _%ptree29694%_
           _%K29695%_
           _%E29696%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx28510%_ _%tgt-lst28512%_ _%clauses28513%_)
        (letrec ((_%parse-body28515%_
                  (lambda (_%hd-len29513%_)
                    (let _%lp29516%_ ((_%rest29519%_ _%clauses28513%_)
                                      (_%r29521%_ '()))
                      (let* ((_%__stx3977239773%_ _%rest29519%_)
                             (_%$%g2952429536%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3977239773%_))))
                        (let ((_%__kont3977539776%_
                               (lambda (_%$%g2952629564%_ _%$%g2952729566%_)
                                 (let* ((_%__stx3974439745%_ _%$%g2952729566%_)
                                        (_%$%g2958329599%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3974439745%_))))
                                   (let ((_%__kont3974739748%_
                                          (lambda (_%$%g2958529668%_)
                                            (if (gx#stx-null?
                                                 _%$%g2952629564%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%$%g2958529668%_)
                                 (let ((_%$e29679%_
                                        (gx#stx-source _%$%g2952729566%_)))
                                   (if _%$e29679%_
                                       _%$e29679%_
                                       (gx#stx-source _%stx28510%_))))
                                '())))
              _%r29521%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx28510%_
                                                 _%$%g2952729566%_))))
                                         (_%__kont3974939750%_
                                          (lambda (_%$%g2958929627%_
                                                   _%$%g2959029629%_)
                                            (_%lp29516%_
                                             _%$%g2952629564%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%$%g2964129643%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%$%g2964129643%_
                           _%stx28510%_))
                        _%$%g2959029629%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin)
                                    _%$%g2958929627%_)
                              (let ((_%$e29647%_
                                     (gx#stx-source _%$%g2952729566%_)))
                                (if _%$e29647%_
                                    _%$e29647%_
                                    (gx#stx-source _%stx28510%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r29521%_))))
                                         (_%__kont3975139752%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx28510%_
                                             _%$%g2952729566%_))))
                                     (let* ((_%__match3976939770%_
                                             (lambda (_%$%e2959129617%_
                                                      _%$%hd2959229621%_
                                                      _%$%tl2959329624%_)
                                               (let ((_%$%g2958929627%_
                                                      _%$%tl2959329624%_)
                                                     (_%$%g2959029629%_
                                                      _%$%hd2959229621%_))
                                                 (if (and (gx#stx-list?
                                                           _%$%g2959029629%_)
                                                          (fx= (gx#stx-length
                                                                _%$%g2959029629%_)
                                                               _%hd-len29513%_)
                                                          (gx#stx-list?
                                                           _%$%g2958929627%_)
                                                          (not (gx#stx-null?
                                                                _%$%g2958929627%_)))
                                                     (_%__kont3974939750%_
                                                      _%$%g2958929627%_
                                                      _%$%g2959029629%_)
                                                     (_%__kont3975139752%_)))))
                                            (_%__match3976339764%_
                                             (lambda (_%$%e2958629658%_
                                                      _%$%hd2958729662%_
                                                      _%$%tl2958829665%_)
                                               (let ((_%$%g2958529668%_
                                                      _%$%tl2958829665%_))
                                                 (if (and (gx#stx-list?
                                                           _%$%g2958529668%_)
                                                          (not (gx#stx-null?
                                                                _%$%g2958529668%_)))
                                                     (_%__kont3974739748%_
                                                      _%$%g2958529668%_)
                                                     (_%__match3976939770%_
                                                      _%$%e2958629658%_
                                                      _%$%hd2958729662%_
                                                      _%$%tl2958829665%_))))))
                                       (if (gx#stx-pair? _%__stx3974439745%_)
                                           (let ((_%$%e2958629658%_
                                                  (gx#syntax-e
                                                   _%__stx3974439745%_)))
                                             (let ((_%$%tl2958829665%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e2958629658%_)))
                                                   (_%$%hd2958729662%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e2958629658%_))))
                                               (if (gx#identifier?
                                                    _%$%hd2958729662%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g40446_|
                                                        _%$%hd2958729662%_)
                                                       (_%__match3976339764%_
                                                        _%$%e2958629658%_
                                                        _%$%hd2958729662%_
                                                        _%$%tl2958829665%_)
                                                       (_%__match3976939770%_
                                                        _%$%e2958629658%_
                                                        _%$%hd2958729662%_
                                                        _%$%tl2958829665%_))
                                                   (_%__match3976939770%_
                                                    _%$%e2958629658%_
                                                    _%$%hd2958729662%_
                                                    _%$%tl2958829665%_))))
                                           (_%__kont3975139752%_)))))))
                              (_%__kont3977739778%_ (lambda () _%r29521%_)))
                          (if (gx#stx-pair? _%__stx3977239773%_)
                              (let ((_%$%e2952829554%_
                                     (gx#syntax-e _%__stx3977239773%_)))
                                (let ((_%$%tl2953029561%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2952829554%_)))
                                      (_%$%hd2952929558%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2952829554%_))))
                                  (_%__kont3977539776%_
                                   _%$%tl2953029561%_
                                   _%$%hd2952929558%_)))
                              (_%__kont3977739778%_)))))))
                 (_%generate-body28517%_
                  (lambda (_%body29219%_)
                    (let* ((_%$%g2922229230%_
                            (lambda (_%$%g2922329226%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2922329226%_)))
                           (_%$%g2922129509%_
                            (lambda (_%$%g2922329234%_)
                              (let* ((_%$%g2924929266%_
                                      (lambda (_%$%g2925029262%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g2925029262%_)))
                                     (_%$%g2924829505%_
                                      (lambda (_%$%g2925029270%_)
                                        (if (gx#stx-pair/null?
                                             _%$%g2925029270%_)
                                            (let ((_g40447_
                                                   (gx#syntax-split-splice
                                                    _%$%g2925029270%_
                                                    '0)))
                                              (begin
                                                (let ((_g40448_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g40447_)
                                                             (##values-length
                                                              _g40447_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g40448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g40448_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target2925229273%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40447_
                                                          0)))
                                                      (_%$%tl2925429276%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40447_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%$%tl2925429276%_)
                                                      (letrec ((_%$%loop2925529279%_
                                                                (lambda (_%$%hd2925329283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%target2925929286%_)
                          (if (gx#stx-pair? _%$%hd2925329283%_)
                              (let ((_%$%e2925629288%_
                                     (gx#syntax-e _%$%hd2925329283%_)))
                                (let ((_%$%lp-hd2925729292%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2925629288%_)))
                                      (_%$%lp-tl2925829295%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2925629288%_))))
                                  (_%$%loop2925529279%_
                                   _%$%lp-tl2925829295%_
                                   (cons _%$%lp-hd2925729292%_
                                         _%$%target2925929286%_))))
                              (let* ((_%$%target2926029298%_
                                      (reverse _%$%target2925929286%_))
                                     (_%$%g2931829335%_
                                      (lambda (_%$%g2931929331%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g2931929331%_)))
                                     (_%$%g2931729501%_
                                      (lambda (_%$%g2931929339%_)
                                        (if (gx#stx-pair/null?
                                             _%$%g2931929339%_)
                                            (let ((_g40449_
                                                   (gx#syntax-split-splice
                                                    _%$%g2931929339%_
                                                    '0)))
                                              (begin
                                                (let ((_g40450_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g40449_)
                                                             (##values-length
                                                              _g40449_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g40450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g40450_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target2932129342%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40449_
                                                          0)))
                                                      (_%$%tl2932329345%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40449_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%$%tl2932329345%_)
                                                      (letrec ((_%$%loop2932429348%_
                                                                (lambda (_%$%hd2932229352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%fail-diagnostic2932829355%_)
                          (if (gx#stx-pair? _%$%hd2932229352%_)
                              (let ((_%$%e2932529357%_
                                     (gx#syntax-e _%$%hd2932229352%_)))
                                (let ((_%$%lp-hd2932629361%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2932529357%_)))
                                      (_%$%lp-tl2932729364%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2932529357%_))))
                                  (_%$%loop2932429348%_
                                   _%$%lp-tl2932729364%_
                                   (cons _%$%lp-hd2932629361%_
                                         _%$%fail-diagnostic2932829355%_))))
                              (let* ((_%$%fail-diagnostic2932929367%_
                                      (reverse _%$%fail-diagnostic2932829355%_))
                                     (_%$%g2938729395%_
                                      (lambda (_%$%g2938829391%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g2938829391%_)))
                                     (_%$%g2938629481%_
                                      (lambda (_%$%g2938829399%_)
                                        (let* ((_%$%g2941529423%_
                                                (lambda (_%$%g2941629419%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g2941629419%_)))
                                               (_%$%g2941429477%_
                                                (lambda (_%$%g2941629427%_)
                                                  (let* ((_%$%g2944329451%_
                                                          (lambda (_%$%g2944429447%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g2944429447%_)))
                                                         (_%$%g2944229473%_
                                                          (lambda (_%$%g2944429455%_)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (gx#datum->syntax '#f '@match)
                                (cons _%$%g2944429455%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2944229473%_
                                                     (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'let)
                                                            (cons (cons (cons _%$%g2922329234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      (cons _%$%g2938829399%_ '()))
                                '())
                          (cons _%$%g2941629427%_ '())))
              (gx#stx-source _%stx28510%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g2941429477%_
                                           (_%generate-clauses28518%_
                                            _%body29219%_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'begin-annotation)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '@abort)
                                                              '())
                                                        (cons (cons _%$%g2922329234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (_%$%g2938629481%_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'error)
                                                          (cons '"No clause matching"
                                                                (foldr (lambda (_%$%g2948429489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _%$%g2948529492%_)
                                 (cons _%$%g2948429489%_ _%$%g2948529492%_))
                               (foldr (lambda (_%$%g2948629495%_
                                               _%$%g2948729498%_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%$%g2948629495%_
                                                          '()))
                                              _%$%g2948729498%_))
                                      '()
                                      _%$%fail-diagnostic2932929367%_)
                               _%$%target2926029298%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)
                        '())
                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (gx#stx-source _%stx28510%_))))))))
                (_%$%loop2932429348%_ _%$%target2932129342%_ '()))
              (_%$%g2931829335%_ _%$%g2931929339%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g2931829335%_
                                             _%$%g2931929339%_)))))
                                (_%$%g2931729501%_
                                 (gx#stx-map gx#stx-car _%clauses28513%_)))))))
                (_%$%loop2925529279%_ _%$%target2925229273%_ '()))
              (_%$%g2924929266%_ _%$%g2925029270%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g2924929266%_
                                             _%$%g2925029270%_)))))
                                (_%$%g2924829505%_ _%tgt-lst28512%_)))))
                      (_%$%g2922129509%_ (gx#genident 'E)))))
                 (_%generate-clauses28518%_
                  (lambda (_%rest28871%_ _%E28873%_)
                    (let* ((_%__stx3978839789%_ _%rest28871%_)
                           (_%$%g2887728893%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3978839789%_))))
                      (let ((_%__kont3979139792%_
                             (lambda (_%$%g2887929127%_)
                               (let* ((_%$%g2913829156%_
                                       (lambda (_%$%g2913929152%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%$%g2913929152%_)))
                                      (_%$%g2913729211%_
                                       (lambda (_%$%g2913929160%_)
                                         (if (gx#stx-pair? _%$%g2913929160%_)
                                             (let ((_%$%e2914229163%_
                                                    (gx#syntax-e
                                                     _%$%g2913929160%_)))
                                               (let ((_%$%hd2914329167%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e2914229163%_)))
                                                     (_%$%tl2914429170%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e2914229163%_))))
                                                 (if (gx#stx-pair?
                                                      _%$%tl2914429170%_)
                                                     (let ((_%$%e2914529173%_
                                                            (gx#syntax-e
                                                             _%$%tl2914429170%_)))
                                                       (let ((_%$%hd2914629177%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e2914529173%_)))
                     (_%$%tl2914729180%_
                      (let () (declare (not safe)) (##cdr _%$%e2914529173%_))))
                 (if (gx#stx-pair? _%$%tl2914729180%_)
                     (let ((_%$%e2914829183%_
                            (gx#syntax-e _%$%tl2914729180%_)))
                       (let ((_%$%hd2914929187%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e2914829183%_)))
                             (_%$%tl2915029190%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e2914829183%_))))
                         (if (gx#stx-null? _%$%tl2915029190%_)
                             (cons 'begin-annotation
                                   (cons '@match-body
                                         (cons (if (gx#stx-e
                                                    _%$%hd2914629177%_)
                                                   (_%generate128519%_
                                                    _%$%hd2914629177%_
                                                    _%$%hd2914929187%_
                                                    _%E28873%_)
                                                   _%$%hd2914929187%_)
                                               '())))
                             (_%$%g2913829156%_ _%$%g2913929160%_))))
                     (_%$%g2913829156%_ _%$%g2913929160%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g2913829156%_
                                                      _%$%g2913929160%_))))
                                             (_%$%g2913829156%_
                                              _%$%g2913929160%_)))))
                                 (_%$%g2913729211%_ _%$%g2887929127%_))))
                            (_%__kont3979339794%_
                             (lambda (_%$%g2888328921%_ _%$%g2888428923%_)
                               (let* ((_%$%g2893628955%_
                                       (lambda (_%$%g2893728951%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%$%g2893728951%_)))
                                      (_%$%g2893529106%_
                                       (lambda (_%$%g2893728959%_)
                                         (if (gx#stx-pair? _%$%g2893728959%_)
                                             (let ((_%$%e2894128962%_
                                                    (gx#syntax-e
                                                     _%$%g2893728959%_)))
                                               (let ((_%$%hd2894228966%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e2894128962%_)))
                                                     (_%$%tl2894328969%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e2894128962%_))))
                                                 (if (gx#stx-pair?
                                                      _%$%tl2894328969%_)
                                                     (let ((_%$%e2894428972%_
                                                            (gx#syntax-e
                                                             _%$%tl2894328969%_)))
                                                       (let ((_%$%hd2894528976%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e2894428972%_)))
                     (_%$%tl2894628979%_
                      (let () (declare (not safe)) (##cdr _%$%e2894428972%_))))
                 (if (gx#stx-pair? _%$%tl2894628979%_)
                     (let ((_%$%e2894728982%_
                            (gx#syntax-e _%$%tl2894628979%_)))
                       (let ((_%$%hd2894828986%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e2894728982%_)))
                             (_%$%tl2894928989%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e2894728982%_))))
                         (if (gx#stx-null? _%$%tl2894928989%_)
                             (if (gx#stx-e _%$%hd2894528976%_)
                                 (let* ((_%$%g2901229027%_
                                         (lambda (_%$%g2901329023%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g2901329023%_)))
                                        (_%$%g2901129072%_
                                         (lambda (_%$%g2901329031%_)
                                           (if (gx#stx-pair? _%$%g2901329031%_)
                                               (let ((_%$%e2901629034%_
                                                      (gx#syntax-e
                                                       _%$%g2901329031%_)))
                                                 (let ((_%$%hd2901729038%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e2901629034%_)))
                                                       (_%$%tl2901829041%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e2901629034%_))))
                                                   (if (gx#stx-pair?
                                                        _%$%tl2901829041%_)
                                                       (let ((_%$%e2901929044%_
                                                              (gx#syntax-e
                                                               _%$%tl2901829041%_)))
                                                         (let ((_%$%hd2902029048%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e2901929044%_)))
                       (_%$%tl2902129051%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e2901929044%_))))
                   (if (gx#stx-null? _%$%tl2902129051%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (cons _%$%hd2894228966%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%hd2901729038%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons _%$%hd2902029048%_ '())))
                       (_%$%g2901229027%_ _%$%g2901329031%_))))
               (_%$%g2901229027%_ _%$%g2901329031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2901229027%_
                                                _%$%g2901329031%_)))))
                                   (_%$%g2901129072%_
                                    (list (_%generate128519%_
                                           _%$%hd2894528976%_
                                           _%$%hd2894828986%_
                                           _%E28873%_)
                                          (_%generate-clauses28518%_
                                           _%$%g2888328921%_
                                           (cons _%$%hd2894228966%_ '())))))
                                 (let* ((_%$%g2907629084%_
                                         (lambda (_%$%g2907729080%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g2907729080%_)))
                                        (_%$%g2907529102%_
                                         (lambda (_%$%g2907729088%_)
                                           (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _%$%hd2894228966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                       (cons (gx#datum->syntax
                                              '#f
                                              '@match-else)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons _%$%hd2894828986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '()))
                     '())
               (cons _%$%g2907729088%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%g2907529102%_
                                    (_%generate-clauses28518%_
                                     _%$%g2888328921%_
                                     (cons _%$%hd2894228966%_ '())))))
                             (_%$%g2893628955%_ _%$%g2893728959%_))))
                     (_%$%g2893628955%_ _%$%g2893728959%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g2893628955%_
                                                      _%$%g2893728959%_))))
                                             (_%$%g2893628955%_
                                              _%$%g2893728959%_)))))
                                 (_%$%g2893529106%_ _%$%g2888428923%_))))
                            (_%__kont3979539796%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28873%_ '()))))))
                        (if (gx#stx-pair? _%__stx3978839789%_)
                            (let ((_%$%e2888029117%_
                                   (gx#syntax-e _%__stx3978839789%_)))
                              (let ((_%$%tl2888229124%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2888029117%_)))
                                    (_%$%hd2888129121%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2888029117%_))))
                                (if (gx#stx-null? _%$%tl2888229124%_)
                                    (_%__kont3979139792%_ _%$%hd2888129121%_)
                                    (_%__kont3979339794%_
                                     _%$%tl2888229124%_
                                     _%$%hd2888129121%_))))
                            (_%__kont3979539796%_))))))
                 (_%generate128519%_
                  (lambda (_%clause28521%_ _%body28523%_ _%E28524%_)
                    (let* ((_%$%g2852628550%_
                            (lambda (_%$%g2852728546%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2852728546%_)))
                           (_%$%g2852528867%_
                            (lambda (_%$%g2852728554%_)
                              (if (gx#stx-pair? _%$%g2852728554%_)
                                  (let ((_%$%e2853028557%_
                                         (gx#syntax-e _%$%g2852728554%_)))
                                    (let ((_%$%hd2853128561%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2853028557%_)))
                                          (_%$%tl2853228564%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2853028557%_))))
                                      (if (gx#stx-pair? _%$%tl2853228564%_)
                                          (let ((_%$%e2853328567%_
                                                 (gx#syntax-e
                                                  _%$%tl2853228564%_)))
                                            (let ((_%$%hd2853428571%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e2853328567%_)))
                                                  (_%$%tl2853528574%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e2853328567%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd2853428571%_)
                                                  (let ((_g40451_
                                                         (gx#syntax-split-splice
                                                          _%$%hd2853428571%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g40452_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g40451_)
                           (##values-length _g40451_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g40452_ 2)))
                    (error "Context expects 2 values" _g40452_)))
              (let ((_%$%target2853628577%_
                     (let () (declare (not safe)) (##values-ref _g40451_ 0)))
                    (_%$%tl2853828580%_
                     (let () (declare (not safe)) (##values-ref _g40451_ 1))))
                (if (gx#stx-null? _%$%tl2853828580%_)
                    (letrec ((_%$%loop2853928583%_
                              (lambda (_%$%hd2853728587%_ _%$%var2854328590%_)
                                (if (gx#stx-pair? _%$%hd2853728587%_)
                                    (let ((_%$%e2854028592%_
                                           (gx#syntax-e _%$%hd2853728587%_)))
                                      (let ((_%$%lp-hd2854128596%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2854028592%_)))
                                            (_%$%lp-tl2854228599%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2854028592%_))))
                                        (_%$%loop2853928583%_
                                         _%$%lp-tl2854228599%_
                                         (cons _%$%lp-hd2854128596%_
                                               _%$%var2854328590%_))))
                                    (let ((_%$%var2854428602%_
                                           (reverse _%$%var2854328590%_)))
                                      (if (gx#stx-null? _%$%tl2853528574%_)
                                          (let ()
                                            (gx#check-duplicate-identifiers
                                             (foldr (lambda (_%$%g2862828631%_
                                                             _%$%g2862928634%_)
                                                      (cons _%$%g2862828631%_
                                                            _%$%g2862928634%_))
                                                    '()
                                                    _%$%var2854428602%_)
                                             _%stx28510%_)
                                            (let* ((_%$%g2863728645%_
                                                    (lambda (_%$%g2863828641%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g2863828641%_)))
                                                   (_%$%g2863628739%_
                                                    (lambda (_%$%g2863828649%_)
                                                      (let* ((_%$%g2866528673%_
                                                              (lambda (_%$%g2866628669%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g2866628669%_)))
                     (_%$%g2866428735%_
                      (lambda (_%$%g2866628677%_)
                        (let* ((_%$%g2869328701%_
                                (lambda (_%$%g2869428697%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g2869428697%_)))
                               (_%$%g2869228723%_
                                (lambda (_%$%g2869428705%_)
                                  (gx#stx-wrap-source
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons _%$%hd2853128561%_
                                                     (cons _%$%g2869428705%_
                                                           '()))
                                               (cons _%$%g2863828649%_ '())))
                                   (gx#stx-source _%stx28510%_)))))
                          (_%$%g2869228723%_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (foldr (lambda (_%$%g2872628729%_
                                                        _%$%g2872728732%_)
                                                 (cons _%$%g2872628729%_
                                                       _%$%g2872728732%_))
                                               '()
                                               _%$%var2854428602%_)
                                        (cons _%$%g2866628677%_ '())))
                            (gx#stx-source _%stx28510%_)))))))
                (_%$%g2866428735%_ _%body28523%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g2863628739%_
                                               (let _%recur28743%_ ((_%rest28746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause28521%_)
                            (_%rest-targets28748%_ _%tgt-lst28512%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__stx3981439815%_
                                                         _%rest28746%_)
                                                        (_%$%g2875128763%_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%__stx3981439815%_))))
                                                   (let ((_%__kont3981739818%_
                                                          (lambda (_%$%g2875328799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g2875428801%_)
                    (let* ((_%$%g2881628828%_
                            (lambda (_%$%g2881728824%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2881728824%_)))
                           (_%$%g2881528859%_
                            (lambda (_%$%g2881728832%_)
                              (if (gx#stx-pair? _%$%g2881728832%_)
                                  (let ((_%$%e2882028835%_
                                         (gx#syntax-e _%$%g2881728832%_)))
                                    (let ((_%$%hd2882128839%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2882028835%_)))
                                          (_%$%tl2882228842%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2882028835%_))))
                                      (|gerbil/core/match[1]#generate-match1|
                                       _%stx28510%_
                                       _%$%hd2882128839%_
                                       _%$%g2875428801%_
                                       (_%recur28743%_
                                        _%$%g2875328799%_
                                        _%$%tl2882228842%_)
                                       _%E28524%_)))
                                  (_%$%g2881628828%_ _%$%g2881728832%_)))))
                      (_%$%g2881528859%_ _%rest-targets28748%_))))
                 (_%__kont3981939820%_
                  (lambda ()
                    (cons _%$%hd2853128561%_
                          (foldr (lambda (_%$%g2877328776%_ _%$%g2877428779%_)
                                   (cons _%$%g2877328776%_ _%$%g2877428779%_))
                                 '()
                                 _%$%var2854428602%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair?
                                                          _%__stx3981439815%_)
                                                         (let ((_%$%e2875528789%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%__stx3981439815%_)))
                   (let ((_%$%tl2875728796%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e2875528789%_)))
                         (_%$%hd2875628793%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e2875528789%_))))
                     (_%__kont3981739818%_
                      _%$%tl2875728796%_
                      _%$%hd2875628793%_)))
                 (_%__kont3981939820%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g2852628550%_
                                           _%$%g2852728554%_)))))))
                      (_%$%loop2853928583%_ _%$%target2853628577%_ '()))
                    (_%$%g2852628550%_ _%$%g2852728554%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g2852628550%_
                                                   _%$%g2852728554%_))))
                                          (_%$%g2852628550%_
                                           _%$%g2852728554%_))))
                                  (_%$%g2852628550%_ _%$%g2852728554%_)))))
                      (_%$%g2852528867%_
                       (list (gx#genident 'K)
                             (let ((__tmp40453
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause28521%_)))
                               (declare (not safe))
                               (##apply append __tmp40453))))))))
          (_%generate-body28517%_
           (_%parse-body28515%_ (gx#stx-length _%tgt-lst28512%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx28412%_ _%tgt28414%_ _%clauses28415%_)
        (letrec ((_%reclause28417%_
                  (lambda (_%clause28420%_)
                    (let* ((_%__stx3983039831%_ _%clause28420%_)
                           (_%$%g2842528440%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3983039831%_))))
                      (let ((_%__kont3983339834%_ (lambda () _%clause28420%_))
                            (_%__kont3983539836%_
                             (lambda (_%$%g2843028468%_ _%$%g2843128470%_)
                               (gx#stx-wrap-source
                                (cons (cons _%$%g2843128470%_ '())
                                      _%$%g2843028468%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3983739838%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx28412%_
                                _%clause28420%_))))
                        (if (gx#stx-pair? _%__stx3983039831%_)
                            (let ((_%$%e2842728492%_
                                   (gx#syntax-e _%__stx3983039831%_)))
                              (let ((_%$%tl2842928499%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2842728492%_)))
                                    (_%$%hd2842828496%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2842728492%_))))
                                (if (gx#identifier? _%$%hd2842828496%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40454_|
                                         _%$%hd2842828496%_)
                                        (_%__kont3983339834%_)
                                        (_%__kont3983539836%_
                                         _%$%tl2842928499%_
                                         _%$%hd2842828496%_))
                                    (_%__kont3983539836%_
                                     _%$%tl2842928499%_
                                     _%$%hd2842828496%_))))
                            (_%__kont3983739838%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx28412%_
           (cons _%tgt28414%_ '())
           (gx#stx-map _%reclause28417%_ _%clauses28415%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35753%_)
        (let* ((_%__stx3985839859%_ _%stx35753%_)
               (_%$%g3575835787%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3985839859%_))))
          (let ((_%__kont3986139862%_
                 (lambda (_%$%g3576036027%_)
                   (let* ((_%$%g3604036048%_
                           (lambda (_%$%g3604136044%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g3604136044%_)))
                          (_%$%g3603936101%_
                           (lambda (_%$%g3604136052%_)
                             (let* ((_%$%g3606736075%_
                                     (lambda (_%$%g3606836071%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g3606836071%_)))
                                    (_%$%g3606636097%_
                                     (lambda (_%$%g3606836079%_)
                                       (cons (gx#datum->syntax '#f 'lambda)
                                             (cons (cons _%$%g3604136052%_ '())
                                                   (cons _%$%g3606836079%_
                                                         '()))))))
                               (_%$%g3606636097%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'match)
                                       (cons _%$%g3604136052%_
                                             _%$%g3576036027%_))
                                 (gx#stx-source _%stx35753%_)))))))
                     (_%$%g3603936101%_ (gx#genident 'e)))))
                (_%__kont3986339864%_
                 (lambda (_%$%g3576735922%_)
                   (let* ((_%$%g3593535943%_
                           (lambda (_%$%g3593635939%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g3593635939%_)))
                          (_%$%g3593435996%_
                           (lambda (_%$%g3593635947%_)
                             (let* ((_%$%g3596235970%_
                                     (lambda (_%$%g3596335966%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g3596335966%_)))
                                    (_%$%g3596135992%_
                                     (lambda (_%$%g3596335974%_)
                                       (cons (gx#datum->syntax '#f 'lambda)
                                             (cons _%$%g3593635947%_
                                                   (cons _%$%g3596335974%_
                                                         '()))))))
                               (_%$%g3596135992%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'match)
                                       (cons _%$%g3593635947%_
                                             _%$%g3576735922%_))
                                 (gx#stx-source _%stx35753%_)))))))
                     (_%$%g3593435996%_ (gx#genident 'args)))))
                (_%__kont3986539866%_
                 (lambda (_%$%g3577435814%_ _%$%g3577535816%_)
                   (let* ((_%$%g3583035838%_
                           (lambda (_%$%g3583135834%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g3583135834%_)))
                          (_%$%g3582935891%_
                           (lambda (_%$%g3583135842%_)
                             (let* ((_%$%g3585735865%_
                                     (lambda (_%$%g3585835861%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g3585835861%_)))
                                    (_%$%g3585635887%_
                                     (lambda (_%$%g3585835869%_)
                                       (cons (gx#datum->syntax '#f 'let)
                                             (cons (cons (cons _%$%g3583135842%_
                                                               (cons _%$%g3577535816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%$%g3585835869%_
                                                         '()))))))
                               (_%$%g3585635887%_
                                (|gerbil/core/match[1]#generate-match|
                                 _%stx35753%_
                                 _%$%g3583135842%_
                                 _%$%g3577435814%_))))))
                     (_%$%g3582935891%_ (gx#genident _%$%g3577535816%_))))))
            (let* ((_%__match3991139912%_
                    (lambda (_%$%e3577635794%_
                             _%$%hd3577735798%_
                             _%$%tl3577835801%_
                             _%$%e3577935804%_
                             _%$%hd3578035808%_
                             _%$%tl3578135811%_)
                      (let ((_%$%g3577435814%_ _%$%tl3578135811%_)
                            (_%$%g3577535816%_ _%$%hd3578035808%_))
                        (if (gx#stx-list? _%$%g3577435814%_)
                            (_%__kont3986539866%_
                             _%$%g3577435814%_
                             _%$%g3577535816%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g3575835787%_))))))
                   (_%__match3989939900%_
                    (lambda (_%$%e3576835902%_
                             _%$%hd3576935906%_
                             _%$%tl3577035909%_
                             _%$%e3577135912%_
                             _%$%hd3577235916%_
                             _%$%tl3577335919%_)
                      (let ((_%$%g3576735922%_ _%$%tl3577335919%_))
                        (if (gx#stx-list? _%$%g3576735922%_)
                            (_%__kont3986339864%_ _%$%g3576735922%_)
                            (_%__match3991139912%_
                             _%$%e3576835902%_
                             _%$%hd3576935906%_
                             _%$%tl3577035909%_
                             _%$%e3577135912%_
                             _%$%hd3577235916%_
                             _%$%tl3577335919%_)))))
                   (_%__match3988339884%_
                    (lambda (_%$%e3576136007%_
                             _%$%hd3576236011%_
                             _%$%tl3576336014%_
                             _%$%e3576436017%_
                             _%$%hd3576536021%_
                             _%$%tl3576636024%_)
                      (let ((_%$%g3576036027%_ _%$%tl3576636024%_))
                        (if (gx#stx-list? _%$%g3576036027%_)
                            (_%__kont3986139862%_ _%$%g3576036027%_)
                            (_%__match3991139912%_
                             _%$%e3576136007%_
                             _%$%hd3576236011%_
                             _%$%tl3576336014%_
                             _%$%e3576436017%_
                             _%$%hd3576536021%_
                             _%$%tl3576636024%_))))))
              (if (gx#stx-pair? _%__stx3985839859%_)
                  (let ((_%$%e3576136007%_ (gx#syntax-e _%__stx3985839859%_)))
                    (let ((_%$%tl3576336014%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e3576136007%_)))
                          (_%$%hd3576236011%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e3576136007%_))))
                      (if (gx#stx-pair? _%$%tl3576336014%_)
                          (let ((_%$%e3576436017%_
                                 (gx#syntax-e _%$%tl3576336014%_)))
                            (let ((_%$%tl3576636024%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e3576436017%_)))
                                  (_%$%hd3576536021%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e3576436017%_))))
                              (if (gx#identifier? _%$%hd3576536021%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40455_|
                                       _%$%hd3576536021%_)
                                      (_%__match3988339884%_
                                       _%$%e3576136007%_
                                       _%$%hd3576236011%_
                                       _%$%tl3576336014%_
                                       _%$%e3576436017%_
                                       _%$%hd3576536021%_
                                       _%$%tl3576636024%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40456_|
                                           _%$%hd3576536021%_)
                                          (_%__match3989939900%_
                                           _%$%e3576136007%_
                                           _%$%hd3576236011%_
                                           _%$%tl3576336014%_
                                           _%$%e3576436017%_
                                           _%$%hd3576536021%_
                                           _%$%tl3576636024%_)
                                          (_%__match3991139912%_
                                           _%$%e3576136007%_
                                           _%$%hd3576236011%_
                                           _%$%tl3576336014%_
                                           _%$%e3576436017%_
                                           _%$%hd3576536021%_
                                           _%$%tl3576636024%_)))
                                  (_%__match3991139912%_
                                   _%$%e3576136007%_
                                   _%$%hd3576236011%_
                                   _%$%tl3576336014%_
                                   _%$%e3576436017%_
                                   _%$%hd3576536021%_
                                   _%$%tl3576636024%_))))
                          (let () (declare (not safe)) (_%$%g3575835787%_)))))
                  (let () (declare (not safe)) (_%$%g3575835787%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx36109%_)
        (let* ((_%$%g3611236136%_
                (lambda (_%$%g3611336132%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3611336132%_)))
               (_%$%g3611136344%_
                (lambda (_%$%g3611336140%_)
                  (if (gx#stx-pair? _%$%g3611336140%_)
                      (let ((_%$%e3611636143%_
                             (gx#syntax-e _%$%g3611336140%_)))
                        (let ((_%$%hd3611736147%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3611636143%_)))
                              (_%$%tl3611836150%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3611636143%_))))
                          (if (gx#stx-pair? _%$%tl3611836150%_)
                              (let ((_%$%e3611936153%_
                                     (gx#syntax-e _%$%tl3611836150%_)))
                                (let ((_%$%hd3612036157%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3611936153%_)))
                                      (_%$%tl3612136160%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3611936153%_))))
                                  (if (gx#stx-pair/null? _%$%hd3612036157%_)
                                      (let ((_g40457_
                                             (gx#syntax-split-splice
                                              _%$%hd3612036157%_
                                              '0)))
                                        (begin
                                          (let ((_g40458_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g40457_)
                                                       (##values-length
                                                        _g40457_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g40458_ 2)))
                                                (error "Context expects 2 values"
                                                       _g40458_)))
                                          (let ((_%$%target3612236163%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g40457_ 0)))
                                                (_%$%tl3612436166%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g40457_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl3612436166%_)
                                                (letrec ((_%$%loop3612536169%_
                                                          (lambda (_%$%hd3612336173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%e3612936176%_)
                    (if (gx#stx-pair? _%$%hd3612336173%_)
                        (let ((_%$%e3612636178%_
                               (gx#syntax-e _%$%hd3612336173%_)))
                          (let ((_%$%lp-hd3612736182%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3612636178%_)))
                                (_%$%lp-tl3612836185%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3612636178%_))))
                            (_%$%loop3612536169%_
                             _%$%lp-tl3612836185%_
                             (cons _%$%lp-hd3612736182%_ _%$%e3612936176%_))))
                        (let ((_%$%e3613036188%_ (reverse _%$%e3612936176%_)))
                          (if (gx#stx-list? _%$%tl3612136160%_)
                              (let* ((_%$%g3621136228%_
                                      (lambda (_%$%g3621236224%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g3621236224%_)))
                                     (_%$%g3621036332%_
                                      (lambda (_%$%g3621236232%_)
                                        (if (gx#stx-pair/null?
                                             _%$%g3621236232%_)
                                            (let ((_g40459_
                                                   (gx#syntax-split-splice
                                                    _%$%g3621236232%_
                                                    '0)))
                                              (begin
                                                (let ((_g40460_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g40459_)
                                                             (##values-length
                                                              _g40459_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g40460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g40460_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target3621436235%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40459_
                                                          0)))
                                                      (_%$%tl3621636238%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40459_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%$%tl3621636238%_)
                                                      (letrec ((_%$%loop3621736241%_
                                                                (lambda (_%$%hd3621536245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%$e3622136248%_)
                          (if (gx#stx-pair? _%$%hd3621536245%_)
                              (let ((_%$%e3621836250%_
                                     (gx#syntax-e _%$%hd3621536245%_)))
                                (let ((_%$%lp-hd3621936254%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3621836250%_)))
                                      (_%$%lp-tl3622036257%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3621836250%_))))
                                  (_%$%loop3621736241%_
                                   _%$%lp-tl3622036257%_
                                   (cons _%$%lp-hd3621936254%_
                                         _%$%$e3622136248%_))))
                              (let* ((_%$%$e3622236260%_
                                      (reverse _%$%$e3622136248%_))
                                     (_%$%g3627936287%_
                                      (lambda (_%$%g3628036283%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g3628036283%_)))
                                     (_%$%g3627836320%_
                                      (lambda (_%$%g3628036291%_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons (begin
                                                      (gx#syntax-check-splice-targets
                                                       _%$%e3613036188%_
                                                       _%$%$e3622236260%_)
                                                      (foldr (lambda (_%$%g3630836312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g3630936315%_
                              _%$%g3631036317%_)
                       (cons (cons _%$%g3630936315%_
                                   (cons _%$%g3630836312%_ '()))
                             _%$%g3631036317%_))
                     '()
                     _%$%e3613036188%_
                     _%$%$e3622236260%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%$%g3628036291%_
                                                          '()))))))
                                (_%$%g3627836320%_
                                 (|gerbil/core/match[1]#generate-match*|
                                  _%stx36109%_
                                  (foldr (lambda (_%$%g3632336326%_
                                                  _%$%g3632436329%_)
                                           (cons _%$%g3632336326%_
                                                 _%$%g3632436329%_))
                                         '()
                                         _%$%$e3622236260%_)
                                  _%$%tl3612136160%_)))))))
                (_%$%loop3621736241%_ _%$%target3621436235%_ '()))
              (_%$%g3621136228%_ _%$%g3621236232%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g3621136228%_
                                             _%$%g3621236232%_)))))
                                (_%$%g3621036332%_
                                 (gx#gentemps
                                  (foldr (lambda (_%$%g3633536338%_
                                                  _%$%g3633636341%_)
                                           (cons _%$%g3633536338%_
                                                 _%$%g3633636341%_))
                                         '()
                                         _%$%e3613036188%_))))
                              (_%$%g3611236136%_ _%$%g3611336140%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop3612536169%_
                                                   _%$%target3612236163%_
                                                   '()))
                                                (_%$%g3611236136%_
                                                 _%$%g3611336140%_)))))
                                      (_%$%g3611236136%_ _%$%g3611336140%_))))
                              (_%$%g3611236136%_ _%$%g3611336140%_))))
                      (_%$%g3611236136%_ _%$%g3611336140%_)))))
          (_%$%g3611136344%_ _%stx36109%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx36350%_)
        (let* ((_%__stx3991439915%_ _%$stx36350%_)
               (_%$%g3635636439%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3991439915%_))))
          (let ((_%__kont3991739918%_
                 (lambda (_%$%g3635836759%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%$%g3677536778%_
                                               _%$%g3677636781%_)
                                        (cons _%$%g3677536778%_
                                              _%$%g3677636781%_))
                                      '()
                                      _%$%g3635836759%_)))))
                (_%__kont3992139922%_
                 (lambda (_%$%g3637436669%_
                          _%$%g3637536671%_
                          _%$%g3637636672%_
                          _%$%g3637736673%_)
                   (cons _%$%g3637736673%_
                         (cons (cons (cons _%$%g3637636672%_
                                           (cons _%$%g3637536671%_ '()))
                                     '())
                               (foldr (lambda (_%$%g3669536698%_
                                               _%$%g3669636701%_)
                                        (cons _%$%g3669536698%_
                                              _%$%g3669636701%_))
                                      '()
                                      _%$%g3637436669%_)))))
                (_%__kont3992539926%_
                 (lambda (_%$%g3639936544%_
                          _%$%g3640036546%_
                          _%$%g3640136547%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%$%g3656936576%_
                                               _%$%g3657036579%_)
                                        (cons _%$%g3656936576%_
                                              _%$%g3657036579%_))
                                      '()
                                      _%$%g3640036546%_)
                               (cons (cons (foldr (lambda (_%$%g3657136582%_
                                                           _%$%g3657236585%_)
                                                    (cons _%$%g3657136582%_
                                                          _%$%g3657236585%_))
                                                  '()
                                                  _%$%g3640136547%_)
                                           (foldr (lambda (_%$%g3657336588%_
                                                           _%$%g3657436591%_)
                                                    (cons _%$%g3657336588%_
                                                          _%$%g3657436591%_))
                                                  '()
                                                  _%$%g3639936544%_))
                                     '()))))))
            (let* ((_%__match4000740008%_
                    (lambda (_%$%e3640236446%_
                             _%$%hd3640336450%_
                             _%$%tl3640436453%_
                             _%$%e3640536456%_
                             _%$%hd3640636460%_
                             _%$%tl3640736463%_
                             _%__splice3992739928%_
                             _%$%target3640836466%_
                             _%$%tl3641036469%_)
                      (letrec ((_%$%loop3641136472%_
                                (lambda (_%$%hd3640936476%_
                                         _%$%expr3641536479%_
                                         _%$%hd3641636480%_)
                                  (if (gx#stx-pair? _%$%hd3640936476%_)
                                      (let ((_%$%e3641236482%_
                                             (gx#syntax-e _%$%hd3640936476%_)))
                                        (let ((_%$%lp-tl3641436489%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3641236482%_)))
                                              (_%$%lp-hd3641336486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3641236482%_))))
                                          (if (gx#stx-pair?
                                               _%$%lp-hd3641336486%_)
                                              (let ((_%$%e3641936492%_
                                                     (gx#syntax-e
                                                      _%$%lp-hd3641336486%_)))
                                                (let ((_%$%tl3642136499%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e3641936492%_)))
                                                      (_%$%hd3642036496%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e3641936492%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl3642136499%_)
                                                      (let ((_%$%e3642236502%_
                                                             (gx#syntax-e
                                                              _%$%tl3642136499%_)))
                                                        (let ((_%$%tl3642436509%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e3642236502%_)))
                      (_%$%hd3642336506%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e3642236502%_))))
                  (if (gx#stx-null? _%$%tl3642436509%_)
                      (_%$%loop3641136472%_
                       _%$%lp-tl3641436489%_
                       (cons _%$%hd3642336506%_ _%$%expr3641536479%_)
                       (cons _%$%hd3642036496%_ _%$%hd3641636480%_))
                      (let () (declare (not safe)) (_%$%g3635636439%_)))))
              (let () (declare (not safe)) (_%$%g3635636439%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g3635636439%_)))))
                                      (let ((_%$%hd3641836514%_
                                             (reverse _%$%hd3641636480%_))
                                            (_%$%expr3641736512%_
                                             (reverse _%$%expr3641536479%_)))
                                        (if (gx#stx-pair/null?
                                             _%$%tl3640736463%_)
                                            (let ((_%__splice3992939930%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl3640736463%_
                                                    '0)))
                                              (let ((_%$%tl3642736519%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3992939930%_
                                                        '1)))
                                                    (_%$%target3642536516%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3992939930%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl3642736519%_)
                                                    (letrec ((_%$%loop3642836522%_
                                                              (lambda (_%$%hd3642636526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body3643236529%_)
                        (if (gx#stx-pair? _%$%hd3642636526%_)
                            (let ((_%$%e3642936531%_
                                   (gx#syntax-e _%$%hd3642636526%_)))
                              (let ((_%$%lp-tl3643136538%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e3642936531%_)))
                                    (_%$%lp-hd3643036535%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e3642936531%_))))
                                (_%$%loop3642836522%_
                                 _%$%lp-tl3643136538%_
                                 (cons _%$%lp-hd3643036535%_
                                       _%$%body3643236529%_))))
                            (let ((_%$%body3643336541%_
                                   (reverse _%$%body3643236529%_)))
                              (_%__kont3992539926%_
                               _%$%body3643336541%_
                               _%$%expr3641736512%_
                               _%$%hd3641836514%_))))))
              (_%$%loop3642836522%_ _%$%target3642536516%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g3635636439%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g3635636439%_))))))))
                        (_%$%loop3641136472%_
                         _%$%target3640836466%_
                         '()
                         '()))))
                   (_%__match3999940000%_
                    (lambda (_%$%e3640236446%_
                             _%$%hd3640336450%_
                             _%$%tl3640436453%_
                             _%$%e3640536456%_
                             _%$%hd3640636460%_
                             _%$%tl3640736463%_)
                      (if (gx#stx-pair/null? _%$%hd3640636460%_)
                          (let ((_%__splice3992739928%_
                                 (gx#syntax-split-splice->vector
                                  _%$%hd3640636460%_
                                  '0)))
                            (let ((_%$%tl3641036469%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3992739928%_ '1)))
                                  (_%$%target3640836466%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3992739928%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl3641036469%_)
                                  (_%__match4000740008%_
                                   _%$%e3640236446%_
                                   _%$%hd3640336450%_
                                   _%$%tl3640436453%_
                                   _%$%e3640536456%_
                                   _%$%hd3640636460%_
                                   _%$%tl3640736463%_
                                   _%__splice3992739928%_
                                   _%$%target3640836466%_
                                   _%$%tl3641036469%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g3635636439%_)))))
                          (let () (declare (not safe)) (_%$%g3635636439%_)))))
                   (_%__match3998739988%_
                    (lambda (_%$%e3637836601%_
                             _%$%hd3637936605%_
                             _%$%tl3638036608%_
                             _%$%e3638136611%_
                             _%$%hd3638236615%_
                             _%$%tl3638336618%_
                             _%$%e3638436621%_
                             _%$%hd3638536625%_
                             _%$%tl3638636628%_
                             _%$%e3638736631%_
                             _%$%hd3638836635%_
                             _%$%tl3638936638%_
                             _%__splice3992339924%_
                             _%$%target3639036641%_
                             _%$%tl3639236644%_)
                      (letrec ((_%$%loop3639336647%_
                                (lambda (_%$%hd3639136651%_
                                         _%$%body3639736654%_)
                                  (if (gx#stx-pair? _%$%hd3639136651%_)
                                      (let ((_%$%e3639436656%_
                                             (gx#syntax-e _%$%hd3639136651%_)))
                                        (let ((_%$%lp-tl3639636663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3639436656%_)))
                                              (_%$%lp-hd3639536660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3639436656%_))))
                                          (_%$%loop3639336647%_
                                           _%$%lp-tl3639636663%_
                                           (cons _%$%lp-hd3639536660%_
                                                 _%$%body3639736654%_))))
                                      (let ((_%$%body3639836666%_
                                             (reverse _%$%body3639736654%_)))
                                        (let ((_%$%g3637436669%_
                                               _%$%body3639836666%_)
                                              (_%$%g3637536671%_
                                               _%$%hd3638836635%_)
                                              (_%$%g3637636672%_
                                               _%$%hd3638536625%_)
                                              (_%$%g3637736673%_
                                               _%$%hd3637936605%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%$%g3637636672%_)
                                              (_%__kont3992139922%_
                                               _%$%g3637436669%_
                                               _%$%g3637536671%_
                                               _%$%g3637636672%_
                                               _%$%g3637736673%_)
                                              (_%__match3999940000%_
                                               _%$%e3637836601%_
                                               _%$%hd3637936605%_
                                               _%$%tl3638036608%_
                                               _%$%e3638136611%_
                                               _%$%hd3638236615%_
                                               _%$%tl3638336618%_))))))))
                        (_%$%loop3639336647%_ _%$%target3639036641%_ '()))))
                   (_%__match3995339954%_
                    (lambda (_%$%e3635936711%_
                             _%$%hd3636036715%_
                             _%$%tl3636136718%_
                             _%$%e3636236721%_
                             _%$%hd3636336725%_
                             _%$%tl3636436728%_
                             _%__splice3991939920%_
                             _%$%target3636536731%_
                             _%$%tl3636736734%_)
                      (letrec ((_%$%loop3636836737%_
                                (lambda (_%$%hd3636636741%_
                                         _%$%body3637236744%_)
                                  (if (gx#stx-pair? _%$%hd3636636741%_)
                                      (let ((_%$%e3636936746%_
                                             (gx#syntax-e _%$%hd3636636741%_)))
                                        (let ((_%$%lp-tl3637136753%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3636936746%_)))
                                              (_%$%lp-hd3637036750%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3636936746%_))))
                                          (_%$%loop3636836737%_
                                           _%$%lp-tl3637136753%_
                                           (cons _%$%lp-hd3637036750%_
                                                 _%$%body3637236744%_))))
                                      (let ((_%$%body3637336756%_
                                             (reverse _%$%body3637236744%_)))
                                        (_%__kont3991739918%_
                                         _%$%body3637336756%_))))))
                        (_%$%loop3636836737%_ _%$%target3636536731%_ '())))))
              (if (gx#stx-pair? _%__stx3991439915%_)
                  (let ((_%$%e3635936711%_ (gx#syntax-e _%__stx3991439915%_)))
                    (let ((_%$%tl3636136718%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e3635936711%_)))
                          (_%$%hd3636036715%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e3635936711%_))))
                      (if (gx#stx-pair? _%$%tl3636136718%_)
                          (let ((_%$%e3636236721%_
                                 (gx#syntax-e _%$%tl3636136718%_)))
                            (let ((_%$%tl3636436728%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e3636236721%_)))
                                  (_%$%hd3636336725%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e3636236721%_))))
                              (if (gx#stx-null? _%$%hd3636336725%_)
                                  (if (gx#stx-pair/null? _%$%tl3636436728%_)
                                      (let ((_%__splice3991939920%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl3636436728%_
                                              '0)))
                                        (let ((_%$%tl3636736734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3991939920%_
                                                  '1)))
                                              (_%$%target3636536731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3991939920%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl3636736734%_)
                                              (_%__match3995339954%_
                                               _%$%e3635936711%_
                                               _%$%hd3636036715%_
                                               _%$%tl3636136718%_
                                               _%$%e3636236721%_
                                               _%$%hd3636336725%_
                                               _%$%tl3636436728%_
                                               _%__splice3991939920%_
                                               _%$%target3636536731%_
                                               _%$%tl3636736734%_)
                                              (if (gx#stx-pair/null?
                                                   _%$%hd3636336725%_)
                                                  (let ((_%__splice3992739928%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%hd3636336725%_
                                                          '0)))
                                                    (let ((_%$%tl3641036469%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3992739928%_
                                                              '1)))
                                                          (_%$%target3640836466%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3992739928%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl3641036469%_)
                                                          (_%__match4000740008%_
                                                           _%$%e3635936711%_
                                                           _%$%hd3636036715%_
                                                           _%$%tl3636136718%_
                                                           _%$%e3636236721%_
                                                           _%$%hd3636336725%_
                                                           _%$%tl3636436728%_
                                                           _%__splice3992739928%_
                                                           _%$%target3640836466%_
                                                           _%$%tl3641036469%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g3635636439%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g3635636439%_))))))
                                      (if (gx#stx-pair/null?
                                           _%$%hd3636336725%_)
                                          (let ((_%__splice3992739928%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%hd3636336725%_
                                                  '0)))
                                            (let ((_%$%tl3641036469%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3992739928%_
                                                      '1)))
                                                  (_%$%target3640836466%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3992739928%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl3641036469%_)
                                                  (_%__match4000740008%_
                                                   _%$%e3635936711%_
                                                   _%$%hd3636036715%_
                                                   _%$%tl3636136718%_
                                                   _%$%e3636236721%_
                                                   _%$%hd3636336725%_
                                                   _%$%tl3636436728%_
                                                   _%__splice3992739928%_
                                                   _%$%target3640836466%_
                                                   _%$%tl3641036469%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g3635636439%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g3635636439%_))))
                                  (if (gx#stx-pair? _%$%hd3636336725%_)
                                      (let ((_%$%e3638436621%_
                                             (gx#syntax-e _%$%hd3636336725%_)))
                                        (let ((_%$%tl3638636628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3638436621%_)))
                                              (_%$%hd3638536625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3638436621%_))))
                                          (if (gx#stx-pair? _%$%tl3638636628%_)
                                              (let ((_%$%e3638736631%_
                                                     (gx#syntax-e
                                                      _%$%tl3638636628%_)))
                                                (let ((_%$%tl3638936638%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e3638736631%_)))
                                                      (_%$%hd3638836635%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e3638736631%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl3638936638%_)
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl3636436728%_)
                                                          (let ((_%__splice3992339924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl3636436728%_
                          '0)))
                    (let ((_%$%tl3639236644%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3992339924%_ '1)))
                          (_%$%target3639036641%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3992339924%_ '0))))
                      (if (gx#stx-null? _%$%tl3639236644%_)
                          (_%__match3998739988%_
                           _%$%e3635936711%_
                           _%$%hd3636036715%_
                           _%$%tl3636136718%_
                           _%$%e3636236721%_
                           _%$%hd3636336725%_
                           _%$%tl3636436728%_
                           _%$%e3638436621%_
                           _%$%hd3638536625%_
                           _%$%tl3638636628%_
                           _%$%e3638736631%_
                           _%$%hd3638836635%_
                           _%$%tl3638936638%_
                           _%__splice3992339924%_
                           _%$%target3639036641%_
                           _%$%tl3639236644%_)
                          (if (gx#stx-pair/null? _%$%hd3636336725%_)
                              (let ((_%__splice3992739928%_
                                     (gx#syntax-split-splice->vector
                                      _%$%hd3636336725%_
                                      '0)))
                                (let ((_%$%tl3641036469%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3992739928%_
                                          '1)))
                                      (_%$%target3640836466%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3992739928%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl3641036469%_)
                                      (_%__match4000740008%_
                                       _%$%e3635936711%_
                                       _%$%hd3636036715%_
                                       _%$%tl3636136718%_
                                       _%$%e3636236721%_
                                       _%$%hd3636336725%_
                                       _%$%tl3636436728%_
                                       _%__splice3992739928%_
                                       _%$%target3640836466%_
                                       _%$%tl3641036469%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g3635636439%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g3635636439%_))))))
                  (if (gx#stx-pair/null? _%$%hd3636336725%_)
                      (let ((_%__splice3992739928%_
                             (gx#syntax-split-splice->vector
                              _%$%hd3636336725%_
                              '0)))
                        (let ((_%$%tl3641036469%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3992739928%_ '1)))
                              (_%$%target3640836466%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3992739928%_ '0))))
                          (if (gx#stx-null? _%$%tl3641036469%_)
                              (_%__match4000740008%_
                               _%$%e3635936711%_
                               _%$%hd3636036715%_
                               _%$%tl3636136718%_
                               _%$%e3636236721%_
                               _%$%hd3636336725%_
                               _%$%tl3636436728%_
                               _%__splice3992739928%_
                               _%$%target3640836466%_
                               _%$%tl3641036469%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g3635636439%_)))))
                      (let () (declare (not safe)) (_%$%g3635636439%_))))
              (if (gx#stx-pair/null? _%$%hd3636336725%_)
                  (let ((_%__splice3992739928%_
                         (gx#syntax-split-splice->vector
                          _%$%hd3636336725%_
                          '0)))
                    (let ((_%$%tl3641036469%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3992739928%_ '1)))
                          (_%$%target3640836466%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3992739928%_ '0))))
                      (if (gx#stx-null? _%$%tl3641036469%_)
                          (_%__match4000740008%_
                           _%$%e3635936711%_
                           _%$%hd3636036715%_
                           _%$%tl3636136718%_
                           _%$%e3636236721%_
                           _%$%hd3636336725%_
                           _%$%tl3636436728%_
                           _%__splice3992739928%_
                           _%$%target3640836466%_
                           _%$%tl3641036469%_)
                          (let () (declare (not safe)) (_%$%g3635636439%_)))))
                  (let () (declare (not safe)) (_%$%g3635636439%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%$%hd3636336725%_)
                                                  (let ((_%__splice3992739928%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%hd3636336725%_
                                                          '0)))
                                                    (let ((_%$%tl3641036469%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3992739928%_
                                                              '1)))
                                                          (_%$%target3640836466%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3992739928%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl3641036469%_)
                                                          (_%__match4000740008%_
                                                           _%$%e3635936711%_
                                                           _%$%hd3636036715%_
                                                           _%$%tl3636136718%_
                                                           _%$%e3636236721%_
                                                           _%$%hd3636336725%_
                                                           _%$%tl3636436728%_
                                                           _%__splice3992739928%_
                                                           _%$%target3640836466%_
                                                           _%$%tl3641036469%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g3635636439%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g3635636439%_))))))
                                      (if (gx#stx-pair/null?
                                           _%$%hd3636336725%_)
                                          (let ((_%__splice3992739928%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%hd3636336725%_
                                                  '0)))
                                            (let ((_%$%tl3641036469%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3992739928%_
                                                      '1)))
                                                  (_%$%target3640836466%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3992739928%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl3641036469%_)
                                                  (_%__match4000740008%_
                                                   _%$%e3635936711%_
                                                   _%$%hd3636036715%_
                                                   _%$%tl3636136718%_
                                                   _%$%e3636236721%_
                                                   _%$%hd3636336725%_
                                                   _%$%tl3636436728%_
                                                   _%__splice3992739928%_
                                                   _%$%target3640836466%_
                                                   _%$%tl3641036469%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g3635636439%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g3635636439%_)))))))
                          (let () (declare (not safe)) (_%$%g3635636439%_)))))
                  (let () (declare (not safe)) (_%$%g3635636439%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36792%_)
        (let* ((_%__stx4001040011%_ _%$stx36792%_)
               (_%$%g3679736849%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4001040011%_))))
          (let ((_%__kont4001340014%_
                 (lambda (_%$%g3679937015%_
                          _%$%g3680037017%_
                          _%$%g3680137018%_
                          _%$%g3680237019%_
                          _%$%g3680337020%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%$%g3680237019%_
                                           (cons _%$%g3680137018%_ '()))
                                     '())
                               (cons (cons _%$%g3680337020%_
                                           (cons _%$%g3680037017%_
                                                 (foldr (lambda (_%$%g3704537048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g3704637051%_)
                  (cons _%$%g3704537048%_ _%$%g3704637051%_))
                '()
                _%$%g3679937015%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont4001740018%_
                 (lambda (_%$%g3682836904%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%$%g3692136924%_
                                               _%$%g3692236927%_)
                                        (cons _%$%g3692136924%_
                                              _%$%g3692236927%_))
                                      '()
                                      _%$%g3682836904%_))))))
            (let* ((_%__match4008340084%_
                    (lambda (_%$%e3682936856%_
                             _%$%hd3683036860%_
                             _%$%tl3683136863%_
                             _%$%e3683236866%_
                             _%$%hd3683336870%_
                             _%$%tl3683436873%_
                             _%__splice4001940020%_
                             _%$%target3683536876%_
                             _%$%tl3683736879%_)
                      (letrec ((_%$%loop3683836882%_
                                (lambda (_%$%hd3683636886%_
                                         _%$%body3684236889%_)
                                  (if (gx#stx-pair? _%$%hd3683636886%_)
                                      (let ((_%$%e3683936891%_
                                             (gx#syntax-e _%$%hd3683636886%_)))
                                        (let ((_%$%lp-tl3684136898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3683936891%_)))
                                              (_%$%lp-hd3684036895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3683936891%_))))
                                          (_%$%loop3683836882%_
                                           _%$%lp-tl3684136898%_
                                           (cons _%$%lp-hd3684036895%_
                                                 _%$%body3684236889%_))))
                                      (let ((_%$%body3684336901%_
                                             (reverse _%$%body3684236889%_)))
                                        (_%__kont4001740018%_
                                         _%$%body3684336901%_))))))
                        (_%$%loop3683836882%_ _%$%target3683536876%_ '()))))
                   (_%__match4006140062%_
                    (lambda (_%$%e3680436937%_
                             _%$%hd3680536941%_
                             _%$%tl3680636944%_
                             _%$%e3680736947%_
                             _%$%hd3680836951%_
                             _%$%tl3680936954%_
                             _%$%e3681036957%_
                             _%$%hd3681136961%_
                             _%$%tl3681236964%_
                             _%$%e3681336967%_
                             _%$%hd3681436971%_
                             _%$%tl3681536974%_
                             _%$%e3681636977%_
                             _%$%hd3681736981%_
                             _%$%tl3681836984%_
                             _%__splice4001540016%_
                             _%$%target3681936987%_
                             _%$%tl3682136990%_)
                      (letrec ((_%$%loop3682236993%_
                                (lambda (_%$%hd3682036997%_
                                         _%$%body3682637000%_)
                                  (if (gx#stx-pair? _%$%hd3682036997%_)
                                      (let ((_%$%e3682337002%_
                                             (gx#syntax-e _%$%hd3682036997%_)))
                                        (let ((_%$%lp-tl3682537009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3682337002%_)))
                                              (_%$%lp-hd3682437006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3682337002%_))))
                                          (_%$%loop3682236993%_
                                           _%$%lp-tl3682537009%_
                                           (cons _%$%lp-hd3682437006%_
                                                 _%$%body3682637000%_))))
                                      (let ((_%$%body3682737012%_
                                             (reverse _%$%body3682637000%_)))
                                        (_%__kont4001340014%_
                                         _%$%body3682737012%_
                                         _%$%tl3681236964%_
                                         _%$%hd3681736981%_
                                         _%$%hd3681436971%_
                                         _%$%hd3680536941%_))))))
                        (_%$%loop3682236993%_ _%$%target3681936987%_ '())))))
              (if (gx#stx-pair? _%__stx4001040011%_)
                  (let ((_%$%e3680436937%_ (gx#syntax-e _%__stx4001040011%_)))
                    (let ((_%$%tl3680636944%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e3680436937%_)))
                          (_%$%hd3680536941%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e3680436937%_))))
                      (if (gx#stx-pair? _%$%tl3680636944%_)
                          (let ((_%$%e3680736947%_
                                 (gx#syntax-e _%$%tl3680636944%_)))
                            (let ((_%$%tl3680936954%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e3680736947%_)))
                                  (_%$%hd3680836951%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e3680736947%_))))
                              (if (gx#stx-pair? _%$%hd3680836951%_)
                                  (let ((_%$%e3681036957%_
                                         (gx#syntax-e _%$%hd3680836951%_)))
                                    (let ((_%$%tl3681236964%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e3681036957%_)))
                                          (_%$%hd3681136961%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e3681036957%_))))
                                      (if (gx#stx-pair? _%$%hd3681136961%_)
                                          (let ((_%$%e3681336967%_
                                                 (gx#syntax-e
                                                  _%$%hd3681136961%_)))
                                            (let ((_%$%tl3681536974%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e3681336967%_)))
                                                  (_%$%hd3681436971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e3681336967%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl3681536974%_)
                                                  (let ((_%$%e3681636977%_
                                                         (gx#syntax-e
                                                          _%$%tl3681536974%_)))
                                                    (let ((_%$%tl3681836984%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e3681636977%_)))
                                                          (_%$%hd3681736981%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e3681636977%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl3681836984%_)
                                                          (if (gx#stx-pair/null?
                                                               _%$%tl3680936954%_)
                                                              (let ((_%__splice4001540016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%$%tl3680936954%_
                              '0)))
                        (let ((_%$%tl3682136990%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4001540016%_ '1)))
                              (_%$%target3681936987%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4001540016%_ '0))))
                          (if (gx#stx-null? _%$%tl3682136990%_)
                              (_%__match4006140062%_
                               _%$%e3680436937%_
                               _%$%hd3680536941%_
                               _%$%tl3680636944%_
                               _%$%e3680736947%_
                               _%$%hd3680836951%_
                               _%$%tl3680936954%_
                               _%$%e3681036957%_
                               _%$%hd3681136961%_
                               _%$%tl3681236964%_
                               _%$%e3681336967%_
                               _%$%hd3681436971%_
                               _%$%tl3681536974%_
                               _%$%e3681636977%_
                               _%$%hd3681736981%_
                               _%$%tl3681836984%_
                               _%__splice4001540016%_
                               _%$%target3681936987%_
                               _%$%tl3682136990%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g3679736849%_)))))
                      (let () (declare (not safe)) (_%$%g3679736849%_)))
                  (let () (declare (not safe)) (_%$%g3679736849%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g3679736849%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g3679736849%_)))))
                                  (if (gx#stx-null? _%$%hd3680836951%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl3680936954%_)
                                          (let ((_%__splice4001940020%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl3680936954%_
                                                  '0)))
                                            (let ((_%$%tl3683736879%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4001940020%_
                                                      '1)))
                                                  (_%$%target3683536876%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4001940020%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl3683736879%_)
                                                  (_%__match4008340084%_
                                                   _%$%e3680436937%_
                                                   _%$%hd3680536941%_
                                                   _%$%tl3680636944%_
                                                   _%$%e3680736947%_
                                                   _%$%hd3680836951%_
                                                   _%$%tl3680936954%_
                                                   _%__splice4001940020%_
                                                   _%$%target3683536876%_
                                                   _%$%tl3683736879%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g3679736849%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g3679736849%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g3679736849%_))))))
                          (let () (declare (not safe)) (_%$%g3679736849%_)))))
                  (let () (declare (not safe)) (_%$%g3679736849%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx37060%_)
        (let* ((_%__stx4008640087%_ _%$stx37060%_)
               (_%$%g3707137217%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4008640087%_))))
          (let ((_%__kont4008940090%_
                 (lambda (_%$%g3707337817%_
                          _%$%g3707437819%_
                          _%$%g3707537820%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%$%g3784137844%_ _%$%g3784237847%_)
                                  (cons (cons _%$%g3707537820%_
                                              (cons _%$%g3784137844%_
                                                    (cons _%$%g3707337817%_
                                                          '())))
                                        _%$%g3784237847%_))
                                '()
                                _%$%g3707437819%_))))
                (_%__kont4009340094%_
                 (lambda (_%$%g3709737709%_
                          _%$%g3709837711%_
                          _%$%g3709937712%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%$%g3773337736%_ _%$%g3773437739%_)
                                  (cons (cons _%$%g3709937712%_
                                              (cons _%$%g3773337736%_
                                                    (cons _%$%g3709737709%_
                                                          '())))
                                        _%$%g3773437739%_))
                                '()
                                _%$%g3709837711%_))))
                (_%__kont4009740098%_
                 (lambda (_%$%g3712137611%_
                          _%$%g3712237613%_
                          _%$%g3712337614%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%$%g3712337614%_
                                     (cons _%$%g3712237613%_
                                           (cons _%$%g3712137611%_ '())))
                               '()))))
                (_%__kont4009940100%_
                 (lambda (_%$%g3713937537%_ _%$%g3714037539%_)
                   (cons _%$%g3714037539%_ (cons _%$%g3713937537%_ '()))))
                (_%__kont4010140102%_
                 (lambda (_%$%g3715037485%_ _%$%g3715137487%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%$%g3715137487%_
                                           (cons _%$%g3715037485%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont4010340104%_
                 (lambda (_%$%g3715837437%_
                          _%$%g3715937439%_
                          _%$%g3716037440%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%$%g3716037440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g3715937439%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g3715837437%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont4010540106%_
                 (lambda (_%$%g3717337368%_
                          _%$%g3717437370%_
                          _%$%g3717537371%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%$%g3717537371%_
                                                       (cons _%$%g3717437370%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g3717337368%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont4010740108%_
                 (lambda (_%$%g3718937288%_
                          _%$%g3719037290%_
                          _%$%g3719137291%_
                          _%$%g3719237292%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%$%g3719237292%_
                                                       (cons _%$%g3719137291%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g3718937288%_
                                                             (cons (cons _%$%g3719037290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match4025940260%_
                    (lambda (_%$%e3716137397%_
                             _%$%hd3716237401%_
                             _%$%tl3716337404%_
                             _%$%e3716437407%_
                             _%$%hd3716537411%_
                             _%$%tl3716637414%_
                             _%$%e3716737417%_
                             _%$%hd3716837421%_
                             _%$%tl3716937424%_)
                      (if (gx#identifier? _%$%hd3716837421%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40461_|
                               _%$%hd3716837421%_)
                              (if (gx#stx-pair? _%$%tl3716937424%_)
                                  (let ((_%$%e3717037427%_
                                         (gx#syntax-e _%$%tl3716937424%_)))
                                    (let ((_%$%tl3717237434%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e3717037427%_)))
                                          (_%$%hd3717137431%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e3717037427%_))))
                                      (if (gx#stx-null? _%$%tl3717237434%_)
                                          (_%__kont4010340104%_
                                           _%$%hd3717137431%_
                                           _%$%hd3716537411%_
                                           _%$%hd3716237401%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g3707137217%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g3707137217%_)))
                              (let ()
                                (declare (not safe))
                                (_%$%g3707137217%_)))
                          (if (gx#stx-datum? _%$%hd3716837421%_)
                              (let ((_%$%e3718537354%_
                                     (gx#stx-e _%$%hd3716837421%_)))
                                (if (equal? _%$%e3718537354%_ '::)
                                    (if (gx#stx-pair? _%$%tl3716937424%_)
                                        (let ((_%$%e3718637358%_
                                               (gx#syntax-e
                                                _%$%tl3716937424%_)))
                                          (let ((_%$%tl3718837365%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e3718637358%_)))
                                                (_%$%hd3718737362%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e3718637358%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl3718837365%_)
                                                (_%__kont4010540106%_
                                                 _%$%hd3718737362%_
                                                 _%$%hd3716537411%_
                                                 _%$%hd3716237401%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl3718837365%_)
                                                    (let ((_%$%e3720637268%_
                                                           (gx#syntax-e
                                                            _%$%tl3718837365%_)))
                                                      (let ((_%$%tl3720837275%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e3720637268%_)))
                    (_%$%hd3720737272%_
                     (let () (declare (not safe)) (##car _%$%e3720637268%_))))
                (if (gx#identifier? _%$%hd3720737272%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g40462_|
                         _%$%hd3720737272%_)
                        (if (gx#stx-pair? _%$%tl3720837275%_)
                            (let ((_%$%e3720937278%_
                                   (gx#syntax-e _%$%tl3720837275%_)))
                              (let ((_%$%tl3721137285%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e3720937278%_)))
                                    (_%$%hd3721037282%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e3720937278%_))))
                                (if (gx#stx-null? _%$%tl3721137285%_)
                                    (_%__kont4010740108%_
                                     _%$%hd3721037282%_
                                     _%$%hd3718737362%_
                                     _%$%hd3716537411%_
                                     _%$%hd3716237401%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g3707137217%_)))))
                            (let () (declare (not safe)) (_%$%g3707137217%_)))
                        (let () (declare (not safe)) (_%$%g3707137217%_)))
                    (let () (declare (not safe)) (_%$%g3707137217%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g3707137217%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g3707137217%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g3707137217%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g3707137217%_))))))
                   (_%__match4023940240%_
                    (lambda (_%$%e3715237465%_
                             _%$%hd3715337469%_
                             _%$%tl3715437472%_
                             _%$%e3715537475%_
                             _%$%hd3715637479%_
                             _%$%tl3715737482%_)
                      (if (gx#stx-null? _%$%tl3715737482%_)
                          (_%__kont4010140102%_
                           _%$%hd3715637479%_
                           _%$%hd3715337469%_)
                          (if (gx#stx-pair? _%$%tl3715737482%_)
                              (let ((_%$%e3716737417%_
                                     (gx#syntax-e _%$%tl3715737482%_)))
                                (let ((_%$%tl3716937424%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3716737417%_)))
                                      (_%$%hd3716837421%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3716737417%_))))
                                  (if (gx#identifier? _%$%hd3716837421%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40461_|
                                           _%$%hd3716837421%_)
                                          (if (gx#stx-pair? _%$%tl3716937424%_)
                                              (let ((_%$%e3717037427%_
                                                     (gx#syntax-e
                                                      _%$%tl3716937424%_)))
                                                (let ((_%$%tl3717237434%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e3717037427%_)))
                                                      (_%$%hd3717137431%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e3717037427%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl3717237434%_)
                                                      (_%__kont4010340104%_
                                                       _%$%hd3717137431%_
                                                       _%$%hd3715637479%_
                                                       _%$%hd3715337469%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g3707137217%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g3707137217%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g3707137217%_)))
                                      (if (gx#stx-datum? _%$%hd3716837421%_)
                                          (let ((_%$%e3718537354%_
                                                 (gx#stx-e
                                                  _%$%hd3716837421%_)))
                                            (if (equal? _%$%e3718537354%_ '::)
                                                (if (gx#stx-pair?
                                                     _%$%tl3716937424%_)
                                                    (let ((_%$%e3718637358%_
                                                           (gx#syntax-e
                                                            _%$%tl3716937424%_)))
                                                      (let ((_%$%tl3718837365%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e3718637358%_)))
                    (_%$%hd3718737362%_
                     (let () (declare (not safe)) (##car _%$%e3718637358%_))))
                (if (gx#stx-null? _%$%tl3718837365%_)
                    (_%__kont4010540106%_
                     _%$%hd3718737362%_
                     _%$%hd3715637479%_
                     _%$%hd3715337469%_)
                    (if (gx#stx-pair? _%$%tl3718837365%_)
                        (let ((_%$%e3720637268%_
                               (gx#syntax-e _%$%tl3718837365%_)))
                          (let ((_%$%tl3720837275%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3720637268%_)))
                                (_%$%hd3720737272%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3720637268%_))))
                            (if (gx#identifier? _%$%hd3720737272%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g40462_|
                                     _%$%hd3720737272%_)
                                    (if (gx#stx-pair? _%$%tl3720837275%_)
                                        (let ((_%$%e3720937278%_
                                               (gx#syntax-e
                                                _%$%tl3720837275%_)))
                                          (let ((_%$%tl3721137285%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e3720937278%_)))
                                                (_%$%hd3721037282%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e3720937278%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl3721137285%_)
                                                (_%__kont4010740108%_
                                                 _%$%hd3721037282%_
                                                 _%$%hd3718737362%_
                                                 _%$%hd3715637479%_
                                                 _%$%hd3715337469%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g3707137217%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g3707137217%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g3707137217%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g3707137217%_)))))
                        (let () (declare (not safe)) (_%$%g3707137217%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g3707137217%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g3707137217%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g3707137217%_))))))
                              (let ()
                                (declare (not safe))
                                (_%$%g3707137217%_))))))
                   (_%__match4016940170%_
                    (lambda (_%$%e3710037641%_
                             _%$%hd3710137645%_
                             _%$%tl3710237648%_
                             _%$%e3710337651%_
                             _%$%hd3710437655%_
                             _%$%tl3710537658%_
                             _%$%e3710637661%_
                             _%$%hd3710737665%_
                             _%$%tl3710837668%_
                             _%__splice4009540096%_
                             _%$%target3710937671%_
                             _%$%tl3711137674%_)
                      (letrec ((_%$%loop3711237677%_
                                (lambda (_%$%hd3711037681%_
                                         _%$%pred3711637684%_)
                                  (if (gx#stx-pair? _%$%hd3711037681%_)
                                      (let ((_%$%e3711337686%_
                                             (gx#syntax-e _%$%hd3711037681%_)))
                                        (let ((_%$%lp-tl3711537693%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3711337686%_)))
                                              (_%$%lp-hd3711437690%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3711337686%_))))
                                          (_%$%loop3711237677%_
                                           _%$%lp-tl3711537693%_
                                           (cons _%$%lp-hd3711437690%_
                                                 _%$%pred3711637684%_))))
                                      (let ((_%$%pred3711737696%_
                                             (reverse _%$%pred3711637684%_)))
                                        (if (gx#stx-pair? _%$%tl3710537658%_)
                                            (let ((_%$%e3711837699%_
                                                   (gx#syntax-e
                                                    _%$%tl3710537658%_)))
                                              (let ((_%$%tl3712037706%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e3711837699%_)))
                                                    (_%$%hd3711937703%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e3711837699%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl3712037706%_)
                                                    (_%__kont4009340094%_
                                                     _%$%hd3711937703%_
                                                     _%$%pred3711737696%_
                                                     _%$%hd3710137645%_)
                                                    (_%__match4025940260%_
                                                     _%$%e3710037641%_
                                                     _%$%hd3710137645%_
                                                     _%$%tl3710237648%_
                                                     _%$%e3710337651%_
                                                     _%$%hd3710437655%_
                                                     _%$%tl3710537658%_
                                                     _%$%e3711837699%_
                                                     _%$%hd3711937703%_
                                                     _%$%tl3712037706%_))))
                                            (_%__match4023940240%_
                                             _%$%e3710037641%_
                                             _%$%hd3710137645%_
                                             _%$%tl3710237648%_
                                             _%$%e3710337651%_
                                             _%$%hd3710437655%_
                                             _%$%tl3710537658%_)))))))
                        (_%$%loop3711237677%_ _%$%target3710937671%_ '()))))
                   (_%__match4013940140%_
                    (lambda (_%$%e3707637749%_
                             _%$%hd3707737753%_
                             _%$%tl3707837756%_
                             _%$%e3707937759%_
                             _%$%hd3708037763%_
                             _%$%tl3708137766%_
                             _%$%e3708237769%_
                             _%$%hd3708337773%_
                             _%$%tl3708437776%_
                             _%__splice4009140092%_
                             _%$%target3708537779%_
                             _%$%tl3708737782%_)
                      (letrec ((_%$%loop3708837785%_
                                (lambda (_%$%hd3708637789%_
                                         _%$%pred3709237792%_)
                                  (if (gx#stx-pair? _%$%hd3708637789%_)
                                      (let ((_%$%e3708937794%_
                                             (gx#syntax-e _%$%hd3708637789%_)))
                                        (let ((_%$%lp-tl3709137801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3708937794%_)))
                                              (_%$%lp-hd3709037798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3708937794%_))))
                                          (_%$%loop3708837785%_
                                           _%$%lp-tl3709137801%_
                                           (cons _%$%lp-hd3709037798%_
                                                 _%$%pred3709237792%_))))
                                      (let ((_%$%pred3709337804%_
                                             (reverse _%$%pred3709237792%_)))
                                        (if (gx#stx-pair? _%$%tl3708137766%_)
                                            (let ((_%$%e3709437807%_
                                                   (gx#syntax-e
                                                    _%$%tl3708137766%_)))
                                              (let ((_%$%tl3709637814%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e3709437807%_)))
                                                    (_%$%hd3709537811%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e3709437807%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl3709637814%_)
                                                    (_%__kont4008940090%_
                                                     _%$%hd3709537811%_
                                                     _%$%pred3709337804%_
                                                     _%$%hd3707737753%_)
                                                    (_%__match4025940260%_
                                                     _%$%e3707637749%_
                                                     _%$%hd3707737753%_
                                                     _%$%tl3707837756%_
                                                     _%$%e3707937759%_
                                                     _%$%hd3708037763%_
                                                     _%$%tl3708137766%_
                                                     _%$%e3709437807%_
                                                     _%$%hd3709537811%_
                                                     _%$%tl3709637814%_))))
                                            (_%__match4023940240%_
                                             _%$%e3707637749%_
                                             _%$%hd3707737753%_
                                             _%$%tl3707837756%_
                                             _%$%e3707937759%_
                                             _%$%hd3708037763%_
                                             _%$%tl3708137766%_)))))))
                        (_%$%loop3708837785%_ _%$%target3708537779%_ '())))))
              (if (gx#stx-pair? _%__stx4008640087%_)
                  (let ((_%$%e3707637749%_ (gx#syntax-e _%__stx4008640087%_)))
                    (let ((_%$%tl3707837756%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e3707637749%_)))
                          (_%$%hd3707737753%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e3707637749%_))))
                      (if (gx#stx-pair? _%$%tl3707837756%_)
                          (let ((_%$%e3707937759%_
                                 (gx#syntax-e _%$%tl3707837756%_)))
                            (let ((_%$%tl3708137766%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e3707937759%_)))
                                  (_%$%hd3708037763%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e3707937759%_))))
                              (if (gx#stx-pair? _%$%hd3708037763%_)
                                  (let ((_%$%e3708237769%_
                                         (gx#syntax-e _%$%hd3708037763%_)))
                                    (let ((_%$%tl3708437776%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e3708237769%_)))
                                          (_%$%hd3708337773%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e3708237769%_))))
                                      (if (gx#identifier? _%$%hd3708337773%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40463_|
                                               _%$%hd3708337773%_)
                                              (if (gx#stx-pair/null?
                                                   _%$%tl3708437776%_)
                                                  (let ((_%__splice4009140092%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl3708437776%_
                                                          '0)))
                                                    (let ((_%$%tl3708737782%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4009140092%_
                                                              '1)))
                                                          (_%$%target3708537779%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4009140092%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl3708737782%_)
                                                          (_%__match4013940140%_
                                                           _%$%e3707637749%_
                                                           _%$%hd3707737753%_
                                                           _%$%tl3707837756%_
                                                           _%$%e3707937759%_
                                                           _%$%hd3708037763%_
                                                           _%$%tl3708137766%_
                                                           _%$%e3708237769%_
                                                           _%$%hd3708337773%_
                                                           _%$%tl3708437776%_
                                                           _%__splice4009140092%_
                                                           _%$%target3708537779%_
                                                           _%$%tl3708737782%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl3708137766%_)
                                                              (let ((_%$%e3714737527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl3708137766%_)))
                        (let ((_%$%tl3714937534%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3714737527%_)))
                              (_%$%hd3714837531%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3714737527%_))))
                          (if (gx#stx-null? _%$%tl3714937534%_)
                              (_%__kont4009940100%_
                               _%$%hd3714837531%_
                               _%$%hd3708037763%_)
                              (if (gx#identifier? _%$%hd3714837531%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40461_|
                                       _%$%hd3714837531%_)
                                      (if (gx#stx-pair? _%$%tl3714937534%_)
                                          (let ((_%$%e3717037427%_
                                                 (gx#syntax-e
                                                  _%$%tl3714937534%_)))
                                            (let ((_%$%tl3717237434%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e3717037427%_)))
                                                  (_%$%hd3717137431%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e3717037427%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl3717237434%_)
                                                  (_%__kont4010340104%_
                                                   _%$%hd3717137431%_
                                                   _%$%hd3708037763%_
                                                   _%$%hd3707737753%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g3707137217%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g3707137217%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g3707137217%_)))
                                  (if (gx#stx-datum? _%$%hd3714837531%_)
                                      (let ((_%$%e3718537354%_
                                             (gx#stx-e _%$%hd3714837531%_)))
                                        (if (equal? _%$%e3718537354%_ '::)
                                            (if (gx#stx-pair?
                                                 _%$%tl3714937534%_)
                                                (let ((_%$%e3718637358%_
                                                       (gx#syntax-e
                                                        _%$%tl3714937534%_)))
                                                  (let ((_%$%tl3718837365%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e3718637358%_)))
                                                        (_%$%hd3718737362%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e3718637358%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl3718837365%_)
                                                        (_%__kont4010540106%_
                                                         _%$%hd3718737362%_
                                                         _%$%hd3708037763%_
                                                         _%$%hd3707737753%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl3718837365%_)
                                                            (let ((_%$%e3720637268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl3718837365%_)))
                      (let ((_%$%tl3720837275%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e3720637268%_)))
                            (_%$%hd3720737272%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e3720637268%_))))
                        (if (gx#identifier? _%$%hd3720737272%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g40462_|
                                 _%$%hd3720737272%_)
                                (if (gx#stx-pair? _%$%tl3720837275%_)
                                    (let ((_%$%e3720937278%_
                                           (gx#syntax-e _%$%tl3720837275%_)))
                                      (let ((_%$%tl3721137285%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e3720937278%_)))
                                            (_%$%hd3721037282%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e3720937278%_))))
                                        (if (gx#stx-null? _%$%tl3721137285%_)
                                            (_%__kont4010740108%_
                                             _%$%hd3721037282%_
                                             _%$%hd3718737362%_
                                             _%$%hd3708037763%_
                                             _%$%hd3707737753%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g3707137217%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g3707137217%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g3707137217%_)))
                            (let ()
                              (declare (not safe))
                              (_%$%g3707137217%_)))))
                    (let () (declare (not safe)) (_%$%g3707137217%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g3707137217%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g3707137217%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g3707137217%_)))))))
                      (if (gx#stx-null? _%$%tl3708137766%_)
                          (_%__kont4010140102%_
                           _%$%hd3708037763%_
                           _%$%hd3707737753%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g3707137217%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%tl3708137766%_)
                                                      (let ((_%$%e3714737527%_
                                                             (gx#syntax-e
                                                              _%$%tl3708137766%_)))
                                                        (let ((_%$%tl3714937534%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e3714737527%_)))
                      (_%$%hd3714837531%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e3714737527%_))))
                  (if (gx#stx-null? _%$%tl3714937534%_)
                      (_%__kont4009940100%_
                       _%$%hd3714837531%_
                       _%$%hd3708037763%_)
                      (if (gx#identifier? _%$%hd3714837531%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40461_|
                               _%$%hd3714837531%_)
                              (if (gx#stx-pair? _%$%tl3714937534%_)
                                  (let ((_%$%e3717037427%_
                                         (gx#syntax-e _%$%tl3714937534%_)))
                                    (let ((_%$%tl3717237434%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e3717037427%_)))
                                          (_%$%hd3717137431%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e3717037427%_))))
                                      (if (gx#stx-null? _%$%tl3717237434%_)
                                          (_%__kont4010340104%_
                                           _%$%hd3717137431%_
                                           _%$%hd3708037763%_
                                           _%$%hd3707737753%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g3707137217%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g3707137217%_)))
                              (let ()
                                (declare (not safe))
                                (_%$%g3707137217%_)))
                          (if (gx#stx-datum? _%$%hd3714837531%_)
                              (let ((_%$%e3718537354%_
                                     (gx#stx-e _%$%hd3714837531%_)))
                                (if (equal? _%$%e3718537354%_ '::)
                                    (if (gx#stx-pair? _%$%tl3714937534%_)
                                        (let ((_%$%e3718637358%_
                                               (gx#syntax-e
                                                _%$%tl3714937534%_)))
                                          (let ((_%$%tl3718837365%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e3718637358%_)))
                                                (_%$%hd3718737362%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e3718637358%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl3718837365%_)
                                                (_%__kont4010540106%_
                                                 _%$%hd3718737362%_
                                                 _%$%hd3708037763%_
                                                 _%$%hd3707737753%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl3718837365%_)
                                                    (let ((_%$%e3720637268%_
                                                           (gx#syntax-e
                                                            _%$%tl3718837365%_)))
                                                      (let ((_%$%tl3720837275%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e3720637268%_)))
                    (_%$%hd3720737272%_
                     (let () (declare (not safe)) (##car _%$%e3720637268%_))))
                (if (gx#identifier? _%$%hd3720737272%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g40462_|
                         _%$%hd3720737272%_)
                        (if (gx#stx-pair? _%$%tl3720837275%_)
                            (let ((_%$%e3720937278%_
                                   (gx#syntax-e _%$%tl3720837275%_)))
                              (let ((_%$%tl3721137285%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e3720937278%_)))
                                    (_%$%hd3721037282%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e3720937278%_))))
                                (if (gx#stx-null? _%$%tl3721137285%_)
                                    (_%__kont4010740108%_
                                     _%$%hd3721037282%_
                                     _%$%hd3718737362%_
                                     _%$%hd3708037763%_
                                     _%$%hd3707737753%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g3707137217%_)))))
                            (let () (declare (not safe)) (_%$%g3707137217%_)))
                        (let () (declare (not safe)) (_%$%g3707137217%_)))
                    (let () (declare (not safe)) (_%$%g3707137217%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g3707137217%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g3707137217%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g3707137217%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g3707137217%_)))))))
              (if (gx#stx-null? _%$%tl3708137766%_)
                  (_%__kont4010140102%_ _%$%hd3708037763%_ _%$%hd3707737753%_)
                  (let () (declare (not safe)) (_%$%g3707137217%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g40464_|
                                                   _%$%hd3708337773%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl3708437776%_)
                                                      (let ((_%__splice4009540096%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl3708437776%_
                                                              '0)))
                                                        (let ((_%$%tl3711137674%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4009540096%_ '1)))
                      (_%$%target3710937671%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4009540096%_ '0))))
                  (if (gx#stx-null? _%$%tl3711137674%_)
                      (_%__match4016940170%_
                       _%$%e3707637749%_
                       _%$%hd3707737753%_
                       _%$%tl3707837756%_
                       _%$%e3707937759%_
                       _%$%hd3708037763%_
                       _%$%tl3708137766%_
                       _%$%e3708237769%_
                       _%$%hd3708337773%_
                       _%$%tl3708437776%_
                       _%__splice4009540096%_
                       _%$%target3710937671%_
                       _%$%tl3711137674%_)
                      (if (gx#stx-pair? _%$%tl3708137766%_)
                          (let ((_%$%e3714737527%_
                                 (gx#syntax-e _%$%tl3708137766%_)))
                            (let ((_%$%tl3714937534%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e3714737527%_)))
                                  (_%$%hd3714837531%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e3714737527%_))))
                              (if (gx#stx-null? _%$%tl3714937534%_)
                                  (_%__kont4009940100%_
                                   _%$%hd3714837531%_
                                   _%$%hd3708037763%_)
                                  (if (gx#identifier? _%$%hd3714837531%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40461_|
                                           _%$%hd3714837531%_)
                                          (if (gx#stx-pair? _%$%tl3714937534%_)
                                              (let ((_%$%e3717037427%_
                                                     (gx#syntax-e
                                                      _%$%tl3714937534%_)))
                                                (let ((_%$%tl3717237434%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e3717037427%_)))
                                                      (_%$%hd3717137431%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e3717037427%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl3717237434%_)
                                                      (_%__kont4010340104%_
                                                       _%$%hd3717137431%_
                                                       _%$%hd3708037763%_
                                                       _%$%hd3707737753%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g3707137217%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g3707137217%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g3707137217%_)))
                                      (if (gx#stx-datum? _%$%hd3714837531%_)
                                          (let ((_%$%e3718537354%_
                                                 (gx#stx-e
                                                  _%$%hd3714837531%_)))
                                            (if (equal? _%$%e3718537354%_ '::)
                                                (if (gx#stx-pair?
                                                     _%$%tl3714937534%_)
                                                    (let ((_%$%e3718637358%_
                                                           (gx#syntax-e
                                                            _%$%tl3714937534%_)))
                                                      (let ((_%$%tl3718837365%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e3718637358%_)))
                    (_%$%hd3718737362%_
                     (let () (declare (not safe)) (##car _%$%e3718637358%_))))
                (if (gx#stx-null? _%$%tl3718837365%_)
                    (_%__kont4010540106%_
                     _%$%hd3718737362%_
                     _%$%hd3708037763%_
                     _%$%hd3707737753%_)
                    (if (gx#stx-pair? _%$%tl3718837365%_)
                        (let ((_%$%e3720637268%_
                               (gx#syntax-e _%$%tl3718837365%_)))
                          (let ((_%$%tl3720837275%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3720637268%_)))
                                (_%$%hd3720737272%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3720637268%_))))
                            (if (gx#identifier? _%$%hd3720737272%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g40462_|
                                     _%$%hd3720737272%_)
                                    (if (gx#stx-pair? _%$%tl3720837275%_)
                                        (let ((_%$%e3720937278%_
                                               (gx#syntax-e
                                                _%$%tl3720837275%_)))
                                          (let ((_%$%tl3721137285%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e3720937278%_)))
                                                (_%$%hd3721037282%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e3720937278%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl3721137285%_)
                                                (_%__kont4010740108%_
                                                 _%$%hd3721037282%_
                                                 _%$%hd3718737362%_
                                                 _%$%hd3708037763%_
                                                 _%$%hd3707737753%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g3707137217%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g3707137217%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g3707137217%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g3707137217%_)))))
                        (let () (declare (not safe)) (_%$%g3707137217%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g3707137217%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g3707137217%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g3707137217%_)))))))
                          (if (gx#stx-null? _%$%tl3708137766%_)
                              (_%__kont4010140102%_
                               _%$%hd3708037763%_
                               _%$%hd3707737753%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g3707137217%_)))))))
              (if (gx#stx-pair? _%$%tl3708137766%_)
                  (let ((_%$%e3714737527%_ (gx#syntax-e _%$%tl3708137766%_)))
                    (let ((_%$%tl3714937534%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e3714737527%_)))
                          (_%$%hd3714837531%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e3714737527%_))))
                      (if (gx#stx-null? _%$%tl3714937534%_)
                          (_%__kont4009940100%_
                           _%$%hd3714837531%_
                           _%$%hd3708037763%_)
                          (if (gx#identifier? _%$%hd3714837531%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40461_|
                                   _%$%hd3714837531%_)
                                  (if (gx#stx-pair? _%$%tl3714937534%_)
                                      (let ((_%$%e3717037427%_
                                             (gx#syntax-e _%$%tl3714937534%_)))
                                        (let ((_%$%tl3717237434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3717037427%_)))
                                              (_%$%hd3717137431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3717037427%_))))
                                          (if (gx#stx-null? _%$%tl3717237434%_)
                                              (_%__kont4010340104%_
                                               _%$%hd3717137431%_
                                               _%$%hd3708037763%_
                                               _%$%hd3707737753%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g3707137217%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g3707137217%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g3707137217%_)))
                              (if (gx#stx-datum? _%$%hd3714837531%_)
                                  (let ((_%$%e3718537354%_
                                         (gx#stx-e _%$%hd3714837531%_)))
                                    (if (equal? _%$%e3718537354%_ '::)
                                        (if (gx#stx-pair? _%$%tl3714937534%_)
                                            (let ((_%$%e3718637358%_
                                                   (gx#syntax-e
                                                    _%$%tl3714937534%_)))
                                              (let ((_%$%tl3718837365%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e3718637358%_)))
                                                    (_%$%hd3718737362%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e3718637358%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl3718837365%_)
                                                    (_%__kont4010540106%_
                                                     _%$%hd3718737362%_
                                                     _%$%hd3708037763%_
                                                     _%$%hd3707737753%_)
                                                    (if (gx#stx-pair?
                                                         _%$%tl3718837365%_)
                                                        (let ((_%$%e3720637268%_
                                                               (gx#syntax-e
                                                                _%$%tl3718837365%_)))
                                                          (let ((_%$%tl3720837275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e3720637268%_)))
                        (_%$%hd3720737272%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e3720637268%_))))
                    (if (gx#identifier? _%$%hd3720737272%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40462_|
                             _%$%hd3720737272%_)
                            (if (gx#stx-pair? _%$%tl3720837275%_)
                                (let ((_%$%e3720937278%_
                                       (gx#syntax-e _%$%tl3720837275%_)))
                                  (let ((_%$%tl3721137285%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e3720937278%_)))
                                        (_%$%hd3721037282%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e3720937278%_))))
                                    (if (gx#stx-null? _%$%tl3721137285%_)
                                        (_%__kont4010740108%_
                                         _%$%hd3721037282%_
                                         _%$%hd3718737362%_
                                         _%$%hd3708037763%_
                                         _%$%hd3707737753%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g3707137217%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g3707137217%_)))
                            (let () (declare (not safe)) (_%$%g3707137217%_)))
                        (let () (declare (not safe)) (_%$%g3707137217%_)))))
                (let () (declare (not safe)) (_%$%g3707137217%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g3707137217%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g3707137217%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g3707137217%_)))))))
                  (if (gx#stx-null? _%$%tl3708137766%_)
                      (_%__kont4010140102%_
                       _%$%hd3708037763%_
                       _%$%hd3707737753%_)
                      (let () (declare (not safe)) (_%$%g3707137217%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40465_|
                                                       _%$%hd3708337773%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl3708437776%_)
                                                          (let ((_%$%e3713337591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl3708437776%_)))
                    (let ((_%$%tl3713537598%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e3713337591%_)))
                          (_%$%hd3713437595%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e3713337591%_))))
                      (if (gx#stx-null? _%$%tl3713537598%_)
                          (if (gx#stx-pair? _%$%tl3708137766%_)
                              (let ((_%$%e3713637601%_
                                     (gx#syntax-e _%$%tl3708137766%_)))
                                (let ((_%$%tl3713837608%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3713637601%_)))
                                      (_%$%hd3713737605%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3713637601%_))))
                                  (if (gx#stx-null? _%$%tl3713837608%_)
                                      (_%__kont4009740098%_
                                       _%$%hd3713737605%_
                                       _%$%hd3713437595%_
                                       _%$%hd3707737753%_)
                                      (if (gx#identifier? _%$%hd3713737605%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40461_|
                                               _%$%hd3713737605%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl3713837608%_)
                                                  (let ((_%$%e3717037427%_
                                                         (gx#syntax-e
                                                          _%$%tl3713837608%_)))
                                                    (let ((_%$%tl3717237434%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e3717037427%_)))
                                                          (_%$%hd3717137431%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e3717037427%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl3717237434%_)
                                                          (_%__kont4010340104%_
                                                           _%$%hd3717137431%_
                                                           _%$%hd3708037763%_
                                                           _%$%hd3707737753%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g3707137217%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g3707137217%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g3707137217%_)))
                                          (if (gx#stx-datum?
                                               _%$%hd3713737605%_)
                                              (let ((_%$%e3718537354%_
                                                     (gx#stx-e
                                                      _%$%hd3713737605%_)))
                                                (if (equal? _%$%e3718537354%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%$%tl3713837608%_)
                                                        (let ((_%$%e3718637358%_
                                                               (gx#syntax-e
                                                                _%$%tl3713837608%_)))
                                                          (let ((_%$%tl3718837365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e3718637358%_)))
                        (_%$%hd3718737362%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e3718637358%_))))
                    (if (gx#stx-null? _%$%tl3718837365%_)
                        (_%__kont4010540106%_
                         _%$%hd3718737362%_
                         _%$%hd3708037763%_
                         _%$%hd3707737753%_)
                        (if (gx#stx-pair? _%$%tl3718837365%_)
                            (let ((_%$%e3720637268%_
                                   (gx#syntax-e _%$%tl3718837365%_)))
                              (let ((_%$%tl3720837275%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e3720637268%_)))
                                    (_%$%hd3720737272%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e3720637268%_))))
                                (if (gx#identifier? _%$%hd3720737272%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40462_|
                                         _%$%hd3720737272%_)
                                        (if (gx#stx-pair? _%$%tl3720837275%_)
                                            (let ((_%$%e3720937278%_
                                                   (gx#syntax-e
                                                    _%$%tl3720837275%_)))
                                              (let ((_%$%tl3721137285%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e3720937278%_)))
                                                    (_%$%hd3721037282%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e3720937278%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl3721137285%_)
                                                    (_%__kont4010740108%_
                                                     _%$%hd3721037282%_
                                                     _%$%hd3718737362%_
                                                     _%$%hd3708037763%_
                                                     _%$%hd3707737753%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g3707137217%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g3707137217%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g3707137217%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g3707137217%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g3707137217%_))))))
                (let () (declare (not safe)) (_%$%g3707137217%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g3707137217%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g3707137217%_)))))))
                              (if (gx#stx-null? _%$%tl3708137766%_)
                                  (_%__kont4010140102%_
                                   _%$%hd3708037763%_
                                   _%$%hd3707737753%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g3707137217%_))))
                          (if (gx#stx-pair? _%$%tl3708137766%_)
                              (let ((_%$%e3714737527%_
                                     (gx#syntax-e _%$%tl3708137766%_)))
                                (let ((_%$%tl3714937534%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3714737527%_)))
                                      (_%$%hd3714837531%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3714737527%_))))
                                  (if (gx#stx-null? _%$%tl3714937534%_)
                                      (_%__kont4009940100%_
                                       _%$%hd3714837531%_
                                       _%$%hd3708037763%_)
                                      (if (gx#identifier? _%$%hd3714837531%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40461_|
                                               _%$%hd3714837531%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl3714937534%_)
                                                  (let ((_%$%e3717037427%_
                                                         (gx#syntax-e
                                                          _%$%tl3714937534%_)))
                                                    (let ((_%$%tl3717237434%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e3717037427%_)))
                                                          (_%$%hd3717137431%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e3717037427%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl3717237434%_)
                                                          (_%__kont4010340104%_
                                                           _%$%hd3717137431%_
                                                           _%$%hd3708037763%_
                                                           _%$%hd3707737753%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g3707137217%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g3707137217%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g3707137217%_)))
                                          (if (gx#stx-datum?
                                               _%$%hd3714837531%_)
                                              (let ((_%$%e3718537354%_
                                                     (gx#stx-e
                                                      _%$%hd3714837531%_)))
                                                (if (equal? _%$%e3718537354%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%$%tl3714937534%_)
                                                        (let ((_%$%e3718637358%_
                                                               (gx#syntax-e
                                                                _%$%tl3714937534%_)))
                                                          (let ((_%$%tl3718837365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e3718637358%_)))
                        (_%$%hd3718737362%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e3718637358%_))))
                    (if (gx#stx-null? _%$%tl3718837365%_)
                        (_%__kont4010540106%_
                         _%$%hd3718737362%_
                         _%$%hd3708037763%_
                         _%$%hd3707737753%_)
                        (if (gx#stx-pair? _%$%tl3718837365%_)
                            (let ((_%$%e3720637268%_
                                   (gx#syntax-e _%$%tl3718837365%_)))
                              (let ((_%$%tl3720837275%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e3720637268%_)))
                                    (_%$%hd3720737272%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e3720637268%_))))
                                (if (gx#identifier? _%$%hd3720737272%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40462_|
                                         _%$%hd3720737272%_)
                                        (if (gx#stx-pair? _%$%tl3720837275%_)
                                            (let ((_%$%e3720937278%_
                                                   (gx#syntax-e
                                                    _%$%tl3720837275%_)))
                                              (let ((_%$%tl3721137285%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e3720937278%_)))
                                                    (_%$%hd3721037282%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e3720937278%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl3721137285%_)
                                                    (_%__kont4010740108%_
                                                     _%$%hd3721037282%_
                                                     _%$%hd3718737362%_
                                                     _%$%hd3708037763%_
                                                     _%$%hd3707737753%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g3707137217%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g3707137217%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g3707137217%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g3707137217%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g3707137217%_))))))
                (let () (declare (not safe)) (_%$%g3707137217%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g3707137217%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g3707137217%_)))))))
                              (if (gx#stx-null? _%$%tl3708137766%_)
                                  (_%__kont4010140102%_
                                   _%$%hd3708037763%_
                                   _%$%hd3707737753%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g3707137217%_)))))))
                  (if (gx#stx-pair? _%$%tl3708137766%_)
                      (let ((_%$%e3714737527%_
                             (gx#syntax-e _%$%tl3708137766%_)))
                        (let ((_%$%tl3714937534%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3714737527%_)))
                              (_%$%hd3714837531%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3714737527%_))))
                          (if (gx#stx-null? _%$%tl3714937534%_)
                              (_%__kont4009940100%_
                               _%$%hd3714837531%_
                               _%$%hd3708037763%_)
                              (if (gx#identifier? _%$%hd3714837531%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40461_|
                                       _%$%hd3714837531%_)
                                      (if (gx#stx-pair? _%$%tl3714937534%_)
                                          (let ((_%$%e3717037427%_
                                                 (gx#syntax-e
                                                  _%$%tl3714937534%_)))
                                            (let ((_%$%tl3717237434%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e3717037427%_)))
                                                  (_%$%hd3717137431%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e3717037427%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl3717237434%_)
                                                  (_%__kont4010340104%_
                                                   _%$%hd3717137431%_
                                                   _%$%hd3708037763%_
                                                   _%$%hd3707737753%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g3707137217%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g3707137217%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g3707137217%_)))
                                  (if (gx#stx-datum? _%$%hd3714837531%_)
                                      (let ((_%$%e3718537354%_
                                             (gx#stx-e _%$%hd3714837531%_)))
                                        (if (equal? _%$%e3718537354%_ '::)
                                            (if (gx#stx-pair?
                                                 _%$%tl3714937534%_)
                                                (let ((_%$%e3718637358%_
                                                       (gx#syntax-e
                                                        _%$%tl3714937534%_)))
                                                  (let ((_%$%tl3718837365%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e3718637358%_)))
                                                        (_%$%hd3718737362%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e3718637358%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl3718837365%_)
                                                        (_%__kont4010540106%_
                                                         _%$%hd3718737362%_
                                                         _%$%hd3708037763%_
                                                         _%$%hd3707737753%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl3718837365%_)
                                                            (let ((_%$%e3720637268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl3718837365%_)))
                      (let ((_%$%tl3720837275%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e3720637268%_)))
                            (_%$%hd3720737272%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e3720637268%_))))
                        (if (gx#identifier? _%$%hd3720737272%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g40462_|
                                 _%$%hd3720737272%_)
                                (if (gx#stx-pair? _%$%tl3720837275%_)
                                    (let ((_%$%e3720937278%_
                                           (gx#syntax-e _%$%tl3720837275%_)))
                                      (let ((_%$%tl3721137285%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e3720937278%_)))
                                            (_%$%hd3721037282%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e3720937278%_))))
                                        (if (gx#stx-null? _%$%tl3721137285%_)
                                            (_%__kont4010740108%_
                                             _%$%hd3721037282%_
                                             _%$%hd3718737362%_
                                             _%$%hd3708037763%_
                                             _%$%hd3707737753%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g3707137217%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g3707137217%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g3707137217%_)))
                            (let ()
                              (declare (not safe))
                              (_%$%g3707137217%_)))))
                    (let () (declare (not safe)) (_%$%g3707137217%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g3707137217%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g3707137217%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g3707137217%_)))))))
                      (if (gx#stx-null? _%$%tl3708137766%_)
                          (_%__kont4010140102%_
                           _%$%hd3708037763%_
                           _%$%hd3707737753%_)
                          (let () (declare (not safe)) (_%$%g3707137217%_)))))
              (if (gx#stx-pair? _%$%tl3708137766%_)
                  (let ((_%$%e3714737527%_ (gx#syntax-e _%$%tl3708137766%_)))
                    (let ((_%$%tl3714937534%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e3714737527%_)))
                          (_%$%hd3714837531%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e3714737527%_))))
                      (if (gx#stx-null? _%$%tl3714937534%_)
                          (_%__kont4009940100%_
                           _%$%hd3714837531%_
                           _%$%hd3708037763%_)
                          (if (gx#identifier? _%$%hd3714837531%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40461_|
                                   _%$%hd3714837531%_)
                                  (if (gx#stx-pair? _%$%tl3714937534%_)
                                      (let ((_%$%e3717037427%_
                                             (gx#syntax-e _%$%tl3714937534%_)))
                                        (let ((_%$%tl3717237434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3717037427%_)))
                                              (_%$%hd3717137431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3717037427%_))))
                                          (if (gx#stx-null? _%$%tl3717237434%_)
                                              (_%__kont4010340104%_
                                               _%$%hd3717137431%_
                                               _%$%hd3708037763%_
                                               _%$%hd3707737753%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g3707137217%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g3707137217%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g3707137217%_)))
                              (if (gx#stx-datum? _%$%hd3714837531%_)
                                  (let ((_%$%e3718537354%_
                                         (gx#stx-e _%$%hd3714837531%_)))
                                    (if (equal? _%$%e3718537354%_ '::)
                                        (if (gx#stx-pair? _%$%tl3714937534%_)
                                            (let ((_%$%e3718637358%_
                                                   (gx#syntax-e
                                                    _%$%tl3714937534%_)))
                                              (let ((_%$%tl3718837365%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e3718637358%_)))
                                                    (_%$%hd3718737362%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e3718637358%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl3718837365%_)
                                                    (_%__kont4010540106%_
                                                     _%$%hd3718737362%_
                                                     _%$%hd3708037763%_
                                                     _%$%hd3707737753%_)
                                                    (if (gx#stx-pair?
                                                         _%$%tl3718837365%_)
                                                        (let ((_%$%e3720637268%_
                                                               (gx#syntax-e
                                                                _%$%tl3718837365%_)))
                                                          (let ((_%$%tl3720837275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e3720637268%_)))
                        (_%$%hd3720737272%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e3720637268%_))))
                    (if (gx#identifier? _%$%hd3720737272%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40462_|
                             _%$%hd3720737272%_)
                            (if (gx#stx-pair? _%$%tl3720837275%_)
                                (let ((_%$%e3720937278%_
                                       (gx#syntax-e _%$%tl3720837275%_)))
                                  (let ((_%$%tl3721137285%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e3720937278%_)))
                                        (_%$%hd3721037282%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e3720937278%_))))
                                    (if (gx#stx-null? _%$%tl3721137285%_)
                                        (_%__kont4010740108%_
                                         _%$%hd3721037282%_
                                         _%$%hd3718737362%_
                                         _%$%hd3708037763%_
                                         _%$%hd3707737753%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g3707137217%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g3707137217%_)))
                            (let () (declare (not safe)) (_%$%g3707137217%_)))
                        (let () (declare (not safe)) (_%$%g3707137217%_)))))
                (let () (declare (not safe)) (_%$%g3707137217%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g3707137217%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g3707137217%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g3707137217%_)))))))
                  (if (gx#stx-null? _%$%tl3708137766%_)
                      (_%__kont4010140102%_
                       _%$%hd3708037763%_
                       _%$%hd3707737753%_)
                      (let () (declare (not safe)) (_%$%g3707137217%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%tl3708137766%_)
                                              (let ((_%$%e3714737527%_
                                                     (gx#syntax-e
                                                      _%$%tl3708137766%_)))
                                                (let ((_%$%tl3714937534%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e3714737527%_)))
                                                      (_%$%hd3714837531%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e3714737527%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl3714937534%_)
                                                      (_%__kont4009940100%_
                                                       _%$%hd3714837531%_
                                                       _%$%hd3708037763%_)
                                                      (if (gx#identifier?
                                                           _%$%hd3714837531%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g40461_|
                                                               _%$%hd3714837531%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%tl3714937534%_)
                          (let ((_%$%e3717037427%_
                                 (gx#syntax-e _%$%tl3714937534%_)))
                            (let ((_%$%tl3717237434%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e3717037427%_)))
                                  (_%$%hd3717137431%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e3717037427%_))))
                              (if (gx#stx-null? _%$%tl3717237434%_)
                                  (_%__kont4010340104%_
                                   _%$%hd3717137431%_
                                   _%$%hd3708037763%_
                                   _%$%hd3707737753%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g3707137217%_)))))
                          (let () (declare (not safe)) (_%$%g3707137217%_)))
                      (let () (declare (not safe)) (_%$%g3707137217%_)))
                  (if (gx#stx-datum? _%$%hd3714837531%_)
                      (let ((_%$%e3718537354%_ (gx#stx-e _%$%hd3714837531%_)))
                        (if (equal? _%$%e3718537354%_ '::)
                            (if (gx#stx-pair? _%$%tl3714937534%_)
                                (let ((_%$%e3718637358%_
                                       (gx#syntax-e _%$%tl3714937534%_)))
                                  (let ((_%$%tl3718837365%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e3718637358%_)))
                                        (_%$%hd3718737362%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e3718637358%_))))
                                    (if (gx#stx-null? _%$%tl3718837365%_)
                                        (_%__kont4010540106%_
                                         _%$%hd3718737362%_
                                         _%$%hd3708037763%_
                                         _%$%hd3707737753%_)
                                        (if (gx#stx-pair? _%$%tl3718837365%_)
                                            (let ((_%$%e3720637268%_
                                                   (gx#syntax-e
                                                    _%$%tl3718837365%_)))
                                              (let ((_%$%tl3720837275%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e3720637268%_)))
                                                    (_%$%hd3720737272%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e3720637268%_))))
                                                (if (gx#identifier?
                                                     _%$%hd3720737272%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g40462_|
                                                         _%$%hd3720737272%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl3720837275%_)
                                                            (let ((_%$%e3720937278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl3720837275%_)))
                      (let ((_%$%tl3721137285%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e3720937278%_)))
                            (_%$%hd3721037282%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e3720937278%_))))
                        (if (gx#stx-null? _%$%tl3721137285%_)
                            (_%__kont4010740108%_
                             _%$%hd3721037282%_
                             _%$%hd3718737362%_
                             _%$%hd3708037763%_
                             _%$%hd3707737753%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g3707137217%_)))))
                    (let () (declare (not safe)) (_%$%g3707137217%_)))
                (let () (declare (not safe)) (_%$%g3707137217%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g3707137217%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g3707137217%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g3707137217%_)))
                            (let () (declare (not safe)) (_%$%g3707137217%_))))
                      (let () (declare (not safe)) (_%$%g3707137217%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%$%tl3708137766%_)
                                                  (_%__kont4010140102%_
                                                   _%$%hd3708037763%_
                                                   _%$%hd3707737753%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g3707137217%_)))))))
                                  (if (gx#stx-pair? _%$%tl3708137766%_)
                                      (let ((_%$%e3714737527%_
                                             (gx#syntax-e _%$%tl3708137766%_)))
                                        (let ((_%$%tl3714937534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3714737527%_)))
                                              (_%$%hd3714837531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3714737527%_))))
                                          (if (gx#stx-null? _%$%tl3714937534%_)
                                              (_%__kont4009940100%_
                                               _%$%hd3714837531%_
                                               _%$%hd3708037763%_)
                                              (if (gx#identifier?
                                                   _%$%hd3714837531%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40461_|
                                                       _%$%hd3714837531%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl3714937534%_)
                                                          (let ((_%$%e3717037427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl3714937534%_)))
                    (let ((_%$%tl3717237434%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e3717037427%_)))
                          (_%$%hd3717137431%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e3717037427%_))))
                      (if (gx#stx-null? _%$%tl3717237434%_)
                          (_%__kont4010340104%_
                           _%$%hd3717137431%_
                           _%$%hd3708037763%_
                           _%$%hd3707737753%_)
                          (let () (declare (not safe)) (_%$%g3707137217%_)))))
                  (let () (declare (not safe)) (_%$%g3707137217%_)))
              (let () (declare (not safe)) (_%$%g3707137217%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%$%hd3714837531%_)
                                                      (let ((_%$%e3718537354%_
                                                             (gx#stx-e
                                                              _%$%hd3714837531%_)))
                                                        (if (equal? _%$%e3718537354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%$%tl3714937534%_)
                        (let ((_%$%e3718637358%_
                               (gx#syntax-e _%$%tl3714937534%_)))
                          (let ((_%$%tl3718837365%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3718637358%_)))
                                (_%$%hd3718737362%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3718637358%_))))
                            (if (gx#stx-null? _%$%tl3718837365%_)
                                (_%__kont4010540106%_
                                 _%$%hd3718737362%_
                                 _%$%hd3708037763%_
                                 _%$%hd3707737753%_)
                                (if (gx#stx-pair? _%$%tl3718837365%_)
                                    (let ((_%$%e3720637268%_
                                           (gx#syntax-e _%$%tl3718837365%_)))
                                      (let ((_%$%tl3720837275%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e3720637268%_)))
                                            (_%$%hd3720737272%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e3720637268%_))))
                                        (if (gx#identifier? _%$%hd3720737272%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g40462_|
                                                 _%$%hd3720737272%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl3720837275%_)
                                                    (let ((_%$%e3720937278%_
                                                           (gx#syntax-e
                                                            _%$%tl3720837275%_)))
                                                      (let ((_%$%tl3721137285%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e3720937278%_)))
                    (_%$%hd3721037282%_
                     (let () (declare (not safe)) (##car _%$%e3720937278%_))))
                (if (gx#stx-null? _%$%tl3721137285%_)
                    (_%__kont4010740108%_
                     _%$%hd3721037282%_
                     _%$%hd3718737362%_
                     _%$%hd3708037763%_
                     _%$%hd3707737753%_)
                    (let () (declare (not safe)) (_%$%g3707137217%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g3707137217%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g3707137217%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g3707137217%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g3707137217%_))))))
                        (let () (declare (not safe)) (_%$%g3707137217%_)))
                    (let () (declare (not safe)) (_%$%g3707137217%_))))
              (let () (declare (not safe)) (_%$%g3707137217%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%$%tl3708137766%_)
                                          (_%__kont4010140102%_
                                           _%$%hd3708037763%_
                                           _%$%hd3707737753%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g3707137217%_)))))))
                          (let () (declare (not safe)) (_%$%g3707137217%_)))))
                  (let () (declare (not safe)) (_%$%g3707137217%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37856%_)
        (let* ((_%__stx4035440355%_ _%$stx37856%_)
               (_%$%g3786137895%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4035440355%_))))
          (let ((_%__kont4035740358%_
                 (lambda (_%$%g3786337999%_
                          _%$%g3786438001%_
                          _%$%g3786538002%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%$%g3786538002%_
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
                                       (cons _%$%g3786438001%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%$%g3786337999%_ '()))
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
                (_%__kont4035940360%_
                 (lambda (_%$%g3787837932%_
                          _%$%g3787937934%_
                          _%$%g3788037935%_)
                   (cons _%$%g3788037935%_
                         (cons _%$%g3787937934%_
                               (cons _%$%g3787837932%_
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
            (let ((_%__match4038740388%_
                   (lambda (_%$%e3786637959%_
                            _%$%hd3786737963%_
                            _%$%tl3786837966%_
                            _%$%e3786937969%_
                            _%$%hd3787037973%_
                            _%$%tl3787137976%_
                            _%$%e3787237979%_
                            _%$%hd3787337983%_
                            _%$%tl3787437986%_
                            _%$%e3787537989%_
                            _%$%hd3787637993%_
                            _%$%tl3787737996%_)
                     (let ((_%$%g3786337999%_ _%$%hd3787637993%_)
                           (_%$%g3786438001%_ _%$%hd3787337983%_)
                           (_%$%g3786538002%_ _%$%hd3787037973%_))
                       (if (gx#identifier? _%$%g3786538002%_)
                           (_%__kont4035740358%_
                            _%$%g3786337999%_
                            _%$%g3786438001%_
                            _%$%g3786538002%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g3786137895%_)))))))
              (if (gx#stx-pair? _%__stx4035440355%_)
                  (let ((_%$%e3786637959%_ (gx#syntax-e _%__stx4035440355%_)))
                    (let ((_%$%tl3786837966%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e3786637959%_)))
                          (_%$%hd3786737963%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e3786637959%_))))
                      (if (gx#stx-pair? _%$%tl3786837966%_)
                          (let ((_%$%e3786937969%_
                                 (gx#syntax-e _%$%tl3786837966%_)))
                            (let ((_%$%tl3787137976%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e3786937969%_)))
                                  (_%$%hd3787037973%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e3786937969%_))))
                              (if (gx#stx-pair? _%$%tl3787137976%_)
                                  (let ((_%$%e3787237979%_
                                         (gx#syntax-e _%$%tl3787137976%_)))
                                    (let ((_%$%tl3787437986%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e3787237979%_)))
                                          (_%$%hd3787337983%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e3787237979%_))))
                                      (if (gx#stx-pair? _%$%tl3787437986%_)
                                          (let ((_%$%e3787537989%_
                                                 (gx#syntax-e
                                                  _%$%tl3787437986%_)))
                                            (let ((_%$%tl3787737996%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e3787537989%_)))
                                                  (_%$%hd3787637993%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e3787537989%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl3787737996%_)
                                                  (_%__match4038740388%_
                                                   _%$%e3786637959%_
                                                   _%$%hd3786737963%_
                                                   _%$%tl3786837966%_
                                                   _%$%e3786937969%_
                                                   _%$%hd3787037973%_
                                                   _%$%tl3787137976%_
                                                   _%$%e3787237979%_
                                                   _%$%hd3787337983%_
                                                   _%$%tl3787437986%_
                                                   _%$%e3787537989%_
                                                   _%$%hd3787637993%_
                                                   _%$%tl3787737996%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g3786137895%_)))))
                                          (if (gx#stx-null? _%$%tl3787437986%_)
                                              (_%__kont4035940360%_
                                               _%$%hd3787337983%_
                                               _%$%hd3787037973%_
                                               _%$%hd3786737963%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g3786137895%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g3786137895%_)))))
                          (let () (declare (not safe)) (_%$%g3786137895%_)))))
                  (let () (declare (not safe)) (_%$%g3786137895%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx38024%_)
        (let* ((_%$%g3802838043%_
                (lambda (_%$%g3802938039%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3802938039%_)))
               (_%$%g3802738086%_
                (lambda (_%$%g3802938047%_)
                  (if (gx#stx-pair? _%$%g3802938047%_)
                      (let ((_%$%e3803238050%_
                             (gx#syntax-e _%$%g3802938047%_)))
                        (let ((_%$%hd3803338054%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3803238050%_)))
                              (_%$%tl3803438057%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3803238050%_))))
                          (if (gx#stx-pair? _%$%tl3803438057%_)
                              (let ((_%$%e3803538060%_
                                     (gx#syntax-e _%$%tl3803438057%_)))
                                (let ((_%$%hd3803638064%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3803538060%_)))
                                      (_%$%tl3803738067%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3803538060%_))))
                                  (cons (gx#datum->syntax
                                         '#f
                                         'defsyntax-for-match)
                                        (cons _%$%hd3803638064%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'syntax-rules)
                                                          _%$%tl3803738067%_)
                                                    '())))))
                              (_%$%g3802838043%_ _%$%g3802938047%_))))
                      (_%$%g3802838043%_ _%$%g3802938047%_)))))
          (_%$%g3802738086%_ _%$stx38024%_))))))
