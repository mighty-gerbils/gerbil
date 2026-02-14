(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g40388_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40389_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40390_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40391_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40392_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40393_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40394_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40395_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40396_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40397_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40398_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40399_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40400_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40401_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40402_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40415_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40423_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40424_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40425_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40430_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40431_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40432_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40433_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40434_|
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
      (lambda _%$args35709%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35709%_)))
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
      (lambda (_%stx35706%_)
        (if (gx#identifier? _%stx35706%_)
            (let ((__tmp40387 (gx#syntax-local-value _%stx35706%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp40387))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx34008%_ _%match-stx34010%_)
        (letrec ((_%parse134012%_
                  (lambda (_%hd34371%_)
                    (let* ((_%__stx3817538176%_ _%hd34371%_)
                           (_%g3439734539%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3817538176%_))))
                      (let ((_%__kont3817838179%_
                             (lambda (_%g3439935469%_ _%g3440035471%_)
                               (let* ((_%__stx3809538096%_ _%g3439935469%_)
                                      (_%g3548835521%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3809538096%_))))
                                 (let ((_%__kont3809838099%_
                                        (lambda ()
                                          (cons '?:
                                                (cons _%g3440035471%_ '()))))
                                       (_%__kont3810038101%_
                                        (lambda (_%g3549035662%_)
                                          (cons '?:
                                                (cons _%g3440035471%_
                                                      (cons (_%parse134012%_
                                                             _%g3549035662%_)
                                                            '())))))
                                       (_%__kont3810238103%_
                                        (lambda (_%g3549435632%_)
                                          (cons '?:
                                                (cons _%g3440035471%_
                                                      (cons '=>:
                                                            (cons (_%parse134012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g3549435632%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3810438105%_
                                        (lambda (_%g3550135583%_
                                                 _%g3550235585%_)
                                          (cons '?:
                                                (cons _%g3440035471%_
                                                      (cons '::
                                                            (cons _%g3550235585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse134012%_ _%g3550135583%_)
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3810638107%_
                                        (lambda ()
                                          (_%parse-error34019%_ _%hd34371%_))))
                                   (let ((_%g3548435673%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3809538096%_)
                                                (let ((_%e3549135652%_
                                                       (gx#syntax-e
                                                        _%__stx3809538096%_)))
                                                  (let ((_%tl3549335659%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3549135652%_)))
                                                        (_%hd3549235656%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3549135652%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3549335659%_)
                                                        (_%__kont3810038101%_
                                                         _%hd3549235656%_)
                                                        (if (gx#identifier?
                                                             _%hd3549235656%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g40388_|
                         _%hd3549235656%_)
                        (if (gx#stx-pair? _%tl3549335659%_)
                            (let ((_%e3549835622%_
                                   (gx#syntax-e _%tl3549335659%_)))
                              (let ((_%tl3550035629%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3549835622%_)))
                                    (_%hd3549935626%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3549835622%_))))
                                (if (gx#stx-null? _%tl3550035629%_)
                                    (_%__kont3810238103%_ _%hd3549935626%_)
                                    (_%__kont3810638107%_))))
                            (_%__kont3810638107%_))
                        (_%__kont3810638107%_))
                    (if (gx#stx-datum? _%hd3549235656%_)
                        (let ((_%e3550635549%_ (gx#stx-e _%hd3549235656%_)))
                          (if (equal? _%e3550635549%_ '::)
                              (if (gx#stx-pair? _%tl3549335659%_)
                                  (let ((_%e3550735553%_
                                         (gx#syntax-e _%tl3549335659%_)))
                                    (let ((_%tl3550935560%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3550735553%_)))
                                          (_%hd3550835557%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3550735553%_))))
                                      (if (gx#stx-pair? _%tl3550935560%_)
                                          (let ((_%e3551035563%_
                                                 (gx#syntax-e
                                                  _%tl3550935560%_)))
                                            (let ((_%tl3551235570%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3551035563%_)))
                                                  (_%hd3551135567%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3551035563%_))))
                                              (if (gx#identifier?
                                                   _%hd3551135567%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40389_|
                                                       _%hd3551135567%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3551235570%_)
                                                          (let ((_%e3551335573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3551235570%_)))
                    (let ((_%tl3551535580%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3551335573%_)))
                          (_%hd3551435577%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3551335573%_))))
                      (if (gx#stx-null? _%tl3551535580%_)
                          (_%__kont3810438105%_
                           _%hd3551435577%_
                           _%hd3550835557%_)
                          (_%__kont3810638107%_))))
                  (_%__kont3810638107%_))
              (_%__kont3810638107%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3810638107%_))))
                                          (_%__kont3810638107%_))))
                                  (_%__kont3810638107%_))
                              (_%__kont3810638107%_)))
                        (_%__kont3810638107%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3810638107%_)))))
                                     (if (gx#stx-null? _%__stx3809538096%_)
                                         (_%__kont3809838099%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3548435673%_))))))))
                            (_%__kont3818038181%_
                             (lambda (_%g3440735374%_)
                               (let* ((_%__stx3807738078%_ _%g3440735374%_)
                                      (_%g3538635397%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3807738078%_))))
                                 (let ((_%__kont3808038081%_
                                        (lambda (_%g3538835425%_)
                                          (_%parse134012%_ _%g3538835425%_)))
                                       (_%__kont3808238083%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse134012%_
                                                 _%g3440735374%_)))))
                                   (if (gx#stx-pair? _%__stx3807738078%_)
                                       (let ((_%e3538935415%_
                                              (gx#syntax-e
                                               _%__stx3807738078%_)))
                                         (let ((_%tl3539135422%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3538935415%_)))
                                               (_%hd3539035419%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3538935415%_))))
                                           (if (gx#stx-null? _%tl3539135422%_)
                                               (_%__kont3808038081%_
                                                _%hd3539035419%_)
                                               (_%__kont3808238083%_))))
                                       (_%__kont3808238083%_))))))
                            (_%__kont3818238183%_
                             (lambda (_%g3441135289%_)
                               (let* ((_%__stx3805938060%_ _%g3441135289%_)
                                      (_%g3530135312%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3805938060%_))))
                                 (let ((_%__kont3806238063%_
                                        (lambda (_%g3530335340%_)
                                          (_%parse134012%_ _%g3530335340%_)))
                                       (_%__kont3806438065%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse134012%_
                                                 _%g3441135289%_)))))
                                   (if (gx#stx-pair? _%__stx3805938060%_)
                                       (let ((_%e3530435330%_
                                              (gx#syntax-e
                                               _%__stx3805938060%_)))
                                         (let ((_%tl3530635337%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3530435330%_)))
                                               (_%hd3530535334%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3530435330%_))))
                                           (if (gx#stx-null? _%tl3530635337%_)
                                               (_%__kont3806238063%_
                                                _%hd3530535334%_)
                                               (_%__kont3806438065%_))))
                                       (_%__kont3806438065%_))))))
                            (_%__kont3818438185%_
                             (lambda (_%g3441535259%_)
                               (cons 'not:
                                     (cons (_%parse134012%_ _%g3441535259%_)
                                           '()))))
                            (_%__kont3818638187%_
                             (lambda (_%g3442235215%_ _%g3442335217%_)
                               (cons 'cons:
                                     (cons (_%parse134012%_ _%g3442335217%_)
                                           (cons (_%parse134012%_
                                                  _%g3442235215%_)
                                                 '())))))
                            (_%__kont3818838189%_
                             (lambda (_%g3443335159%_
                                      _%g3443435161%_
                                      _%g3443535162%_)
                               (if (gx#stx-null? _%g3443335159%_)
                                   (cons 'cons:
                                         (cons (_%parse134012%_
                                                _%g3443535162%_)
                                               (cons (_%parse134012%_
                                                      _%g3443435161%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse134012%_
                                                _%g3443535162%_)
                                               (cons (_%parse134012%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%g3443435161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g3443335159%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3819038191%_
                             (lambda (_%g3444535111%_)
                               (_%parse-list34014%_ _%g3444535111%_)))
                            (_%__kont3819238193%_
                             (lambda (_%g3444935081%_)
                               (cons 'box:
                                     (cons (_%parse134012%_ _%g3444935081%_)
                                           '()))))
                            (_%__kont3819438195%_
                             (lambda (_%g3445635044%_)
                               (cons 'box:
                                     (cons (_%parse134012%_ _%g3445635044%_)
                                           '()))))
                            (_%__kont3819638197%_
                             (lambda (_%g3445835020%_)
                               (_%parse134012%_ _%g3445835020%_)))
                            (_%__kont3819838199%_
                             (lambda (_%g3446534982%_)
                               (cons 'values:
                                     (cons (_%parse-vector34015%_
                                            _%g3446534982%_)
                                           '()))))
                            (_%__kont3820038201%_
                             (lambda (_%g3446934954%_)
                               (cons 'vector:
                                     (cons (_%parse-vector34015%_
                                            _%g3446934954%_)
                                           '()))))
                            (_%__kont3820238203%_
                             (lambda (_%g3447334915%_)
                               (cons 'vector:
                                     (cons (_%parse-vector34015%_
                                            (foldr (lambda (_%g3492834931%_
                                                            _%g3492934934%_)
                                                     (cons _%g3492834931%_
                                                           _%g3492934934%_))
                                                   '()
                                                   _%g3447334915%_))
                                           '()))))
                            (_%__kont3820638207%_
                             (lambda (_%g3448434863%_ _%g3448534865%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value
                                            _%g3448534865%_)
                                           (cons (_%parse-vector34015%_
                                                  _%g3448434863%_)
                                                 '())))))
                            (_%__kont3820838209%_
                             (lambda (_%g3448934833%_ _%g3449034835%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value
                                            _%g3449034835%_)
                                           (cons (_%parse-class-body34017%_
                                                  _%g3448934833%_)
                                                 '())))))
                            (_%__kont3821038211%_
                             (lambda (_%g3449434793%_ _%g3449534795%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%g3449534795%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%g3449434793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3821238213%_
                             (lambda (_%g3450234753%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g3450234753%_) '()))))
                            (_%__kont3821438215%_
                             (lambda (_%g3450934713%_)
                               (_%parse-qq34018%_ _%g3450934713%_)))
                            (_%__kont3821638217%_
                             (lambda (_%g3451634669%_ _%g3451734671%_)
                               (cons 'apply:
                                     (cons _%g3451734671%_
                                           (cons (_%parse134012%_
                                                  _%g3451634669%_)
                                                 '())))))
                            (_%__kont3821838219%_
                             (lambda (_%g3452734617%_)
                               (_%parse134012%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%g3452734617%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd34371%_)
                                  (let ((_%$e34628%_
                                         (gx#stx-source _%hd34371%_)))
                                    (if _%$e34628%_
                                        _%$e34628%_
                                        (gx#stx-source _%stx34008%_))))))))
                            (_%__kont3822038221%_
                             (lambda (_%g3453134591%_) (cons 'any: '())))
                            (_%__kont3822238223%_
                             (lambda (_%g3453234575%_)
                               (cons 'var: (cons _%g3453234575%_ '()))))
                            (_%__kont3822438225%_
                             (lambda (_%g3453334557%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g3453334557%_) '()))))
                            (_%__kont3822638227%_
                             (lambda () (_%parse-error34019%_ _%hd34371%_))))
                        (let* ((_%g3439534568%_
                                (lambda ()
                                  (let ((_%g3453334557%_ _%__stx3817538176%_))
                                    (if (gx#stx-datum? _%g3453334557%_)
                                        (_%__kont3822438225%_ _%g3453334557%_)
                                        (_%__kont3822638227%_)))))
                               (_%g3439434584%_
                                (lambda ()
                                  (let ((_%g3453234575%_ _%__stx3817538176%_))
                                    (if (and (gx#identifier? _%g3453234575%_)
                                             (not (gx#ellipsis?
                                                   _%g3453234575%_)))
                                        (_%__kont3822238223%_ _%g3453234575%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3439534568%_))))))
                               (_%g3439334600%_
                                (lambda ()
                                  (let ((_%g3453134591%_ _%__stx3817538176%_))
                                    (if (gx#underscore? _%g3453134591%_)
                                        (_%__kont3822038221%_ _%g3453134591%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3439434584%_))))))
                               (_%__match3850238503%_
                                (lambda (_%e3452834607%_
                                         _%hd3452934611%_
                                         _%tl3453034614%_)
                                  (let ((_%g3452734617%_ _%hd3452934611%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%g3452734617%_)
                                        (_%__kont3821838219%_ _%g3452734617%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3439334600%_))))))
                               (_%__match3843638437%_
                                (lambda (_%e3449634773%_
                                         _%hd3449734777%_
                                         _%tl3449834780%_
                                         _%e3449934783%_
                                         _%hd3450034787%_
                                         _%tl3450134790%_)
                                  (let ((_%g3449434793%_ _%hd3450034787%_)
                                        (_%g3449534795%_ _%hd3449734777%_))
                                    (if (and (gx#identifier? _%g3449534795%_)
                                             (or (gx#free-identifier=?
                                                  _%g3449534795%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%g3449534795%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%g3449534795%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3821038211%_
                                         _%g3449434793%_
                                         _%g3449534795%_)
                                        (if (gx#identifier? _%hd3449734777%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g40390_|
                                                 _%hd3449734777%_)
                                                (_%__kont3821238213%_
                                                 _%hd3450034787%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g40391_|
                                                     _%hd3449734777%_)
                                                    (_%__kont3821438215%_
                                                     _%hd3450034787%_)
                                                    (_%__match3850238503%_
                                                     _%e3449634773%_
                                                     _%hd3449734777%_
                                                     _%tl3449834780%_)))
                                            (_%__match3850238503%_
                                             _%e3449634773%_
                                             _%hd3449734777%_
                                             _%tl3449834780%_))))))
                               (_%__match3842238423%_
                                (lambda (_%e3449134823%_
                                         _%hd3449234827%_
                                         _%tl3449334830%_)
                                  (let ((_%g3448934833%_ _%tl3449334830%_)
                                        (_%g3449034835%_ _%hd3449234827%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%g3449034835%_))
                                        (_%__kont3820838209%_
                                         _%g3448934833%_
                                         _%g3449034835%_)
                                        (if (gx#stx-pair? _%tl3449334830%_)
                                            (let ((_%e3449934783%_
                                                   (gx#syntax-e
                                                    _%tl3449334830%_)))
                                              (let ((_%tl3450134790%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3449934783%_)))
                                                    (_%hd3450034787%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3449934783%_))))
                                                (if (gx#stx-null?
                                                     _%tl3450134790%_)
                                                    (_%__match3843638437%_
                                                     _%e3449134823%_
                                                     _%hd3449234827%_
                                                     _%tl3449334830%_
                                                     _%e3449934783%_
                                                     _%hd3450034787%_
                                                     _%tl3450134790%_)
                                                    (if (gx#identifier?
                                                         _%hd3449234827%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g40390_|
                                                             _%hd3449234827%_)
                                                            (_%__match3850238503%_
                                                             _%e3449134823%_
                                                             _%hd3449234827%_
                                                             _%tl3449334830%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g40391_|
                         _%hd3449234827%_)
                        (_%__match3850238503%_
                         _%e3449134823%_
                         _%hd3449234827%_
                         _%tl3449334830%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40392_|
                             _%hd3449234827%_)
                            (if (gx#stx-pair? _%tl3450134790%_)
                                (let ((_%e3452434659%_
                                       (gx#syntax-e _%tl3450134790%_)))
                                  (let ((_%tl3452634666%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3452434659%_)))
                                        (_%hd3452534663%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3452434659%_))))
                                    (if (gx#stx-null? _%tl3452634666%_)
                                        (_%__kont3821638217%_
                                         _%hd3452534663%_
                                         _%hd3450034787%_)
                                        (_%__match3850238503%_
                                         _%e3449134823%_
                                         _%hd3449234827%_
                                         _%tl3449334830%_))))
                                (_%__match3850238503%_
                                 _%e3449134823%_
                                 _%hd3449234827%_
                                 _%tl3449334830%_))
                            (_%__match3850238503%_
                             _%e3449134823%_
                             _%hd3449234827%_
                             _%tl3449334830%_))))
                (_%__match3850238503%_
                 _%e3449134823%_
                 _%hd3449234827%_
                 _%tl3449334830%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3850238503%_
                                             _%e3449134823%_
                                             _%hd3449234827%_
                                             _%tl3449334830%_))))))
                               (_%__match3841638417%_
                                (lambda (_%e3448634853%_
                                         _%hd3448734857%_
                                         _%tl3448834860%_)
                                  (let ((_%g3448434863%_ _%tl3448834860%_)
                                        (_%g3448534865%_ _%hd3448734857%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%g3448534865%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3820638207%_
                                         _%g3448434863%_
                                         _%g3448534865%_)
                                        (_%__match3842238423%_
                                         _%e3448634853%_
                                         _%hd3448734857%_
                                         _%tl3448834860%_)))))
                               (_%__match3841038411%_
                                (lambda (_%e3447434883%_
                                         _%__splice3820438205%_
                                         _%target3447534887%_
                                         _%tl3447734890%_)
                                  (letrec ((_%loop3447834893%_
                                            (lambda (_%hd3447634897%_
                                                     _%body3448234900%_)
                                              (if (gx#stx-pair?
                                                   _%hd3447634897%_)
                                                  (let ((_%e3447934902%_
                                                         (gx#syntax-e
                                                          _%hd3447634897%_)))
                                                    (let ((_%lp-tl3448134909%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3447934902%_)))
                                                          (_%lp-hd3448034906%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3447934902%_))))
                                                      (_%loop3447834893%_
                                                       _%lp-tl3448134909%_
                                                       (cons _%lp-hd3448034906%_
                                                             _%body3448234900%_))))
                                                  (let ((_%body3448334912%_
                                                         (reverse _%body3448234900%_)))
                                                    (_%__kont3820238203%_
                                                     _%body3448334912%_))))))
                                    (_%loop3447834893%_
                                     _%target3447534887%_
                                     '()))))
                               (_%g3438534937%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3817538176%_)
                                      (let ((_%e3447434883%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3817538176%_))))
                                        (if (gx#stx-pair/null? _%e3447434883%_)
                                            (let ((_%__splice3820438205%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e3447434883%_
                                                    '0)))
                                              (let ((_%tl3447734890%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3820438205%_
                                                        '1)))
                                                    (_%target3447534887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3820438205%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3447734890%_)
                                                    (_%__match3841038411%_
                                                     _%e3447434883%_
                                                     _%__splice3820438205%_
                                                     _%target3447534887%_
                                                     _%tl3447734890%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3439334600%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3439334600%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3439334600%_)))))
                               (_%g3438135054%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3817538176%_)
                                      (let ((_%e3445735040%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3817538176%_))))
                                        (_%__kont3819438195%_ _%e3445735040%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3438534937%_)))))
                               (_%__match3826438265%_
                                (lambda (_%e3441235279%_
                                         _%hd3441335283%_
                                         _%tl3441435286%_)
                                  (let ((_%g3441135289%_ _%tl3441435286%_))
                                    (if (gx#stx-list? _%g3441135289%_)
                                        (_%__kont3818238183%_ _%g3441135289%_)
                                        (_%__match3841638417%_
                                         _%e3441235279%_
                                         _%hd3441335283%_
                                         _%tl3441435286%_)))))
                               (_%__match3825438255%_
                                (lambda (_%e3440835364%_
                                         _%hd3440935368%_
                                         _%tl3441035371%_)
                                  (let ((_%g3440735374%_ _%tl3441035371%_))
                                    (if (gx#stx-list? _%g3440735374%_)
                                        (_%__kont3818038181%_ _%g3440735374%_)
                                        (_%__match3841638417%_
                                         _%e3440835364%_
                                         _%hd3440935368%_
                                         _%tl3441035371%_))))))
                          (if (gx#stx-pair? _%__stx3817538176%_)
                              (let ((_%e3440135449%_
                                     (gx#syntax-e _%__stx3817538176%_)))
                                (let ((_%tl3440335456%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3440135449%_)))
                                      (_%hd3440235453%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3440135449%_))))
                                  (if (gx#identifier? _%hd3440235453%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40393_|
                                           _%hd3440235453%_)
                                          (if (gx#stx-pair? _%tl3440335456%_)
                                              (let ((_%e3440435459%_
                                                     (gx#syntax-e
                                                      _%tl3440335456%_)))
                                                (let ((_%tl3440635466%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3440435459%_)))
                                                      (_%hd3440535463%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3440435459%_))))
                                                  (_%__kont3817838179%_
                                                   _%tl3440635466%_
                                                   _%hd3440535463%_)))
                                              (_%__match3841638417%_
                                               _%e3440135449%_
                                               _%hd3440235453%_
                                               _%tl3440335456%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40394_|
                                               _%hd3440235453%_)
                                              (_%__match3825438255%_
                                               _%e3440135449%_
                                               _%hd3440235453%_
                                               _%tl3440335456%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g40395_|
                                                   _%hd3440235453%_)
                                                  (_%__match3826438265%_
                                                   _%e3440135449%_
                                                   _%hd3440235453%_
                                                   _%tl3440335456%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40396_|
                                                       _%hd3440235453%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3440335456%_)
                                                          (let ((_%e3441935249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3440335456%_)))
                    (let ((_%tl3442135256%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3441935249%_)))
                          (_%hd3442035253%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3441935249%_))))
                      (if (gx#stx-null? _%tl3442135256%_)
                          (_%__kont3818438185%_ _%hd3442035253%_)
                          (_%__match3841638417%_
                           _%e3440135449%_
                           _%hd3440235453%_
                           _%tl3440335456%_))))
                  (_%__match3841638417%_
                   _%e3440135449%_
                   _%hd3440235453%_
                   _%tl3440335456%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g40397_|
                   _%hd3440235453%_)
                  (if (gx#stx-pair? _%tl3440335456%_)
                      (let ((_%e3442735195%_ (gx#syntax-e _%tl3440335456%_)))
                        (let ((_%tl3442935202%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3442735195%_)))
                              (_%hd3442835199%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3442735195%_))))
                          (if (gx#stx-pair? _%tl3442935202%_)
                              (let ((_%e3443035205%_
                                     (gx#syntax-e _%tl3442935202%_)))
                                (let ((_%tl3443235212%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3443035205%_)))
                                      (_%hd3443135209%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3443035205%_))))
                                  (if (gx#stx-null? _%tl3443235212%_)
                                      (_%__kont3818638187%_
                                       _%hd3443135209%_
                                       _%hd3442835199%_)
                                      (_%__match3841638417%_
                                       _%e3440135449%_
                                       _%hd3440235453%_
                                       _%tl3440335456%_))))
                              (_%__match3841638417%_
                               _%e3440135449%_
                               _%hd3440235453%_
                               _%tl3440335456%_))))
                      (_%__match3841638417%_
                       _%e3440135449%_
                       _%hd3440235453%_
                       _%tl3440335456%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g40398_|
                       _%hd3440235453%_)
                      (if (gx#stx-pair? _%tl3440335456%_)
                          (let ((_%e3443935139%_
                                 (gx#syntax-e _%tl3440335456%_)))
                            (let ((_%tl3444135146%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3443935139%_)))
                                  (_%hd3444035143%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3443935139%_))))
                              (if (gx#stx-pair? _%tl3444135146%_)
                                  (let ((_%e3444235149%_
                                         (gx#syntax-e _%tl3444135146%_)))
                                    (let ((_%tl3444435156%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3444235149%_)))
                                          (_%hd3444335153%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3444235149%_))))
                                      (_%__kont3818838189%_
                                       _%tl3444435156%_
                                       _%hd3444335153%_
                                       _%hd3444035143%_)))
                                  (_%__match3841638417%_
                                   _%e3440135449%_
                                   _%hd3440235453%_
                                   _%tl3440335456%_))))
                          (_%__match3841638417%_
                           _%e3440135449%_
                           _%hd3440235453%_
                           _%tl3440335456%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g40399_|
                           _%hd3440235453%_)
                          (_%__kont3819038191%_ _%tl3440335456%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40400_|
                               _%hd3440235453%_)
                              (if (gx#stx-pair? _%tl3440335456%_)
                                  (let ((_%e3445335071%_
                                         (gx#syntax-e _%tl3440335456%_)))
                                    (let ((_%tl3445535078%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3445335071%_)))
                                          (_%hd3445435075%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3445335071%_))))
                                      (if (gx#stx-null? _%tl3445535078%_)
                                          (_%__kont3819238193%_
                                           _%hd3445435075%_)
                                          (_%__match3841638417%_
                                           _%e3440135449%_
                                           _%hd3440235453%_
                                           _%tl3440335456%_))))
                                  (_%__match3841638417%_
                                   _%e3440135449%_
                                   _%hd3440235453%_
                                   _%tl3440335456%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40401_|
                                   _%hd3440235453%_)
                                  (if (gx#stx-pair? _%tl3440335456%_)
                                      (let ((_%e3446235010%_
                                             (gx#syntax-e _%tl3440335456%_)))
                                        (let ((_%tl3446435017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3446235010%_)))
                                              (_%hd3446335014%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3446235010%_))))
                                          (if (gx#stx-null? _%tl3446435017%_)
                                              (_%__kont3819638197%_
                                               _%hd3446335014%_)
                                              (_%__kont3819838199%_
                                               _%tl3440335456%_))))
                                      (_%__kont3819838199%_ _%tl3440335456%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40402_|
                                       _%hd3440235453%_)
                                      (_%__kont3820038201%_ _%tl3440335456%_)
                                      (_%__match3841638417%_
                                       _%e3440135449%_
                                       _%hd3440235453%_
                                       _%tl3440335456%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3841638417%_
                                       _%e3440135449%_
                                       _%hd3440235453%_
                                       _%tl3440335456%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3438135054%_))))))))
                 (_%parse-list34014%_
                  (lambda (_%body34194%_)
                    (let* ((_%__stx3850538506%_ _%body34194%_)
                           (_%g3420034229%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3850538506%_))))
                      (let ((_%__kont3850838509%_
                             (lambda (_%g3420234353%_)
                               (_%parse134012%_ _%g3420234353%_)))
                            (_%__kont3851038511%_
                             (lambda (_%g3421034305%_
                                      _%g3421134307%_
                                      _%g3421234308%_)
                               (cons 'splice:
                                     (cons (_%parse134012%_ _%g3421234308%_)
                                           (cons (_%parse-list34014%_
                                                  _%g3421034305%_)
                                                 '())))))
                            (_%__kont3851238513%_
                             (lambda (_%g3421934263%_ _%g3422034265%_)
                               (cons 'cons:
                                     (cons (_%parse134012%_ _%g3422034265%_)
                                           (cons (_%parse-list34014%_
                                                  _%g3421934263%_)
                                                 '())))))
                            (_%__kont3851438515%_
                             (lambda ()
                               (if (gx#stx-null? _%body34194%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body34194%_)
                                       (_%parse-error34019%_ _%body34194%_)
                                       (_%parse134012%_ _%body34194%_))))))
                        (let* ((_%__match3855438555%_
                                (lambda (_%e3422134253%_
                                         _%hd3422234257%_
                                         _%tl3422334260%_)
                                  (let ((_%g3421934263%_ _%tl3422334260%_)
                                        (_%g3422034265%_ _%hd3422234257%_))
                                    (if (gx#ellipsis? _%g3422034265%_)
                                        (_%__kont3851438515%_)
                                        (_%__kont3851238513%_
                                         _%g3421934263%_
                                         _%g3422034265%_)))))
                               (_%__match3854838549%_
                                (lambda (_%e3421334285%_
                                         _%hd3421434289%_
                                         _%tl3421534292%_
                                         _%e3421634295%_
                                         _%hd3421734299%_
                                         _%tl3421834302%_)
                                  (let ((_%g3421034305%_ _%tl3421834302%_)
                                        (_%g3421134307%_ _%hd3421734299%_)
                                        (_%g3421234308%_ _%hd3421434289%_))
                                    (if (gx#ellipsis? _%g3421134307%_)
                                        (_%__kont3851038511%_
                                         _%g3421034305%_
                                         _%g3421134307%_
                                         _%g3421234308%_)
                                        (_%__match3855438555%_
                                         _%e3421334285%_
                                         _%hd3421434289%_
                                         _%tl3421534292%_))))))
                          (if (gx#stx-pair? _%__stx3850538506%_)
                              (let ((_%e3420334329%_
                                     (gx#syntax-e _%__stx3850538506%_)))
                                (let ((_%tl3420534336%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3420334329%_)))
                                      (_%hd3420434333%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3420334329%_))))
                                  (if (gx#stx-datum? _%hd3420434333%_)
                                      (let ((_%e3420634339%_
                                             (gx#stx-e _%hd3420434333%_)))
                                        (if (equal? _%e3420634339%_ '::)
                                            (if (gx#stx-pair? _%tl3420534336%_)
                                                (let ((_%e3420734343%_
                                                       (gx#syntax-e
                                                        _%tl3420534336%_)))
                                                  (let ((_%tl3420934350%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3420734343%_)))
                                                        (_%hd3420834347%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3420734343%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3420934350%_)
                                                        (_%__kont3850838509%_
                                                         _%hd3420834347%_)
                                                        (_%__match3854838549%_
                                                         _%e3420334329%_
                                                         _%hd3420434333%_
                                                         _%tl3420534336%_
                                                         _%e3420734343%_
                                                         _%hd3420834347%_
                                                         _%tl3420934350%_))))
                                                (_%__match3855438555%_
                                                 _%e3420334329%_
                                                 _%hd3420434333%_
                                                 _%tl3420534336%_))
                                            (if (gx#stx-pair? _%tl3420534336%_)
                                                (let ((_%e3421634295%_
                                                       (gx#syntax-e
                                                        _%tl3420534336%_)))
                                                  (let ((_%tl3421834302%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3421634295%_)))
                                                        (_%hd3421734299%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3421634295%_))))
                                                    (_%__match3854838549%_
                                                     _%e3420334329%_
                                                     _%hd3420434333%_
                                                     _%tl3420534336%_
                                                     _%e3421634295%_
                                                     _%hd3421734299%_
                                                     _%tl3421834302%_)))
                                                (_%__match3855438555%_
                                                 _%e3420334329%_
                                                 _%hd3420434333%_
                                                 _%tl3420534336%_))))
                                      (if (gx#stx-pair? _%tl3420534336%_)
                                          (let ((_%e3421634295%_
                                                 (gx#syntax-e
                                                  _%tl3420534336%_)))
                                            (let ((_%tl3421834302%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3421634295%_)))
                                                  (_%hd3421734299%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3421634295%_))))
                                              (_%__match3854838549%_
                                               _%e3420334329%_
                                               _%hd3420434333%_
                                               _%tl3420534336%_
                                               _%e3421634295%_
                                               _%hd3421734299%_
                                               _%tl3421834302%_)))
                                          (_%__match3855438555%_
                                           _%e3420334329%_
                                           _%hd3420434333%_
                                           _%tl3420534336%_)))))
                              (_%__kont3851438515%_)))))))
                 (_%parse-vector34015%_
                  (lambda (_%body34191%_)
                    (if (_%simple-vector?34016%_ _%body34191%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse134012%_ _%body34191%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list34014%_ _%body34191%_)
                                    '())))))
                 (_%simple-vector?34016%_
                  (lambda (_%body34128%_)
                    (let* ((_%__stx3855738558%_ _%body34128%_)
                           (_%g3413234144%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3855738558%_))))
                      (let ((_%__kont3856038561%_
                             (lambda (_%g3413434172%_ _%g3413534174%_)
                               (if (gx#ellipsis? _%g3413534174%_)
                                   '#f
                                   (_%simple-vector?34016%_ _%g3413434172%_))))
                            (_%__kont3856238563%_
                             (lambda () (gx#stx-null? _%body34128%_))))
                        (if (gx#stx-pair? _%__stx3855738558%_)
                            (let ((_%e3413634162%_
                                   (gx#syntax-e _%__stx3855738558%_)))
                              (let ((_%tl3413834169%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3413634162%_)))
                                    (_%hd3413734166%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3413634162%_))))
                                (_%__kont3856038561%_
                                 _%tl3413834169%_
                                 _%hd3413734166%_)))
                            (_%__kont3856238563%_))))))
                 (_%parse-class-body34017%_
                  (lambda (_%body34037%_)
                    (let _%recur34040%_ ((_%rest34043%_ _%body34037%_))
                      (let* ((_%__stx3857338574%_ _%rest34043%_)
                             (_%g3404734063%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3857338574%_))))
                        (let ((_%__kont3857638577%_
                               (lambda (_%g3404934101%_
                                        _%g3405034103%_
                                        _%g3405134104%_)
                                 (cons _%g3405134104%_
                                       (cons (_%parse134012%_ _%g3405034103%_)
                                             (_%recur34040%_
                                              _%g3404934101%_)))))
                              (_%__kont3857838579%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest34043%_)
                                     '()
                                     (_%parse-error34019%_ _%rest34043%_)))))
                          (let ((_%__match3859238593%_
                                 (lambda (_%e3405234081%_
                                          _%hd3405334085%_
                                          _%tl3405434088%_
                                          _%e3405534091%_
                                          _%hd3405634095%_
                                          _%tl3405734098%_)
                                   (let ((_%g3404934101%_ _%tl3405734098%_)
                                         (_%g3405034103%_ _%hd3405634095%_)
                                         (_%g3405134104%_ _%hd3405334085%_))
                                     (if (gx#stx-keyword? _%g3405134104%_)
                                         (_%__kont3857638577%_
                                          _%g3404934101%_
                                          _%g3405034103%_
                                          _%g3405134104%_)
                                         (_%__kont3857838579%_))))))
                            (if (gx#stx-pair? _%__stx3857338574%_)
                                (let ((_%e3405234081%_
                                       (gx#syntax-e _%__stx3857338574%_)))
                                  (let ((_%tl3405434088%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3405234081%_)))
                                        (_%hd3405334085%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3405234081%_))))
                                    (if (gx#stx-pair? _%tl3405434088%_)
                                        (let ((_%e3405534091%_
                                               (gx#syntax-e _%tl3405434088%_)))
                                          (let ((_%tl3405734098%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3405534091%_)))
                                                (_%hd3405634095%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3405534091%_))))
                                            (_%__match3859238593%_
                                             _%e3405234081%_
                                             _%hd3405334085%_
                                             _%tl3405434088%_
                                             _%e3405534091%_
                                             _%hd3405634095%_
                                             _%tl3405734098%_)))
                                        (_%__kont3857838579%_))))
                                (_%__kont3857838579%_))))))))
                 (_%parse-qq34018%_
                  (lambda (_%hd34024%_)
                    (let ((_%g3402634033%_
                           (lambda (_%g3402734029%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3402734029%_))))
                      (_%g3402634033%_ _%hd34024%_))))
                 (_%parse-error34019%_
                  (lambda (_%hd34021%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx34010%_
                               (cons _%match-stx34010%_
                                     (cons _%stx34008%_
                                           (cons _%hd34021%_ '())))
                               (cons _%stx34008%_ (cons _%hd34021%_ '())))))))
          (_%parse134012%_ _%stx34008%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35696%_)
        (let ((_%match-stx35699%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35696%_
           _%match-stx35699%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g40403_
        (let ((_g40404_ (let () (declare (not safe)) (##length _g40403_))))
          (cond ((let () (declare (not safe)) (##fx= _g40404_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g40403_))
                ((let () (declare (not safe)) (##fx= _g40404_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g40403_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g40403_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx33993%_)
        (let ((__tmp40405
               (lambda (_%E33996%_)
                 (with-exception-handler
                  (let ((_%E!33999%_ (current-exception-handler)))
                    (lambda (_%e34002%_)
                      (if (syntax-error? _%e34002%_)
                          (_%E33996%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!33999%_ _%e34002%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx33993%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp40405))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32728%_)
        (letrec ((_%loop32731%_
                  (lambda (_%ptree33018%_ _%vars33020%_ _%K33021%_)
                    (let* ((_%__stx3869138692%_ _%ptree33018%_)
                           (_%g3303433144%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3869138692%_))))
                      (let ((_%__kont3869438695%_
                             (lambda (_%g3303633774%_)
                               (let* ((_%__stx3861138612%_ _%g3303633774%_)
                                      (_%g3379133825%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3861138612%_))))
                                 (let ((_%__kont3861438615%_
                                        (lambda (_%g3379333974%_)
                                          (_%loop32731%_
                                           _%g3379333974%_
                                           _%vars33020%_
                                           _%K33021%_)))
                                       (_%__kont3861638617%_
                                        (lambda (_%g3379733943%_)
                                          (_%loop32731%_
                                           _%g3379733943%_
                                           _%vars33020%_
                                           _%K33021%_)))
                                       (_%__kont3861838619%_
                                        (lambda (_%g3380533891%_)
                                          (_%loop32731%_
                                           _%g3380533891%_
                                           _%vars33020%_
                                           _%K33021%_)))
                                       (_%__kont3862038621%_
                                        (lambda ()
                                          (_%K33021%_ _%vars33020%_))))
                                   (if (gx#stx-pair? _%__stx3861138612%_)
                                       (let ((_%e3379433964%_
                                              (gx#syntax-e
                                               _%__stx3861138612%_)))
                                         (let ((_%tl3379633971%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3379433964%_)))
                                               (_%hd3379533968%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3379433964%_))))
                                           (if (gx#stx-null? _%tl3379633971%_)
                                               (_%__kont3861438615%_
                                                _%hd3379533968%_)
                                               (if (gx#stx-datum?
                                                    _%hd3379533968%_)
                                                   (let ((_%e3380133929%_
                                                          (gx#stx-e
                                                           _%hd3379533968%_)))
                                                     (if (equal? _%e3380133929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3379633971%_)
                     (let ((_%e3380233933%_ (gx#syntax-e _%tl3379633971%_)))
                       (let ((_%tl3380433940%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3380233933%_)))
                             (_%hd3380333937%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3380233933%_))))
                         (if (gx#stx-null? _%tl3380433940%_)
                             (_%__kont3861638617%_ _%hd3380333937%_)
                             (_%__kont3862038621%_))))
                     (_%__kont3862038621%_))
                 (if (equal? _%e3380133929%_ '::)
                     (if (gx#stx-pair? _%tl3379633971%_)
                         (let ((_%e3381033857%_
                                (gx#syntax-e _%tl3379633971%_)))
                           (let ((_%tl3381233864%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3381033857%_)))
                                 (_%hd3381133861%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3381033857%_))))
                             (if (gx#stx-pair? _%tl3381233864%_)
                                 (let ((_%e3381333867%_
                                        (gx#syntax-e _%tl3381233864%_)))
                                   (let ((_%tl3381533874%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3381333867%_)))
                                         (_%hd3381433871%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3381333867%_))))
                                     (if (gx#stx-datum? _%hd3381433871%_)
                                         (let ((_%e3381633877%_
                                                (gx#stx-e _%hd3381433871%_)))
                                           (if (equal? _%e3381633877%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3381533874%_)
                                                   (let ((_%e3381733881%_
                                                          (gx#syntax-e
                                                           _%tl3381533874%_)))
                                                     (let ((_%tl3381933888%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3381733881%_)))
                                                           (_%hd3381833885%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3381733881%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3381933888%_)
                                                           (_%__kont3861838619%_
                                                            _%hd3381833885%_)
                                                           (_%__kont3862038621%_))))
                                                   (_%__kont3862038621%_))
                                               (_%__kont3862038621%_)))
                                         (_%__kont3862038621%_))))
                                 (_%__kont3862038621%_))))
                         (_%__kont3862038621%_))
                     (_%__kont3862038621%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3862038621%_)))))
                                       (_%__kont3862038621%_))))))
                            (_%__kont3869638697%_
                             (lambda (_%g3304433661%_ _%g3304533663%_)
                               (let* ((_%__stx3859538596%_ _%g3304433661%_)
                                      (_%g3367933691%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3859538596%_))))
                                 (let ((_%__kont3859838599%_
                                        (lambda (_%g3368133719%_
                                                 _%g3368233721%_)
                                          (_%loop32731%_
                                           _%g3368233721%_
                                           _%vars33020%_
                                           (lambda (_%g3373333735%_)
                                             (_%loop32731%_
                                              (cons _%g3304533663%_
                                                    _%g3368133719%_)
                                              _%g3373333735%_
                                              _%K33021%_)))))
                                       (_%__kont3860038601%_
                                        (lambda ()
                                          (_%K33021%_ _%vars33020%_))))
                                   (if (gx#stx-pair? _%__stx3859538596%_)
                                       (let ((_%e3368333709%_
                                              (gx#syntax-e
                                               _%__stx3859538596%_)))
                                         (let ((_%tl3368533716%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3368333709%_)))
                                               (_%hd3368433713%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3368333709%_))))
                                           (_%__kont3859838599%_
                                            _%tl3368533716%_
                                            _%hd3368433713%_)))
                                       (_%__kont3860038601%_))))))
                            (_%__kont3869838699%_
                             (lambda (_%g3304933630%_)
                               (_%loop32731%_
                                _%g3304933630%_
                                _%vars33020%_
                                _%K33021%_)))
                            (_%__kont3870038701%_
                             (lambda (_%g3305733576%_ _%g3305833578%_)
                               (_%loop32731%_
                                _%g3305833578%_
                                _%vars33020%_
                                (lambda (_%g3359333595%_)
                                  (_%loop32731%_
                                   _%g3305733576%_
                                   _%g3359333595%_
                                   _%K33021%_)))))
                            (_%__kont3870238703%_
                             (lambda (_%g3306933512%_ _%g3307033514%_)
                               (_%loop32731%_
                                _%g3307033514%_
                                _%vars33020%_
                                (lambda (_%g3352933531%_)
                                  (_%loop32731%_
                                   _%g3306933512%_
                                   _%g3352933531%_
                                   _%K33021%_)))))
                            (_%__kont3870438705%_
                             (lambda (_%g3308133457%_)
                               (_%loop32731%_
                                _%g3308133457%_
                                _%vars33020%_
                                _%K33021%_)))
                            (_%__kont3870638707%_
                             (lambda (_%g3308933407%_ _%g3309033409%_)
                               (_%loop-vector32733%_
                                _%g3308933407%_
                                _%vars33020%_
                                _%K33021%_)))
                            (_%__kont3870838709%_
                             (lambda (_%g3309733364%_)
                               (_%loop-vector32733%_
                                _%g3309733364%_
                                _%vars33020%_
                                _%K33021%_)))
                            (_%__kont3871038711%_
                             (lambda (_%g3310833307%_)
                               (_%loop-class-list32735%_
                                _%g3310833307%_
                                _%vars33020%_
                                _%K33021%_)))
                            (_%__kont3871238713%_
                             (lambda (_%g3311933248%_ _%g3312033250%_)
                               (_%loop32731%_
                                _%g3311933248%_
                                _%vars33020%_
                                _%K33021%_)))
                            (_%__kont3871438715%_
                             (lambda (_%g3313133186%_)
                               (if (find (lambda (_%g3320133203%_)
                                           (gx#bound-identifier=?
                                            _%g3320133203%_
                                            _%g3313133186%_))
                                         _%vars33020%_)
                                   (_%K33021%_ _%vars33020%_)
                                   (_%K33021%_
                                    (cons _%g3313133186%_ _%vars33020%_)))))
                            (_%__kont3871638717%_
                             (lambda () (_%K33021%_ _%vars33020%_))))
                        (let* ((_%__match3884838849%_
                                (lambda (_%e3309133387%_
                                         _%hd3309233391%_
                                         _%tl3309333394%_
                                         _%e3309433397%_
                                         _%hd3309533401%_
                                         _%tl3309633404%_)
                                  (let ((_%g3308933407%_ _%hd3309533401%_)
                                        (_%g3309033409%_ _%hd3309233391%_))
                                    (if (or (gx#stx-eq?
                                             'values:
                                             _%g3309033409%_)
                                            (gx#stx-eq?
                                             'vector:
                                             _%g3309033409%_))
                                        (_%__kont3870638707%_
                                         _%g3308933407%_
                                         _%g3309033409%_)
                                        (if (gx#stx-datum? _%hd3309233391%_)
                                            (let ((_%e3310133340%_
                                                   (gx#stx-e
                                                    _%hd3309233391%_)))
                                              (if (equal? _%e3310133340%_
                                                          'struct:)
                                                  (_%__kont3871638717%_)
                                                  (if (equal? _%e3310133340%_
                                                              'class:)
                                                      (_%__kont3871638717%_)
                                                      (if (equal? _%e3310133340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3871638717%_)
                  (if (equal? _%e3310133340%_ 'var:)
                      (_%__kont3871438715%_ _%hd3309533401%_)
                      (_%__kont3871638717%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3871638717%_))))))
                               (_%__match3874238743%_
                                (lambda (_%e3304633651%_
                                         _%hd3304733655%_
                                         _%tl3304833658%_)
                                  (let ((_%g3304433661%_ _%tl3304833658%_)
                                        (_%g3304533663%_ _%hd3304733655%_))
                                    (if (or (gx#stx-eq? 'and: _%g3304533663%_)
                                            (gx#stx-eq? 'or: _%g3304533663%_))
                                        (_%__kont3869638697%_
                                         _%g3304433661%_
                                         _%g3304533663%_)
                                        (if (gx#stx-datum? _%hd3304733655%_)
                                            (let ((_%e3305333616%_
                                                   (gx#stx-e
                                                    _%hd3304733655%_)))
                                              (if (equal? _%e3305333616%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3304833658%_)
                                                      (let ((_%e3305433620%_
                                                             (gx#syntax-e
                                                              _%tl3304833658%_)))
                                                        (let ((_%tl3305633627%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3305433620%_)))
                      (_%hd3305533624%_
                       (let () (declare (not safe)) (##car _%e3305433620%_))))
                  (if (gx#stx-null? _%tl3305633627%_)
                      (_%__kont3869838699%_ _%hd3305533624%_)
                      (_%__kont3871638717%_))))
              (_%__kont3871638717%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3305333616%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3304833658%_)
                                                          (let ((_%e3306333556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3304833658%_)))
                    (let ((_%tl3306533563%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3306333556%_)))
                          (_%hd3306433560%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3306333556%_))))
                      (if (gx#stx-pair? _%tl3306533563%_)
                          (let ((_%e3306633566%_
                                 (gx#syntax-e _%tl3306533563%_)))
                            (let ((_%tl3306833573%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3306633566%_)))
                                  (_%hd3306733570%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3306633566%_))))
                              (if (gx#stx-null? _%tl3306833573%_)
                                  (_%__kont3870038701%_
                                   _%hd3306733570%_
                                   _%hd3306433560%_)
                                  (_%__kont3871638717%_))))
                          (if (gx#stx-null? _%tl3306533563%_)
                              (_%__match3884838849%_
                               _%e3304633651%_
                               _%hd3304733655%_
                               _%tl3304833658%_
                               _%e3306333556%_
                               _%hd3306433560%_
                               _%tl3306533563%_)
                              (_%__kont3871638717%_)))))
                  (_%__kont3871638717%_))
              (if (equal? _%e3305333616%_ 'splice:)
                  (if (gx#stx-pair? _%tl3304833658%_)
                      (let ((_%e3307533492%_ (gx#syntax-e _%tl3304833658%_)))
                        (let ((_%tl3307733499%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3307533492%_)))
                              (_%hd3307633496%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3307533492%_))))
                          (if (gx#stx-pair? _%tl3307733499%_)
                              (let ((_%e3307833502%_
                                     (gx#syntax-e _%tl3307733499%_)))
                                (let ((_%tl3308033509%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3307833502%_)))
                                      (_%hd3307933506%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3307833502%_))))
                                  (if (gx#stx-null? _%tl3308033509%_)
                                      (_%__kont3870238703%_
                                       _%hd3307933506%_
                                       _%hd3307633496%_)
                                      (_%__kont3871638717%_))))
                              (if (gx#stx-null? _%tl3307733499%_)
                                  (_%__match3884838849%_
                                   _%e3304633651%_
                                   _%hd3304733655%_
                                   _%tl3304833658%_
                                   _%e3307533492%_
                                   _%hd3307633496%_
                                   _%tl3307733499%_)
                                  (_%__kont3871638717%_)))))
                      (_%__kont3871638717%_))
                  (if (equal? _%e3305333616%_ 'box:)
                      (if (gx#stx-pair? _%tl3304833658%_)
                          (let ((_%e3308633447%_
                                 (gx#syntax-e _%tl3304833658%_)))
                            (let ((_%tl3308833454%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3308633447%_)))
                                  (_%hd3308733451%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3308633447%_))))
                              (if (gx#stx-null? _%tl3308833454%_)
                                  (_%__kont3870438705%_ _%hd3308733451%_)
                                  (_%__kont3871638717%_))))
                          (_%__kont3871638717%_))
                      (if (gx#stx-pair? _%tl3304833658%_)
                          (let ((_%e3309433397%_
                                 (gx#syntax-e _%tl3304833658%_)))
                            (let ((_%tl3309633404%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3309433397%_)))
                                  (_%hd3309533401%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3309433397%_))))
                              (if (gx#stx-null? _%tl3309633404%_)
                                  (_%__match3884838849%_
                                   _%e3304633651%_
                                   _%hd3304733655%_
                                   _%tl3304833658%_
                                   _%e3309433397%_
                                   _%hd3309533401%_
                                   _%tl3309633404%_)
                                  (if (equal? _%e3305333616%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3309633404%_)
                                          (let ((_%e3310533354%_
                                                 (gx#syntax-e
                                                  _%tl3309633404%_)))
                                            (let ((_%tl3310733361%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3310533354%_)))
                                                  (_%hd3310633358%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3310533354%_))))
                                              (if (gx#stx-null?
                                                   _%tl3310733361%_)
                                                  (_%__kont3870838709%_
                                                   _%hd3310633358%_)
                                                  (_%__kont3871638717%_))))
                                          (_%__kont3871638717%_))
                                      (if (equal? _%e3305333616%_ 'class:)
                                          (if (gx#stx-pair? _%tl3309633404%_)
                                              (let ((_%e3311633297%_
                                                     (gx#syntax-e
                                                      _%tl3309633404%_)))
                                                (let ((_%tl3311833304%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3311633297%_)))
                                                      (_%hd3311733301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3311633297%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3311833304%_)
                                                      (_%__kont3871038711%_
                                                       _%hd3311733301%_)
                                                      (_%__kont3871638717%_))))
                                              (_%__kont3871638717%_))
                                          (if (equal? _%e3305333616%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3309633404%_)
                                                  (let ((_%e3312833238%_
                                                         (gx#syntax-e
                                                          _%tl3309633404%_)))
                                                    (let ((_%tl3313033245%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3312833238%_)))
                                                          (_%hd3312933242%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3312833238%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3313033245%_)
                                                          (_%__kont3871238713%_
                                                           _%hd3312933242%_
                                                           _%hd3309533401%_)
                                                          (_%__kont3871638717%_))))
                                                  (_%__kont3871638717%_))
                                              (_%__kont3871638717%_)))))))
                          (_%__kont3871638717%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3304833658%_)
                                                (let ((_%e3309433397%_
                                                       (gx#syntax-e
                                                        _%tl3304833658%_)))
                                                  (let ((_%tl3309633404%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3309433397%_)))
                                                        (_%hd3309533401%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3309433397%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3309633404%_)
                                                        (_%__match3884838849%_
                                                         _%e3304633651%_
                                                         _%hd3304733655%_
                                                         _%tl3304833658%_
                                                         _%e3309433397%_
                                                         _%hd3309533401%_
                                                         _%tl3309633404%_)
                                                        (_%__kont3871638717%_))))
                                                (_%__kont3871638717%_))))))))
                          (if (gx#stx-pair? _%__stx3869138692%_)
                              (let ((_%e3303733750%_
                                     (gx#syntax-e _%__stx3869138692%_)))
                                (let ((_%tl3303933757%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3303733750%_)))
                                      (_%hd3303833754%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3303733750%_))))
                                  (if (gx#stx-datum? _%hd3303833754%_)
                                      (let ((_%e3304033760%_
                                             (gx#stx-e _%hd3303833754%_)))
                                        (if (equal? _%e3304033760%_ '?:)
                                            (if (gx#stx-pair? _%tl3303933757%_)
                                                (let ((_%e3304133764%_
                                                       (gx#syntax-e
                                                        _%tl3303933757%_)))
                                                  (let ((_%tl3304333771%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3304133764%_)))
                                                        (_%hd3304233768%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3304133764%_))))
                                                    (_%__kont3869438695%_
                                                     _%tl3304333771%_)))
                                                (_%__match3874238743%_
                                                 _%e3303733750%_
                                                 _%hd3303833754%_
                                                 _%tl3303933757%_))
                                            (_%__match3874238743%_
                                             _%e3303733750%_
                                             _%hd3303833754%_
                                             _%tl3303933757%_)))
                                      (_%__match3874238743%_
                                       _%e3303733750%_
                                       _%hd3303833754%_
                                       _%tl3303933757%_))))
                              (_%__kont3871638717%_)))))))
                 (_%loop-vector32733%_
                  (lambda (_%body32894%_ _%vars32896%_ _%K32897%_)
                    (let* ((_%__stx3894938950%_ _%body32894%_)
                           (_%g3290032923%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3894938950%_))))
                      (let ((_%__kont3895238953%_
                             (lambda (_%g3290233000%_)
                               (_%loop-list32734%_
                                _%g3290233000%_
                                _%vars32896%_
                                _%K32897%_)))
                            (_%__kont3895438955%_
                             (lambda (_%g3291032954%_)
                               (_%loop32731%_
                                _%g3291032954%_
                                _%vars32896%_
                                _%K32897%_))))
                        (if (gx#stx-pair? _%__stx3894938950%_)
                            (let ((_%e3290332976%_
                                   (gx#syntax-e _%__stx3894938950%_)))
                              (let ((_%tl3290532983%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3290332976%_)))
                                    (_%hd3290432980%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3290332976%_))))
                                (if (gx#stx-datum? _%hd3290432980%_)
                                    (let ((_%e3290632986%_
                                           (gx#stx-e _%hd3290432980%_)))
                                      (if (equal? _%e3290632986%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3290532983%_)
                                              (let ((_%e3290732990%_
                                                     (gx#syntax-e
                                                      _%tl3290532983%_)))
                                                (let ((_%tl3290932997%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3290732990%_)))
                                                      (_%hd3290832994%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3290732990%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3290932997%_)
                                                      (_%__kont3895238953%_
                                                       _%hd3290832994%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3290032923%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3290032923%_)))
                                          (if (equal? _%e3290632986%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3290532983%_)
                                                  (let ((_%e3291532944%_
                                                         (gx#syntax-e
                                                          _%tl3290532983%_)))
                                                    (let ((_%tl3291732951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3291532944%_)))
                                                          (_%hd3291632948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3291532944%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3291732951%_)
                                                          (_%__kont3895438955%_
                                                           _%hd3291632948%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3290032923%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3290032923%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3290032923%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3290032923%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3290032923%_)))))))
                 (_%loop-list32734%_
                  (lambda (_%rest32824%_ _%vars32826%_ _%K32827%_)
                    (let* ((_%__stx3899939000%_ _%rest32824%_)
                           (_%g3283032842%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3899939000%_))))
                      (let ((_%__kont3900239003%_
                             (lambda (_%g3283232870%_ _%g3283332872%_)
                               (_%loop32731%_
                                _%g3283332872%_
                                _%vars32826%_
                                (lambda (_%g3288432886%_)
                                  (_%loop-list32734%_
                                   _%g3283232870%_
                                   _%g3288432886%_
                                   _%K32827%_)))))
                            (_%__kont3900439005%_
                             (lambda () (_%K32827%_ _%vars32826%_))))
                        (if (gx#stx-pair? _%__stx3899939000%_)
                            (let ((_%e3283432860%_
                                   (gx#syntax-e _%__stx3899939000%_)))
                              (let ((_%tl3283632867%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3283432860%_)))
                                    (_%hd3283532864%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3283432860%_))))
                                (_%__kont3900239003%_
                                 _%tl3283632867%_
                                 _%hd3283532864%_)))
                            (_%__kont3900439005%_))))))
                 (_%loop-class-list32735%_
                  (lambda (_%rest32737%_ _%vars32739%_ _%K32740%_)
                    (let* ((_%__stx3901539016%_ _%rest32737%_)
                           (_%g3274332758%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3901539016%_))))
                      (let ((_%__kont3901839019%_
                             (lambda (_%g3274532796%_ _%g3274632798%_)
                               (_%loop32731%_
                                _%g3274632798%_
                                _%vars32739%_
                                (lambda (_%g3281432816%_)
                                  (_%loop-class-list32735%_
                                   _%g3274532796%_
                                   _%g3281432816%_
                                   _%K32740%_)))))
                            (_%__kont3902039021%_
                             (lambda () (_%K32740%_ _%vars32739%_))))
                        (if (gx#stx-pair? _%__stx3901539016%_)
                            (let ((_%e3274732776%_
                                   (gx#syntax-e _%__stx3901539016%_)))
                              (let ((_%tl3274932783%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3274732776%_)))
                                    (_%hd3274832780%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3274732776%_))))
                                (if (gx#stx-pair? _%tl3274932783%_)
                                    (let ((_%e3275032786%_
                                           (gx#syntax-e _%tl3274932783%_)))
                                      (let ((_%tl3275232793%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3275032786%_)))
                                            (_%hd3275132790%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3275032786%_))))
                                        (_%__kont3901839019%_
                                         _%tl3275232793%_
                                         _%hd3275132790%_)))
                                    (_%__kont3902039021%_))))
                            (_%__kont3902039021%_)))))))
          (_%loop32731%_ _%ptree32728%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29660%_ _%tgt29662%_ _%ptree29663%_ _%K29664%_ _%E29665%_)
        (letrec ((_%generate129667%_
                  (lambda (_%tgt30927%_ _%ptree30929%_ _%K30930%_ _%E30931%_)
                    (let* ((_%g3093330941%_
                            (lambda (_%g3093430937%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3093430937%_)))
                           (_%g3093232724%_
                            (lambda (_%g3093430945%_)
                              ((lambda (_%g3093530948%_)
                                 (let* ((_%__stx3925139252%_ _%ptree30929%_)
                                        (_%g3097531117%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3925139252%_))))
                                   (let ((_%__kont3925439255%_
                                          (lambda (_%g3097732439%_
                                                   _%g3097832441%_)
                                            (let* ((_%__stx3916939170%_
                                                    _%g3097732439%_)
                                                   (_%g3245832493%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3916939170%_))))
                                              (let ((_%__kont3917239173%_
                                                     (lambda ()
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%g3097832441%_
                                       (cons _%g3093530948%_ '())))
                           (cons _%K30930%_ (cons _%E30931%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3917439175%_
                                                     (lambda (_%g3246032694%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%g3097832441%_
                                       (cons _%g3093530948%_ '())))
                           (cons (_%generate129667%_
                                  _%tgt30927%_
                                  _%g3246032694%_
                                  _%K30930%_
                                  _%E30931%_)
                                 (cons _%E30931%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3917639177%_
                                                     (lambda (_%g3246432632%_)
                                                       (let* ((_%g3264632654%_
                                                               (lambda (_%g3264732650%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3264732650%_)))
                      (_%g3264532673%_
                       (lambda (_%g3264732658%_)
                         ((lambda (_%g3264832661%_)
                            (cons 'let
                                  (cons (cons (cons _%g3264832661%_
                                                    (cons (cons _%g3097832441%_
                                                                (cons _%g3093530948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons 'if
                                                    (cons _%g3264832661%_
                                                          (cons (_%generate129667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3264832661%_
                         _%g3246432632%_
                         _%K30930%_
                         _%E30931%_)
                        (cons _%E30931%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _%g3264732658%_))))
                 (_%g3264532673%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3917839179%_
                                                     (lambda (_%g3247232548%_
                                                              _%g3247332550%_)
                                                       (let* ((_%g3257032578%_
                                                               (lambda (_%g3257132574%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3257132574%_)))
                      (_%g3256932597%_
                       (lambda (_%g3257132582%_)
                         ((lambda (_%g3257232585%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '?)
                                              (cons _%g3097832441%_
                                                    (cons _%g3093530948%_
                                                          '())))
                                        (cons (cons 'let
                                                    (cons (cons (cons _%g3257232585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons _%g3247332550%_
                                          (cons _%g3093530948%_ '()))
                                    '()))
                        '())
                  (cons (_%generate129667%_
                         _%g3257232585%_
                         _%g3247232548%_
                         _%K30930%_
                         _%E30931%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30931%_ '())))))
                          _%g3257132582%_))))
                 (_%g3256932597%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%g3245532705%_
                                                       (lambda ()
                                                         (if (gx#stx-pair?
                                                              _%__stx3916939170%_)
                                                             (let ((_%e3246132684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%__stx3916939170%_)))
                       (let ((_%tl3246332691%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3246132684%_)))
                             (_%hd3246232688%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3246132684%_))))
                         (if (gx#stx-null? _%tl3246332691%_)
                             (_%__kont3917439175%_ _%hd3246232688%_)
                             (if (gx#stx-datum? _%hd3246232688%_)
                                 (let ((_%e3246832618%_
                                        (gx#stx-e _%hd3246232688%_)))
                                   (if (equal? _%e3246832618%_ '=>:)
                                       (if (gx#stx-pair? _%tl3246332691%_)
                                           (let ((_%e3246932622%_
                                                  (gx#syntax-e
                                                   _%tl3246332691%_)))
                                             (let ((_%tl3247132629%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3246932622%_)))
                                                   (_%hd3247032626%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3246932622%_))))
                                               (if (gx#stx-null?
                                                    _%tl3247132629%_)
                                                   (_%__kont3917639177%_
                                                    _%hd3247032626%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3245832493%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3245832493%_)))
                                       (if (equal? _%e3246832618%_ '::)
                                           (if (gx#stx-pair? _%tl3246332691%_)
                                               (let ((_%e3247832514%_
                                                      (gx#syntax-e
                                                       _%tl3246332691%_)))
                                                 (let ((_%tl3248032521%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3247832514%_)))
                                                       (_%hd3247932518%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3247832514%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3248032521%_)
                                                       (let ((_%e3248132524%_
                                                              (gx#syntax-e
                                                               _%tl3248032521%_)))
                                                         (let ((_%tl3248332531%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3248132524%_)))
                       (_%hd3248232528%_
                        (let () (declare (not safe)) (##car _%e3248132524%_))))
                   (if (gx#stx-datum? _%hd3248232528%_)
                       (let ((_%e3248432534%_ (gx#stx-e _%hd3248232528%_)))
                         (if (equal? _%e3248432534%_ '=>:)
                             (if (gx#stx-pair? _%tl3248332531%_)
                                 (let ((_%e3248532538%_
                                        (gx#syntax-e _%tl3248332531%_)))
                                   (let ((_%tl3248732545%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3248532538%_)))
                                         (_%hd3248632542%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3248532538%_))))
                                     (if (gx#stx-null? _%tl3248732545%_)
                                         (_%__kont3917839179%_
                                          _%hd3248632542%_
                                          _%hd3247932518%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3245832493%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3245832493%_)))
                             (let () (declare (not safe)) (_%g3245832493%_))))
                       (let () (declare (not safe)) (_%g3245832493%_)))))
               (let () (declare (not safe)) (_%g3245832493%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3245832493%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3245832493%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3245832493%_))))))
                     (let () (declare (not safe)) (_%g3245832493%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%__stx3916939170%_)
                                                      (_%__kont3917239173%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3245532705%_))))))))
                                         (_%__kont3925639257%_
                                          (lambda (_%g3098632336%_)
                                            (let* ((_%__stx3915339154%_
                                                    _%g3098632336%_)
                                                   (_%g3234932361%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3915339154%_))))
                                              (let ((_%__kont3915639157%_
                                                     (lambda (_%g3235132389%_
                                                              _%g3235232391%_)
                                                       (_%generate129667%_
                                                        _%tgt30927%_
                                                        _%g3235232391%_
                                                        (_%generate129667%_
                                                         _%tgt30927%_
                                                         (cons 'and:
                                                               _%g3235132389%_)
                                                         _%K30930%_
                                                         _%E30931%_)
                                                        _%E30931%_)))
                                                    (_%__kont3915839159%_
                                                     (lambda () _%K30930%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3915339154%_)
                                                    (let ((_%e3235332379%_
                                                           (gx#syntax-e
                                                            _%__stx3915339154%_)))
                                                      (let ((_%tl3235532386%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3235332379%_)))
                    (_%hd3235432383%_
                     (let () (declare (not safe)) (##car _%e3235332379%_))))
                (_%__kont3915639157%_ _%tl3235532386%_ _%hd3235432383%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3915839159%_))))))
                                         (_%__kont3925839259%_
                                          (lambda (_%g3099132243%_)
                                            (let* ((_%__stx3913739138%_
                                                    _%g3099132243%_)
                                                   (_%g3225632268%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3913739138%_))))
                                              (let ((_%__kont3914039141%_
                                                     (lambda (_%g3225832296%_
                                                              _%g3225932298%_)
                                                       (_%generate129667%_
                                                        _%tgt30927%_
                                                        _%g3225932298%_
                                                        _%K30930%_
                                                        (_%generate129667%_
                                                         _%tgt30927%_
                                                         (cons 'or:
                                                               _%g3225832296%_)
                                                         _%K30930%_
                                                         _%E30931%_))))
                                                    (_%__kont3914239143%_
                                                     (lambda () _%E30931%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3913739138%_)
                                                    (let ((_%e3226032286%_
                                                           (gx#syntax-e
                                                            _%__stx3913739138%_)))
                                                      (let ((_%tl3226232293%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3226032286%_)))
                    (_%hd3226132290%_
                     (let () (declare (not safe)) (##car _%e3226032286%_))))
                (_%__kont3914039141%_ _%tl3226232293%_ _%hd3226132290%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3914239143%_))))))
                                         (_%__kont3926039261%_
                                          (lambda (_%g3099632208%_)
                                            (_%generate129667%_
                                             _%tgt30927%_
                                             _%g3099632208%_
                                             _%E30931%_
                                             _%K30930%_)))
                                         (_%__kont3926239263%_
                                          (lambda (_%g3100432082%_
                                                   _%g3100532084%_)
                                            (let* ((_%g3210132116%_
                                                    (lambda (_%g3210232112%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3210232112%_)))
                                                   (_%g3210032173%_
                                                    (lambda (_%g3210232120%_)
                                                      (if (gx#stx-pair?
                                                           _%g3210232120%_)
                                                          (let ((_%e3210532123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%g3210232120%_)))
                    (let ((_%hd3210632127%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3210532123%_)))
                          (_%tl3210732130%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3210532123%_))))
                      (if (gx#stx-pair? _%tl3210732130%_)
                          (let ((_%e3210832133%_
                                 (gx#syntax-e _%tl3210732130%_)))
                            (let ((_%hd3210932137%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3210832133%_)))
                                  (_%tl3211032140%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3210832133%_))))
                              (if (gx#stx-null? _%tl3211032140%_)
                                  ((lambda (_%g3210332143%_ _%g3210432145%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'pair?)
                                                       (cons _%g3093530948%_
                                                             '()))
                                                 (cons (let ((_%hd-pat32161%_
                                                              (gx#stx-e
                                                               _%g3100532084%_))
                                                             (_%tl-pat32163%_
                                                              (gx#stx-e
                                                               _%g3100432082%_)))
                                                         (if (and (equal? _%hd-pat32161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat32163%_ '(any:)))
                     _%K30930%_
                     (if (equal? _%tl-pat32163%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%g3210432145%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%g3093530948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate129667%_
                                            _%g3210432145%_
                                            _%g3100532084%_
                                            _%K30930%_
                                            _%E30931%_)
                                           '())))
                         (if (equal? _%hd-pat32161%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%g3210332143%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%g3093530948%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate129667%_
                                                _%g3210332143%_
                                                _%g3100432082%_
                                                _%K30930%_
                                                _%E30931%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%g3210432145%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%g3093530948%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%g3210332143%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%g3093530948%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate129667%_
                                                _%g3210432145%_
                                                _%g3100532084%_
                                                (_%generate129667%_
                                                 _%g3210332143%_
                                                 _%g3100432082%_
                                                 _%K30930%_
                                                 _%E30931%_)
                                                _%E30931%_)
                                               '())))))))
               (cons _%E30931%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd3210932137%_
                                   _%hd3210632127%_)
                                  (_%g3210132116%_ _%g3210232120%_))))
                          (_%g3210132116%_ _%g3210232120%_))))
                  (_%g3210132116%_ _%g3210232120%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3210032173%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl))))))
                                         (_%__kont3926439265%_
                                          (lambda ()
                                            (cons 'if
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'null?)
                                                              (cons _%g3093530948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%K30930%_ (cons _%E30931%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3926639267%_
                                          (lambda (_%g3102031998%_
                                                   _%g3102132000%_)
                                            (_%generate-splice29669%_
                                             _%tgt30927%_
                                             _%g3102132000%_
                                             _%g3102031998%_
                                             _%K30930%_
                                             _%E30931%_)))
                                         (_%__kont3926839269%_
                                          (lambda (_%g3103231912%_)
                                            (let* ((_%g3192631934%_
                                                    (lambda (_%g3192731930%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3192731930%_)))
                                                   (_%g3192531953%_
                                                    (lambda (_%g3192731938%_)
                                                      ((lambda (_%g3192831941%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'box?)
                                   (cons _%g3093530948%_ '()))
                             (cons (cons 'let
                                         (cons (cons (cons _%g3192831941%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##unbox)
                               (cons _%g3093530948%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (_%generate129667%_
                                                      _%g3192831941%_
                                                      _%g3103231912%_
                                                      _%K30930%_
                                                      _%E30931%_)
                                                     '())))
                                   (cons _%E30931%_ '())))))
               _%g3192731938%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3192531953%_
                                               (gx#genident 'e)))))
                                         (_%__kont3927039271%_
                                          (lambda (_%g3104031717%_)
                                            (let* ((_%__stx3908739088%_
                                                    _%g3104031717%_)
                                                   (_%g3173231755%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3908739088%_))))
                                              (let ((_%__kont3909039091%_
                                                     (lambda (_%g3173431832%_)
                                                       (let* ((_%g3184631854%_
                                                               (lambda (_%g3184731850%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3184731850%_)))
                      (_%g3184531873%_
                       (lambda (_%g3184731858%_)
                         ((lambda (_%g3184831861%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'values-count)
                                                          (cons _%g3093530948%_
                                                                '()))
                                                    (cons _%g3184831861%_
                                                          '())))
                                        (cons (_%generate-simple-vector29670%_
                                               _%tgt30927%_
                                               _%g3173431832%_
                                               '0
                                               '##values-ref
                                               _%K30930%_
                                               _%E30931%_)
                                              (cons _%E30931%_ '())))))
                          _%g3184731858%_))))
                 (_%g3184531873%_ (gx#stx-length _%g3173431832%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3909239093%_
                                                     (lambda (_%g3174231786%_)
                                                       (_%generate-list-vector29671%_
                                                        _%tgt30927%_
                                                        _%g3174231786%_
                                                        'values->list
                                                        _%K30930%_
                                                        _%E30931%_))))
                                                (if (gx#stx-pair?
                                                     _%__stx3908739088%_)
                                                    (let ((_%e3173531808%_
                                                           (gx#syntax-e
                                                            _%__stx3908739088%_)))
                                                      (let ((_%tl3173731815%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3173531808%_)))
                    (_%hd3173631812%_
                     (let () (declare (not safe)) (##car _%e3173531808%_))))
                (if (gx#stx-datum? _%hd3173631812%_)
                    (let ((_%e3173831818%_ (gx#stx-e _%hd3173631812%_)))
                      (if (equal? _%e3173831818%_ 'simple:)
                          (if (gx#stx-pair? _%tl3173731815%_)
                              (let ((_%e3173931822%_
                                     (gx#syntax-e _%tl3173731815%_)))
                                (let ((_%tl3174131829%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3173931822%_)))
                                      (_%hd3174031826%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3173931822%_))))
                                  (if (gx#stx-null? _%tl3174131829%_)
                                      (_%__kont3909039091%_ _%hd3174031826%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3173231755%_)))))
                              (let () (declare (not safe)) (_%g3173231755%_)))
                          (if (equal? _%e3173831818%_ 'list:)
                              (if (gx#stx-pair? _%tl3173731815%_)
                                  (let ((_%e3174731776%_
                                         (gx#syntax-e _%tl3173731815%_)))
                                    (let ((_%tl3174931783%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3174731776%_)))
                                          (_%hd3174831780%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3174731776%_))))
                                      (if (gx#stx-null? _%tl3174931783%_)
                                          (_%__kont3909239093%_
                                           _%hd3174831780%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3173231755%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3173231755%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3173231755%_)))))
                    (let () (declare (not safe)) (_%g3173231755%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3173231755%_)))))))
                                         (_%__kont3927239273%_
                                          (lambda (_%g3104831522%_)
                                            (let* ((_%__stx3903739038%_
                                                    _%g3104831522%_)
                                                   (_%g3153731560%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3903739038%_))))
                                              (let ((_%__kont3904039041%_
                                                     (lambda (_%g3153931637%_)
                                                       (let* ((_%g3165131659%_
                                                               (lambda (_%g3165231655%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3165231655%_)))
                      (_%g3165031678%_
                       (lambda (_%g3165231663%_)
                         ((lambda (_%g3165331666%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f 'vector?)
                                              (cons _%g3093530948%_ '()))
                                        (cons (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _%g3093530948%_ '()))
                              (cons _%g3165331666%_ '())))
                  (cons (_%generate-simple-vector29670%_
                         _%tgt30927%_
                         _%g3153931637%_
                         '0
                         '##vector-ref
                         _%K30930%_
                         _%E30931%_)
                        (cons _%E30931%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30931%_ '())))))
                          _%g3165231663%_))))
                 (_%g3165031678%_ (gx#stx-length _%g3153931637%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3904239043%_
                                                     (lambda (_%g3154731591%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'vector?)
                                 (cons _%g3093530948%_ '()))
                           (cons (_%generate-list-vector29671%_
                                  _%tgt30927%_
                                  _%g3154731591%_
                                  'vector->list
                                  _%K30930%_
                                  _%E30931%_)
                                 (cons _%E30931%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx3903739038%_)
                                                    (let ((_%e3154031613%_
                                                           (gx#syntax-e
                                                            _%__stx3903739038%_)))
                                                      (let ((_%tl3154231620%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3154031613%_)))
                    (_%hd3154131617%_
                     (let () (declare (not safe)) (##car _%e3154031613%_))))
                (if (gx#stx-datum? _%hd3154131617%_)
                    (let ((_%e3154331623%_ (gx#stx-e _%hd3154131617%_)))
                      (if (equal? _%e3154331623%_ 'simple:)
                          (if (gx#stx-pair? _%tl3154231620%_)
                              (let ((_%e3154431627%_
                                     (gx#syntax-e _%tl3154231620%_)))
                                (let ((_%tl3154631634%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3154431627%_)))
                                      (_%hd3154531631%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3154431627%_))))
                                  (if (gx#stx-null? _%tl3154631634%_)
                                      (_%__kont3904039041%_ _%hd3154531631%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3153731560%_)))))
                              (let () (declare (not safe)) (_%g3153731560%_)))
                          (if (equal? _%e3154331623%_ 'list:)
                              (if (gx#stx-pair? _%tl3154231620%_)
                                  (let ((_%e3155231581%_
                                         (gx#syntax-e _%tl3154231620%_)))
                                    (let ((_%tl3155431588%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3155231581%_)))
                                          (_%hd3155331585%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3155231581%_))))
                                      (if (gx#stx-null? _%tl3155431588%_)
                                          (_%__kont3904239043%_
                                           _%hd3155331585%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3153731560%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3153731560%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3153731560%_)))))
                    (let () (declare (not safe)) (_%g3153731560%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3153731560%_)))))))
                                         (_%__kont3927439275%_
                                          (lambda (_%g3105631473%_
                                                   _%g3105731475%_)
                                            (_%generate-struct29672%_
                                             (gx#stx-e _%g3105731475%_)
                                             _%tgt30927%_
                                             _%g3105631473%_
                                             _%K30930%_
                                             _%E30931%_)))
                                         (_%__kont3927639277%_
                                          (lambda (_%g3106831414%_
                                                   _%g3106931416%_)
                                            (_%generate-class29675%_
                                             (gx#stx-e _%g3106931416%_)
                                             _%tgt30927%_
                                             _%g3106831414%_
                                             _%K30930%_
                                             _%E30931%_)))
                                         (_%__kont3927839279%_
                                          (lambda (_%g3108031311%_)
                                            (let* ((_%g3132531333%_
                                                    (lambda (_%g3132631329%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3132631329%_)))
                                                   (_%g3132431352%_
                                                    (lambda (_%g3132631337%_)
                                                      ((lambda (_%g3132731340%_)
                                                         (cons 'if
                                                               (cons (cons _%g3132731340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%g3093530948%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g3108031311%_
                                                           '()))
                                               '())))
                             (cons _%K30930%_ (cons _%E30931%_ '())))))
               _%g3132631337%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3132431352%_
                                               (let ((_%e31356%_
                                                      (gx#stx-e
                                                       _%g3108031311%_)))
                                                 (if (or (symbol? _%e31356%_)
                                                         (keyword? _%e31356%_)
                                                         (immediate?
                                                          _%e31356%_))
                                                     '##eq?
                                                     (if (number? _%e31356%_)
                                                         'eqv?
                                                         'equal?)))))))
                                         (_%__kont3928039281%_
                                          (lambda (_%g3108831231%_
                                                   _%g3108931233%_)
                                            (let* ((_%g3124931257%_
                                                    (lambda (_%g3125031253%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3125031253%_)))
                                                   (_%g3124831276%_
                                                    (lambda (_%g3125031261%_)
                                                      ((lambda (_%g3125131264%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%g3125131264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%g3108931233%_
                                                     (cons _%g3093530948%_
                                                           '()))
                                               '()))
                                   '())
                             (cons (_%generate129667%_
                                    _%g3125131264%_
                                    _%g3108831231%_
                                    _%K30930%_
                                    _%E30931%_)
                                   '()))))
               _%g3125031261%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3124831276%_
                                               (gx#genident 'e)))))
                                         (_%__kont3928239283%_
                                          (lambda (_%g3110031173%_)
                                            (cons 'let
                                                  (cons (cons (cons _%g3110031173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g3093530948%_ '()))
                      '())
                (cons _%K30930%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3928439285%_
                                          (lambda () _%K30930%_)))
                                     (if (gx#stx-pair? _%__stx3925139252%_)
                                         (let ((_%e3097932415%_
                                                (gx#syntax-e
                                                 _%__stx3925139252%_)))
                                           (let ((_%tl3098132422%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e3097932415%_)))
                                                 (_%hd3098032419%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e3097932415%_))))
                                             (if (gx#stx-datum?
                                                  _%hd3098032419%_)
                                                 (let ((_%e3098232425%_
                                                        (gx#stx-e
                                                         _%hd3098032419%_)))
                                                   (if (equal? _%e3098232425%_
                                                               '?:)
                                                       (if (gx#stx-pair?
                                                            _%tl3098132422%_)
                                                           (let ((_%e3098332429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3098132422%_)))
                     (let ((_%tl3098532436%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3098332429%_)))
                           (_%hd3098432433%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3098332429%_))))
                       (_%__kont3925439255%_
                        _%tl3098532436%_
                        _%hd3098432433%_)))
                   (let () (declare (not safe)) (_%g3097531117%_)))
               (if (equal? _%e3098232425%_ 'and:)
                   (_%__kont3925639257%_ _%tl3098132422%_)
                   (if (equal? _%e3098232425%_ 'or:)
                       (_%__kont3925839259%_ _%tl3098132422%_)
                       (if (equal? _%e3098232425%_ 'not:)
                           (if (gx#stx-pair? _%tl3098132422%_)
                               (let ((_%e3100132198%_
                                      (gx#syntax-e _%tl3098132422%_)))
                                 (let ((_%tl3100332205%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3100132198%_)))
                                       (_%hd3100232202%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3100132198%_))))
                                   (if (gx#stx-null? _%tl3100332205%_)
                                       (_%__kont3926039261%_ _%hd3100232202%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3097531117%_)))))
                               (let () (declare (not safe)) (_%g3097531117%_)))
                           (if (equal? _%e3098232425%_ 'cons:)
                               (if (gx#stx-pair? _%tl3098132422%_)
                                   (let ((_%e3101032062%_
                                          (gx#syntax-e _%tl3098132422%_)))
                                     (let ((_%tl3101232069%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3101032062%_)))
                                           (_%hd3101132066%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3101032062%_))))
                                       (if (gx#stx-pair? _%tl3101232069%_)
                                           (let ((_%e3101332072%_
                                                  (gx#syntax-e
                                                   _%tl3101232069%_)))
                                             (let ((_%tl3101532079%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3101332072%_)))
                                                   (_%hd3101432076%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3101332072%_))))
                                               (if (gx#stx-null?
                                                    _%tl3101532079%_)
                                                   (_%__kont3926239263%_
                                                    _%hd3101432076%_
                                                    _%hd3101132066%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3097531117%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3097531117%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3097531117%_)))
                               (if (equal? _%e3098232425%_ 'null:)
                                   (if (gx#stx-null? _%tl3098132422%_)
                                       (_%__kont3926439265%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3097531117%_)))
                                   (if (equal? _%e3098232425%_ 'splice:)
                                       (if (gx#stx-pair? _%tl3098132422%_)
                                           (let ((_%e3102631978%_
                                                  (gx#syntax-e
                                                   _%tl3098132422%_)))
                                             (let ((_%tl3102831985%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3102631978%_)))
                                                   (_%hd3102731982%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3102631978%_))))
                                               (if (gx#stx-pair?
                                                    _%tl3102831985%_)
                                                   (let ((_%e3102931988%_
                                                          (gx#syntax-e
                                                           _%tl3102831985%_)))
                                                     (let ((_%tl3103131995%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3102931988%_)))
                                                           (_%hd3103031992%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3102931988%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3103131995%_)
                                                           (_%__kont3926639267%_
                                                            _%hd3103031992%_
                                                            _%hd3102731982%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3097531117%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3097531117%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3097531117%_)))
                                       (if (equal? _%e3098232425%_ 'box:)
                                           (if (gx#stx-pair? _%tl3098132422%_)
                                               (let ((_%e3103731902%_
                                                      (gx#syntax-e
                                                       _%tl3098132422%_)))
                                                 (let ((_%tl3103931909%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3103731902%_)))
                                                       (_%hd3103831906%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3103731902%_))))
                                                   (if (gx#stx-null?
                                                        _%tl3103931909%_)
                                                       (_%__kont3926839269%_
                                                        _%hd3103831906%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g3097531117%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3097531117%_)))
                                           (if (equal? _%e3098232425%_
                                                       'values:)
                                               (if (gx#stx-pair?
                                                    _%tl3098132422%_)
                                                   (let ((_%e3104531707%_
                                                          (gx#syntax-e
                                                           _%tl3098132422%_)))
                                                     (let ((_%tl3104731714%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3104531707%_)))
                                                           (_%hd3104631711%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3104531707%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3104731714%_)
                                                           (_%__kont3927039271%_
                                                            _%hd3104631711%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3097531117%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3097531117%_)))
                                               (if (equal? _%e3098232425%_
                                                           'vector:)
                                                   (if (gx#stx-pair?
                                                        _%tl3098132422%_)
                                                       (let ((_%e3105331512%_
                                                              (gx#syntax-e
                                                               _%tl3098132422%_)))
                                                         (let ((_%tl3105531519%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3105331512%_)))
                       (_%hd3105431516%_
                        (let () (declare (not safe)) (##car _%e3105331512%_))))
                   (if (gx#stx-null? _%tl3105531519%_)
                       (_%__kont3927239273%_ _%hd3105431516%_)
                       (let () (declare (not safe)) (_%g3097531117%_)))))
               (let () (declare (not safe)) (_%g3097531117%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (equal? _%e3098232425%_
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _%tl3098132422%_)
                                                           (let ((_%e3106231453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3098132422%_)))
                     (let ((_%tl3106431460%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3106231453%_)))
                           (_%hd3106331457%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3106231453%_))))
                       (if (gx#stx-pair? _%tl3106431460%_)
                           (let ((_%e3106531463%_
                                  (gx#syntax-e _%tl3106431460%_)))
                             (let ((_%tl3106731470%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3106531463%_)))
                                   (_%hd3106631467%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3106531463%_))))
                               (if (gx#stx-null? _%tl3106731470%_)
                                   (_%__kont3927439275%_
                                    _%hd3106631467%_
                                    _%hd3106331457%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3097531117%_)))))
                           (let () (declare (not safe)) (_%g3097531117%_)))))
                   (let () (declare (not safe)) (_%g3097531117%_)))
               (if (equal? _%e3098232425%_ 'class:)
                   (if (gx#stx-pair? _%tl3098132422%_)
                       (let ((_%e3107431394%_ (gx#syntax-e _%tl3098132422%_)))
                         (let ((_%tl3107631401%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3107431394%_)))
                               (_%hd3107531398%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3107431394%_))))
                           (if (gx#stx-pair? _%tl3107631401%_)
                               (let ((_%e3107731404%_
                                      (gx#syntax-e _%tl3107631401%_)))
                                 (let ((_%tl3107931411%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3107731404%_)))
                                       (_%hd3107831408%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3107731404%_))))
                                   (if (gx#stx-null? _%tl3107931411%_)
                                       (_%__kont3927639277%_
                                        _%hd3107831408%_
                                        _%hd3107531398%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3097531117%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g3097531117%_)))))
                       (let () (declare (not safe)) (_%g3097531117%_)))
                   (if (equal? _%e3098232425%_ 'datum:)
                       (if (gx#stx-pair? _%tl3098132422%_)
                           (let ((_%e3108531301%_
                                  (gx#syntax-e _%tl3098132422%_)))
                             (let ((_%tl3108731308%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3108531301%_)))
                                   (_%hd3108631305%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3108531301%_))))
                               (if (gx#stx-null? _%tl3108731308%_)
                                   (_%__kont3927839279%_ _%hd3108631305%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3097531117%_)))))
                           (let () (declare (not safe)) (_%g3097531117%_)))
                       (if (equal? _%e3098232425%_ 'apply:)
                           (if (gx#stx-pair? _%tl3098132422%_)
                               (let ((_%e3109431211%_
                                      (gx#syntax-e _%tl3098132422%_)))
                                 (let ((_%tl3109631218%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3109431211%_)))
                                       (_%hd3109531215%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3109431211%_))))
                                   (if (gx#stx-pair? _%tl3109631218%_)
                                       (let ((_%e3109731221%_
                                              (gx#syntax-e _%tl3109631218%_)))
                                         (let ((_%tl3109931228%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3109731221%_)))
                                               (_%hd3109831225%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3109731221%_))))
                                           (if (gx#stx-null? _%tl3109931228%_)
                                               (_%__kont3928039281%_
                                                _%hd3109831225%_
                                                _%hd3109531215%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3097531117%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g3097531117%_)))))
                               (let () (declare (not safe)) (_%g3097531117%_)))
                           (if (equal? _%e3098232425%_ 'var:)
                               (if (gx#stx-pair? _%tl3098132422%_)
                                   (let ((_%e3110531163%_
                                          (gx#syntax-e _%tl3098132422%_)))
                                     (let ((_%tl3110731170%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3110531163%_)))
                                           (_%hd3110631167%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3110531163%_))))
                                       (if (gx#stx-null? _%tl3110731170%_)
                                           (_%__kont3928239283%_
                                            _%hd3110631167%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g3097531117%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3097531117%_)))
                               (if (equal? _%e3098232425%_ 'any:)
                                   (if (gx#stx-null? _%tl3098132422%_)
                                       (_%__kont3928439285%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3097531117%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3097531117%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3097531117%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3097531117%_))))))
                               _%g3093430945%_))))
                      (_%g3093232724%_ _%tgt30927%_))))
                 (_%generate-splice29669%_
                  (lambda (_%tgt30305%_
                           _%hd30307%_
                           _%rest30308%_
                           _%K30309%_
                           _%E30310%_)
                    (let* ((_%g3031230329%_
                            (lambda (_%g3031330325%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3031330325%_)))
                           (_%g3031130923%_
                            (lambda (_%g3031330333%_)
                              (if (gx#stx-pair/null? _%g3031330333%_)
                                  (let ((_g40406_
                                         (gx#syntax-split-splice
                                          _%g3031330333%_
                                          '0)))
                                    (begin
                                      (let ((_g40407_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g40406_)
                                                   (##values-length _g40406_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g40407_ 2)))
                                            (error "Context expects 2 values"
                                                   _g40407_)))
                                      (let ((_%target3031530336%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40406_ 0)))
                                            (_%tl3031730339%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40406_ 1))))
                                        (if (gx#stx-null? _%tl3031730339%_)
                                            (letrec ((_%loop3031830342%_
                                                      (lambda (_%hd3031630346%_
                                                               _%var3032230349%_)
                                                        (if (gx#stx-pair?
                                                             _%hd3031630346%_)
                                                            (let ((_%e3031930351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd3031630346%_)))
                      (let ((_%lp-hd3032030355%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3031930351%_)))
                            (_%lp-tl3032130358%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3031930351%_))))
                        (_%loop3031830342%_
                         _%lp-tl3032130358%_
                         (cons _%lp-hd3032030355%_ _%var3032230349%_))))
                    (let ((_%var3032330361%_ (reverse _%var3032230349%_)))
                      ((lambda (_%g3031430364%_)
                         (let* ((_%g3038030397%_
                                 (lambda (_%g3038130393%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g3038130393%_)))
                                (_%g3037930911%_
                                 (lambda (_%g3038130401%_)
                                   (if (gx#stx-pair/null? _%g3038130401%_)
                                       (let ((_g40408_
                                              (gx#syntax-split-splice
                                               _%g3038130401%_
                                               '0)))
                                         (begin
                                           (let ((_g40409_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g40408_)
                                                        (##values-length
                                                         _g40408_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g40409_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g40409_)))
                                           (let ((_%target3038330404%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g40408_ 0)))
                                                 (_%tl3038530407%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g40408_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl3038530407%_)
                                                 (letrec ((_%loop3038630410%_
                                                           (lambda (_%hd3038430414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%var-r3039030417%_)
                     (if (gx#stx-pair? _%hd3038430414%_)
                         (let ((_%e3038730419%_
                                (gx#syntax-e _%hd3038430414%_)))
                           (let ((_%lp-hd3038830423%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3038730419%_)))
                                 (_%lp-tl3038930426%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3038730419%_))))
                             (_%loop3038630410%_
                              _%lp-tl3038930426%_
                              (cons _%lp-hd3038830423%_ _%var-r3039030417%_))))
                         (let ((_%var-r3039130429%_
                                (reverse _%var-r3039030417%_)))
                           ((lambda (_%g3038230432%_)
                              (let* ((_%g3044930466%_
                                      (lambda (_%g3045030462%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g3045030462%_)))
                                     (_%g3044830899%_
                                      (lambda (_%g3045030470%_)
                                        (if (gx#stx-pair/null? _%g3045030470%_)
                                            (let ((_g40410_
                                                   (gx#syntax-split-splice
                                                    _%g3045030470%_
                                                    '0)))
                                              (begin
                                                (let ((_g40411_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g40410_)
                                                             (##values-length
                                                              _g40410_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g40411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g40411_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target3045230473%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40410_
                                                          0)))
                                                      (_%tl3045430476%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40410_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl3045430476%_)
                                                      (letrec ((_%loop3045530479%_
                                                                (lambda (_%hd3045330483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%init3045930486%_)
                          (if (gx#stx-pair? _%hd3045330483%_)
                              (let ((_%e3045630488%_
                                     (gx#syntax-e _%hd3045330483%_)))
                                (let ((_%lp-hd3045730492%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3045630488%_)))
                                      (_%lp-tl3045830495%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3045630488%_))))
                                  (_%loop3045530479%_
                                   _%lp-tl3045830495%_
                                   (cons _%lp-hd3045730492%_
                                         _%init3045930486%_))))
                              (let ((_%init3046030498%_
                                     (reverse _%init3045930486%_)))
                                ((lambda (_%g3045130501%_)
                                   (let* ((_%g3051830526%_
                                           (lambda (_%g3051930522%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g3051930522%_)))
                                          (_%g3051730895%_
                                           (lambda (_%g3051930530%_)
                                             ((lambda (_%g3052030533%_)
                                                (let* ((_%g3054630554%_
                                                        (lambda (_%g3054730550%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g3054730550%_)))
                                                       (_%g3054530891%_
                                                        (lambda (_%g3054730558%_)
                                                          ((lambda (_%g3054830561%_)
                                                             (let* ((_%g3057430582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g3057530578%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g3057530578%_)))
                            (_%g3057330887%_
                             (lambda (_%g3057530586%_)
                               ((lambda (_%g3057630589%_)
                                  (let* ((_%g3060230610%_
                                          (lambda (_%g3060330606%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3060330606%_)))
                                         (_%g3060130883%_
                                          (lambda (_%g3060330614%_)
                                            ((lambda (_%g3060430617%_)
                                               (let* ((_%g3063030638%_
                                                       (lambda (_%g3063130634%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g3063130634%_)))
                                                      (_%g3062930879%_
                                                       (lambda (_%g3063130642%_)
                                                         ((lambda (_%g3063230645%_)
                                                            (let* ((_%g3065830666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3065930662%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3065930662%_)))
                           (_%g3065730875%_
                            (lambda (_%g3065930670%_)
                              ((lambda (_%g3066030673%_)
                                 (let* ((_%g3068630694%_
                                         (lambda (_%g3068730690%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3068730690%_)))
                                        (_%g3068530871%_
                                         (lambda (_%g3068730698%_)
                                           ((lambda (_%g3068830701%_)
                                              (let* ((_%g3071430722%_
                                                      (lambda (_%g3071530718%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3071530718%_)))
                                                     (_%g3071330856%_
                                                      (lambda (_%g3071530726%_)
                                                        ((lambda (_%g3071630729%_)
                                                           (let* ((_%g3074230750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g3074330746%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3074330746%_)))
                          (_%g3074130844%_
                           (lambda (_%g3074330754%_)
                             ((lambda (_%g3074430757%_)
                                (let* ((_%g3077030778%_
                                        (lambda (_%g3077130774%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3077130774%_)))
                                       (_%g3076930840%_
                                        (lambda (_%g3077130782%_)
                                          ((lambda (_%g3077230785%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%g3054830561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%g3066030673%_
                                                     (foldr (lambda (_%g3079930810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g3080030813%_)
                      (cons _%g3079930810%_ _%g3080030813%_))
                    '()
                    _%g3031430364%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%g3068830701%_ '())))
                                   '()))
                       (cons (cons _%g3060430617%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%g3063230645%_
                                                           (cons _%g3066030673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3080130816%_ _%g3080230819%_)
                                  (cons _%g3080130816%_ _%g3080230819%_))
                                '()
                                _%g3038230432%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%g3077230785%_
                                                           '())))
                                         '()))
                             (cons (cons _%g3057630589%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%g3066030673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3080330822%_ _%g3080430825%_)
                                  (cons _%g3080330822%_ _%g3080430825%_))
                                '()
                                _%g3038230432%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%g3066030673%_ '()))
                                     (cons (cons _%g3060430617%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%g3066030673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%g3066030673%_
                     (foldr (lambda (_%g3080530828%_ _%g3080630831%_)
                              (cons _%g3080530828%_ _%g3080630831%_))
                            '()
                            _%g3038230432%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%g3074430757%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%g3057630589%_
                             (cons _%g3052030533%_
                                   (foldr (lambda (_%g3080730834%_
                                                   _%g3080830837%_)
                                            (cons _%g3080730834%_
                                                  _%g3080830837%_))
                                          '()
                                          _%g3045130501%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3077130782%_))))
                                  (_%g3076930840%_
                                   (_%generate129667%_
                                    _%g3063230645%_
                                    _%hd30307%_
                                    _%g3071630729%_
                                    _%g3074430757%_))))
                              _%g3074330754%_))))
                     (_%g3074130844%_
                      (cons _%g3054830561%_
                            (cons _%g3066030673%_
                                  (foldr (lambda (_%g3084730850%_
                                                  _%g3084830853%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%g3084730850%_
                                                             '()))
                                                 _%g3084830853%_))
                                         '()
                                         _%g3038230432%_))))))
                 _%g3071530726%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3071330856%_
                                                 (cons _%g3057630589%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%g3066030673%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets
                        _%g3038230432%_
                        _%g3031430364%_)
                       (foldr (lambda (_%g3085930863%_
                                       _%g3086030866%_
                                       _%g3086130868%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%g3086030866%_
                                                  (cons _%g3085930863%_ '())))
                                      _%g3086130868%_))
                              '()
                              _%g3038230432%_
                              _%g3031430364%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g3068730698%_))))
                                   (_%g3068530871%_
                                    (_%generate129667%_
                                     _%g3066030673%_
                                     _%rest30308%_
                                     _%K30309%_
                                     _%E30310%_))))
                               _%g3065930670%_))))
                      (_%g3065730875%_ (gx#genident 'rest))))
                  _%g3063130642%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3062930879%_
                                                  (gx#genident 'hd))))
                                             _%g3060330614%_))))
                                    (_%g3060130883%_
                                     (gx#genident 'splice-try))))
                                _%g3057530586%_))))
                       (_%g3057330887%_ (gx#genident 'splice-loop))))
                   _%g3054730558%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g3054530891%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%g3051930530%_))))
                                     (_%g3051730895%_ _%tgt30305%_)))
                                 _%init3046030498%_))))))
                (_%loop3045530479%_ _%target3045230473%_ '()))
              (_%g3044930466%_ _%g3045030470%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g3044930466%_
                                             _%g3045030470%_)))))
                                (_%g3044830899%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%g3090230905%_
                                                   _%g3090330908%_)
                                            (cons _%g3090230905%_
                                                  _%g3090330908%_))
                                          '()
                                          _%g3031430364%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%var-r3039130429%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop3038630410%_
                                                    _%target3038330404%_
                                                    '()))
                                                 (_%g3038030397%_
                                                  _%g3038130401%_)))))
                                       (_%g3038030397%_ _%g3038130401%_)))))
                           (_%g3037930911%_
                            (gx#gentemps
                             (foldr (lambda (_%g3091430917%_ _%g3091530920%_)
                                      (cons _%g3091430917%_ _%g3091530920%_))
                                    '()
                                    _%g3031430364%_)))))
                       _%var3032330361%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop3031830342%_
                                               _%target3031530336%_
                                               '()))
                                            (_%g3031230329%_
                                             _%g3031330333%_)))))
                                  (_%g3031230329%_ _%g3031330333%_)))))
                      (_%g3031130923%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd30307%_)))))
                 (_%generate-simple-vector29670%_
                  (lambda (_%tgt30128%_
                           _%body30130%_
                           _%start30131%_
                           _%ref30132%_
                           _%K30133%_
                           _%E30134%_)
                    (let _%recur30136%_ ((_%rest30139%_ _%body30130%_)
                                         (_%off30141%_ _%start30131%_))
                      (let* ((_%__stx3960939610%_ _%rest30139%_)
                             (_%g3014430156%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3960939610%_))))
                        (let ((_%__kont3961239613%_
                               (lambda (_%g3014630184%_ _%g3014730186%_)
                                 (let* ((_%g3020130224%_
                                         (lambda (_%g3020230220%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3020230220%_)))
                                        (_%g3020030297%_
                                         (lambda (_%g3020230228%_)
                                           (if (gx#stx-pair? _%g3020230228%_)
                                               (let ((_%e3020730231%_
                                                      (gx#syntax-e
                                                       _%g3020230228%_)))
                                                 (let ((_%hd3020830235%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3020730231%_)))
                                                       (_%tl3020930238%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3020730231%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3020930238%_)
                                                       (let ((_%e3021030241%_
                                                              (gx#syntax-e
                                                               _%tl3020930238%_)))
                                                         (let ((_%hd3021130245%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e3021030241%_)))
                       (_%tl3021230248%_
                        (let () (declare (not safe)) (##cdr _%e3021030241%_))))
                   (if (gx#stx-pair? _%tl3021230248%_)
                       (let ((_%e3021330251%_ (gx#syntax-e _%tl3021230248%_)))
                         (let ((_%hd3021430255%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3021330251%_)))
                               (_%tl3021530258%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3021330251%_))))
                           (if (gx#stx-pair? _%tl3021530258%_)
                               (let ((_%e3021630261%_
                                      (gx#syntax-e _%tl3021530258%_)))
                                 (let ((_%hd3021730265%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3021630261%_)))
                                       (_%tl3021830268%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3021630261%_))))
                                   (if (gx#stx-null? _%tl3021830268%_)
                                       ((lambda (_%g3020330271%_
                                                 _%g3020430273%_
                                                 _%g3020530274%_
                                                 _%g3020630275%_)
                                          (cons 'let
                                                (cons (cons (cons _%g3020630275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _%g3020330271%_
                                      (cons _%g3020530274%_
                                            (cons _%g3020430273%_ '())))
                                '()))
                    '())
              (cons (_%generate129667%_
                     _%g3020630275%_
                     _%g3014730186%_
                     (_%recur30136%_ _%g3014630184%_ (fx1+ _%off30141%_))
                     _%E30134%_)
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%hd3021730265%_
                                        _%hd3021430255%_
                                        _%hd3021130245%_
                                        _%hd3020830235%_)
                                       (_%g3020130224%_ _%g3020230228%_))))
                               (_%g3020130224%_ _%g3020230228%_))))
                       (_%g3020130224%_ _%g3020230228%_))))
               (_%g3020130224%_ _%g3020230228%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3020130224%_
                                                _%g3020230228%_)))))
                                   (_%g3020030297%_
                                    (list (gx#genident 'e)
                                          _%tgt30128%_
                                          _%off30141%_
                                          _%ref30132%_)))))
                              (_%__kont3961439615%_ (lambda () _%K30133%_)))
                          (if (gx#stx-pair? _%__stx3960939610%_)
                              (let ((_%e3014830174%_
                                     (gx#syntax-e _%__stx3960939610%_)))
                                (let ((_%tl3015030181%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3014830174%_)))
                                      (_%hd3014930178%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3014830174%_))))
                                  (_%__kont3961239613%_
                                   _%tl3015030181%_
                                   _%hd3014930178%_)))
                              (_%__kont3961439615%_)))))))
                 (_%generate-list-vector29671%_
                  (lambda (_%tgt30020%_
                           _%body30022%_
                           _%->list30023%_
                           _%K30024%_
                           _%E30025%_)
                    (let* ((_%g3002730035%_
                            (lambda (_%g3002830031%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3002830031%_)))
                           (_%g3002630124%_
                            (lambda (_%g3002830039%_)
                              ((lambda (_%g3002930042%_)
                                 (let* ((_%g3005430062%_
                                         (lambda (_%g3005530058%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3005530058%_)))
                                        (_%g3005330120%_
                                         (lambda (_%g3005530066%_)
                                           ((lambda (_%g3005630069%_)
                                              (let* ((_%g3008230090%_
                                                      (lambda (_%g3008330086%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3008330086%_)))
                                                     (_%g3008130112%_
                                                      (lambda (_%g3008330094%_)
                                                        ((lambda (_%g3008430097%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%g3002930042%_
                                           (cons _%g3008430097%_ '()))
                                     '())
                               (cons (_%generate129667%_
                                      _%g3002930042%_
                                      _%body30022%_
                                      _%K30024%_
                                      _%E30025%_)
                                     '()))))
                 _%g3008330094%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3008130112%_
                                                 (let ((_%$e30116%_
                                                        _%->list30023%_))
                                                   (if (eq? 'values->list
                                                            _%$e30116%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%g3005630069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e30116%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%g3005630069%_ '()))
                   (if (eq? 'struct->list _%$e30116%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax '#f 'struct->list)
                                         (cons _%g3005630069%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx29660%_
                        _%->list30023%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g3005530066%_))))
                                   (_%g3005330120%_ _%tgt30020%_)))
                               _%g3002830039%_))))
                      (_%g3002630124%_ (gx#genident 'e)))))
                 (_%generate-struct29672%_
                  (lambda (_%info29891%_
                           _%tgt29893%_
                           _%body29894%_
                           _%K29895%_
                           _%E29896%_)
                    (let* ((_%__stx3962539626%_ _%body29894%_)
                           (_%g2989929922%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3962539626%_))))
                      (let ((_%__kont3962839629%_
                             (lambda (_%g2990129999%_)
                               (let ((_%fields30013%_
                                      (_%struct-field-accessors29674%_
                                       _%info29891%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj40379
                                                          _%info29891%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj40379
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj40379
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj40379
                                                          'predicate)))
                                                   (cons _%tgt29893%_ '()))
                                             (cons (_%generate-simple-struct-body29673%_
                                                    _%info29891%_
                                                    _%tgt29893%_
                                                    _%g2990129999%_
                                                    _%K29895%_
                                                    _%E29896%_)
                                                   (cons _%E29896%_ '())))))))
                            (_%__kont3963039631%_
                             (lambda (_%g2990929953%_)
                               (cons 'if
                                     (cons (cons (let ((__obj40380
                                                        _%info29891%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj40380
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj40380
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj40380
                                                        'predicate)))
                                                 (cons _%tgt29893%_ '()))
                                           (cons (_%generate-list-vector29671%_
                                                  _%tgt29893%_
                                                  _%g2990929953%_
                                                  'struct->list
                                                  _%K29895%_
                                                  _%E29896%_)
                                                 (cons _%E29896%_ '())))))))
                        (if (gx#stx-pair? _%__stx3962539626%_)
                            (let ((_%e2990229975%_
                                   (gx#syntax-e _%__stx3962539626%_)))
                              (let ((_%tl2990429982%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2990229975%_)))
                                    (_%hd2990329979%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2990229975%_))))
                                (if (gx#stx-datum? _%hd2990329979%_)
                                    (let ((_%e2990529985%_
                                           (gx#stx-e _%hd2990329979%_)))
                                      (if (equal? _%e2990529985%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2990429982%_)
                                              (let ((_%e2990629989%_
                                                     (gx#syntax-e
                                                      _%tl2990429982%_)))
                                                (let ((_%tl2990829996%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2990629989%_)))
                                                      (_%hd2990729993%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2990629989%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2990829996%_)
                                                      (_%__kont3962839629%_
                                                       _%hd2990729993%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2989929922%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2989929922%_)))
                                          (if (equal? _%e2990529985%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2990429982%_)
                                                  (let ((_%e2991429943%_
                                                         (gx#syntax-e
                                                          _%tl2990429982%_)))
                                                    (let ((_%tl2991629950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2991429943%_)))
                                                          (_%hd2991529947%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2991429943%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2991629950%_)
                                                          (_%__kont3963039631%_
                                                           _%hd2991529947%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2989929922%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2989929922%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2989929922%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2989929922%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2989929922%_)))))))
                 (_%generate-simple-struct-body29673%_
                  (lambda (_%info29811%_
                           _%tgt29813%_
                           _%body29814%_
                           _%K29815%_
                           _%E29816%_)
                    (let _%recur29818%_ ((_%rest29821%_ _%body29814%_)
                                         (_%fields29823%_
                                          (_%struct-field-accessors29674%_
                                           _%info29811%_)))
                      (let* ((_%__stx3967539676%_ _%rest29821%_)
                             (_%g2982629838%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3967539676%_))))
                        (let ((_%__kont3967839679%_
                               (lambda (_%g2982829866%_ _%g2982929868%_)
                                 (if (null? _%fields29823%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29660%_
                                      _%info29811%_
                                      (let ((__obj40381 _%info29811%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj40381
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj40381
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj40381
                                             'name))))
                                     (let ((_%$tgt29883%_ (gx#genident 'e))
                                           (_%getf29885%_
                                            (car _%fields29823%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29883%_
                                                               (cons (cons _%getf29885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29813%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129667%_
                                                          _%$tgt29883%_
                                                          _%g2982929868%_
                                                          (_%recur29818%_
                                                           _%g2982829866%_
                                                           (cdr _%fields29823%_))
                                                          _%E29816%_)
                                                         '())))))))
                              (_%__kont3968039681%_ (lambda () _%K29815%_)))
                          (if (gx#stx-pair? _%__stx3967539676%_)
                              (let ((_%e2983029856%_
                                     (gx#syntax-e _%__stx3967539676%_)))
                                (let ((_%tl2983229863%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2983029856%_)))
                                      (_%hd2983129860%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2983029856%_))))
                                  (_%__kont3967839679%_
                                   _%tl2983229863%_
                                   _%hd2983129860%_)))
                              (_%__kont3968039681%_)))))))
                 (_%struct-field-accessors29674%_
                  (lambda (_%info29792%_)
                    (let _%recur29795%_ ((_%next29798%_
                                          (cons _%info29792%_ '())))
                      (if (null? _%next29798%_)
                          '()
                          (let ((_%ti29801%_ (car _%next29798%_)))
                            (let ((__tmp40413
                                   (_%recur29795%_
                                    (map gx#syntax-local-value
                                         (let ((__obj40382 _%ti29801%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj40382
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj40382
                                                  '4
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj40382
                                                'super))))))
                                  (__tmp40412
                                   (map (lambda (_%slot29804%_)
                                          (let ((_%$e29807%_
                                                 (agetq _%slot29804%_
                                                        (let ((__obj40383
                                                               _%ti29801%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj40383
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj40383 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj40383
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29807%_
                                                _%$e29807%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29660%_
                                                 _%info29792%_
                                                 _%slot29804%_))))
                                        (let ((__obj40384 _%ti29801%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj40384
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj40384
                                                 '5
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj40384
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp40413 __tmp40412)))))))
                 (_%generate-class29675%_
                  (lambda (_%info29785%_
                           _%tgt29787%_
                           _%body29788%_
                           _%K29789%_
                           _%E29790%_)
                    (cons 'if
                          (cons (cons (let ((__obj40385 _%info29785%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj40385
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj40385
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj40385
                                             'predicate)))
                                      (cons _%tgt29787%_ '()))
                                (cons (_%generate-class-body29676%_
                                       _%info29785%_
                                       _%tgt29787%_
                                       _%body29788%_
                                       _%K29789%_
                                       _%E29790%_)
                                      (cons _%E29790%_ '()))))))
                 (_%generate-class-body29676%_
                  (lambda (_%info29678%_
                           _%tgt29680%_
                           _%body29681%_
                           _%K29682%_
                           _%E29683%_)
                    (let _%recur29685%_ ((_%rest29688%_ _%body29681%_))
                      (let* ((_%__stx3969139692%_ _%rest29688%_)
                             (_%g2969229708%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3969139692%_))))
                        (let ((_%__kont3969439695%_
                               (lambda (_%g2969429746%_
                                        _%g2969529748%_
                                        _%g2969629749%_)
                                 (let ((_%$e29769%_
                                        (agetq (let ((__tmp40414
                                                      (keyword->string
                                                       (gx#stx-e
                                                        _%g2969629749%_))))
                                                 (declare (not safe))
                                                 (##string->symbol __tmp40414))
                                               (let ((__obj40386
                                                      _%info29678%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj40386
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj40386
                                                        '17
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj40386
                                                      'unchecked-accessors))))))
                                   (if _%$e29769%_
                                       ((lambda (_%getf29773%_)
                                          (let ((_%$tgt29776%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt29776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf29773%_ (cons _%tgt29680%_ '()))
                                  '()))
                      '())
                (cons (_%generate129667%_
                       _%$tgt29776%_
                       _%g2969529748%_
                       (_%recur29685%_ _%g2969429746%_)
                       _%E29683%_)
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e29769%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx29660%_
                                        _%info29678%_
                                        _%g2969629749%_)))))
                              (_%__kont3969639697%_ (lambda () _%K29682%_)))
                          (if (gx#stx-pair? _%__stx3969139692%_)
                              (let ((_%e2969729726%_
                                     (gx#syntax-e _%__stx3969139692%_)))
                                (let ((_%tl2969929733%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2969729726%_)))
                                      (_%hd2969829730%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2969729726%_))))
                                  (if (gx#stx-pair? _%tl2969929733%_)
                                      (let ((_%e2970029736%_
                                             (gx#syntax-e _%tl2969929733%_)))
                                        (let ((_%tl2970229743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2970029736%_)))
                                              (_%hd2970129740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2970029736%_))))
                                          (_%__kont3969439695%_
                                           _%tl2970229743%_
                                           _%hd2970129740%_
                                           _%hd2969829730%_)))
                                      (_%__kont3969639697%_))))
                              (_%__kont3969639697%_))))))))
          (_%generate129667%_
           _%tgt29662%_
           _%ptree29663%_
           _%K29664%_
           _%E29665%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx28479%_ _%tgt-lst28481%_ _%clauses28482%_)
        (letrec ((_%parse-body28484%_
                  (lambda (_%hd-len29482%_)
                    (let _%lp29485%_ ((_%rest29488%_ _%clauses28482%_)
                                      (_%r29490%_ '()))
                      (let* ((_%__stx3974139742%_ _%rest29488%_)
                             (_%g2949329505%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3974139742%_))))
                        (let ((_%__kont3974439745%_
                               (lambda (_%g2949529533%_ _%g2949629535%_)
                                 (let* ((_%__stx3971339714%_ _%g2949629535%_)
                                        (_%g2955229568%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3971339714%_))))
                                   (let ((_%__kont3971639717%_
                                          (lambda (_%g2955429637%_)
                                            (if (gx#stx-null? _%g2949529533%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%g2955429637%_)
                                 (let ((_%$e29648%_
                                        (gx#stx-source _%g2949629535%_)))
                                   (if _%$e29648%_
                                       _%$e29648%_
                                       (gx#stx-source _%stx28479%_))))
                                '())))
              _%r29490%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx28479%_
                                                 _%g2949629535%_))))
                                         (_%__kont3971839719%_
                                          (lambda (_%g2955829596%_
                                                   _%g2955929598%_)
                                            (_%lp29485%_
                                             _%g2949529533%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g2961029612%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g2961029612%_
                           _%stx28479%_))
                        _%g2955929598%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin)
                                    _%g2955829596%_)
                              (let ((_%$e29616%_
                                     (gx#stx-source _%g2949629535%_)))
                                (if _%$e29616%_
                                    _%$e29616%_
                                    (gx#stx-source _%stx28479%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r29490%_))))
                                         (_%__kont3972039721%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx28479%_
                                             _%g2949629535%_))))
                                     (let* ((_%__match3973839739%_
                                             (lambda (_%e2956029586%_
                                                      _%hd2956129590%_
                                                      _%tl2956229593%_)
                                               (let ((_%g2955829596%_
                                                      _%tl2956229593%_)
                                                     (_%g2955929598%_
                                                      _%hd2956129590%_))
                                                 (if (and (gx#stx-list?
                                                           _%g2955929598%_)
                                                          (fx= (gx#stx-length
                                                                _%g2955929598%_)
                                                               _%hd-len29482%_)
                                                          (gx#stx-list?
                                                           _%g2955829596%_)
                                                          (not (gx#stx-null?
                                                                _%g2955829596%_)))
                                                     (_%__kont3971839719%_
                                                      _%g2955829596%_
                                                      _%g2955929598%_)
                                                     (_%__kont3972039721%_)))))
                                            (_%__match3973239733%_
                                             (lambda (_%e2955529627%_
                                                      _%hd2955629631%_
                                                      _%tl2955729634%_)
                                               (let ((_%g2955429637%_
                                                      _%tl2955729634%_))
                                                 (if (and (gx#stx-list?
                                                           _%g2955429637%_)
                                                          (not (gx#stx-null?
                                                                _%g2955429637%_)))
                                                     (_%__kont3971639717%_
                                                      _%g2955429637%_)
                                                     (_%__match3973839739%_
                                                      _%e2955529627%_
                                                      _%hd2955629631%_
                                                      _%tl2955729634%_))))))
                                       (if (gx#stx-pair? _%__stx3971339714%_)
                                           (let ((_%e2955529627%_
                                                  (gx#syntax-e
                                                   _%__stx3971339714%_)))
                                             (let ((_%tl2955729634%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2955529627%_)))
                                                   (_%hd2955629631%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2955529627%_))))
                                               (if (gx#identifier?
                                                    _%hd2955629631%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g40415_|
                                                        _%hd2955629631%_)
                                                       (_%__match3973239733%_
                                                        _%e2955529627%_
                                                        _%hd2955629631%_
                                                        _%tl2955729634%_)
                                                       (_%__match3973839739%_
                                                        _%e2955529627%_
                                                        _%hd2955629631%_
                                                        _%tl2955729634%_))
                                                   (_%__match3973839739%_
                                                    _%e2955529627%_
                                                    _%hd2955629631%_
                                                    _%tl2955729634%_))))
                                           (_%__kont3972039721%_)))))))
                              (_%__kont3974639747%_ (lambda () _%r29490%_)))
                          (if (gx#stx-pair? _%__stx3974139742%_)
                              (let ((_%e2949729523%_
                                     (gx#syntax-e _%__stx3974139742%_)))
                                (let ((_%tl2949929530%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2949729523%_)))
                                      (_%hd2949829527%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2949729523%_))))
                                  (_%__kont3974439745%_
                                   _%tl2949929530%_
                                   _%hd2949829527%_)))
                              (_%__kont3974639747%_)))))))
                 (_%generate-body28486%_
                  (lambda (_%body29188%_)
                    (let* ((_%g2919129199%_
                            (lambda (_%g2919229195%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2919229195%_)))
                           (_%g2919029478%_
                            (lambda (_%g2919229203%_)
                              ((lambda (_%g2919329206%_)
                                 (let* ((_%g2921829235%_
                                         (lambda (_%g2921929231%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2921929231%_)))
                                        (_%g2921729474%_
                                         (lambda (_%g2921929239%_)
                                           (if (gx#stx-pair/null?
                                                _%g2921929239%_)
                                               (let ((_g40416_
                                                      (gx#syntax-split-splice
                                                       _%g2921929239%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g40417_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g40416_)
                        (##values-length _g40416_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g40417_ 2)))
                 (error "Context expects 2 values" _g40417_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target2922129242%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40416_
                                                             0)))
                                                         (_%tl2922329245%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40416_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl2922329245%_)
                                                         (letrec ((_%loop2922429248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd2922229252%_ _%target2922829255%_)
                             (if (gx#stx-pair? _%hd2922229252%_)
                                 (let ((_%e2922529257%_
                                        (gx#syntax-e _%hd2922229252%_)))
                                   (let ((_%lp-hd2922629261%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2922529257%_)))
                                         (_%lp-tl2922729264%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2922529257%_))))
                                     (_%loop2922429248%_
                                      _%lp-tl2922729264%_
                                      (cons _%lp-hd2922629261%_
                                            _%target2922829255%_))))
                                 (let ((_%target2922929267%_
                                        (reverse _%target2922829255%_)))
                                   ((lambda (_%g2922029270%_)
                                      (let* ((_%g2928729304%_
                                              (lambda (_%g2928829300%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2928829300%_)))
                                             (_%g2928629470%_
                                              (lambda (_%g2928829308%_)
                                                (if (gx#stx-pair/null?
                                                     _%g2928829308%_)
                                                    (let ((_g40418_
                                                           (gx#syntax-split-splice
                                                            _%g2928829308%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g40419_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g40418_)
                             (##values-length _g40418_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g40419_ 2)))
                      (error "Context expects 2 values" _g40419_)))
                (let ((_%target2929029311%_
                       (let () (declare (not safe)) (##values-ref _g40418_ 0)))
                      (_%tl2929229314%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g40418_ 1))))
                  (if (gx#stx-null? _%tl2929229314%_)
                      (letrec ((_%loop2929329317%_
                                (lambda (_%hd2929129321%_
                                         _%fail-diagnostic2929729324%_)
                                  (if (gx#stx-pair? _%hd2929129321%_)
                                      (let ((_%e2929429326%_
                                             (gx#syntax-e _%hd2929129321%_)))
                                        (let ((_%lp-hd2929529330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2929429326%_)))
                                              (_%lp-tl2929629333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2929429326%_))))
                                          (_%loop2929329317%_
                                           _%lp-tl2929629333%_
                                           (cons _%lp-hd2929529330%_
                                                 _%fail-diagnostic2929729324%_))))
                                      (let ((_%fail-diagnostic2929829336%_
                                             (reverse _%fail-diagnostic2929729324%_)))
                                        ((lambda (_%g2928929339%_)
                                           (let* ((_%g2935629364%_
                                                   (lambda (_%g2935729360%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2935729360%_)))
                                                  (_%g2935529450%_
                                                   (lambda (_%g2935729368%_)
                                                     ((lambda (_%g2935829371%_)
                                                        (let* ((_%g2938429392%_
                                                                (lambda (_%g2938529388%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2938529388%_)))
                       (_%g2938329446%_
                        (lambda (_%g2938529396%_)
                          ((lambda (_%g2938629399%_)
                             (let* ((_%g2941229420%_
                                     (lambda (_%g2941329416%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2941329416%_)))
                                    (_%g2941129442%_
                                     (lambda (_%g2941329424%_)
                                       ((lambda (_%g2941429427%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%g2941429427%_
                                                            '()))))
                                        _%g2941329424%_))))
                               (_%g2941129442%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%g2919329206%_
                                                         (cons _%g2935829371%_
                                                               '()))
                                                   '())
                                             (cons _%g2938629399%_ '())))
                                 (gx#stx-source _%stx28479%_)))))
                           _%g2938529396%_))))
                  (_%g2938329446%_
                   (_%generate-clauses28487%_
                    _%body29188%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%g2919329206%_ '()) '())))))))
              _%g2935729368%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2935529450%_
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
                                     (foldr (lambda (_%g2945329458%_
                                                     _%g2945429461%_)
                                              (cons _%g2945329458%_
                                                    _%g2945429461%_))
                                            (foldr (lambda (_%g2945529464%_
                                                            _%g2945629467%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g2945529464%_ '()))
                   _%g2945629467%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%g2928929339%_)
                                            _%g2922029270%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx28479%_)))))
                                         _%fail-diagnostic2929829336%_))))))
                        (_%loop2929329317%_ _%target2929029311%_ '()))
                      (_%g2928729304%_ _%g2928829308%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2928729304%_
                                                     _%g2928829308%_)))))
                                        (_%g2928629470%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses28482%_))))
                                    _%target2922929267%_))))))
                   (_%loop2922429248%_ _%target2922129242%_ '()))
                 (_%g2921829235%_ _%g2921929239%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2921829235%_
                                                _%g2921929239%_)))))
                                   (_%g2921729474%_ _%tgt-lst28481%_)))
                               _%g2919229203%_))))
                      (_%g2919029478%_ (gx#genident 'E)))))
                 (_%generate-clauses28487%_
                  (lambda (_%rest28840%_ _%E28842%_)
                    (let* ((_%__stx3975739758%_ _%rest28840%_)
                           (_%g2884628862%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3975739758%_))))
                      (let ((_%__kont3976039761%_
                             (lambda (_%g2884829096%_)
                               (let* ((_%g2910729125%_
                                       (lambda (_%g2910829121%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2910829121%_)))
                                      (_%g2910629180%_
                                       (lambda (_%g2910829129%_)
                                         (if (gx#stx-pair? _%g2910829129%_)
                                             (let ((_%e2911129132%_
                                                    (gx#syntax-e
                                                     _%g2910829129%_)))
                                               (let ((_%hd2911229136%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2911129132%_)))
                                                     (_%tl2911329139%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2911129132%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2911329139%_)
                                                     (let ((_%e2911429142%_
                                                            (gx#syntax-e
                                                             _%tl2911329139%_)))
                                                       (let ((_%hd2911529146%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2911429142%_)))
                     (_%tl2911629149%_
                      (let () (declare (not safe)) (##cdr _%e2911429142%_))))
                 (if (gx#stx-pair? _%tl2911629149%_)
                     (let ((_%e2911729152%_ (gx#syntax-e _%tl2911629149%_)))
                       (let ((_%hd2911829156%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2911729152%_)))
                             (_%tl2911929159%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2911729152%_))))
                         (if (gx#stx-null? _%tl2911929159%_)
                             ((lambda (_%g2910929162%_ _%g2911029164%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e
                                                       _%g2911029164%_)
                                                      (_%generate128488%_
                                                       _%g2911029164%_
                                                       _%g2910929162%_
                                                       _%E28842%_)
                                                      _%g2910929162%_)
                                                  '()))))
                              _%hd2911829156%_
                              _%hd2911529146%_)
                             (_%g2910729125%_ _%g2910829129%_))))
                     (_%g2910729125%_ _%g2910829129%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2910729125%_
                                                      _%g2910829129%_))))
                                             (_%g2910729125%_
                                              _%g2910829129%_)))))
                                 (_%g2910629180%_ _%g2884829096%_))))
                            (_%__kont3976239763%_
                             (lambda (_%g2885228890%_ _%g2885328892%_)
                               (let* ((_%g2890528924%_
                                       (lambda (_%g2890628920%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2890628920%_)))
                                      (_%g2890429075%_
                                       (lambda (_%g2890628928%_)
                                         (if (gx#stx-pair? _%g2890628928%_)
                                             (let ((_%e2891028931%_
                                                    (gx#syntax-e
                                                     _%g2890628928%_)))
                                               (let ((_%hd2891128935%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2891028931%_)))
                                                     (_%tl2891228938%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2891028931%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2891228938%_)
                                                     (let ((_%e2891328941%_
                                                            (gx#syntax-e
                                                             _%tl2891228938%_)))
                                                       (let ((_%hd2891428945%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2891328941%_)))
                     (_%tl2891528948%_
                      (let () (declare (not safe)) (##cdr _%e2891328941%_))))
                 (if (gx#stx-pair? _%tl2891528948%_)
                     (let ((_%e2891628951%_ (gx#syntax-e _%tl2891528948%_)))
                       (let ((_%hd2891728955%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2891628951%_)))
                             (_%tl2891828958%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2891628951%_))))
                         (if (gx#stx-null? _%tl2891828958%_)
                             ((lambda (_%g2890728961%_
                                       _%g2890828963%_
                                       _%g2890928964%_)
                                (if (gx#stx-e _%g2890828963%_)
                                    (let* ((_%g2898128996%_
                                            (lambda (_%g2898228992%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2898228992%_)))
                                           (_%g2898029041%_
                                            (lambda (_%g2898229000%_)
                                              (if (gx#stx-pair?
                                                   _%g2898229000%_)
                                                  (let ((_%e2898529003%_
                                                         (gx#syntax-e
                                                          _%g2898229000%_)))
                                                    (let ((_%hd2898629007%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2898529003%_)))
                                                          (_%tl2898729010%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2898529003%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl2898729010%_)
                                                          (let ((_%e2898829013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2898729010%_)))
                    (let ((_%hd2898929017%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2898829013%_)))
                          (_%tl2899029020%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2898829013%_))))
                      (if (gx#stx-null? _%tl2899029020%_)
                          ((lambda (_%g2898329023%_ _%g2898429025%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _%g2890928964%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%g2898429025%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%g2898329023%_ '()))))
                           _%hd2898929017%_
                           _%hd2898629007%_)
                          (_%g2898128996%_ _%g2898229000%_))))
                  (_%g2898128996%_ _%g2898229000%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2898128996%_
                                                   _%g2898229000%_)))))
                                      (_%g2898029041%_
                                       (list (_%generate128488%_
                                              _%g2890828963%_
                                              _%g2890728961%_
                                              _%E28842%_)
                                             (_%generate-clauses28487%_
                                              _%g2885228890%_
                                              (cons _%g2890928964%_ '())))))
                                    (let* ((_%g2904529053%_
                                            (lambda (_%g2904629049%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2904629049%_)))
                                           (_%g2904429071%_
                                            (lambda (_%g2904629057%_)
                                              ((lambda (_%g2904729060%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g2890928964%_
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
                             (cons _%g2890728961%_ '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons _%g2904729060%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2904629057%_))))
                                      (_%g2904429071%_
                                       (_%generate-clauses28487%_
                                        _%g2885228890%_
                                        (cons _%g2890928964%_ '()))))))
                              _%hd2891728955%_
                              _%hd2891428945%_
                              _%hd2891128935%_)
                             (_%g2890528924%_ _%g2890628928%_))))
                     (_%g2890528924%_ _%g2890628928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2890528924%_
                                                      _%g2890628928%_))))
                                             (_%g2890528924%_
                                              _%g2890628928%_)))))
                                 (_%g2890429075%_ _%g2885328892%_))))
                            (_%__kont3976439765%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28842%_ '()))))))
                        (if (gx#stx-pair? _%__stx3975739758%_)
                            (let ((_%e2884929086%_
                                   (gx#syntax-e _%__stx3975739758%_)))
                              (let ((_%tl2885129093%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2884929086%_)))
                                    (_%hd2885029090%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2884929086%_))))
                                (if (gx#stx-null? _%tl2885129093%_)
                                    (_%__kont3976039761%_ _%hd2885029090%_)
                                    (_%__kont3976239763%_
                                     _%tl2885129093%_
                                     _%hd2885029090%_))))
                            (_%__kont3976439765%_))))))
                 (_%generate128488%_
                  (lambda (_%clause28490%_ _%body28492%_ _%E28493%_)
                    (let* ((_%g2849528519%_
                            (lambda (_%g2849628515%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2849628515%_)))
                           (_%g2849428836%_
                            (lambda (_%g2849628523%_)
                              (if (gx#stx-pair? _%g2849628523%_)
                                  (let ((_%e2849928526%_
                                         (gx#syntax-e _%g2849628523%_)))
                                    (let ((_%hd2850028530%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2849928526%_)))
                                          (_%tl2850128533%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2849928526%_))))
                                      (if (gx#stx-pair? _%tl2850128533%_)
                                          (let ((_%e2850228536%_
                                                 (gx#syntax-e
                                                  _%tl2850128533%_)))
                                            (let ((_%hd2850328540%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2850228536%_)))
                                                  (_%tl2850428543%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2850228536%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2850328540%_)
                                                  (let ((_g40420_
                                                         (gx#syntax-split-splice
                                                          _%hd2850328540%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g40421_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g40420_)
                           (##values-length _g40420_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g40421_ 2)))
                    (error "Context expects 2 values" _g40421_)))
              (let ((_%target2850528546%_
                     (let () (declare (not safe)) (##values-ref _g40420_ 0)))
                    (_%tl2850728549%_
                     (let () (declare (not safe)) (##values-ref _g40420_ 1))))
                (if (gx#stx-null? _%tl2850728549%_)
                    (letrec ((_%loop2850828552%_
                              (lambda (_%hd2850628556%_ _%var2851228559%_)
                                (if (gx#stx-pair? _%hd2850628556%_)
                                    (let ((_%e2850928561%_
                                           (gx#syntax-e _%hd2850628556%_)))
                                      (let ((_%lp-hd2851028565%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2850928561%_)))
                                            (_%lp-tl2851128568%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2850928561%_))))
                                        (_%loop2850828552%_
                                         _%lp-tl2851128568%_
                                         (cons _%lp-hd2851028565%_
                                               _%var2851228559%_))))
                                    (let ((_%var2851328571%_
                                           (reverse _%var2851228559%_)))
                                      (if (gx#stx-null? _%tl2850428543%_)
                                          ((lambda (_%g2849728574%_
                                                    _%g2849828576%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g2859728600%_
                                                                _%g2859828603%_)
                                                         (cons _%g2859728600%_
                                                               _%g2859828603%_))
                                                       '()
                                                       _%g2849728574%_)
                                                _%stx28479%_)
                                               (let* ((_%g2860628614%_
                                                       (lambda (_%g2860728610%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2860728610%_)))
                                                      (_%g2860528708%_
                                                       (lambda (_%g2860728618%_)
                                                         ((lambda (_%g2860828621%_)
                                                            (let* ((_%g2863428642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2863528638%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2863528638%_)))
                           (_%g2863328704%_
                            (lambda (_%g2863528646%_)
                              ((lambda (_%g2863628649%_)
                                 (let* ((_%g2866228670%_
                                         (lambda (_%g2866328666%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2866328666%_)))
                                        (_%g2866128692%_
                                         (lambda (_%g2866328674%_)
                                           ((lambda (_%g2866428677%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%g2849828576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g2866428677%_ '()))
                   (cons _%g2860828621%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx28479%_)))
                                            _%g2866328674%_))))
                                   (_%g2866128692%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%g2869528698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2869628701%_)
                  (cons _%g2869528698%_ _%g2869628701%_))
                '()
                _%g2849728574%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g2863628649%_ '())))
                                     (gx#stx-source _%stx28479%_)))))
                               _%g2863528646%_))))
                      (_%g2863328704%_ _%body28492%_)))
                  _%g2860728618%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2860528708%_
                                                  (let _%recur28712%_ ((_%rest28715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%clause28490%_)
                               (_%rest-targets28717%_ _%tgt-lst28481%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%__stx3978339784%_
                                                            _%rest28715%_)
                                                           (_%g2872028732%_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx3978339784%_))))
                                                      (let ((_%__kont3978639787%_
                                                             (lambda (_%g2872228768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2872328770%_)
                       (let* ((_%g2878528797%_
                               (lambda (_%g2878628793%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2878628793%_)))
                              (_%g2878428828%_
                               (lambda (_%g2878628801%_)
                                 (if (gx#stx-pair? _%g2878628801%_)
                                     (let ((_%e2878928804%_
                                            (gx#syntax-e _%g2878628801%_)))
                                       (let ((_%hd2879028808%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2878928804%_)))
                                             (_%tl2879128811%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2878928804%_))))
                                         ((lambda (_%g2878728814%_
                                                   _%g2878828816%_)
                                            (|gerbil/core/match[1]#generate-match1|
                                             _%stx28479%_
                                             _%g2878828816%_
                                             _%g2872328770%_
                                             (_%recur28712%_
                                              _%g2872228768%_
                                              _%g2878728814%_)
                                             _%E28493%_))
                                          _%tl2879128811%_
                                          _%hd2879028808%_)))
                                     (_%g2878528797%_ _%g2878628801%_)))))
                         (_%g2878428828%_ _%rest-targets28717%_))))
                    (_%__kont3978839789%_
                     (lambda ()
                       (cons _%g2849828576%_
                             (foldr (lambda (_%g2874228745%_ _%g2874328748%_)
                                      (cons _%g2874228745%_ _%g2874328748%_))
                                    '()
                                    _%g2849728574%_)))))
                (if (gx#stx-pair? _%__stx3978339784%_)
                    (let ((_%e2872428758%_ (gx#syntax-e _%__stx3978339784%_)))
                      (let ((_%tl2872628765%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2872428758%_)))
                            (_%hd2872528762%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2872428758%_))))
                        (_%__kont3978639787%_
                         _%tl2872628765%_
                         _%hd2872528762%_)))
                    (_%__kont3978839789%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%var2851328571%_
                                           _%hd2850028530%_)
                                          (_%g2849528519%_
                                           _%g2849628523%_)))))))
                      (_%loop2850828552%_ _%target2850528546%_ '()))
                    (_%g2849528519%_ _%g2849628523%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2849528519%_
                                                   _%g2849628523%_))))
                                          (_%g2849528519%_ _%g2849628523%_))))
                                  (_%g2849528519%_ _%g2849628523%_)))))
                      (_%g2849428836%_
                       (list (gx#genident 'K)
                             (let ((__tmp40422
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause28490%_)))
                               (declare (not safe))
                               (##apply append __tmp40422))))))))
          (_%generate-body28486%_
           (_%parse-body28484%_ (gx#stx-length _%tgt-lst28481%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx28381%_ _%tgt28383%_ _%clauses28384%_)
        (letrec ((_%reclause28386%_
                  (lambda (_%clause28389%_)
                    (let* ((_%__stx3979939800%_ _%clause28389%_)
                           (_%g2839428409%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3979939800%_))))
                      (let ((_%__kont3980239803%_ (lambda () _%clause28389%_))
                            (_%__kont3980439805%_
                             (lambda (_%g2839928437%_ _%g2840028439%_)
                               (gx#stx-wrap-source
                                (cons (cons _%g2840028439%_ '())
                                      _%g2839928437%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3980639807%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx28381%_
                                _%clause28389%_))))
                        (if (gx#stx-pair? _%__stx3979939800%_)
                            (let ((_%e2839628461%_
                                   (gx#syntax-e _%__stx3979939800%_)))
                              (let ((_%tl2839828468%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2839628461%_)))
                                    (_%hd2839728465%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2839628461%_))))
                                (if (gx#identifier? _%hd2839728465%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40423_|
                                         _%hd2839728465%_)
                                        (_%__kont3980239803%_)
                                        (_%__kont3980439805%_
                                         _%tl2839828468%_
                                         _%hd2839728465%_))
                                    (_%__kont3980439805%_
                                     _%tl2839828468%_
                                     _%hd2839728465%_))))
                            (_%__kont3980639807%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx28381%_
           (cons _%tgt28383%_ '())
           (gx#stx-map _%reclause28386%_ _%clauses28384%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35722%_)
        (let* ((_%__stx3982739828%_ _%stx35722%_)
               (_%g3572735756%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3982739828%_))))
          (let ((_%__kont3983039831%_
                 (lambda (_%g3572935996%_)
                   (let* ((_%g3600936017%_
                           (lambda (_%g3601036013%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3601036013%_)))
                          (_%g3600836070%_
                           (lambda (_%g3601036021%_)
                             ((lambda (_%g3601136024%_)
                                (let* ((_%g3603636044%_
                                        (lambda (_%g3603736040%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3603736040%_)))
                                       (_%g3603536066%_
                                        (lambda (_%g3603736048%_)
                                          ((lambda (_%g3603836051%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%g3601136024%_
                                                               '())
                                                         (cons _%g3603836051%_
                                                               '()))))
                                           _%g3603736048%_))))
                                  (_%g3603536066%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%g3601136024%_
                                                _%g3572935996%_))
                                    (gx#stx-source _%stx35722%_)))))
                              _%g3601036021%_))))
                     (_%g3600836070%_ (gx#genident 'e)))))
                (_%__kont3983239833%_
                 (lambda (_%g3573635891%_)
                   (let* ((_%g3590435912%_
                           (lambda (_%g3590535908%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3590535908%_)))
                          (_%g3590335965%_
                           (lambda (_%g3590535916%_)
                             ((lambda (_%g3590635919%_)
                                (let* ((_%g3593135939%_
                                        (lambda (_%g3593235935%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3593235935%_)))
                                       (_%g3593035961%_
                                        (lambda (_%g3593235943%_)
                                          ((lambda (_%g3593335946%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%g3590635919%_
                                                         (cons _%g3593335946%_
                                                               '()))))
                                           _%g3593235943%_))))
                                  (_%g3593035961%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%g3590635919%_
                                                _%g3573635891%_))
                                    (gx#stx-source _%stx35722%_)))))
                              _%g3590535916%_))))
                     (_%g3590335965%_ (gx#genident 'args)))))
                (_%__kont3983439835%_
                 (lambda (_%g3574335783%_ _%g3574435785%_)
                   (let* ((_%g3579935807%_
                           (lambda (_%g3580035803%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3580035803%_)))
                          (_%g3579835860%_
                           (lambda (_%g3580035811%_)
                             ((lambda (_%g3580135814%_)
                                (let* ((_%g3582635834%_
                                        (lambda (_%g3582735830%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3582735830%_)))
                                       (_%g3582535856%_
                                        (lambda (_%g3582735838%_)
                                          ((lambda (_%g3582835841%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%g3580135814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%g3574435785%_ '()))
                       '())
                 (cons _%g3582835841%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3582735838%_))))
                                  (_%g3582535856%_
                                   (|gerbil/core/match[1]#generate-match|
                                    _%stx35722%_
                                    _%g3580135814%_
                                    _%g3574335783%_))))
                              _%g3580035811%_))))
                     (_%g3579835860%_ (gx#genident _%g3574435785%_))))))
            (let* ((_%__match3988039881%_
                    (lambda (_%e3574535763%_
                             _%hd3574635767%_
                             _%tl3574735770%_
                             _%e3574835773%_
                             _%hd3574935777%_
                             _%tl3575035780%_)
                      (let ((_%g3574335783%_ _%tl3575035780%_)
                            (_%g3574435785%_ _%hd3574935777%_))
                        (if (gx#stx-list? _%g3574335783%_)
                            (_%__kont3983439835%_
                             _%g3574335783%_
                             _%g3574435785%_)
                            (let () (declare (not safe)) (_%g3572735756%_))))))
                   (_%__match3986839869%_
                    (lambda (_%e3573735871%_
                             _%hd3573835875%_
                             _%tl3573935878%_
                             _%e3574035881%_
                             _%hd3574135885%_
                             _%tl3574235888%_)
                      (let ((_%g3573635891%_ _%tl3574235888%_))
                        (if (gx#stx-list? _%g3573635891%_)
                            (_%__kont3983239833%_ _%g3573635891%_)
                            (_%__match3988039881%_
                             _%e3573735871%_
                             _%hd3573835875%_
                             _%tl3573935878%_
                             _%e3574035881%_
                             _%hd3574135885%_
                             _%tl3574235888%_)))))
                   (_%__match3985239853%_
                    (lambda (_%e3573035976%_
                             _%hd3573135980%_
                             _%tl3573235983%_
                             _%e3573335986%_
                             _%hd3573435990%_
                             _%tl3573535993%_)
                      (let ((_%g3572935996%_ _%tl3573535993%_))
                        (if (gx#stx-list? _%g3572935996%_)
                            (_%__kont3983039831%_ _%g3572935996%_)
                            (_%__match3988039881%_
                             _%e3573035976%_
                             _%hd3573135980%_
                             _%tl3573235983%_
                             _%e3573335986%_
                             _%hd3573435990%_
                             _%tl3573535993%_))))))
              (if (gx#stx-pair? _%__stx3982739828%_)
                  (let ((_%e3573035976%_ (gx#syntax-e _%__stx3982739828%_)))
                    (let ((_%tl3573235983%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3573035976%_)))
                          (_%hd3573135980%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3573035976%_))))
                      (if (gx#stx-pair? _%tl3573235983%_)
                          (let ((_%e3573335986%_
                                 (gx#syntax-e _%tl3573235983%_)))
                            (let ((_%tl3573535993%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3573335986%_)))
                                  (_%hd3573435990%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3573335986%_))))
                              (if (gx#identifier? _%hd3573435990%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40424_|
                                       _%hd3573435990%_)
                                      (_%__match3985239853%_
                                       _%e3573035976%_
                                       _%hd3573135980%_
                                       _%tl3573235983%_
                                       _%e3573335986%_
                                       _%hd3573435990%_
                                       _%tl3573535993%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40425_|
                                           _%hd3573435990%_)
                                          (_%__match3986839869%_
                                           _%e3573035976%_
                                           _%hd3573135980%_
                                           _%tl3573235983%_
                                           _%e3573335986%_
                                           _%hd3573435990%_
                                           _%tl3573535993%_)
                                          (_%__match3988039881%_
                                           _%e3573035976%_
                                           _%hd3573135980%_
                                           _%tl3573235983%_
                                           _%e3573335986%_
                                           _%hd3573435990%_
                                           _%tl3573535993%_)))
                                  (_%__match3988039881%_
                                   _%e3573035976%_
                                   _%hd3573135980%_
                                   _%tl3573235983%_
                                   _%e3573335986%_
                                   _%hd3573435990%_
                                   _%tl3573535993%_))))
                          (let () (declare (not safe)) (_%g3572735756%_)))))
                  (let () (declare (not safe)) (_%g3572735756%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx36078%_)
        (let* ((_%g3608136105%_
                (lambda (_%g3608236101%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3608236101%_)))
               (_%g3608036313%_
                (lambda (_%g3608236109%_)
                  (if (gx#stx-pair? _%g3608236109%_)
                      (let ((_%e3608536112%_ (gx#syntax-e _%g3608236109%_)))
                        (let ((_%hd3608636116%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3608536112%_)))
                              (_%tl3608736119%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3608536112%_))))
                          (if (gx#stx-pair? _%tl3608736119%_)
                              (let ((_%e3608836122%_
                                     (gx#syntax-e _%tl3608736119%_)))
                                (let ((_%hd3608936126%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3608836122%_)))
                                      (_%tl3609036129%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3608836122%_))))
                                  (if (gx#stx-pair/null? _%hd3608936126%_)
                                      (let ((_g40426_
                                             (gx#syntax-split-splice
                                              _%hd3608936126%_
                                              '0)))
                                        (begin
                                          (let ((_g40427_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g40426_)
                                                       (##values-length
                                                        _g40426_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g40427_ 2)))
                                                (error "Context expects 2 values"
                                                       _g40427_)))
                                          (let ((_%target3609136132%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g40426_ 0)))
                                                (_%tl3609336135%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g40426_ 1))))
                                            (if (gx#stx-null? _%tl3609336135%_)
                                                (letrec ((_%loop3609436138%_
                                                          (lambda (_%hd3609236142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3609836145%_)
                    (if (gx#stx-pair? _%hd3609236142%_)
                        (let ((_%e3609536147%_ (gx#syntax-e _%hd3609236142%_)))
                          (let ((_%lp-hd3609636151%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3609536147%_)))
                                (_%lp-tl3609736154%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3609536147%_))))
                            (_%loop3609436138%_
                             _%lp-tl3609736154%_
                             (cons _%lp-hd3609636151%_ _%e3609836145%_))))
                        (let ((_%e3609936157%_ (reverse _%e3609836145%_)))
                          ((lambda (_%g3608336160%_ _%g3608436162%_)
                             (if (gx#stx-list? _%g3608336160%_)
                                 (let* ((_%g3618036197%_
                                         (lambda (_%g3618136193%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3618136193%_)))
                                        (_%g3617936301%_
                                         (lambda (_%g3618136201%_)
                                           (if (gx#stx-pair/null?
                                                _%g3618136201%_)
                                               (let ((_g40428_
                                                      (gx#syntax-split-splice
                                                       _%g3618136201%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g40429_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g40428_)
                        (##values-length _g40428_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g40429_ 2)))
                 (error "Context expects 2 values" _g40429_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3618336204%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40428_
                                                             0)))
                                                         (_%tl3618536207%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40428_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3618536207%_)
                                                         (letrec ((_%loop3618636210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3618436214%_ _%$e3619036217%_)
                             (if (gx#stx-pair? _%hd3618436214%_)
                                 (let ((_%e3618736219%_
                                        (gx#syntax-e _%hd3618436214%_)))
                                   (let ((_%lp-hd3618836223%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3618736219%_)))
                                         (_%lp-tl3618936226%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3618736219%_))))
                                     (_%loop3618636210%_
                                      _%lp-tl3618936226%_
                                      (cons _%lp-hd3618836223%_
                                            _%$e3619036217%_))))
                                 (let ((_%$e3619136229%_
                                        (reverse _%$e3619036217%_)))
                                   ((lambda (_%g3618236232%_)
                                      (let* ((_%g3624836256%_
                                              (lambda (_%g3624936252%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g3624936252%_)))
                                             (_%g3624736289%_
                                              (lambda (_%g3624936260%_)
                                                ((lambda (_%g3625036263%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets
                          _%g3608436162%_
                          _%g3618236232%_)
                         (foldr (lambda (_%g3627736281%_
                                         _%g3627836284%_
                                         _%g3627936286%_)
                                  (cons (cons _%g3627836284%_
                                              (cons _%g3627736281%_ '()))
                                        _%g3627936286%_))
                                '()
                                _%g3608436162%_
                                _%g3618236232%_))
                       (cons _%g3625036263%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g3624936260%_))))
                                        (_%g3624736289%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx36078%_
                                          (foldr (lambda (_%g3629236295%_
                                                          _%g3629336298%_)
                                                   (cons _%g3629236295%_
                                                         _%g3629336298%_))
                                                 '()
                                                 _%g3618236232%_)
                                          _%g3608336160%_))))
                                    _%$e3619136229%_))))))
                   (_%loop3618636210%_ _%target3618336204%_ '()))
                 (_%g3618036197%_ _%g3618136201%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3618036197%_
                                                _%g3618136201%_)))))
                                   (_%g3617936301%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g3630436307%_
                                                     _%g3630536310%_)
                                              (cons _%g3630436307%_
                                                    _%g3630536310%_))
                                            '()
                                            _%g3608436162%_))))
                                 (_%g3608136105%_ _%g3608236109%_)))
                           _%tl3609036129%_
                           _%e3609936157%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3609436138%_
                                                   _%target3609136132%_
                                                   '()))
                                                (_%g3608136105%_
                                                 _%g3608236109%_)))))
                                      (_%g3608136105%_ _%g3608236109%_))))
                              (_%g3608136105%_ _%g3608236109%_))))
                      (_%g3608136105%_ _%g3608236109%_)))))
          (_%g3608036313%_ _%stx36078%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx36319%_)
        (let* ((_%__stx3988339884%_ _%$stx36319%_)
               (_%g3632536408%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3988339884%_))))
          (let ((_%__kont3988639887%_
                 (lambda (_%g3632736728%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3674436747%_ _%g3674536750%_)
                                        (cons _%g3674436747%_ _%g3674536750%_))
                                      '()
                                      _%g3632736728%_)))))
                (_%__kont3989039891%_
                 (lambda (_%g3634336638%_
                          _%g3634436640%_
                          _%g3634536641%_
                          _%g3634636642%_)
                   (cons _%g3634636642%_
                         (cons (cons (cons _%g3634536641%_
                                           (cons _%g3634436640%_ '()))
                                     '())
                               (foldr (lambda (_%g3666436667%_ _%g3666536670%_)
                                        (cons _%g3666436667%_ _%g3666536670%_))
                                      '()
                                      _%g3634336638%_)))))
                (_%__kont3989439895%_
                 (lambda (_%g3636836513%_ _%g3636936515%_ _%g3637036516%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3653836545%_ _%g3653936548%_)
                                        (cons _%g3653836545%_ _%g3653936548%_))
                                      '()
                                      _%g3636936515%_)
                               (cons (cons (foldr (lambda (_%g3654036551%_
                                                           _%g3654136554%_)
                                                    (cons _%g3654036551%_
                                                          _%g3654136554%_))
                                                  '()
                                                  _%g3637036516%_)
                                           (foldr (lambda (_%g3654236557%_
                                                           _%g3654336560%_)
                                                    (cons _%g3654236557%_
                                                          _%g3654336560%_))
                                                  '()
                                                  _%g3636836513%_))
                                     '()))))))
            (let* ((_%__match3997639977%_
                    (lambda (_%e3637136415%_
                             _%hd3637236419%_
                             _%tl3637336422%_
                             _%e3637436425%_
                             _%hd3637536429%_
                             _%tl3637636432%_
                             _%__splice3989639897%_
                             _%target3637736435%_
                             _%tl3637936438%_)
                      (letrec ((_%loop3638036441%_
                                (lambda (_%hd3637836445%_
                                         _%expr3638436448%_
                                         _%hd3638536449%_)
                                  (if (gx#stx-pair? _%hd3637836445%_)
                                      (let ((_%e3638136451%_
                                             (gx#syntax-e _%hd3637836445%_)))
                                        (let ((_%lp-tl3638336458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3638136451%_)))
                                              (_%lp-hd3638236455%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3638136451%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3638236455%_)
                                              (let ((_%e3638836461%_
                                                     (gx#syntax-e
                                                      _%lp-hd3638236455%_)))
                                                (let ((_%tl3639036468%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3638836461%_)))
                                                      (_%hd3638936465%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3638836461%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3639036468%_)
                                                      (let ((_%e3639136471%_
                                                             (gx#syntax-e
                                                              _%tl3639036468%_)))
                                                        (let ((_%tl3639336478%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3639136471%_)))
                      (_%hd3639236475%_
                       (let () (declare (not safe)) (##car _%e3639136471%_))))
                  (if (gx#stx-null? _%tl3639336478%_)
                      (_%loop3638036441%_
                       _%lp-tl3638336458%_
                       (cons _%hd3639236475%_ _%expr3638436448%_)
                       (cons _%hd3638936465%_ _%hd3638536449%_))
                      (let () (declare (not safe)) (_%g3632536408%_)))))
              (let () (declare (not safe)) (_%g3632536408%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3632536408%_)))))
                                      (let ((_%hd3638736483%_
                                             (reverse _%hd3638536449%_))
                                            (_%expr3638636481%_
                                             (reverse _%expr3638436448%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3637636432%_)
                                            (let ((_%__splice3989839899%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl3637636432%_
                                                    '0)))
                                              (let ((_%tl3639636488%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3989839899%_
                                                        '1)))
                                                    (_%target3639436485%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3989839899%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3639636488%_)
                                                    (letrec ((_%loop3639736491%_
                                                              (lambda (_%hd3639536495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3640136498%_)
                        (if (gx#stx-pair? _%hd3639536495%_)
                            (let ((_%e3639836500%_
                                   (gx#syntax-e _%hd3639536495%_)))
                              (let ((_%lp-tl3640036507%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3639836500%_)))
                                    (_%lp-hd3639936504%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3639836500%_))))
                                (_%loop3639736491%_
                                 _%lp-tl3640036507%_
                                 (cons _%lp-hd3639936504%_
                                       _%body3640136498%_))))
                            (let ((_%body3640236510%_
                                   (reverse _%body3640136498%_)))
                              (_%__kont3989439895%_
                               _%body3640236510%_
                               _%expr3638636481%_
                               _%hd3638736483%_))))))
              (_%loop3639736491%_ _%target3639436485%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3632536408%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3632536408%_))))))))
                        (_%loop3638036441%_ _%target3637736435%_ '() '()))))
                   (_%__match3996839969%_
                    (lambda (_%e3637136415%_
                             _%hd3637236419%_
                             _%tl3637336422%_
                             _%e3637436425%_
                             _%hd3637536429%_
                             _%tl3637636432%_)
                      (if (gx#stx-pair/null? _%hd3637536429%_)
                          (let ((_%__splice3989639897%_
                                 (gx#syntax-split-splice->vector
                                  _%hd3637536429%_
                                  '0)))
                            (let ((_%tl3637936438%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3989639897%_ '1)))
                                  (_%target3637736435%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3989639897%_
                                      '0))))
                              (if (gx#stx-null? _%tl3637936438%_)
                                  (_%__match3997639977%_
                                   _%e3637136415%_
                                   _%hd3637236419%_
                                   _%tl3637336422%_
                                   _%e3637436425%_
                                   _%hd3637536429%_
                                   _%tl3637636432%_
                                   _%__splice3989639897%_
                                   _%target3637736435%_
                                   _%tl3637936438%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3632536408%_)))))
                          (let () (declare (not safe)) (_%g3632536408%_)))))
                   (_%__match3995639957%_
                    (lambda (_%e3634736570%_
                             _%hd3634836574%_
                             _%tl3634936577%_
                             _%e3635036580%_
                             _%hd3635136584%_
                             _%tl3635236587%_
                             _%e3635336590%_
                             _%hd3635436594%_
                             _%tl3635536597%_
                             _%e3635636600%_
                             _%hd3635736604%_
                             _%tl3635836607%_
                             _%__splice3989239893%_
                             _%target3635936610%_
                             _%tl3636136613%_)
                      (letrec ((_%loop3636236616%_
                                (lambda (_%hd3636036620%_ _%body3636636623%_)
                                  (if (gx#stx-pair? _%hd3636036620%_)
                                      (let ((_%e3636336625%_
                                             (gx#syntax-e _%hd3636036620%_)))
                                        (let ((_%lp-tl3636536632%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3636336625%_)))
                                              (_%lp-hd3636436629%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3636336625%_))))
                                          (_%loop3636236616%_
                                           _%lp-tl3636536632%_
                                           (cons _%lp-hd3636436629%_
                                                 _%body3636636623%_))))
                                      (let ((_%body3636736635%_
                                             (reverse _%body3636636623%_)))
                                        (let ((_%g3634336638%_
                                               _%body3636736635%_)
                                              (_%g3634436640%_
                                               _%hd3635736604%_)
                                              (_%g3634536641%_
                                               _%hd3635436594%_)
                                              (_%g3634636642%_
                                               _%hd3634836574%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%g3634536641%_)
                                              (_%__kont3989039891%_
                                               _%g3634336638%_
                                               _%g3634436640%_
                                               _%g3634536641%_
                                               _%g3634636642%_)
                                              (_%__match3996839969%_
                                               _%e3634736570%_
                                               _%hd3634836574%_
                                               _%tl3634936577%_
                                               _%e3635036580%_
                                               _%hd3635136584%_
                                               _%tl3635236587%_))))))))
                        (_%loop3636236616%_ _%target3635936610%_ '()))))
                   (_%__match3992239923%_
                    (lambda (_%e3632836680%_
                             _%hd3632936684%_
                             _%tl3633036687%_
                             _%e3633136690%_
                             _%hd3633236694%_
                             _%tl3633336697%_
                             _%__splice3988839889%_
                             _%target3633436700%_
                             _%tl3633636703%_)
                      (letrec ((_%loop3633736706%_
                                (lambda (_%hd3633536710%_ _%body3634136713%_)
                                  (if (gx#stx-pair? _%hd3633536710%_)
                                      (let ((_%e3633836715%_
                                             (gx#syntax-e _%hd3633536710%_)))
                                        (let ((_%lp-tl3634036722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3633836715%_)))
                                              (_%lp-hd3633936719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3633836715%_))))
                                          (_%loop3633736706%_
                                           _%lp-tl3634036722%_
                                           (cons _%lp-hd3633936719%_
                                                 _%body3634136713%_))))
                                      (let ((_%body3634236725%_
                                             (reverse _%body3634136713%_)))
                                        (_%__kont3988639887%_
                                         _%body3634236725%_))))))
                        (_%loop3633736706%_ _%target3633436700%_ '())))))
              (if (gx#stx-pair? _%__stx3988339884%_)
                  (let ((_%e3632836680%_ (gx#syntax-e _%__stx3988339884%_)))
                    (let ((_%tl3633036687%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3632836680%_)))
                          (_%hd3632936684%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3632836680%_))))
                      (if (gx#stx-pair? _%tl3633036687%_)
                          (let ((_%e3633136690%_
                                 (gx#syntax-e _%tl3633036687%_)))
                            (let ((_%tl3633336697%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3633136690%_)))
                                  (_%hd3633236694%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3633136690%_))))
                              (if (gx#stx-null? _%hd3633236694%_)
                                  (if (gx#stx-pair/null? _%tl3633336697%_)
                                      (let ((_%__splice3988839889%_
                                             (gx#syntax-split-splice->vector
                                              _%tl3633336697%_
                                              '0)))
                                        (let ((_%tl3633636703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3988839889%_
                                                  '1)))
                                              (_%target3633436700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3988839889%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3633636703%_)
                                              (_%__match3992239923%_
                                               _%e3632836680%_
                                               _%hd3632936684%_
                                               _%tl3633036687%_
                                               _%e3633136690%_
                                               _%hd3633236694%_
                                               _%tl3633336697%_
                                               _%__splice3988839889%_
                                               _%target3633436700%_
                                               _%tl3633636703%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3633236694%_)
                                                  (let ((_%__splice3989639897%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3633236694%_
                                                          '0)))
                                                    (let ((_%tl3637936438%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3989639897%_
                                                              '1)))
                                                          (_%target3637736435%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3989639897%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3637936438%_)
                                                          (_%__match3997639977%_
                                                           _%e3632836680%_
                                                           _%hd3632936684%_
                                                           _%tl3633036687%_
                                                           _%e3633136690%_
                                                           _%hd3633236694%_
                                                           _%tl3633336697%_
                                                           _%__splice3989639897%_
                                                           _%target3637736435%_
                                                           _%tl3637936438%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3632536408%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3632536408%_))))))
                                      (if (gx#stx-pair/null? _%hd3633236694%_)
                                          (let ((_%__splice3989639897%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3633236694%_
                                                  '0)))
                                            (let ((_%tl3637936438%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3989639897%_
                                                      '1)))
                                                  (_%target3637736435%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3989639897%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3637936438%_)
                                                  (_%__match3997639977%_
                                                   _%e3632836680%_
                                                   _%hd3632936684%_
                                                   _%tl3633036687%_
                                                   _%e3633136690%_
                                                   _%hd3633236694%_
                                                   _%tl3633336697%_
                                                   _%__splice3989639897%_
                                                   _%target3637736435%_
                                                   _%tl3637936438%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3632536408%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3632536408%_))))
                                  (if (gx#stx-pair? _%hd3633236694%_)
                                      (let ((_%e3635336590%_
                                             (gx#syntax-e _%hd3633236694%_)))
                                        (let ((_%tl3635536597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3635336590%_)))
                                              (_%hd3635436594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3635336590%_))))
                                          (if (gx#stx-pair? _%tl3635536597%_)
                                              (let ((_%e3635636600%_
                                                     (gx#syntax-e
                                                      _%tl3635536597%_)))
                                                (let ((_%tl3635836607%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3635636600%_)))
                                                      (_%hd3635736604%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3635636600%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3635836607%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3633336697%_)
                                                          (let ((_%__splice3989239893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl3633336697%_ '0)))
                    (let ((_%tl3636136613%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3989239893%_ '1)))
                          (_%target3635936610%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3989239893%_ '0))))
                      (if (gx#stx-null? _%tl3636136613%_)
                          (_%__match3995639957%_
                           _%e3632836680%_
                           _%hd3632936684%_
                           _%tl3633036687%_
                           _%e3633136690%_
                           _%hd3633236694%_
                           _%tl3633336697%_
                           _%e3635336590%_
                           _%hd3635436594%_
                           _%tl3635536597%_
                           _%e3635636600%_
                           _%hd3635736604%_
                           _%tl3635836607%_
                           _%__splice3989239893%_
                           _%target3635936610%_
                           _%tl3636136613%_)
                          (if (gx#stx-pair/null? _%hd3633236694%_)
                              (let ((_%__splice3989639897%_
                                     (gx#syntax-split-splice->vector
                                      _%hd3633236694%_
                                      '0)))
                                (let ((_%tl3637936438%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3989639897%_
                                          '1)))
                                      (_%target3637736435%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3989639897%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3637936438%_)
                                      (_%__match3997639977%_
                                       _%e3632836680%_
                                       _%hd3632936684%_
                                       _%tl3633036687%_
                                       _%e3633136690%_
                                       _%hd3633236694%_
                                       _%tl3633336697%_
                                       _%__splice3989639897%_
                                       _%target3637736435%_
                                       _%tl3637936438%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3632536408%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3632536408%_))))))
                  (if (gx#stx-pair/null? _%hd3633236694%_)
                      (let ((_%__splice3989639897%_
                             (gx#syntax-split-splice->vector
                              _%hd3633236694%_
                              '0)))
                        (let ((_%tl3637936438%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3989639897%_ '1)))
                              (_%target3637736435%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3989639897%_ '0))))
                          (if (gx#stx-null? _%tl3637936438%_)
                              (_%__match3997639977%_
                               _%e3632836680%_
                               _%hd3632936684%_
                               _%tl3633036687%_
                               _%e3633136690%_
                               _%hd3633236694%_
                               _%tl3633336697%_
                               _%__splice3989639897%_
                               _%target3637736435%_
                               _%tl3637936438%_)
                              (let ()
                                (declare (not safe))
                                (_%g3632536408%_)))))
                      (let () (declare (not safe)) (_%g3632536408%_))))
              (if (gx#stx-pair/null? _%hd3633236694%_)
                  (let ((_%__splice3989639897%_
                         (gx#syntax-split-splice->vector _%hd3633236694%_ '0)))
                    (let ((_%tl3637936438%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3989639897%_ '1)))
                          (_%target3637736435%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3989639897%_ '0))))
                      (if (gx#stx-null? _%tl3637936438%_)
                          (_%__match3997639977%_
                           _%e3632836680%_
                           _%hd3632936684%_
                           _%tl3633036687%_
                           _%e3633136690%_
                           _%hd3633236694%_
                           _%tl3633336697%_
                           _%__splice3989639897%_
                           _%target3637736435%_
                           _%tl3637936438%_)
                          (let () (declare (not safe)) (_%g3632536408%_)))))
                  (let () (declare (not safe)) (_%g3632536408%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3633236694%_)
                                                  (let ((_%__splice3989639897%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3633236694%_
                                                          '0)))
                                                    (let ((_%tl3637936438%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3989639897%_
                                                              '1)))
                                                          (_%target3637736435%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3989639897%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3637936438%_)
                                                          (_%__match3997639977%_
                                                           _%e3632836680%_
                                                           _%hd3632936684%_
                                                           _%tl3633036687%_
                                                           _%e3633136690%_
                                                           _%hd3633236694%_
                                                           _%tl3633336697%_
                                                           _%__splice3989639897%_
                                                           _%target3637736435%_
                                                           _%tl3637936438%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3632536408%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3632536408%_))))))
                                      (if (gx#stx-pair/null? _%hd3633236694%_)
                                          (let ((_%__splice3989639897%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3633236694%_
                                                  '0)))
                                            (let ((_%tl3637936438%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3989639897%_
                                                      '1)))
                                                  (_%target3637736435%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3989639897%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3637936438%_)
                                                  (_%__match3997639977%_
                                                   _%e3632836680%_
                                                   _%hd3632936684%_
                                                   _%tl3633036687%_
                                                   _%e3633136690%_
                                                   _%hd3633236694%_
                                                   _%tl3633336697%_
                                                   _%__splice3989639897%_
                                                   _%target3637736435%_
                                                   _%tl3637936438%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3632536408%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3632536408%_)))))))
                          (let () (declare (not safe)) (_%g3632536408%_)))))
                  (let () (declare (not safe)) (_%g3632536408%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36761%_)
        (let* ((_%__stx3997939980%_ _%$stx36761%_)
               (_%g3676636818%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3997939980%_))))
          (let ((_%__kont3998239983%_
                 (lambda (_%g3676836984%_
                          _%g3676936986%_
                          _%g3677036987%_
                          _%g3677136988%_
                          _%g3677236989%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%g3677136988%_
                                           (cons _%g3677036987%_ '()))
                                     '())
                               (cons (cons _%g3677236989%_
                                           (cons _%g3676936986%_
                                                 (foldr (lambda (_%g3701437017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3701537020%_)
                  (cons _%g3701437017%_ _%g3701537020%_))
                '()
                _%g3676836984%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3998639987%_
                 (lambda (_%g3679736873%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3689036893%_ _%g3689136896%_)
                                        (cons _%g3689036893%_ _%g3689136896%_))
                                      '()
                                      _%g3679736873%_))))))
            (let* ((_%__match4005240053%_
                    (lambda (_%e3679836825%_
                             _%hd3679936829%_
                             _%tl3680036832%_
                             _%e3680136835%_
                             _%hd3680236839%_
                             _%tl3680336842%_
                             _%__splice3998839989%_
                             _%target3680436845%_
                             _%tl3680636848%_)
                      (letrec ((_%loop3680736851%_
                                (lambda (_%hd3680536855%_ _%body3681136858%_)
                                  (if (gx#stx-pair? _%hd3680536855%_)
                                      (let ((_%e3680836860%_
                                             (gx#syntax-e _%hd3680536855%_)))
                                        (let ((_%lp-tl3681036867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3680836860%_)))
                                              (_%lp-hd3680936864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3680836860%_))))
                                          (_%loop3680736851%_
                                           _%lp-tl3681036867%_
                                           (cons _%lp-hd3680936864%_
                                                 _%body3681136858%_))))
                                      (let ((_%body3681236870%_
                                             (reverse _%body3681136858%_)))
                                        (_%__kont3998639987%_
                                         _%body3681236870%_))))))
                        (_%loop3680736851%_ _%target3680436845%_ '()))))
                   (_%__match4003040031%_
                    (lambda (_%e3677336906%_
                             _%hd3677436910%_
                             _%tl3677536913%_
                             _%e3677636916%_
                             _%hd3677736920%_
                             _%tl3677836923%_
                             _%e3677936926%_
                             _%hd3678036930%_
                             _%tl3678136933%_
                             _%e3678236936%_
                             _%hd3678336940%_
                             _%tl3678436943%_
                             _%e3678536946%_
                             _%hd3678636950%_
                             _%tl3678736953%_
                             _%__splice3998439985%_
                             _%target3678836956%_
                             _%tl3679036959%_)
                      (letrec ((_%loop3679136962%_
                                (lambda (_%hd3678936966%_ _%body3679536969%_)
                                  (if (gx#stx-pair? _%hd3678936966%_)
                                      (let ((_%e3679236971%_
                                             (gx#syntax-e _%hd3678936966%_)))
                                        (let ((_%lp-tl3679436978%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3679236971%_)))
                                              (_%lp-hd3679336975%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3679236971%_))))
                                          (_%loop3679136962%_
                                           _%lp-tl3679436978%_
                                           (cons _%lp-hd3679336975%_
                                                 _%body3679536969%_))))
                                      (let ((_%body3679636981%_
                                             (reverse _%body3679536969%_)))
                                        (_%__kont3998239983%_
                                         _%body3679636981%_
                                         _%tl3678136933%_
                                         _%hd3678636950%_
                                         _%hd3678336940%_
                                         _%hd3677436910%_))))))
                        (_%loop3679136962%_ _%target3678836956%_ '())))))
              (if (gx#stx-pair? _%__stx3997939980%_)
                  (let ((_%e3677336906%_ (gx#syntax-e _%__stx3997939980%_)))
                    (let ((_%tl3677536913%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3677336906%_)))
                          (_%hd3677436910%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3677336906%_))))
                      (if (gx#stx-pair? _%tl3677536913%_)
                          (let ((_%e3677636916%_
                                 (gx#syntax-e _%tl3677536913%_)))
                            (let ((_%tl3677836923%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3677636916%_)))
                                  (_%hd3677736920%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3677636916%_))))
                              (if (gx#stx-pair? _%hd3677736920%_)
                                  (let ((_%e3677936926%_
                                         (gx#syntax-e _%hd3677736920%_)))
                                    (let ((_%tl3678136933%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3677936926%_)))
                                          (_%hd3678036930%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3677936926%_))))
                                      (if (gx#stx-pair? _%hd3678036930%_)
                                          (let ((_%e3678236936%_
                                                 (gx#syntax-e
                                                  _%hd3678036930%_)))
                                            (let ((_%tl3678436943%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3678236936%_)))
                                                  (_%hd3678336940%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3678236936%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3678436943%_)
                                                  (let ((_%e3678536946%_
                                                         (gx#syntax-e
                                                          _%tl3678436943%_)))
                                                    (let ((_%tl3678736953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3678536946%_)))
                                                          (_%hd3678636950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3678536946%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3678736953%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3677836923%_)
                                                              (let ((_%__splice3998439985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl3677836923%_
                              '0)))
                        (let ((_%tl3679036959%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3998439985%_ '1)))
                              (_%target3678836956%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3998439985%_ '0))))
                          (if (gx#stx-null? _%tl3679036959%_)
                              (_%__match4003040031%_
                               _%e3677336906%_
                               _%hd3677436910%_
                               _%tl3677536913%_
                               _%e3677636916%_
                               _%hd3677736920%_
                               _%tl3677836923%_
                               _%e3677936926%_
                               _%hd3678036930%_
                               _%tl3678136933%_
                               _%e3678236936%_
                               _%hd3678336940%_
                               _%tl3678436943%_
                               _%e3678536946%_
                               _%hd3678636950%_
                               _%tl3678736953%_
                               _%__splice3998439985%_
                               _%target3678836956%_
                               _%tl3679036959%_)
                              (let ()
                                (declare (not safe))
                                (_%g3676636818%_)))))
                      (let () (declare (not safe)) (_%g3676636818%_)))
                  (let () (declare (not safe)) (_%g3676636818%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3676636818%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3676636818%_)))))
                                  (if (gx#stx-null? _%hd3677736920%_)
                                      (if (gx#stx-pair/null? _%tl3677836923%_)
                                          (let ((_%__splice3998839989%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl3677836923%_
                                                  '0)))
                                            (let ((_%tl3680636848%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3998839989%_
                                                      '1)))
                                                  (_%target3680436845%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3998839989%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3680636848%_)
                                                  (_%__match4005240053%_
                                                   _%e3677336906%_
                                                   _%hd3677436910%_
                                                   _%tl3677536913%_
                                                   _%e3677636916%_
                                                   _%hd3677736920%_
                                                   _%tl3677836923%_
                                                   _%__splice3998839989%_
                                                   _%target3680436845%_
                                                   _%tl3680636848%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3676636818%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3676636818%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3676636818%_))))))
                          (let () (declare (not safe)) (_%g3676636818%_)))))
                  (let () (declare (not safe)) (_%g3676636818%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx37029%_)
        (let* ((_%__stx4005540056%_ _%$stx37029%_)
               (_%g3704037186%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4005540056%_))))
          (let ((_%__kont4005840059%_
                 (lambda (_%g3704237786%_ _%g3704337788%_ _%g3704437789%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3781037813%_ _%g3781137816%_)
                                  (cons (cons _%g3704437789%_
                                              (cons _%g3781037813%_
                                                    (cons _%g3704237786%_
                                                          '())))
                                        _%g3781137816%_))
                                '()
                                _%g3704337788%_))))
                (_%__kont4006240063%_
                 (lambda (_%g3706637678%_ _%g3706737680%_ _%g3706837681%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3770237705%_ _%g3770337708%_)
                                  (cons (cons _%g3706837681%_
                                              (cons _%g3770237705%_
                                                    (cons _%g3706637678%_
                                                          '())))
                                        _%g3770337708%_))
                                '()
                                _%g3706737680%_))))
                (_%__kont4006640067%_
                 (lambda (_%g3709037580%_ _%g3709137582%_ _%g3709237583%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%g3709237583%_
                                     (cons _%g3709137582%_
                                           (cons _%g3709037580%_ '())))
                               '()))))
                (_%__kont4006840069%_
                 (lambda (_%g3710837506%_ _%g3710937508%_)
                   (cons _%g3710937508%_ (cons _%g3710837506%_ '()))))
                (_%__kont4007040071%_
                 (lambda (_%g3711937454%_ _%g3712037456%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%g3712037456%_
                                           (cons _%g3711937454%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont4007240073%_
                 (lambda (_%g3712737406%_ _%g3712837408%_ _%g3712937409%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%g3712937409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g3712837408%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3712737406%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont4007440075%_
                 (lambda (_%g3714237337%_ _%g3714337339%_ _%g3714437340%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g3714437340%_
                                                       (cons _%g3714337339%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3714237337%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont4007640077%_
                 (lambda (_%g3715837257%_
                          _%g3715937259%_
                          _%g3716037260%_
                          _%g3716137261%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g3716137261%_
                                                       (cons _%g3716037260%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3715837257%_
                                                             (cons (cons _%g3715937259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match4022840229%_
                    (lambda (_%e3713037366%_
                             _%hd3713137370%_
                             _%tl3713237373%_
                             _%e3713337376%_
                             _%hd3713437380%_
                             _%tl3713537383%_
                             _%e3713637386%_
                             _%hd3713737390%_
                             _%tl3713837393%_)
                      (if (gx#identifier? _%hd3713737390%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40430_|
                               _%hd3713737390%_)
                              (if (gx#stx-pair? _%tl3713837393%_)
                                  (let ((_%e3713937396%_
                                         (gx#syntax-e _%tl3713837393%_)))
                                    (let ((_%tl3714137403%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3713937396%_)))
                                          (_%hd3714037400%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3713937396%_))))
                                      (if (gx#stx-null? _%tl3714137403%_)
                                          (_%__kont4007240073%_
                                           _%hd3714037400%_
                                           _%hd3713437380%_
                                           _%hd3713137370%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3704037186%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3704037186%_)))
                              (let () (declare (not safe)) (_%g3704037186%_)))
                          (if (gx#stx-datum? _%hd3713737390%_)
                              (let ((_%e3715437323%_
                                     (gx#stx-e _%hd3713737390%_)))
                                (if (equal? _%e3715437323%_ '::)
                                    (if (gx#stx-pair? _%tl3713837393%_)
                                        (let ((_%e3715537327%_
                                               (gx#syntax-e _%tl3713837393%_)))
                                          (let ((_%tl3715737334%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3715537327%_)))
                                                (_%hd3715637331%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3715537327%_))))
                                            (if (gx#stx-null? _%tl3715737334%_)
                                                (_%__kont4007440075%_
                                                 _%hd3715637331%_
                                                 _%hd3713437380%_
                                                 _%hd3713137370%_)
                                                (if (gx#stx-pair?
                                                     _%tl3715737334%_)
                                                    (let ((_%e3717537237%_
                                                           (gx#syntax-e
                                                            _%tl3715737334%_)))
                                                      (let ((_%tl3717737244%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3717537237%_)))
                    (_%hd3717637241%_
                     (let () (declare (not safe)) (##car _%e3717537237%_))))
                (if (gx#identifier? _%hd3717637241%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g40431_|
                         _%hd3717637241%_)
                        (if (gx#stx-pair? _%tl3717737244%_)
                            (let ((_%e3717837247%_
                                   (gx#syntax-e _%tl3717737244%_)))
                              (let ((_%tl3718037254%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3717837247%_)))
                                    (_%hd3717937251%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3717837247%_))))
                                (if (gx#stx-null? _%tl3718037254%_)
                                    (_%__kont4007640077%_
                                     _%hd3717937251%_
                                     _%hd3715637331%_
                                     _%hd3713437380%_
                                     _%hd3713137370%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3704037186%_)))))
                            (let () (declare (not safe)) (_%g3704037186%_)))
                        (let () (declare (not safe)) (_%g3704037186%_)))
                    (let () (declare (not safe)) (_%g3704037186%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3704037186%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3704037186%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3704037186%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3704037186%_))))))
                   (_%__match4020840209%_
                    (lambda (_%e3712137434%_
                             _%hd3712237438%_
                             _%tl3712337441%_
                             _%e3712437444%_
                             _%hd3712537448%_
                             _%tl3712637451%_)
                      (if (gx#stx-null? _%tl3712637451%_)
                          (_%__kont4007040071%_
                           _%hd3712537448%_
                           _%hd3712237438%_)
                          (if (gx#stx-pair? _%tl3712637451%_)
                              (let ((_%e3713637386%_
                                     (gx#syntax-e _%tl3712637451%_)))
                                (let ((_%tl3713837393%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3713637386%_)))
                                      (_%hd3713737390%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3713637386%_))))
                                  (if (gx#identifier? _%hd3713737390%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40430_|
                                           _%hd3713737390%_)
                                          (if (gx#stx-pair? _%tl3713837393%_)
                                              (let ((_%e3713937396%_
                                                     (gx#syntax-e
                                                      _%tl3713837393%_)))
                                                (let ((_%tl3714137403%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3713937396%_)))
                                                      (_%hd3714037400%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3713937396%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3714137403%_)
                                                      (_%__kont4007240073%_
                                                       _%hd3714037400%_
                                                       _%hd3712537448%_
                                                       _%hd3712237438%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3704037186%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3704037186%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3704037186%_)))
                                      (if (gx#stx-datum? _%hd3713737390%_)
                                          (let ((_%e3715437323%_
                                                 (gx#stx-e _%hd3713737390%_)))
                                            (if (equal? _%e3715437323%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3713837393%_)
                                                    (let ((_%e3715537327%_
                                                           (gx#syntax-e
                                                            _%tl3713837393%_)))
                                                      (let ((_%tl3715737334%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3715537327%_)))
                    (_%hd3715637331%_
                     (let () (declare (not safe)) (##car _%e3715537327%_))))
                (if (gx#stx-null? _%tl3715737334%_)
                    (_%__kont4007440075%_
                     _%hd3715637331%_
                     _%hd3712537448%_
                     _%hd3712237438%_)
                    (if (gx#stx-pair? _%tl3715737334%_)
                        (let ((_%e3717537237%_ (gx#syntax-e _%tl3715737334%_)))
                          (let ((_%tl3717737244%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3717537237%_)))
                                (_%hd3717637241%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3717537237%_))))
                            (if (gx#identifier? _%hd3717637241%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g40431_|
                                     _%hd3717637241%_)
                                    (if (gx#stx-pair? _%tl3717737244%_)
                                        (let ((_%e3717837247%_
                                               (gx#syntax-e _%tl3717737244%_)))
                                          (let ((_%tl3718037254%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3717837247%_)))
                                                (_%hd3717937251%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3717837247%_))))
                                            (if (gx#stx-null? _%tl3718037254%_)
                                                (_%__kont4007640077%_
                                                 _%hd3717937251%_
                                                 _%hd3715637331%_
                                                 _%hd3712537448%_
                                                 _%hd3712237438%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3704037186%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3704037186%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3704037186%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3704037186%_)))))
                        (let () (declare (not safe)) (_%g3704037186%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3704037186%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3704037186%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3704037186%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3704037186%_))))))
                   (_%__match4013840139%_
                    (lambda (_%e3706937610%_
                             _%hd3707037614%_
                             _%tl3707137617%_
                             _%e3707237620%_
                             _%hd3707337624%_
                             _%tl3707437627%_
                             _%e3707537630%_
                             _%hd3707637634%_
                             _%tl3707737637%_
                             _%__splice4006440065%_
                             _%target3707837640%_
                             _%tl3708037643%_)
                      (letrec ((_%loop3708137646%_
                                (lambda (_%hd3707937650%_ _%pred3708537653%_)
                                  (if (gx#stx-pair? _%hd3707937650%_)
                                      (let ((_%e3708237655%_
                                             (gx#syntax-e _%hd3707937650%_)))
                                        (let ((_%lp-tl3708437662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3708237655%_)))
                                              (_%lp-hd3708337659%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3708237655%_))))
                                          (_%loop3708137646%_
                                           _%lp-tl3708437662%_
                                           (cons _%lp-hd3708337659%_
                                                 _%pred3708537653%_))))
                                      (let ((_%pred3708637665%_
                                             (reverse _%pred3708537653%_)))
                                        (if (gx#stx-pair? _%tl3707437627%_)
                                            (let ((_%e3708737668%_
                                                   (gx#syntax-e
                                                    _%tl3707437627%_)))
                                              (let ((_%tl3708937675%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3708737668%_)))
                                                    (_%hd3708837672%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3708737668%_))))
                                                (if (gx#stx-null?
                                                     _%tl3708937675%_)
                                                    (_%__kont4006240063%_
                                                     _%hd3708837672%_
                                                     _%pred3708637665%_
                                                     _%hd3707037614%_)
                                                    (_%__match4022840229%_
                                                     _%e3706937610%_
                                                     _%hd3707037614%_
                                                     _%tl3707137617%_
                                                     _%e3707237620%_
                                                     _%hd3707337624%_
                                                     _%tl3707437627%_
                                                     _%e3708737668%_
                                                     _%hd3708837672%_
                                                     _%tl3708937675%_))))
                                            (_%__match4020840209%_
                                             _%e3706937610%_
                                             _%hd3707037614%_
                                             _%tl3707137617%_
                                             _%e3707237620%_
                                             _%hd3707337624%_
                                             _%tl3707437627%_)))))))
                        (_%loop3708137646%_ _%target3707837640%_ '()))))
                   (_%__match4010840109%_
                    (lambda (_%e3704537718%_
                             _%hd3704637722%_
                             _%tl3704737725%_
                             _%e3704837728%_
                             _%hd3704937732%_
                             _%tl3705037735%_
                             _%e3705137738%_
                             _%hd3705237742%_
                             _%tl3705337745%_
                             _%__splice4006040061%_
                             _%target3705437748%_
                             _%tl3705637751%_)
                      (letrec ((_%loop3705737754%_
                                (lambda (_%hd3705537758%_ _%pred3706137761%_)
                                  (if (gx#stx-pair? _%hd3705537758%_)
                                      (let ((_%e3705837763%_
                                             (gx#syntax-e _%hd3705537758%_)))
                                        (let ((_%lp-tl3706037770%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3705837763%_)))
                                              (_%lp-hd3705937767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3705837763%_))))
                                          (_%loop3705737754%_
                                           _%lp-tl3706037770%_
                                           (cons _%lp-hd3705937767%_
                                                 _%pred3706137761%_))))
                                      (let ((_%pred3706237773%_
                                             (reverse _%pred3706137761%_)))
                                        (if (gx#stx-pair? _%tl3705037735%_)
                                            (let ((_%e3706337776%_
                                                   (gx#syntax-e
                                                    _%tl3705037735%_)))
                                              (let ((_%tl3706537783%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3706337776%_)))
                                                    (_%hd3706437780%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3706337776%_))))
                                                (if (gx#stx-null?
                                                     _%tl3706537783%_)
                                                    (_%__kont4005840059%_
                                                     _%hd3706437780%_
                                                     _%pred3706237773%_
                                                     _%hd3704637722%_)
                                                    (_%__match4022840229%_
                                                     _%e3704537718%_
                                                     _%hd3704637722%_
                                                     _%tl3704737725%_
                                                     _%e3704837728%_
                                                     _%hd3704937732%_
                                                     _%tl3705037735%_
                                                     _%e3706337776%_
                                                     _%hd3706437780%_
                                                     _%tl3706537783%_))))
                                            (_%__match4020840209%_
                                             _%e3704537718%_
                                             _%hd3704637722%_
                                             _%tl3704737725%_
                                             _%e3704837728%_
                                             _%hd3704937732%_
                                             _%tl3705037735%_)))))))
                        (_%loop3705737754%_ _%target3705437748%_ '())))))
              (if (gx#stx-pair? _%__stx4005540056%_)
                  (let ((_%e3704537718%_ (gx#syntax-e _%__stx4005540056%_)))
                    (let ((_%tl3704737725%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3704537718%_)))
                          (_%hd3704637722%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3704537718%_))))
                      (if (gx#stx-pair? _%tl3704737725%_)
                          (let ((_%e3704837728%_
                                 (gx#syntax-e _%tl3704737725%_)))
                            (let ((_%tl3705037735%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3704837728%_)))
                                  (_%hd3704937732%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3704837728%_))))
                              (if (gx#stx-pair? _%hd3704937732%_)
                                  (let ((_%e3705137738%_
                                         (gx#syntax-e _%hd3704937732%_)))
                                    (let ((_%tl3705337745%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3705137738%_)))
                                          (_%hd3705237742%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3705137738%_))))
                                      (if (gx#identifier? _%hd3705237742%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40432_|
                                               _%hd3705237742%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3705337745%_)
                                                  (let ((_%__splice4006040061%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl3705337745%_
                                                          '0)))
                                                    (let ((_%tl3705637751%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4006040061%_
                                                              '1)))
                                                          (_%target3705437748%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4006040061%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3705637751%_)
                                                          (_%__match4010840109%_
                                                           _%e3704537718%_
                                                           _%hd3704637722%_
                                                           _%tl3704737725%_
                                                           _%e3704837728%_
                                                           _%hd3704937732%_
                                                           _%tl3705037735%_
                                                           _%e3705137738%_
                                                           _%hd3705237742%_
                                                           _%tl3705337745%_
                                                           _%__splice4006040061%_
                                                           _%target3705437748%_
                                                           _%tl3705637751%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3705037735%_)
                                                              (let ((_%e3711637496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3705037735%_)))
                        (let ((_%tl3711837503%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3711637496%_)))
                              (_%hd3711737500%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3711637496%_))))
                          (if (gx#stx-null? _%tl3711837503%_)
                              (_%__kont4006840069%_
                               _%hd3711737500%_
                               _%hd3704937732%_)
                              (if (gx#identifier? _%hd3711737500%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40430_|
                                       _%hd3711737500%_)
                                      (if (gx#stx-pair? _%tl3711837503%_)
                                          (let ((_%e3713937396%_
                                                 (gx#syntax-e
                                                  _%tl3711837503%_)))
                                            (let ((_%tl3714137403%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3713937396%_)))
                                                  (_%hd3714037400%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3713937396%_))))
                                              (if (gx#stx-null?
                                                   _%tl3714137403%_)
                                                  (_%__kont4007240073%_
                                                   _%hd3714037400%_
                                                   _%hd3704937732%_
                                                   _%hd3704637722%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3704037186%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3704037186%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3704037186%_)))
                                  (if (gx#stx-datum? _%hd3711737500%_)
                                      (let ((_%e3715437323%_
                                             (gx#stx-e _%hd3711737500%_)))
                                        (if (equal? _%e3715437323%_ '::)
                                            (if (gx#stx-pair? _%tl3711837503%_)
                                                (let ((_%e3715537327%_
                                                       (gx#syntax-e
                                                        _%tl3711837503%_)))
                                                  (let ((_%tl3715737334%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3715537327%_)))
                                                        (_%hd3715637331%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3715537327%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3715737334%_)
                                                        (_%__kont4007440075%_
                                                         _%hd3715637331%_
                                                         _%hd3704937732%_
                                                         _%hd3704637722%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3715737334%_)
                                                            (let ((_%e3717537237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3715737334%_)))
                      (let ((_%tl3717737244%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3717537237%_)))
                            (_%hd3717637241%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3717537237%_))))
                        (if (gx#identifier? _%hd3717637241%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g40431_|
                                 _%hd3717637241%_)
                                (if (gx#stx-pair? _%tl3717737244%_)
                                    (let ((_%e3717837247%_
                                           (gx#syntax-e _%tl3717737244%_)))
                                      (let ((_%tl3718037254%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3717837247%_)))
                                            (_%hd3717937251%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3717837247%_))))
                                        (if (gx#stx-null? _%tl3718037254%_)
                                            (_%__kont4007640077%_
                                             _%hd3717937251%_
                                             _%hd3715637331%_
                                             _%hd3704937732%_
                                             _%hd3704637722%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3704037186%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3704037186%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3704037186%_)))
                            (let () (declare (not safe)) (_%g3704037186%_)))))
                    (let () (declare (not safe)) (_%g3704037186%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3704037186%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3704037186%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3704037186%_)))))))
                      (if (gx#stx-null? _%tl3705037735%_)
                          (_%__kont4007040071%_
                           _%hd3704937732%_
                           _%hd3704637722%_)
                          (let () (declare (not safe)) (_%g3704037186%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3705037735%_)
                                                      (let ((_%e3711637496%_
                                                             (gx#syntax-e
                                                              _%tl3705037735%_)))
                                                        (let ((_%tl3711837503%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3711637496%_)))
                      (_%hd3711737500%_
                       (let () (declare (not safe)) (##car _%e3711637496%_))))
                  (if (gx#stx-null? _%tl3711837503%_)
                      (_%__kont4006840069%_ _%hd3711737500%_ _%hd3704937732%_)
                      (if (gx#identifier? _%hd3711737500%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40430_|
                               _%hd3711737500%_)
                              (if (gx#stx-pair? _%tl3711837503%_)
                                  (let ((_%e3713937396%_
                                         (gx#syntax-e _%tl3711837503%_)))
                                    (let ((_%tl3714137403%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3713937396%_)))
                                          (_%hd3714037400%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3713937396%_))))
                                      (if (gx#stx-null? _%tl3714137403%_)
                                          (_%__kont4007240073%_
                                           _%hd3714037400%_
                                           _%hd3704937732%_
                                           _%hd3704637722%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3704037186%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3704037186%_)))
                              (let () (declare (not safe)) (_%g3704037186%_)))
                          (if (gx#stx-datum? _%hd3711737500%_)
                              (let ((_%e3715437323%_
                                     (gx#stx-e _%hd3711737500%_)))
                                (if (equal? _%e3715437323%_ '::)
                                    (if (gx#stx-pair? _%tl3711837503%_)
                                        (let ((_%e3715537327%_
                                               (gx#syntax-e _%tl3711837503%_)))
                                          (let ((_%tl3715737334%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3715537327%_)))
                                                (_%hd3715637331%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3715537327%_))))
                                            (if (gx#stx-null? _%tl3715737334%_)
                                                (_%__kont4007440075%_
                                                 _%hd3715637331%_
                                                 _%hd3704937732%_
                                                 _%hd3704637722%_)
                                                (if (gx#stx-pair?
                                                     _%tl3715737334%_)
                                                    (let ((_%e3717537237%_
                                                           (gx#syntax-e
                                                            _%tl3715737334%_)))
                                                      (let ((_%tl3717737244%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3717537237%_)))
                    (_%hd3717637241%_
                     (let () (declare (not safe)) (##car _%e3717537237%_))))
                (if (gx#identifier? _%hd3717637241%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g40431_|
                         _%hd3717637241%_)
                        (if (gx#stx-pair? _%tl3717737244%_)
                            (let ((_%e3717837247%_
                                   (gx#syntax-e _%tl3717737244%_)))
                              (let ((_%tl3718037254%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3717837247%_)))
                                    (_%hd3717937251%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3717837247%_))))
                                (if (gx#stx-null? _%tl3718037254%_)
                                    (_%__kont4007640077%_
                                     _%hd3717937251%_
                                     _%hd3715637331%_
                                     _%hd3704937732%_
                                     _%hd3704637722%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3704037186%_)))))
                            (let () (declare (not safe)) (_%g3704037186%_)))
                        (let () (declare (not safe)) (_%g3704037186%_)))
                    (let () (declare (not safe)) (_%g3704037186%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3704037186%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3704037186%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3704037186%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3704037186%_)))))))
              (if (gx#stx-null? _%tl3705037735%_)
                  (_%__kont4007040071%_ _%hd3704937732%_ _%hd3704637722%_)
                  (let () (declare (not safe)) (_%g3704037186%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g40433_|
                                                   _%hd3705237742%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3705337745%_)
                                                      (let ((_%__splice4006440065%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl3705337745%_
                                                              '0)))
                                                        (let ((_%tl3708037643%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4006440065%_ '1)))
                      (_%target3707837640%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4006440065%_ '0))))
                  (if (gx#stx-null? _%tl3708037643%_)
                      (_%__match4013840139%_
                       _%e3704537718%_
                       _%hd3704637722%_
                       _%tl3704737725%_
                       _%e3704837728%_
                       _%hd3704937732%_
                       _%tl3705037735%_
                       _%e3705137738%_
                       _%hd3705237742%_
                       _%tl3705337745%_
                       _%__splice4006440065%_
                       _%target3707837640%_
                       _%tl3708037643%_)
                      (if (gx#stx-pair? _%tl3705037735%_)
                          (let ((_%e3711637496%_
                                 (gx#syntax-e _%tl3705037735%_)))
                            (let ((_%tl3711837503%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3711637496%_)))
                                  (_%hd3711737500%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3711637496%_))))
                              (if (gx#stx-null? _%tl3711837503%_)
                                  (_%__kont4006840069%_
                                   _%hd3711737500%_
                                   _%hd3704937732%_)
                                  (if (gx#identifier? _%hd3711737500%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40430_|
                                           _%hd3711737500%_)
                                          (if (gx#stx-pair? _%tl3711837503%_)
                                              (let ((_%e3713937396%_
                                                     (gx#syntax-e
                                                      _%tl3711837503%_)))
                                                (let ((_%tl3714137403%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3713937396%_)))
                                                      (_%hd3714037400%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3713937396%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3714137403%_)
                                                      (_%__kont4007240073%_
                                                       _%hd3714037400%_
                                                       _%hd3704937732%_
                                                       _%hd3704637722%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3704037186%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3704037186%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3704037186%_)))
                                      (if (gx#stx-datum? _%hd3711737500%_)
                                          (let ((_%e3715437323%_
                                                 (gx#stx-e _%hd3711737500%_)))
                                            (if (equal? _%e3715437323%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3711837503%_)
                                                    (let ((_%e3715537327%_
                                                           (gx#syntax-e
                                                            _%tl3711837503%_)))
                                                      (let ((_%tl3715737334%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3715537327%_)))
                    (_%hd3715637331%_
                     (let () (declare (not safe)) (##car _%e3715537327%_))))
                (if (gx#stx-null? _%tl3715737334%_)
                    (_%__kont4007440075%_
                     _%hd3715637331%_
                     _%hd3704937732%_
                     _%hd3704637722%_)
                    (if (gx#stx-pair? _%tl3715737334%_)
                        (let ((_%e3717537237%_ (gx#syntax-e _%tl3715737334%_)))
                          (let ((_%tl3717737244%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3717537237%_)))
                                (_%hd3717637241%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3717537237%_))))
                            (if (gx#identifier? _%hd3717637241%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g40431_|
                                     _%hd3717637241%_)
                                    (if (gx#stx-pair? _%tl3717737244%_)
                                        (let ((_%e3717837247%_
                                               (gx#syntax-e _%tl3717737244%_)))
                                          (let ((_%tl3718037254%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3717837247%_)))
                                                (_%hd3717937251%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3717837247%_))))
                                            (if (gx#stx-null? _%tl3718037254%_)
                                                (_%__kont4007640077%_
                                                 _%hd3717937251%_
                                                 _%hd3715637331%_
                                                 _%hd3704937732%_
                                                 _%hd3704637722%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3704037186%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3704037186%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3704037186%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3704037186%_)))))
                        (let () (declare (not safe)) (_%g3704037186%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3704037186%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3704037186%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3704037186%_)))))))
                          (if (gx#stx-null? _%tl3705037735%_)
                              (_%__kont4007040071%_
                               _%hd3704937732%_
                               _%hd3704637722%_)
                              (let ()
                                (declare (not safe))
                                (_%g3704037186%_)))))))
              (if (gx#stx-pair? _%tl3705037735%_)
                  (let ((_%e3711637496%_ (gx#syntax-e _%tl3705037735%_)))
                    (let ((_%tl3711837503%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3711637496%_)))
                          (_%hd3711737500%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3711637496%_))))
                      (if (gx#stx-null? _%tl3711837503%_)
                          (_%__kont4006840069%_
                           _%hd3711737500%_
                           _%hd3704937732%_)
                          (if (gx#identifier? _%hd3711737500%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40430_|
                                   _%hd3711737500%_)
                                  (if (gx#stx-pair? _%tl3711837503%_)
                                      (let ((_%e3713937396%_
                                             (gx#syntax-e _%tl3711837503%_)))
                                        (let ((_%tl3714137403%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3713937396%_)))
                                              (_%hd3714037400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3713937396%_))))
                                          (if (gx#stx-null? _%tl3714137403%_)
                                              (_%__kont4007240073%_
                                               _%hd3714037400%_
                                               _%hd3704937732%_
                                               _%hd3704637722%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3704037186%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3704037186%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3704037186%_)))
                              (if (gx#stx-datum? _%hd3711737500%_)
                                  (let ((_%e3715437323%_
                                         (gx#stx-e _%hd3711737500%_)))
                                    (if (equal? _%e3715437323%_ '::)
                                        (if (gx#stx-pair? _%tl3711837503%_)
                                            (let ((_%e3715537327%_
                                                   (gx#syntax-e
                                                    _%tl3711837503%_)))
                                              (let ((_%tl3715737334%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3715537327%_)))
                                                    (_%hd3715637331%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3715537327%_))))
                                                (if (gx#stx-null?
                                                     _%tl3715737334%_)
                                                    (_%__kont4007440075%_
                                                     _%hd3715637331%_
                                                     _%hd3704937732%_
                                                     _%hd3704637722%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3715737334%_)
                                                        (let ((_%e3717537237%_
                                                               (gx#syntax-e
                                                                _%tl3715737334%_)))
                                                          (let ((_%tl3717737244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3717537237%_)))
                        (_%hd3717637241%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3717537237%_))))
                    (if (gx#identifier? _%hd3717637241%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40431_|
                             _%hd3717637241%_)
                            (if (gx#stx-pair? _%tl3717737244%_)
                                (let ((_%e3717837247%_
                                       (gx#syntax-e _%tl3717737244%_)))
                                  (let ((_%tl3718037254%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3717837247%_)))
                                        (_%hd3717937251%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3717837247%_))))
                                    (if (gx#stx-null? _%tl3718037254%_)
                                        (_%__kont4007640077%_
                                         _%hd3717937251%_
                                         _%hd3715637331%_
                                         _%hd3704937732%_
                                         _%hd3704637722%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3704037186%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3704037186%_)))
                            (let () (declare (not safe)) (_%g3704037186%_)))
                        (let () (declare (not safe)) (_%g3704037186%_)))))
                (let () (declare (not safe)) (_%g3704037186%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3704037186%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3704037186%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3704037186%_)))))))
                  (if (gx#stx-null? _%tl3705037735%_)
                      (_%__kont4007040071%_ _%hd3704937732%_ _%hd3704637722%_)
                      (let () (declare (not safe)) (_%g3704037186%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40434_|
                                                       _%hd3705237742%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3705337745%_)
                                                          (let ((_%e3710237560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3705337745%_)))
                    (let ((_%tl3710437567%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3710237560%_)))
                          (_%hd3710337564%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3710237560%_))))
                      (if (gx#stx-null? _%tl3710437567%_)
                          (if (gx#stx-pair? _%tl3705037735%_)
                              (let ((_%e3710537570%_
                                     (gx#syntax-e _%tl3705037735%_)))
                                (let ((_%tl3710737577%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3710537570%_)))
                                      (_%hd3710637574%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3710537570%_))))
                                  (if (gx#stx-null? _%tl3710737577%_)
                                      (_%__kont4006640067%_
                                       _%hd3710637574%_
                                       _%hd3710337564%_
                                       _%hd3704637722%_)
                                      (if (gx#identifier? _%hd3710637574%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40430_|
                                               _%hd3710637574%_)
                                              (if (gx#stx-pair?
                                                   _%tl3710737577%_)
                                                  (let ((_%e3713937396%_
                                                         (gx#syntax-e
                                                          _%tl3710737577%_)))
                                                    (let ((_%tl3714137403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3713937396%_)))
                                                          (_%hd3714037400%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3713937396%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3714137403%_)
                                                          (_%__kont4007240073%_
                                                           _%hd3714037400%_
                                                           _%hd3704937732%_
                                                           _%hd3704637722%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3704037186%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3704037186%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3704037186%_)))
                                          (if (gx#stx-datum? _%hd3710637574%_)
                                              (let ((_%e3715437323%_
                                                     (gx#stx-e
                                                      _%hd3710637574%_)))
                                                (if (equal? _%e3715437323%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3710737577%_)
                                                        (let ((_%e3715537327%_
                                                               (gx#syntax-e
                                                                _%tl3710737577%_)))
                                                          (let ((_%tl3715737334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3715537327%_)))
                        (_%hd3715637331%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3715537327%_))))
                    (if (gx#stx-null? _%tl3715737334%_)
                        (_%__kont4007440075%_
                         _%hd3715637331%_
                         _%hd3704937732%_
                         _%hd3704637722%_)
                        (if (gx#stx-pair? _%tl3715737334%_)
                            (let ((_%e3717537237%_
                                   (gx#syntax-e _%tl3715737334%_)))
                              (let ((_%tl3717737244%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3717537237%_)))
                                    (_%hd3717637241%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3717537237%_))))
                                (if (gx#identifier? _%hd3717637241%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40431_|
                                         _%hd3717637241%_)
                                        (if (gx#stx-pair? _%tl3717737244%_)
                                            (let ((_%e3717837247%_
                                                   (gx#syntax-e
                                                    _%tl3717737244%_)))
                                              (let ((_%tl3718037254%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3717837247%_)))
                                                    (_%hd3717937251%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3717837247%_))))
                                                (if (gx#stx-null?
                                                     _%tl3718037254%_)
                                                    (_%__kont4007640077%_
                                                     _%hd3717937251%_
                                                     _%hd3715637331%_
                                                     _%hd3704937732%_
                                                     _%hd3704637722%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3704037186%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3704037186%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3704037186%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3704037186%_)))))
                            (let () (declare (not safe)) (_%g3704037186%_))))))
                (let () (declare (not safe)) (_%g3704037186%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3704037186%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3704037186%_)))))))
                              (if (gx#stx-null? _%tl3705037735%_)
                                  (_%__kont4007040071%_
                                   _%hd3704937732%_
                                   _%hd3704637722%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3704037186%_))))
                          (if (gx#stx-pair? _%tl3705037735%_)
                              (let ((_%e3711637496%_
                                     (gx#syntax-e _%tl3705037735%_)))
                                (let ((_%tl3711837503%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3711637496%_)))
                                      (_%hd3711737500%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3711637496%_))))
                                  (if (gx#stx-null? _%tl3711837503%_)
                                      (_%__kont4006840069%_
                                       _%hd3711737500%_
                                       _%hd3704937732%_)
                                      (if (gx#identifier? _%hd3711737500%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40430_|
                                               _%hd3711737500%_)
                                              (if (gx#stx-pair?
                                                   _%tl3711837503%_)
                                                  (let ((_%e3713937396%_
                                                         (gx#syntax-e
                                                          _%tl3711837503%_)))
                                                    (let ((_%tl3714137403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3713937396%_)))
                                                          (_%hd3714037400%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3713937396%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3714137403%_)
                                                          (_%__kont4007240073%_
                                                           _%hd3714037400%_
                                                           _%hd3704937732%_
                                                           _%hd3704637722%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3704037186%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3704037186%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3704037186%_)))
                                          (if (gx#stx-datum? _%hd3711737500%_)
                                              (let ((_%e3715437323%_
                                                     (gx#stx-e
                                                      _%hd3711737500%_)))
                                                (if (equal? _%e3715437323%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3711837503%_)
                                                        (let ((_%e3715537327%_
                                                               (gx#syntax-e
                                                                _%tl3711837503%_)))
                                                          (let ((_%tl3715737334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3715537327%_)))
                        (_%hd3715637331%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3715537327%_))))
                    (if (gx#stx-null? _%tl3715737334%_)
                        (_%__kont4007440075%_
                         _%hd3715637331%_
                         _%hd3704937732%_
                         _%hd3704637722%_)
                        (if (gx#stx-pair? _%tl3715737334%_)
                            (let ((_%e3717537237%_
                                   (gx#syntax-e _%tl3715737334%_)))
                              (let ((_%tl3717737244%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3717537237%_)))
                                    (_%hd3717637241%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3717537237%_))))
                                (if (gx#identifier? _%hd3717637241%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40431_|
                                         _%hd3717637241%_)
                                        (if (gx#stx-pair? _%tl3717737244%_)
                                            (let ((_%e3717837247%_
                                                   (gx#syntax-e
                                                    _%tl3717737244%_)))
                                              (let ((_%tl3718037254%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3717837247%_)))
                                                    (_%hd3717937251%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3717837247%_))))
                                                (if (gx#stx-null?
                                                     _%tl3718037254%_)
                                                    (_%__kont4007640077%_
                                                     _%hd3717937251%_
                                                     _%hd3715637331%_
                                                     _%hd3704937732%_
                                                     _%hd3704637722%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3704037186%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3704037186%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3704037186%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3704037186%_)))))
                            (let () (declare (not safe)) (_%g3704037186%_))))))
                (let () (declare (not safe)) (_%g3704037186%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3704037186%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3704037186%_)))))))
                              (if (gx#stx-null? _%tl3705037735%_)
                                  (_%__kont4007040071%_
                                   _%hd3704937732%_
                                   _%hd3704637722%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3704037186%_)))))))
                  (if (gx#stx-pair? _%tl3705037735%_)
                      (let ((_%e3711637496%_ (gx#syntax-e _%tl3705037735%_)))
                        (let ((_%tl3711837503%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3711637496%_)))
                              (_%hd3711737500%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3711637496%_))))
                          (if (gx#stx-null? _%tl3711837503%_)
                              (_%__kont4006840069%_
                               _%hd3711737500%_
                               _%hd3704937732%_)
                              (if (gx#identifier? _%hd3711737500%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40430_|
                                       _%hd3711737500%_)
                                      (if (gx#stx-pair? _%tl3711837503%_)
                                          (let ((_%e3713937396%_
                                                 (gx#syntax-e
                                                  _%tl3711837503%_)))
                                            (let ((_%tl3714137403%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3713937396%_)))
                                                  (_%hd3714037400%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3713937396%_))))
                                              (if (gx#stx-null?
                                                   _%tl3714137403%_)
                                                  (_%__kont4007240073%_
                                                   _%hd3714037400%_
                                                   _%hd3704937732%_
                                                   _%hd3704637722%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3704037186%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3704037186%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3704037186%_)))
                                  (if (gx#stx-datum? _%hd3711737500%_)
                                      (let ((_%e3715437323%_
                                             (gx#stx-e _%hd3711737500%_)))
                                        (if (equal? _%e3715437323%_ '::)
                                            (if (gx#stx-pair? _%tl3711837503%_)
                                                (let ((_%e3715537327%_
                                                       (gx#syntax-e
                                                        _%tl3711837503%_)))
                                                  (let ((_%tl3715737334%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3715537327%_)))
                                                        (_%hd3715637331%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3715537327%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3715737334%_)
                                                        (_%__kont4007440075%_
                                                         _%hd3715637331%_
                                                         _%hd3704937732%_
                                                         _%hd3704637722%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3715737334%_)
                                                            (let ((_%e3717537237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3715737334%_)))
                      (let ((_%tl3717737244%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3717537237%_)))
                            (_%hd3717637241%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3717537237%_))))
                        (if (gx#identifier? _%hd3717637241%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g40431_|
                                 _%hd3717637241%_)
                                (if (gx#stx-pair? _%tl3717737244%_)
                                    (let ((_%e3717837247%_
                                           (gx#syntax-e _%tl3717737244%_)))
                                      (let ((_%tl3718037254%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3717837247%_)))
                                            (_%hd3717937251%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3717837247%_))))
                                        (if (gx#stx-null? _%tl3718037254%_)
                                            (_%__kont4007640077%_
                                             _%hd3717937251%_
                                             _%hd3715637331%_
                                             _%hd3704937732%_
                                             _%hd3704637722%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3704037186%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3704037186%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3704037186%_)))
                            (let () (declare (not safe)) (_%g3704037186%_)))))
                    (let () (declare (not safe)) (_%g3704037186%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3704037186%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3704037186%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3704037186%_)))))))
                      (if (gx#stx-null? _%tl3705037735%_)
                          (_%__kont4007040071%_
                           _%hd3704937732%_
                           _%hd3704637722%_)
                          (let () (declare (not safe)) (_%g3704037186%_)))))
              (if (gx#stx-pair? _%tl3705037735%_)
                  (let ((_%e3711637496%_ (gx#syntax-e _%tl3705037735%_)))
                    (let ((_%tl3711837503%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3711637496%_)))
                          (_%hd3711737500%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3711637496%_))))
                      (if (gx#stx-null? _%tl3711837503%_)
                          (_%__kont4006840069%_
                           _%hd3711737500%_
                           _%hd3704937732%_)
                          (if (gx#identifier? _%hd3711737500%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40430_|
                                   _%hd3711737500%_)
                                  (if (gx#stx-pair? _%tl3711837503%_)
                                      (let ((_%e3713937396%_
                                             (gx#syntax-e _%tl3711837503%_)))
                                        (let ((_%tl3714137403%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3713937396%_)))
                                              (_%hd3714037400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3713937396%_))))
                                          (if (gx#stx-null? _%tl3714137403%_)
                                              (_%__kont4007240073%_
                                               _%hd3714037400%_
                                               _%hd3704937732%_
                                               _%hd3704637722%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3704037186%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3704037186%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3704037186%_)))
                              (if (gx#stx-datum? _%hd3711737500%_)
                                  (let ((_%e3715437323%_
                                         (gx#stx-e _%hd3711737500%_)))
                                    (if (equal? _%e3715437323%_ '::)
                                        (if (gx#stx-pair? _%tl3711837503%_)
                                            (let ((_%e3715537327%_
                                                   (gx#syntax-e
                                                    _%tl3711837503%_)))
                                              (let ((_%tl3715737334%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3715537327%_)))
                                                    (_%hd3715637331%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3715537327%_))))
                                                (if (gx#stx-null?
                                                     _%tl3715737334%_)
                                                    (_%__kont4007440075%_
                                                     _%hd3715637331%_
                                                     _%hd3704937732%_
                                                     _%hd3704637722%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3715737334%_)
                                                        (let ((_%e3717537237%_
                                                               (gx#syntax-e
                                                                _%tl3715737334%_)))
                                                          (let ((_%tl3717737244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3717537237%_)))
                        (_%hd3717637241%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3717537237%_))))
                    (if (gx#identifier? _%hd3717637241%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40431_|
                             _%hd3717637241%_)
                            (if (gx#stx-pair? _%tl3717737244%_)
                                (let ((_%e3717837247%_
                                       (gx#syntax-e _%tl3717737244%_)))
                                  (let ((_%tl3718037254%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3717837247%_)))
                                        (_%hd3717937251%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3717837247%_))))
                                    (if (gx#stx-null? _%tl3718037254%_)
                                        (_%__kont4007640077%_
                                         _%hd3717937251%_
                                         _%hd3715637331%_
                                         _%hd3704937732%_
                                         _%hd3704637722%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3704037186%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3704037186%_)))
                            (let () (declare (not safe)) (_%g3704037186%_)))
                        (let () (declare (not safe)) (_%g3704037186%_)))))
                (let () (declare (not safe)) (_%g3704037186%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3704037186%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3704037186%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3704037186%_)))))))
                  (if (gx#stx-null? _%tl3705037735%_)
                      (_%__kont4007040071%_ _%hd3704937732%_ _%hd3704637722%_)
                      (let () (declare (not safe)) (_%g3704037186%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3705037735%_)
                                              (let ((_%e3711637496%_
                                                     (gx#syntax-e
                                                      _%tl3705037735%_)))
                                                (let ((_%tl3711837503%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3711637496%_)))
                                                      (_%hd3711737500%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3711637496%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3711837503%_)
                                                      (_%__kont4006840069%_
                                                       _%hd3711737500%_
                                                       _%hd3704937732%_)
                                                      (if (gx#identifier?
                                                           _%hd3711737500%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g40430_|
                                                               _%hd3711737500%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3711837503%_)
                          (let ((_%e3713937396%_
                                 (gx#syntax-e _%tl3711837503%_)))
                            (let ((_%tl3714137403%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3713937396%_)))
                                  (_%hd3714037400%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3713937396%_))))
                              (if (gx#stx-null? _%tl3714137403%_)
                                  (_%__kont4007240073%_
                                   _%hd3714037400%_
                                   _%hd3704937732%_
                                   _%hd3704637722%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3704037186%_)))))
                          (let () (declare (not safe)) (_%g3704037186%_)))
                      (let () (declare (not safe)) (_%g3704037186%_)))
                  (if (gx#stx-datum? _%hd3711737500%_)
                      (let ((_%e3715437323%_ (gx#stx-e _%hd3711737500%_)))
                        (if (equal? _%e3715437323%_ '::)
                            (if (gx#stx-pair? _%tl3711837503%_)
                                (let ((_%e3715537327%_
                                       (gx#syntax-e _%tl3711837503%_)))
                                  (let ((_%tl3715737334%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3715537327%_)))
                                        (_%hd3715637331%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3715537327%_))))
                                    (if (gx#stx-null? _%tl3715737334%_)
                                        (_%__kont4007440075%_
                                         _%hd3715637331%_
                                         _%hd3704937732%_
                                         _%hd3704637722%_)
                                        (if (gx#stx-pair? _%tl3715737334%_)
                                            (let ((_%e3717537237%_
                                                   (gx#syntax-e
                                                    _%tl3715737334%_)))
                                              (let ((_%tl3717737244%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3717537237%_)))
                                                    (_%hd3717637241%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3717537237%_))))
                                                (if (gx#identifier?
                                                     _%hd3717637241%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g40431_|
                                                         _%hd3717637241%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3717737244%_)
                                                            (let ((_%e3717837247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3717737244%_)))
                      (let ((_%tl3718037254%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3717837247%_)))
                            (_%hd3717937251%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3717837247%_))))
                        (if (gx#stx-null? _%tl3718037254%_)
                            (_%__kont4007640077%_
                             _%hd3717937251%_
                             _%hd3715637331%_
                             _%hd3704937732%_
                             _%hd3704637722%_)
                            (let () (declare (not safe)) (_%g3704037186%_)))))
                    (let () (declare (not safe)) (_%g3704037186%_)))
                (let () (declare (not safe)) (_%g3704037186%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3704037186%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3704037186%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3704037186%_)))
                            (let () (declare (not safe)) (_%g3704037186%_))))
                      (let () (declare (not safe)) (_%g3704037186%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3705037735%_)
                                                  (_%__kont4007040071%_
                                                   _%hd3704937732%_
                                                   _%hd3704637722%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3704037186%_)))))))
                                  (if (gx#stx-pair? _%tl3705037735%_)
                                      (let ((_%e3711637496%_
                                             (gx#syntax-e _%tl3705037735%_)))
                                        (let ((_%tl3711837503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3711637496%_)))
                                              (_%hd3711737500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3711637496%_))))
                                          (if (gx#stx-null? _%tl3711837503%_)
                                              (_%__kont4006840069%_
                                               _%hd3711737500%_
                                               _%hd3704937732%_)
                                              (if (gx#identifier?
                                                   _%hd3711737500%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40430_|
                                                       _%hd3711737500%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3711837503%_)
                                                          (let ((_%e3713937396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3711837503%_)))
                    (let ((_%tl3714137403%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3713937396%_)))
                          (_%hd3714037400%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3713937396%_))))
                      (if (gx#stx-null? _%tl3714137403%_)
                          (_%__kont4007240073%_
                           _%hd3714037400%_
                           _%hd3704937732%_
                           _%hd3704637722%_)
                          (let () (declare (not safe)) (_%g3704037186%_)))))
                  (let () (declare (not safe)) (_%g3704037186%_)))
              (let () (declare (not safe)) (_%g3704037186%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3711737500%_)
                                                      (let ((_%e3715437323%_
                                                             (gx#stx-e
                                                              _%hd3711737500%_)))
                                                        (if (equal? _%e3715437323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3711837503%_)
                        (let ((_%e3715537327%_ (gx#syntax-e _%tl3711837503%_)))
                          (let ((_%tl3715737334%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3715537327%_)))
                                (_%hd3715637331%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3715537327%_))))
                            (if (gx#stx-null? _%tl3715737334%_)
                                (_%__kont4007440075%_
                                 _%hd3715637331%_
                                 _%hd3704937732%_
                                 _%hd3704637722%_)
                                (if (gx#stx-pair? _%tl3715737334%_)
                                    (let ((_%e3717537237%_
                                           (gx#syntax-e _%tl3715737334%_)))
                                      (let ((_%tl3717737244%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3717537237%_)))
                                            (_%hd3717637241%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3717537237%_))))
                                        (if (gx#identifier? _%hd3717637241%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g40431_|
                                                 _%hd3717637241%_)
                                                (if (gx#stx-pair?
                                                     _%tl3717737244%_)
                                                    (let ((_%e3717837247%_
                                                           (gx#syntax-e
                                                            _%tl3717737244%_)))
                                                      (let ((_%tl3718037254%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3717837247%_)))
                    (_%hd3717937251%_
                     (let () (declare (not safe)) (##car _%e3717837247%_))))
                (if (gx#stx-null? _%tl3718037254%_)
                    (_%__kont4007640077%_
                     _%hd3717937251%_
                     _%hd3715637331%_
                     _%hd3704937732%_
                     _%hd3704637722%_)
                    (let () (declare (not safe)) (_%g3704037186%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3704037186%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3704037186%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3704037186%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3704037186%_))))))
                        (let () (declare (not safe)) (_%g3704037186%_)))
                    (let () (declare (not safe)) (_%g3704037186%_))))
              (let () (declare (not safe)) (_%g3704037186%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3705037735%_)
                                          (_%__kont4007040071%_
                                           _%hd3704937732%_
                                           _%hd3704637722%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3704037186%_)))))))
                          (let () (declare (not safe)) (_%g3704037186%_)))))
                  (let () (declare (not safe)) (_%g3704037186%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37825%_)
        (let* ((_%__stx4032340324%_ _%$stx37825%_)
               (_%g3783037864%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4032340324%_))))
          (let ((_%__kont4032640327%_
                 (lambda (_%g3783237968%_ _%g3783337970%_ _%g3783437971%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%g3783437971%_
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
                                       (cons _%g3783337970%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%g3783237968%_ '()))
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
                (_%__kont4032840329%_
                 (lambda (_%g3784737901%_ _%g3784837903%_ _%g3784937904%_)
                   (cons _%g3784937904%_
                         (cons _%g3784837903%_
                               (cons _%g3784737901%_
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
            (let ((_%__match4035640357%_
                   (lambda (_%e3783537928%_
                            _%hd3783637932%_
                            _%tl3783737935%_
                            _%e3783837938%_
                            _%hd3783937942%_
                            _%tl3784037945%_
                            _%e3784137948%_
                            _%hd3784237952%_
                            _%tl3784337955%_
                            _%e3784437958%_
                            _%hd3784537962%_
                            _%tl3784637965%_)
                     (let ((_%g3783237968%_ _%hd3784537962%_)
                           (_%g3783337970%_ _%hd3784237952%_)
                           (_%g3783437971%_ _%hd3783937942%_))
                       (if (gx#identifier? _%g3783437971%_)
                           (_%__kont4032640327%_
                            _%g3783237968%_
                            _%g3783337970%_
                            _%g3783437971%_)
                           (let () (declare (not safe)) (_%g3783037864%_)))))))
              (if (gx#stx-pair? _%__stx4032340324%_)
                  (let ((_%e3783537928%_ (gx#syntax-e _%__stx4032340324%_)))
                    (let ((_%tl3783737935%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3783537928%_)))
                          (_%hd3783637932%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3783537928%_))))
                      (if (gx#stx-pair? _%tl3783737935%_)
                          (let ((_%e3783837938%_
                                 (gx#syntax-e _%tl3783737935%_)))
                            (let ((_%tl3784037945%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3783837938%_)))
                                  (_%hd3783937942%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3783837938%_))))
                              (if (gx#stx-pair? _%tl3784037945%_)
                                  (let ((_%e3784137948%_
                                         (gx#syntax-e _%tl3784037945%_)))
                                    (let ((_%tl3784337955%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3784137948%_)))
                                          (_%hd3784237952%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3784137948%_))))
                                      (if (gx#stx-pair? _%tl3784337955%_)
                                          (let ((_%e3784437958%_
                                                 (gx#syntax-e
                                                  _%tl3784337955%_)))
                                            (let ((_%tl3784637965%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3784437958%_)))
                                                  (_%hd3784537962%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3784437958%_))))
                                              (if (gx#stx-null?
                                                   _%tl3784637965%_)
                                                  (_%__match4035640357%_
                                                   _%e3783537928%_
                                                   _%hd3783637932%_
                                                   _%tl3783737935%_
                                                   _%e3783837938%_
                                                   _%hd3783937942%_
                                                   _%tl3784037945%_
                                                   _%e3784137948%_
                                                   _%hd3784237952%_
                                                   _%tl3784337955%_
                                                   _%e3784437958%_
                                                   _%hd3784537962%_
                                                   _%tl3784637965%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3783037864%_)))))
                                          (if (gx#stx-null? _%tl3784337955%_)
                                              (_%__kont4032840329%_
                                               _%hd3784237952%_
                                               _%hd3783937942%_
                                               _%hd3783637932%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3783037864%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3783037864%_)))))
                          (let () (declare (not safe)) (_%g3783037864%_)))))
                  (let () (declare (not safe)) (_%g3783037864%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx37993%_)
        (let* ((_%g3799738012%_
                (lambda (_%g3799838008%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3799838008%_)))
               (_%g3799638055%_
                (lambda (_%g3799838016%_)
                  (if (gx#stx-pair? _%g3799838016%_)
                      (let ((_%e3800138019%_ (gx#syntax-e _%g3799838016%_)))
                        (let ((_%hd3800238023%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3800138019%_)))
                              (_%tl3800338026%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3800138019%_))))
                          (if (gx#stx-pair? _%tl3800338026%_)
                              (let ((_%e3800438029%_
                                     (gx#syntax-e _%tl3800338026%_)))
                                (let ((_%hd3800538033%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3800438029%_)))
                                      (_%tl3800638036%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3800438029%_))))
                                  ((lambda (_%g3799938039%_ _%g3800038041%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%g3800038041%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%g3799938039%_)
                                                       '()))))
                                   _%tl3800638036%_
                                   _%hd3800538033%_)))
                              (_%g3799738012%_ _%g3799838016%_))))
                      (_%g3799738012%_ _%g3799838016%_)))))
          (_%g3799638055%_ _%$stx37993%_))))))
